# Markov State Model for Molecular Dynamics: Seminars and Tutorials

Toni Giorgino (IBF-CNR), www.giorginolab.it.

This repository tracks this seminar as taught at the Universities Pompeu Fabra, Padova, Milano and others, for various courses.

To preview the notebooks' code "live" with results, open it in Google Colab (or locally).


## Editions

The latest edition is 2025, University of Milan (slides only, the same deck as 2023 and 2024). The working tree of this repository (`main`) holds the most recent edition that includes the hands-on notebooks (2025, UniPd). Earlier editions are kept as tags; see [PAST_EDITIONS.md](PAST_EDITIONS.md).

## Contents of `main`

* `slides/`: the seminar slides (`markov_seminar.pdf`) and the self-practice handout (`markov_seminar_self_practice.pdf`).
* `practice/`: the hands-on material.
  * `1_Markov_R_numerics`, `2_Markov_Python_Deeptime_basics`, `3_Markov_Python_Deeptime_MD`: the practical sessions (R and Python/DeepTime).
  * `4_Markov_R_1D_trajectory`: R notebook on a 1-D trajectory (transition counts, implied timescales, eigenvectors), using `practice/data/`.
  * `data/`, `img/`: data files and figures used by the notebooks. See [practice/README.md](practice/README.md).

Older editions (tags) keep their original flat layout.

The former `Markov-Tutorial-Data` repository has been merged here.
