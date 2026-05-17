# Evaluating BalDRO for LLM Unlearning: Alternative Objectives and Cross-Model Generalisation

**BlueDot AI Safety Technical Project · May 2026**

---

## Overview

As large language models are deployed more widely, a practical question arises: what happens when a model needs to "forget" something it was trained on — a private document, copyrighted text, or sensitive personal information? Retraining from scratch is prohibitively expensive, so the field of **machine unlearning** develops methods to surgically remove the influence of specific training data from an already-trained model.

This project builds on **BalDRO**, a recent method that frames unlearning as a robust optimisation problem. The key insight is that not all examples are equally easy to forget — some resist standard unlearning updates while others are over-erased. BalDRO addresses this by adaptively upweighting the hardest-to-forget samples during training.

---

## What I Did

I extended BalDRO's evaluation in two directions:

**1. Alternative forget objectives.** BalDRO was originally paired with a specific loss function (NPO). I tested whether other loss functions from the unlearning literature — Weighted Gradient Ascent (WGA) and Token-wise NPO (TNPO) — could be substituted in, and whether BalDRO's robustness framework would improve them.

**2. Cross-model generalisation.** BalDRO's original experiments used only one model (Llama-2-7B). I ran experiments across four additional model families and scales: Llama-3.2-1B, Llama-3.1-8B, Qwen3-8B, and Mistral-7B-Instruct-v0.3.

All experiments used the **TOFU benchmark**, a standard evaluation suite for LLM unlearning, measuring forget quality (how completely the model forgot), model utility (how well it retained general capability), and gibberish rate (a sanity check distinguishing genuine forgetting from model collapse).

---

## Key Findings

- **NPO remains the strongest forget objective.** No alternative loss function matched it on the reference model, and wrapping alternatives with BalDRO's framework provided little to no benefit — likely because those objectives already handle per-token difficulty through their own mechanisms, leaving little for the robust reweighting to exploit.

- **BalDRO generalises well to Llama-3.1-8B.** Plain NPO nearly fails on this model (forget quality 0.054), while BalDRO + NPO fully recovers forgetting (0.990) and achieves the highest model utility of any configuration tested (0.675). This is the project's clearest positive result.

- **Results on Qwen3-8B and Mistral-7B are mixed.** Both models resist effective forgetting under the current setup, though BalDRO consistently improves model utility even when forgetting fails — suggesting the framework provides a stabilising effect on retain performance regardless of whether forgetting succeeds.

- **Results are preliminary.** Experiments used short training runs and limited hyperparameter sweeps due to compute constraints (Google Colab). Longer runs and broader sweeps would be needed to draw firm conclusions.

---

## Technical Stack

Python · PyTorch · HuggingFace Transformers · Hydra · Google Colab

---

📄 [Full technical write-up (PDF)](#)  
💻 [GitHub Repository](https://github.com/annahuynhly/BalDRO)
