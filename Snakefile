

rule makeDatFile:
    output:
        temp("out/file{sample}.dat")
    threads: 1
    resources:
        mem_mb=1000
    shell:
        """
        touch {output}
        """

rule makeTxtFile:
    input:
        "out/file{sample}.dat"
    output:
        "out/file{sample}.txt"
    threads: 1
    resources:
        mem_mb=1000
    shell:
        """
        touch {output}
        """

