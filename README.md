# test-pipe
This is a test Snakemake pipeline for queue submission on Eddie

The pipeline creates files with names starting with `file` and ending with `.txt`. It needs very little resources and jobs run quickly.

Local execution:
```
git clone <this repo>
cd <repo folder>
snakemake -j 1 out/file1.txt out/file2.txt out/file3.txt
```

Cluster execution (following the [snakemake docs](https://snakemake.readthedocs.io/en/stable/executing/cluster.html#generic-cluster-support)):
```
git clone <this repo>
cd <repo folder>
snakemake -j 1 --cluster qsub --jobs 32 out/file1.txt out/file2.txt out/file3.txt
# this works as well:
#time snakemake -j 1 --drmaa  " -l h_vmem=32G" --jobs 32 -F out/file1.txt out/file2.txt out/file3.txt
# Note the even though 32GB memory is specified as the default,
# the job actually asks for what's stated in each specific rule's resources section (I think).
```
