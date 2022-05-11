rule bowtie2_map
    input:
        "refrence/{genome}"
        "trimmed/{sample}_R1_paired.fastq.gz",
        "trimmed/{sample}_R2_paired.fastq.gz"

    output:
        "mapped_reads/{name}.sam"

    shell:
        "bowtie2 -x {genome} S -1 ../../trimmed/rRNA_2_output_R1_paired.fastq.gz "
        "-2 ../../trimmed/rRNA_2_output_R2_paired.fastq.gz -S {name}.sam"
