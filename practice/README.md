# Practice

Hands-on notebooks for the Markov state model seminar. Each opens in Google Colab (badge at the top of the notebook) or runs locally. Slides are in [`../slides`](../slides).

| Notebook | Language | Content |
|---|---|---|
| [`1_Markov_R_numerics`](1_Markov_R_numerics.ipynb) | R | Discrete Markov chains from scratch: sampling, stationary distribution, estimating the transition matrix from a sequence, Markovianity. |
| [`2_Markov_Python_Deeptime_basics`](2_Markov_Python_Deeptime_basics.ipynb) | Python | The same calculations with the [DeepTime](https://deeptime-ml.github.io/latest/index.html) library. |
| [`3_Markov_Python_Deeptime_MD`](3_Markov_Python_Deeptime_MD.ipynb) | Python | A realistic example: contacts, TICA, clustering and an MSM from three MD trajectories (Fuxreiter et al., [Zenodo 7657119](https://zenodo.org/record/7657119)). The trajectories are downloaded by the notebook. |
| [`4_Markov_R_1D_trajectory`](4_Markov_R_1D_trajectory.ipynb) | R | MSM of a 1-D trajectory without specialized libraries: Boltzmann inversion, transition counts, implied timescales, eigenvectors. Reads `data/`. |

`data/` holds the 1-D trajectories (`data1`, `data10`, gzipped text, one value per line) and `img/` the figures used by the notebooks.
