# Capture pipeline

This document describes how the input data for the demo scene was captured and how it is converted for training.

> **Status: partially documented.** The capture device and settings are verified. The exact processing steps the team ran (COLMAP options, number of frames, training iterations) are not documented.

## Capture

- Device: Google Pixel 7 Pro.
- Camera settings: default (no manual exposure, focus or lens settings).
- Raw material: 8 photos and 2 video clips, kept in `Reference/`:
  - `Reference/Image/`: 8 JPG photos.
  - `Reference/Video/`: 2 `.TS.mp4` clips.
- Demo capture: `Results/Capture_EVA.mp4` (46 MB, tracked by git).

Default camera settings mean exposure can vary between frames. The upstream project provides an exposure compensation option for this case (`--use_expcomp` in `full_eval.py`; see [upstream.md](upstream.md#exposure-compensation)).

## Conversion

The upstream `convert.py` runs COLMAP on a folder of images to estimate camera poses:

```bash
python convert.py -s <path/to/scene> [--resize] [--camera OPENCV] [--colmap_executable <path>] [--magick_executable <path>]
```

Options from the script:

| Flag | Purpose |
|---|---|
| `-s`, `--source_path` | Scene folder (required) |
| `--camera` | Camera model, default `OPENCV` |
| `--resize` | Also produce downscaled images |
| `--skip_matching` | Reuse an existing COLMAP database |
| `--no_gpu` | Disable GPU for COLMAP feature extraction |
| `--colmap_executable`, `--magick_executable` | Paths to binaries if not on `PATH` |

## Training

Training command, from the upstream project:

```bash
python train.py -s <path/to/scene>
```

Training on the team's machine took about 3-4 hours on a laptop with an NVIDIA RTX 4070 GPU, to reach a visible result. The iteration count and other settings used are not documented.

