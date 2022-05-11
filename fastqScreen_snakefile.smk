rule fastqscreen:
    input:
        "data/{sample}.fastq.gz"

    output:
        "fastqscreen_output/{sample}.html"
        "fastqscreen_output/{sample}.png"
        "fastqscreen_output/{sample}.txt"

    shell:
        "fastq_screen --conf /beevol/home/szucsm/FastQ_Screen_Genomes/fastq_screen.conf \
        --threads 30 --subset 50000 {input}"
