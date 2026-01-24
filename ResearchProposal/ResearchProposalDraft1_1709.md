# MSc Dissertation: Research Proposal and Ethical Approval

## 1. Introduction

**Project Title**: Adversarial Attacks on AI-Based Biometric Authentication Systems: Detection and Defence in Practice

**Research Question**:  
How can adversarial attacks on AI-driven facial recognition systems be detected and mitigated in resource-constrained environments such as SMEs?

**Motivation**:  
Facial recognition is increasingly used in both commercial and governmental applications, yet remains vulnerable to adversarial attacks. These attacks can undermine trust, enable unauthorised access, and challenge regulatory compliance. SMEs often lack the resources and expertise to implement robust defences, creating a security and accessibility gap. This project seeks to address that gap through practical and lightweight solutions.

---

## 2. Aims and Objectives

**Aim**:  
To design, implement, and evaluate adversarial defence strategies that are lightweight, reproducible, and usable in SME environments.

**Objectives**:
- Build a baseline facial recognition model (FaceNet or ResNet)
- Simulate adversarial attacks (FGSM, PGD)
- Develop and apply detection and defence mechanisms
- Evaluate with practical metrics (FAR, FRR, ASR, latency)
- Package tools and findings for SME usage

---

## 3. Literature Review Skeleton

- Introduction to biometric authentication
- Deep learning in facial recognition (FaceNet, CNNs, ArcFace)
- Overview of adversarial attacks (FGSM, PGD, C&W)
- Defence strategies (adversarial training, JPEG compression)
- Metrics for evaluation (FAR, FRR, latency, ASR)
- Regulatory context and GDPR
- Gaps in current literature: lack of reproducible, lightweight SME-oriented defences

---

## 4. Research Methods

- **Approach**: Hybrid software engineering + analytical
- **Tools**: Python, PyTorch, Jupyter Notebooks
- **Datasets**: LFW, CelebA (manually downloaded)
- **Model**: Pretrained FaceNet/ResNet (fine-tuned if needed)
- **Evaluation Metrics**: Accuracy, FAR, FRR, ASR, latency
- **Analysis**: Visualisation of perturbations, confusion matrices, time benchmarks

---

## 5. Work Packages and Timeline

### Deliverables
- Notebook-based attack and defence simulations
- Toolkit: defence code + checklist for SMEs
- Literature review and final dissertation

### Sprint Schedule

| Sprint | Dates | Focus |
|--------|-------|-------|
| Sprint 1 | 5 Aug – 18 Aug | Finalise topic & scope |
| Sprint 2 | 19 Aug – 1 Sep | Setup lit review & references |
| Sprint 3 | 2 Sep – 15 Sep | Write literature review |
| Sprint 4 | 16 Sep – 22 Sep | Research proposal & ethics submission |
| Sprint 5 | 23 Sep – 6 Oct | Dataset + baseline model |
| Sprint 6 | 7 Oct – 20 Oct | Implement attacks (FGSM, PGD) |
| Sprint 7 | 21 Oct – 3 Nov | Apply and test defences |
| Sprint 8 | 4 Nov – 17 Nov | Evaluate with metrics |
| Sprint 9 | 18 Nov – 5 Jan | Write-up + artefacts |
| Sprint 10 | 6 Jan – 23 Feb | Final polish + presentation |

---

## 6. CyBOK Reference

**Primary Knowledge Area**:  
- **AI & Machine Learning** (CyBOK v1.1, Section 2.3)

**Supporting Areas**:  
- **Privacy & Online Rights**
- **Software Security Engineering**

---

## 7. Ethical Considerations

This research **does not involve human participants** or sensitive personal data.  
All datasets (LFW, CelebA) are publicly available and anonymised.

**Key considerations**:
- No live users or participant data
- No deception or risk to individuals
- Data stored securely on an encrypted drive
- Any published artefacts will use anonymised, public datasets only
- No disclosure of offensive, biased, or facially identifiable data

The project complies with:
- UoEO Ethical Approval Policy (2025)
- GDPR guidelines on biometric data (ICO, 2025)

---

## 8. References

Use Zotero to export your references in Harvard format and paste them here or insert manually from your latest bibliography.

---

## 🔁 Next Steps

- Submit this research proposal and ethics documents via Moodle
- Await supervisor feedback and approval
- Begin implementation from Sprint 5 onwards
