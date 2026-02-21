#!/bin/bash

set -e  # Exit on error

# Create datasets directory
mkdir -p datasets
cd datasets

##################################
# 1. Download and extract LFW
##################################
if [ ! -d "lfw-deepfunneled" ]; then
    echo "Downloading LFW..."
kaggle datasets download -d jessicali9530/lfw-dataset --unzip -p lfw-dataset
echo "LFW downloaded and unzipped."
else
    echo "LFW alreads present."
fi

#!/bin/bash


#!/bin/bash

# Create datasets directory if it doesn't exist
mkdir -p datasets
cd datasets

echo "Downloading LFW dataset..."
kaggle datasets download -d jessicali9530/lfw-dataset --unzip -p lfw-dataset

echo "Downloading CelebA dataset..."
kaggle datasets download -d jessicali9530/celeba-dataset --unzip -p celeba

echo "All datasets downloaded and extracted."

##################################
# 3. Final structure confirmation
##################################

echo -e "\n Dataset folders:"
ls -d */

echo -e "\nDone. You can now use ImageFolder with 'datasets/lfw-deepfunneled' and 'datasets/celeba'."



