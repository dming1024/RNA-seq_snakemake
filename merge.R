dm=c()
for(filename in snakemake@input[["sampleName"]]){
df=read.csv(filename,sep="\t",col.names=c("gene",basename(filename)))
if(is.null(dm)){dm=df}
else{dm=merge(dm,df,by="gene")}
}

dm=dm[-c(1:5),]
write.table(dm,snakemake@output[["data"]],sep="\t",quote=F,row.names=F)
rownames(dm)=dm[,1]
dm=dm[,-1]

library(DESeq2)
group=read.table(snakemake@input[["group"]],stringsAsFactors=F)[,1]
cData=data.frame(group=as.factor(strsplit(group,",")[[1]]))
rownames(cData)<-colnames(dm)
d.deseq<-DESeqDataSetFromMatrix(countData=dm,colData=cData,design= ~group)

d.deseq<-DESeq(d.deseq)

res<-results(d.deseq)

write.csv(res,snakemake@output[["res"]])
