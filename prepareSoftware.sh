#!/bin/bash

#################################
# Install packages and software #
#################################

# Install Intel MKL
wget https://registrationcenter-download.intel.com/akdlm/irc_nas/18222/l_onemkl_p_2021.4.0.640.sh
bash l_onemkl_p_2021.4.0.640.sh

# Install Bazel
sudo apt install apt-transport-https curl gnupg --yes
curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor > bazel.gpg
sudo mv bazel.gpg /etc/apt/trusted.gpg.d/
echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list
sudo apt update
sudo apt install bazel-2.1.0 --yes
sudo ln -s /usr/bin/bazel-2.1.0 /usr/bin/bazel

sudo apt install cmake numactl --yes

sudo apt install python3.6-dev python3-pip --yes
pip3 install sklearn

#####################
# Download the code #
#####################

# Check out GBBS, the codebase that the paper submission contributed to,
# and go to a fixed commit so that future changes to GBBS don't break the
# reproducibility scripts
cd ${HOME}
git clone https://github.com/ParAlg/gbbs.git
cd gbbs
git checkout parallel-index-scan-reproducibility
git submodule init
git submodule update
