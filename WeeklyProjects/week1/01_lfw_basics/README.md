# Week 1 – Exploring LFW Face Dataset

This is the first weekly project for my MSc dissertation on adversarial attacks in AI-based biometric systems.

## Overview

In this notebook, I explore the [Labeled Faces in the Wild (LFW)](http://vis-www.cs.umass.edu/lfw/) dataset using scikit-learn. The goal is to get familiar with:
- Face dataset structures
- Basic preprocessing
- Visualisation of facial images
- Understanding class distributions

## Tools Used
- Python
- Jupyter Notebook
- scikit-learn
- matplotlib / seaborn
- numpy / PIL

## Goals
- Load the LFW dataset with scikit-learn
- Clean and reshape the data
- Display example faces
- Plot class frequencies (number of images per identity)

## Dataset Source
- https://scikit-learn.org/stable/datasets/real_world.html#labeled-faces-in-the-wild

## Next Steps
This project sets up the dataset and exploration pipeline, which will be extended to include:
- Training a face classifier
- Implementing FGSM adversarial attacks
- Testing defences and comparing accuracy

## Structure
01_lfw_basics
├── LFW_Exploration.ipynb
└── README.md
