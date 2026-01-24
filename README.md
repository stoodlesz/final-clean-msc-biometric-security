## Directory

```/msc-biometric-security/
├── datasets/                # Contains lfw-deepfunneled/ and celebA/
├── notebooks/               # Jupyter notebooks for exploration and training
├── src/                     # Python scripts (e.g., training, attacks, defences)
├── models/                  # Saved model weights/checkpoints
├── download_datasets.sh     # Script to automate dataset setup
├── requirements.txt         # Python dependencies
├── .gitignore               # Ignored files
└── README.md
```

## Clone the repo

```git clone https://gitlab.com/stooflesz/msc-biometric-security.git
cd msc-biometric-security
```

## (Optional) Create a virtual environment

```python3 -m venv venv
source venv/bin/activate  # or `source venv/bin/activate.fish` depending on shell
```

## Install dependencies

```
pip install -r requirements.txt
```

## Running a Sample Notebook

Launch Jupyter:
`jupyter notebook`

Open notebooks/fgsm_attack_demo.ipynb or similar to test the FGSM attack simulation.

## Project Goal

This research project investigates adversarial vulnerabilities in facial recognition systems and aims to develop lightweight, explainable defence mechanisms accessible to small and medium-sized enterprises (SMEs). It includes benchmark datasets (LFW, CelebA), simulation of attacks (FGSM, PGD), and evaluation of mitigation techniques.

## Ethical Notice

This project uses publicly available facial datasets for academic research only. All datasets comply with their respective licensing agreements. No personal data is collected.

## Dataset Setup

This project uses the following facial recognition datasets:

- LFW (Labeled Faces in the Wild)

- CelebA

To download the datasets:

```bash
chmod +x download_datasets.sh
./download_datasets.sh
```

This will:

1. Create the datasets/ directory

2. Download and extract both datasets

3. Fix nested folder issues (e.g. lfw-deepfunneled/lfw-deepfunneled)

4. Output clean folders ready for use with torchvision.datasets.ImageFolder

_Note: For CelebA, you need a Kaggle API key_
` set up as ~/.kaggle/kaggle.json.`
# final-clean-msc-biometric-security
# final-clean-msc-biometric-security
