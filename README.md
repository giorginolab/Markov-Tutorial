# Markov state model tutorial

Toni Giorgino (IBF-CNR), www.giorginolab.it, for Prof. Fuxreiter's course at the University of Padova.

To preview the notebooks' code "live" with results, open it in Google Colab (or locally).

Work in progress - please check again for the final version.

## Editions

The latest edition is 2025, University of Milan ([`2025-UniMi`](../../tree/2025-UniMi); slides only, the same deck as 2023 and 2024). The working tree of this repository (`main`) holds the most recent edition that includes the hands-on notebooks (2025, UniPd). The history is linear, with one commit per edition (in chronological order), each marked by a tag:

| Tag | Site | Former repository |
|---|---|---|
| [`2019-BCN`](../../tree/2019-BCN) | Master MSI, Barcelona | `2019-Markov-Tutorial-BCN` |
| [`2019-UniMi`](../../tree/2019-UniMi) | University of Milan | `2019-Markov-Tutorial-UniMi` |
| [`2020-BCN`](../../tree/2020-BCN) | Master MSI, Barcelona | `2020-Markov-Tutorial-BCN` |
| [`2020-UniMi`](../../tree/2020-UniMi) | University of Milan | `2020-Markov-Tutorial-UniMi` |
| [`2021-BCN`](../../tree/2021-BCN) | Master MSI, Barcelona | `2021-Markov-Tutorial-BCN` |
| [`2021-UniMi`](../../tree/2021-UniMi) | University of Milan | `2021-Markov-Tutorial-UniMi` |
| [`2022-BCN`](../../tree/2022-BCN) | Master MSI, Barcelona | `2022-Markov-Tutorial-BCN` |
| [`2022-UniMi`](../../tree/2022-UniMi) | University of Milan | `2022-Markov-Tutorial-UniMi` |
| [`2022-UniPD`](../../tree/2022-UniPD) | University of Padova | `2022-Markov-Tutorial-UniPD` |
| [`2023-BCN`](../../tree/2023-BCN) | Master MSI, Barcelona | `2023-Markov-Tutorial-BCN` |
| [`2023-UniMi`](../../tree/2023-UniMi) | University of Milan | `2023-Markov-Tutorial-UniMi` |
| [`2023-UniPD`](../../tree/2023-UniPD) | University of Padova | `2023-Markov-Tutorial-UniPD` |
| [`2024-BCN`](../../tree/2024-BCN) | Master MSI, Barcelona | `2024-Markov-Tutorial-BCN` |
| [`2024-UniMi`](../../tree/2024-UniMi) | University of Milan (slides only; deck unchanged from 2023) | `2024-Markov-Tutorial-UniMi` |
| [`2025-UniMi`](../../tree/2025-UniMi) | University of Milan (slides only; deck unchanged from 2023) | `2025-Markov-Tutorial-UniMi` |
| [`2025-UniPd`](../../tree/2025-UniPd) | University of Padova (slides and notebooks; same files as `main`) | `2025-Markov-Tutorial-UniPd` |

To get an edition: `git checkout 2023-BCN`. Each tag is the final state of the original per-edition repository, which has since been merged here and deleted; the original fine-grained commits were squashed into one commit per edition. `2024-UniMi` and `2025-UniMi` record editions taught with the unchanged 2023 UniMi deck.

## Contents of `main`

* `1_Markov_R_numerics`, `2_Markov_Python_Deeptime_basics`, `3_Markov_Python_Deeptime_MD`: the practical sessions (R and Python/DeepTime).
* `MarkovFromScratch.ipynb`: R notebook on a 1-D trajectory (transition counts, implied timescales, eigenvectors). It reads `data/data1.csv.gz` and `data/data10.csv.gz`.
* `data/`, `img/`: data files and figures used by the notebooks.

The former `Markov-Tutorial-Data` repository has been merged here.
