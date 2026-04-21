# 🧬 High-Throughput Drug Docking Pipeline

A reproducible and scalable pipeline for **high-throughput molecular docking** of FDA-approved drugs using AutoDock Vina.
This workflow includes **ligand preprocessing, energy minimization, conversion, docking, and score extraction**.

---

## 🔬 Workflow Overview

SDF (DrugBank) → Energy Minimization → PDBQT Conversion → Docking → Score Extraction

---

## ⚙️ Requirements

### 🧰 Software

* AutoDock Vina
* OpenBabel
* GNU Parallel (optional for speed)
* Linux (Ubuntu recommended)

---

## 📁 Project Structure

```
scripts/        → pipeline scripts  
config/         → docking configuration  
data/           → user-provided input files  
results/        → docking outputs (ignored in Git)  
logs/           → docking logs (ignored in Git)
```

---

## 🚀 How to Run

### 1️⃣ Energy Minimization

```bash
bash scripts/01_minimization.sh
```

* Uses MMFF94 force field
* Falls back to UFF if needed

---

### 2️⃣ Convert to PDBQT

```bash
bash scripts/02_convert_pdbqt.sh
```

---

### 3️⃣ Docking

```bash
bash scripts/03_docking.sh
```

---

### 4️⃣ Extract Scores

```bash
bash scripts/04_extract_scores.sh
```

---

## 📄 Input Files

* Protein: `protein.pdbqt`
* Ligands: SDF files placed in:

```
sdf/split_sdf_dbid/
```

---

## 📊 Output

* Docked structures → `results/`
* Log files → `logs/`
* Docking scores → `docking_scores.csv`

---

## ⚠️ Data Note

DrugBank datasets are **not included** due to size and licensing restrictions.
Users must download FDA-approved drug structures manually and place them in the appropriate directory.

---

## ⚠️ Important Considerations

* Ligands containing **boron atoms** should be removed before docking
* Proper **energy minimization is critical** for accurate docking results
* Ensure sufficient **disk space** before running large-scale docking

---

## 💡 Features

* Fully automated pipeline
* Handles large ligand libraries
* Error-tolerant minimization (MMFF94 → UFF fallback)
* Easy to adapt for different proteins

---

## 👩‍🔬 Author

Krutika Arer
MSc Bioinformatics
