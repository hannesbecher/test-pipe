# test-pipe
This is a test Snakemake pipeline for queue submission on Eddie

The pipeline creates files with names starting with `file` and ending with `.txt`. It needs very little resources and jobs run quickly.

Local execution:
```
git clone <this repo>
cd <repo folder>
snakemake -j 1 file1.txt file2.txt file3.txt
```

Cluster execution (following the [snakemake docs](https://snakemake.readthedocs.io/en/stable/executing/cluster.html#generic-cluster-support)):
```
git clone <this repo>
cd <repo folder>
snakemake -j 1 --cluster qsub --jobs 32 file1.txt file2.txt file3.txt
```
The cluster submission code is different to what we are currently using for the TS pipeline.