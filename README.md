# Evolutionary Randomized Neural Network for imbalanced datasets

This code is based on the code of Qin-Yu Zhu et. al corresponding to the paper "Evolutionary Extreme Learning Machine". The code of Qin-Yu Zhu is based on the code of Kenneth Price and Rainer Storn available at http://www1.icsi.berkeley.edu/~storn/code.html#matl

We use to term Randomized Neural Network (RNN) as an equivalent term for Extreme Learning Machine (ELM). After reading several discussions about the controversy of the term, we think this is the most precise and fair term.

**DISCLAIMER: THE CODE IS NOT CLEAN ENOUGH** (since the original code is not). However, one researcher asked about the source code of my papers so I prefer to publish it. 

## Related papers

If you use this code, please cite the associated papers: 

J. Sánchez-Monedero, P.A. Gutiérrez, and C. Hervás-Martínez, "Evolutionary ordinal extreme learning machine", 8th International Conference on Hybrid Artificial Intelligent Systems, HAIS 2013. Lecture Notes in Computer Science, Volume 8073 LNAI, 2013, Pages 500-509 https://doi.org/10.1007/978-3-642-40846-5_50

J. Sánchez-Monedero, P.A. Gutiérrez, F. Fernández-Navarro and C. Hervás-Martínez, "Weighting Efficient Accuracy and Minimum Sensitivity for Evolving Multi-Class Classifiers", Neural Process Lett (2011) 34: 101. https://doi.org/10.1007/s11063-011-9186-9

Qin-Yu Zhu, A.K.Qin, P.N.Suganthan and Guang-Bin Huang, "Evolutionary extreme learning machine", Pattern Recognition, Volume 38, Issue 10, October 2005, Pages 1759-1763 https://doi.org/10.1016/j.patcog.2005.03.028

## How to run the code

This is an old code (2011) that I have ported to [ORCA](https://github.com/ayrna/orca) to ease the use. You will need to download ORCA (installation is not necessary) and then copy `ERNN.m` into 'Algorithms' folder. For more information see [Adding a new method to ORCA](https://github.com/ayrna/orca/blob/master/doc/orca_addmethod.md). After adding `ERNN.m` you will benefit from experiments description using INI files, optimization of parameters, parallelization of experiments, CSV reports, etc. 
