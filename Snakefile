
rule makeFile:
    output:
        "file{sample}.txt"
    shell:
        """
        touch {output}
        """


rule all:
    input:
        "file1.txt",
        "file3.txt",
        "file3.txt"
