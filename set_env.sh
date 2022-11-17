#!/bin/bash

wget https://s3.amazonaws.com/aws-cli/awscli-bundle.zip
unzip awscli-bundle.zip
./awscli-bundle/install -b ~/bin/aws
echo $PATH | grep ~/bin
export PATH=~/bin:$PATH

aws configure set aws_access_key_id AKIAZPK3ZT3PUITBP4OK
aws configure set aws_secret_access_key 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
aws configure set region ap-south-1
aws s3 cp s3://wf1497bbucket/test . --recursive

pip install librosa transformers matplotlib tqdm --quiet
