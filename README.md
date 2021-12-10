This repository is a submission to SIGMOD Availability & Reproducibility 2022
for the SIGMOD 2021 paper _[Parallel Index-Based Structural Graph Clustering and
Its Approximation](https://dl.acm.org/doi/abs/10.1145/3448016.3457278)_.

---

- Paper ID: rdm378
- Source code info:
  - Repository: https://github.com/tomtseng/sigmod-reproducibility-parallel-scan
  - Programming language: C++
  - Compiler Info: `g++ (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0`
  - Packages/libraries: These will be installed by `./prepareSoftware.sh`.
    - System: CMake, numactl, python3.6, python3.6-dev
    - Python: sklearn
    - [Intel Math Kernel Library (MKL)](https://www.intel.com/content/www/us/en/developer/tools/oneapi/onemkl.html)
- Datasets: these graphs will be downloaded by `./prepareData.sh`
  - [Stanford Network Analysis Platform](https://snap.stanford.edu):
    [com-Orkut](https://snap.stanford.edu/data/com-Orkut.html), [com-Friendster](https://snap.stanford.edu/data/com-Friendster.html)
  - [Laboratory for Web Algorithmics graphs](https://law.di.unimi.it/datasets.php): [WebBase](https://www.cise.ufl.edu/research/sparse/matrices/LAW/webbase-2001.html)
  - [Network Repository](https://networkrepository.com): [human-Jung2015-M87113878 (Brain Networks)](https://networkrepository.com/bn-human-Jung2015-M87113878.php)
  - [HumanBase](https://hb.flatironinstitute.org/): [cochlea top edges, blood vessel top edges](https://hb.flatironinstitute.org/download)
- Hardware info
  - The original experiments were run on Amazon Web Services EC2 instances.  All
    of the times were measured on a
    [c5.24xlarge](https://aws.amazon.com/ec2/instance-types/c5/) instance, but
    some of the experiments measuring the quality of clusterings were run on a
    [m5a.24xlarge](https://aws.amazon.com/ec2/instance-types/m5/) instance
    because more memory was needed. The following stats are stats for the
    c5.24xlarge instance, except that the amount of memory corresponds to that
    of the m5a.24xlarge instance.
  - Operating system: Ubuntu 18.04, 64-bit, x86
  - Processor: Intel(R) Xeon(R) Platinum 8275CL CPU @ 3.00GHz, 48
    cores, 2 threads per core, 2 sockets
  - Caches: 32K L1d, 32K L1i, 1024K L2, 36608K L3
  - Memory: 384 GiB, 2 NUMA nodes
  - Secondary storage: SSD, 200 GB, 19,000 Mbps bandiwdth
  - Network Bandwidth: 25 Gbps (but network performance speed is not important for
    these experiments)
  - AVX2 support
- Experimentation info:
  - Prepare the software: run `./prepareSoftware.sh`
    - There will be a prompt to install the Intel Math Kernel Library. Perform
      the default installation and exit the installer once it finishes.
  - Download the datasets: run `./prepareData.sh`
  - Run the experiments: run `./runExperiments.sh`
    - This script outputs results in CSV format the `summary/` directory.
    - The plots in the paper were created by manually entering the results
      into LaTeX and using the `pgfplots` package.
