# Adversarial Attacks on AI-Based Biometric Authentication Systems  
MSc Dissertation Project – Stella Williams  

---

## Overview

This repository contains the experimental implementation supporting the MSc dissertation:

**“Adversarial Attacks on AI-Based Biometric Authentication Systems”**

The project investigates adversarial manipulation in embedding-based facial biometric authentication systems (FaceNet-style architectures). The research evaluates authentication-relevant outcomes using cosine similarity thresholds rather than classification error metrics.

Both attack capability and lightweight defensive mitigation are evaluated under constrained computational conditions (CPU-only execution).

---

## Project Goal

This research investigates adversarial vulnerabilities in facial recognition systems and evaluates lightweight, explainable defence mechanisms suitable for small and medium-sized enterprises (SMEs).

The project includes:

- Benchmark datasets (LFW; CelebA optional)
- Pixel-space attacks (FGSM, PGD)
- Latent-space impersonation (StyleGAN2-ADA)
- Authentication-threshold analysis
- Lightweight operational mitigation strategies

The emphasis is on authentication compromise (false acceptance), not classification misprediction.

---

## Repository Structure

```
msc-biometric-security-clean/
│
├── Datasets/                     # LFW and optional CelebA datasets
├── Models/                       # Pre-trained StyleGAN2 model (.pkl)
├── stylegan2-ada-pytorch/        # External StyleGAN2-ADA repository
│
├── Notebooks/
│   ├── 1_data_loading_exploration.ipynb
│   ├── 2_model_training_fgsm_attack.ipynb
│   ├── 3_defence_methods_analysis.ipynb
│   ├── MainProject_Baseline-Copy1_chap7.ipynb
│   │
│   ├── latent_space_experiments/
│   │   ├── 1_latent_impersonation_stylegan.ipynb
│   │   ├── 4_latent_impersonation_stylegan-refactor_NO_INVERSION_MULTIRUN.ipynb
│   │   ├── secure_latent_test.py.ipynb
│   │   ├── latent_experiment_log_*.txt
│   │   └── logs/
│   │       └── biometric_auth_security_log.txt
│   │
│   └── Logs/                     # Personal experimental logs
│
├── Outputs/                      # Generated adversarial images
├── Reports/                      # Dissertation drafts
├── LiteratureReview/
├── ResearchProposal/
├── Scripts/
├── requirements.txt
└── README.md
```

---

## Clone the Repository

```bash
git clone https://gitlab.com/stoodlesz/final-clean-msc-biometric-security.git
cd msc-biometric-security-clean
```

---

## (Optional) Create a Virtual Environment

```bash
python3 -m venv venv
source venv/bin/activate
```

For fish shell:

```bash
source venv/bin/activate.fish
```

---

## Install Dependencies

```bash
pip install -r requirements.txt
```

Ensure PyTorch is installed with appropriate backend support (CPU, MPS, or CUDA).

---

## External Dependencies

Latent-space experiments require StyleGAN2-ADA.

Clone separately:

```bash
git clone https://github.com/NVlabs/stylegan2-ada-pytorch
```

Place the repository at project root:

```
/msc-biometric-security-clean/stylegan2-ada-pytorch
```

The pre-trained FFHQ model (`stylegan2-ffhq.pkl`) must be placed in:

```
/Models/
```

---

## Dataset Setup

This project uses:

- LFW (Labeled Faces in the Wild)
- CelebA (optional, for extended experimentation)

If using an automated setup script:

```bash
chmod +x download_datasets.sh
./download_datasets.sh
```

This will:

1. Create the `Datasets/` directory  
2. Download and extract datasets  
3. Correct nested folder issues  
4. Prepare directory structure for `torchvision.datasets.ImageFolder`

For CelebA, a Kaggle API key must be configured at:

```
~/.kaggle/kaggle.json
```

---

## Running Experiments

### Launch Jupyter

```bash
jupyter notebook
```

Recommended starting points:

- `Notebooks/2_model_training_fgsm_attack.ipynb`
- `Notebooks/MainProject_Baseline-Copy1_chap7.ipynb`
- `Notebooks/latent_space_experiments/1_latent_impersonation_stylegan.ipynb    # inversion included experiment`
- `Notebooks/latent_space_experiments/4_latent_impersonation_stylegan-refactor_NO_INVERSION_MULTIRUN.ipynb`
- `Notebooks/latent_space_experiments/secure_latent_test.py.ipynb`

---

## Attack Implementations

### Pixel-Space Attacks

Implemented using FGSM and PGD optimised against embedding similarity objectives.

Primary notebook:

```
Notebooks/MainProject_Baseline-Copy1_chap7.ipynb
```

Demonstrates embedding displacement under constrained perturbation budgets.

---

### Latent-Space Impersonation

Location:

```
Notebooks/latent_space_experiments/
```

Two configurations were evaluated:

#### Inversion-Based Attack
Notebook:
```
1_latent_impersonation_stylegan.ipynb
```
- High computational cost
- Near-complete embedding convergence (~0.98 cosine)

#### Inversion-Free (Reduced-Compute) Multi-Run Attack
Notebook:
```
4_latent_impersonation_stylegan-refactor_NO_INVERSION_MULTIRUN.ipynb
```
- Random latent initialisation
- Consistent convergence (~0.86 cosine under CPU constraints)
- Primary feasibility evaluation (Chapter 7)

---

## Logging Structure

### Latent Impersonation Logs

Location:
```
Notebooks/latent_space_experiments/
```

Files:
```
latent_experiment_log_*.txt
```

These record:

- Cosine similarity progression
- Runtime
- Multi-run summaries

---

### Security Validation Logs

Location:
```
Notebooks/latent_space_experiments/logs/
```

File:
```
biometric_auth_security_log.txt
```

Records:

- Secure verification decisions
- Threshold triggers
- Similarity trajectory detection
- Rate-limiting behaviour

---

### Personal Experimental Logs

Location:
```
Notebooks/Logs/
```

Contain development-phase debugging outputs and exploratory experiments.

---

## Reproducibility Notes

- Experiments were conducted in a CPU-only environment.
- Latent-space optimisation runtime may vary significantly depending on hardware.
- Threshold values (0.80–0.90 cosine) reflect authentication-oriented evaluation rather than classification benchmarks.
- Reduced-compute variants are provided for feasibility testing.

---

## Ethical Notice

This project uses publicly available facial datasets (e.g., LFW) strictly for academic research purposes. All datasets comply with their respective licensing agreements. No personal data is collected.

Attack implementations are intended solely for robustness evaluation and defensive research.

---

## Academic Context

This repository supports a dissertation analysing:

- Embedding-space geometry and identity convergence  
- Authentication-relevant adversarial threat models  
- Feasibility-aware attack modelling  
- Lightweight mitigation strategies suitable for SMEs  
- Regulatory implications under UK GDPR and EU AI governance  

The work emphasises operational realism over benchmark attack performance.

---

## Author

Stella Williams  
MSc Cyber Security  
University of Essex (Online)
