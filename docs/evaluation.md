# Evaluation

This document explains how the upstream evaluation scripts work and where the charts come from.

> **Important:** the charts in [`results.md`](../gaussian-splatting/results.md) were added to the upstream project by its maintainers (2024, see the upstream git history). They show the upstream project's results on MipNeRF360, Tanks&Temples and Deep Blending. The team did not produce them and has not re-run them. No evaluation of the captured BPCE scene has been run yet.

## Scripts

- `full_eval.py`: runs training, rendering and metrics on the standard datasets.
- `render.py`: renders a trained model (`--iteration`, `--skip_train`, `--skip_test`).
- `metrics.py`: computes PSNR, SSIM and LPIPS for one or more models (`-m`, multiple paths allowed).

`full_eval.py` options:

| Flag | Purpose |
|---|---|
| `-m360` / `--mipnerf360` | MipNeRF360 dataset path (required) |
| `-tat` / `--tanksandtemples` | Tanks&Temples dataset path (required) |
| `-db` / `--deepblending` | Deep Blending dataset path (required) |
| `--output_path` | Output folder, default `./eval` |
| `--skip_training`, `--skip_rendering`, `--skip_metrics` | Run only part of the pipeline |
| `--use_depth` | Depth regularization |
| `--use_expcomp` | Exposure compensation |
| `--aa` | Antialiasing |
| `--fast` | Accelerated rasterizer |

## Metrics

Features compared in `results.md`: default vs accelerated rasterizer, depth regularization (DR), antialiasing (AA), exposure compensation, and two optimizers (default and sparse Adam, for the accelerated rasterizer).
