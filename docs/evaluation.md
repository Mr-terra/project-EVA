# Evaluation

This document explains how the upstream evaluation scripts work and where the charts come from.

> **Important:** the charts in [`results.md`](../gaussian-splatting/results.md) come from the upstream project (MipNeRF360, Tanks&Temples, Deep Blending). Their exact origin for this fork is **not confirmed**. They are not results measured by the BPCE team. No evaluation of the captured BPCE scene has been run yet (`TBD`).

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

## Next steps

- Run the pipeline on the BPCE capture and report metrics here, if a reference is available: `TBD`
- Confirm the origin of the upstream charts before citing them as results: `TBD`
