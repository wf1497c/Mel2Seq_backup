#!/bin/bash

wget https://s3.amazonaws.com/aws-cli/awscli-bundle.zip
unzip awscli-bundle.zip
./awscli-bundle/install -b ~/bin/aws
echo $PATH | grep ~/bin
export PATH=~/bin:$PATH

aws configure set aws_access_key_id AKIAZPK3ZT3P4EPBKQ7P
aws configure set aws_secret_access_key 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
aws configure set region ap-south-1
aws s3 cp s3://wf1497bbucket/Mel2Seq/project/ . --recursive

pip install librosa transformers matplotlib tqdm --quiet
