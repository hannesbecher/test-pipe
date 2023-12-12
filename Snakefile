
rule makeFile:
    output:
        "file{sample}.txt"
    threads: 1
    resources:
        mem_mb=1000
    shell:
        """
        touch {output}
        """

