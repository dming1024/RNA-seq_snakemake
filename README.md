# RNA-seq_snakemake
using snakemake to build RNA-seq analysis pipline, from raw data to differented expression genes


1. the input sammples should look like this 

samples/
├── control_R1.fq.gz
├── control_R2.fq.gz
├── group.txt
├── treated_R1.fq.gz
├── treated_R2.fq.gz
└── wget-log.1

the group file should look like this:
normal,normal,cancer,cancer
which illustrate the types of samples

2. the input reference should look like this:

reference/
├── chr19.1.bt2
├── chr19.2.bt2
├── chr19.3.bt2
├── chr19.4.bt2
├── chr19.fa
├── chr19.fa_bowtie2-build.log
├── chr19.fa.fai
├── chr19.rev.1.bt2
├── chr19.rev.2.bt2

3. the input annotation should like this:

annotation/
├── gencode.v30.annotation.gtf
├── gencode.v30.annotation.lncRNA.gtf
├── Homo_sapiens.GRCh37.75.gtf
├── Homo_sapiens.GRCh38.96.gff3
├── Homo_sapiens.GRCh38.96.gtf
├── Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz
├── mouse.chr.gtf
├── Mus_musculus.GRCm38.83.chr.gtf
└── Mus_musculus.GRCm38.83.gtf

4. the pipline should look like the dag.svg file

5. v3.11.0.tar.bz2 is just a tutorial file, and you can delete it if you don't need
