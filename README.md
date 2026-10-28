# BPCE x Epitech Hackathon: VR with 3D Gaussian Splatting

A rapid proof of concept built during the Epitech x BPCE hackathon. The goal was to explore how virtual reality could be used in a banking and enterprise context at BPCE, using a real-world capture reconstructed with 3D Gaussian Splatting.

![Demo](Results/Capture_EVA.gif)

Full demo video: [Results/Capture_EVA.mp4](Results/Capture_EVA.mp4)

> **Status:** proof of concept, built quickly during a hackathon. It is not a production system.

## What the team built

- **Concept and idea:** Terra
- **Video capture:** Terra, on a Pixel 7 Pro with default camera settings
- **AI training (Gaussian Splatting):** Terra
- **Unity implementation:** Terra, most of the work
- **Team:** Terra, with classmates and fellow students. Full list of members: `TBD`

The Gaussian Splatting code is not written by the team. It is the official implementation from Inria, included in [gaussian-splatting/](gaussian-splatting/) (see [Credits](#credits)).

The Unity and AI parts combine two existing open projects rather than being written from scratch:

- Project 1: `TBD` (name and link)
- Project 2: `TBD` (name and link)
- Final Unity project: `TBD` (not included in this repository; publish or cite)

## Stack

- **Gaussian Splatting:** upstream Inria implementation, PyTorch and CUDA
- **Unity:** `TBD`
- **Target device (VR headset):** `TBD`

## Results

No quantitative evaluation of the BPCE capture has been run yet. The charts in [gaussian-splatting/results.md](gaussian-splatting/results.md) come from the upstream project and are not results measured by this team.

## Quick start

Gaussian Splatting part (upstream setup, not yet verified by the team):

```bash
git clone https://github.com/Mr-terra/project-EVA.git
cd project-EVA/gaussian-splatting
conda env create --file environment.yml
conda activate gaussian_splatting
```

The upstream code and its submodule sources are stored as regular files, so no `git submodule` step is needed.

Details, pinned versions and known issues are in [docs/setup.md](docs/setup.md).
The capture and conversion steps are in [docs/capture-pipeline.md](docs/capture-pipeline.md).
Evaluation scripts and metrics are in [docs/evaluation.md](docs/evaluation.md).

## Repository layout

| Path | Content |
|---|---|
| `Reference/` | Source photos and videos from the Pixel 7 Pro |
| `Results/` | Demo video and GIF |
| `docs/` | Technical documentation for this project |
| `gaussian-splatting/` | Upstream Inria code: training, rendering, evaluation, viewers, and the original README |

## Limitations

- Proof of concept built in a hackathon timeframe. Not tested at scale or in production.
- Relies on legacy versions: Python 3.7.13, PyTorch 1.12.1, CUDA 11.6.
- Reproducibility of the team's setup is not verified. Only the upstream setup is documented.
- The Gaussian Splatting code and part of the Unity and AI work come from existing projects.
- Training time and hardware used by the team: `TBD`.
- The git history contains about 250 MB of MP4 files, so cloning takes a while.

## Credits

**3D Gaussian Splatting** (upstream, Inria, GRAPHDECO):

```bibtex
@Article{kerbl3Dgaussians,
  author       = {Kerbl, Bernhard and Kopanas, Georgios and Leimk{\"u}hler, Thomas and Drettakis, George},
  title        = {3D Gaussian Splatting for Real-Time Radiance Field Rendering},
  journal      = {ACM Transactions on Graphics},
  number       = {4},
  volume       = {42},
  month        = {July},
  year         = {2023},
  url          = {https://repo-sam.inria.fr/fungraph/3d-gaussian-splatting/}
}
```

Original README, with paper links, datasets and viewer instructions: [docs/upstream.md](docs/upstream.md).

**Combined projects:** `TBD` (see [What the team built](#what-the-team-built)).

**Hackathon:** Epitech x BPCE.

## License

The upstream code is under the Inria license in [gaussian-splatting/LICENSE.md](gaussian-splatting/LICENSE.md). It permits **non-commercial use only** (research and evaluation). The license does not allow commercial exploitation or distribution for commercial purposes.

The license for the team's own additions: `TBD`.
