# BPCE x Epitech Hackathon: VR with 3D Gaussian Splatting

A rapid proof of concept built during the Epitech x BPCE hackathon. The goal was to explore how virtual reality could be used in a banking and enterprise context at BPCE, using a real-world capture reconstructed with 3D Gaussian Splatting.

![Demo](Results/Capture_EVA.gif)

Full demo video: [Results/Capture_EVA.mp4](Results/Capture_EVA.mp4)

> **Status:** proof of concept, built quickly during a hackathon in January 2026. It was presented to a BPCE jury. It is not an official BPCE publication and not a production system.

## Team

- **Terra** ([Mr-terra](https://github.com/Mr-terra)): idea, brainstorming, video, AI training (Gaussian Splatting), Unity implementation (most of the work), and the technical part of the on-stage presentation
- **Axel** ([AxlMrt](https://github.com/AxlMrt)): project support and proposals, found the pre-trained AI model used for the project, helped with brainstorming and the video
- **Laurent** ([LaurentLF2023](https://github.com/LaurentLF2023)): presentation, economic model for integrating the project, and the commercial pitch

The Gaussian Splatting code is not written by the team. It is the official implementation from Inria, included in [gaussian-splatting/](gaussian-splatting/) (see [Credits](#credits)).

The Unity and AI parts combine existing projects rather than being written from scratch:

- Project 1: Gaussian Splatting fork, [Mr-terra/Hackaton-BPCE-Gaussian-Splatting](https://github.com/Mr-terra/Hackaton-BPCE-Gaussian-Splatting). The demo scene is not pushed there yet.
- Project 2: the Unity project. It is not available, so it is not included in this repository.
- AI model: the 3D Gaussian Splatting method from the upstream project. Pre-trained models are published on the [upstream project page](https://repo-sam.inria.fr/fungraph/3d-gaussian-splatting/) (see [docs/upstream.md](docs/upstream.md)).

## Stack

- **Unity:** 2022.3.47f1
- **Target device:** Meta Quest (2 or 3)
- **Gaussian Splatting:** upstream Inria implementation, PyTorch and CUDA

## Results

No quantitative evaluation of the BPCE capture has been run yet. The charts in [gaussian-splatting/results.md](gaussian-splatting/results.md) were added by the upstream project maintainers (see the upstream git history). They are not measured by this team.

## Quick start

Gaussian Splatting part. Tested by the team on one machine (laptop with an NVIDIA RTX 4070):

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
- The installation was run on one machine only. Other setups are not verified.
- Training takes about 3-4 hours on a laptop RTX 4070 to reach a visible result.
- The Gaussian Splatting code and part of the Unity and AI work come from existing projects.
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

**Combined projects:** see [Team](#team).

**Hackathon:** Epitech x BPCE.

**Posts about the project** (LinkedIn, not official publications):
- https://lnkd.in/p/ek92igXw
- https://lnkd.in/p/erGKB28D
- https://lnkd.in/p/ek-k9YcV

## License

This repository is released under the same license as the upstream code: the Gaussian-Splatting License from Inria and MPII, in [gaussian-splatting/LICENSE.md](gaussian-splatting/LICENSE.md). It permits **non-commercial use only** (research and evaluation). It does not allow commercial exploitation or distribution for commercial purposes. This applies to the team's additions as well.
