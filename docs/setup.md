# Setup

This document describes how to prepare the environment for the Gaussian Splatting part of this repository. It documents the **upstream** setup from the original Inria project.

> **Status: tested once, on one machine.** The installation ran on Terra's laptop (NVIDIA RTX 4070). No one else on the team had a machine able to run the model, so other setups are not verified. Driver: Windows display driver version `32.0.15.8183` (NVIDIA driver 581.83 in the usual numbering).

## Requirements

Versions pinned in `gaussian-splatting/environment.yml` (legacy):

| Component | Version |
|---|---|
| Python | 3.7.13 |
| PyTorch | 1.12.1 |
| torchvision / torchaudio | 0.13.1 / 0.12.1 |
| CUDA toolkit | 11.6 |

The upstream project requires an NVIDIA GPU with CUDA support. The team's machine: laptop with an NVIDIA GeForce RTX 4070 (laptop GPU).

## Clone

```bash
git clone https://github.com/Mr-terra/project-EVA.git
cd project-EVA/gaussian-splatting
```

The upstream code lives in `gaussian-splatting/`. The `submodules/` folders and `SIBR_viewers/` are stored as regular files in this repository, not as git submodules, so `git submodule update --init` is **not** needed here.

Dependencies declared in `.gitmodules` (for reference, now stored as regular files):

| Path | Source | Notes |
|---|---|---|
| `submodules/diff-gaussian-rasterization` | graphdeco-inria | branch `dr_aa` |
| `submodules/simple-knn` | Inria GitLab | |
| `submodules/fused-ssim` | rahul-goel | |
| `SIBR_viewers` | Inria GitLab | only needed for the interactive viewers |

## Conda environment

From `project-EVA/gaussian-splatting/`:

```bash
conda env create --file environment.yml
conda activate gaussian_splatting
```

`environment.yml` installs the local `submodules/` folders with `pip`.

## Notes

- `gaussian-splatting/.gitignore` excludes `output/`, `build/` and `*.pyc`. Trained models go to `output/`.
- `gaussian-splatting/venv/` (about 373 MB, roughly 7,600 files) and `gaussian-splatting/cuda-keyring_1.1-1_all.deb` are **kept in the repository** by the team's choice.
- `Results/Capture_EVA.gif` (59 MB) is **not tracked by git**. A clean clone does not include it, so copy it by hand.
- The Unity project is not part of this repository (see the root README).

## Open questions

- None on the driver. Other machines: not tested.
