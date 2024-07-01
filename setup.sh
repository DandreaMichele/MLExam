#!/bin/bash

# Step 1: Create a folder named "data"
mkdir -p data

# Step 2: Download the dataset from Google Drive and name it data.json
# You need gdown for downloading files from Google Drive, so make sure it's installed
if ! command -v gdown &> /dev/null
then
    echo "gdown could not be found, installing it now..."
    pip install gdown
fi

# Use gdown to download the file
gdown --id 1eAPddVmDSJTyZRDChdtjYjrW4bya6x_B -O data/data.json


echo "Setup complete!"
echo "Now make sure to have a correct dgl/torch/matplotlib version installed"
echo "Recommended versions are:"
echo "torch==2.1.0"
echo "dgl==2.2.1"
echo "matplotlib==3.9.0"