if [ ! -d "${HOME}/gbbs" ]
then
    echo "Run prepareSoftware.sh before running this script."
    exit 1
fi

cd ${HOME}/gbbs
cd benchmarks/SCAN/IndexBased/experiments
bash download_graphs.bash
