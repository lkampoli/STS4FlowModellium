# STS4FlowModellium
This code is the Fortran conversion of the Matlab version.

It computes the relaxation of air (5 species) mixture behind a shock wave.

Rate coefficient models:
* FHO for vibrational transitions
* Savelev model for Zeldovich reaction
* Treanor-Marrone model for dissociation reactions with: U = D/6k, Park's parameters in Arrhenius law

# Pre-requisites
* linux environment
* ifort/gfortran compilers
* lapack/openblas/mkl libraries
* gnuplot (optional, only for plotting)

# How to use it?
Compile in `src` by running the `compile.sh` script which will produce the executable `shprot.x`, therein, then `./shprot.x` to run.

* By calling `dvode_f90(rpart_fho, ...)` will solve the full 1D problem employing the ODE solver.
* By calling `compute_rhs(...)` will compute the RHS of the system only once. 
  Here, some care should be used regarding the dimensions and some adjustments may be required.

# Notes
* Intel compiler is preferred for stability reasons.
* set at least `export OMP_NUM_THREADS=1` to avoid unsafe multi-threading issues.
* `plot.sh` not directly working since solutions files writing is commented in `main.f90` and Matlab solutions are not included.

