

rule makeDatFile:
    output:
        "file{sample}.dat"
    threads: 1
    resources:
        mem_mb=1000
    shell:
        """
        touch {output}
        """

rule makeTxtFile:
    input:
        "file{sample}.dat"
    output:
        "file{sample}.txt"
    threads: 1
    resources:
        mem_mb=1000
    shell:
        """
        touch {output}
        """

