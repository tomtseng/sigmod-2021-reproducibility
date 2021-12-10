#!/bin/bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

cd ${HOME}/gbbs

git checkout parallel-index-scan-reproducibility
cd benchmarks/SCAN/IndexBased/experiments
bash run_gbbs_experiments.bash
bash run_ppscan_experiments.bash

git checkout tomtseng/mkl-scan
source ${HOME}/intel/oneapi/setvars.sh
bash run_gbbs_mkl_experiments.bash

git checkout parallel-index-scan-reproducibility
python3.6 summarize_results.py
ln -s ${HOME}/scan-experiment-results/summary ${SCRIPT_DIR}/results
