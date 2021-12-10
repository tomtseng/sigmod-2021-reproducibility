#!/bin/bash

#################################
# Install packages and software #
#################################

# Install Bazel
sudo apt install apt-transport-https curl gnupg --yes
curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor > bazel.gpg
sudo mv bazel.gpg /etc/apt/trusted.gpg.d/
echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list
sudo apt update
sudo apt install bazel-2.1.0 --yes
sudo ln -s /usr/bin/bazel-2.1.0 /usr/bin/bazel

sudo apt install cmake numactl --yes

# TODO install MKL

#####################
# Download the code #
#####################

# Check out GBBS, the codebase that the paper submission contributed to.
cd ~
git clone https://github.com/ParAlg/gbbs.git
