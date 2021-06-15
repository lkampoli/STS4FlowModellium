rm shprot.x *.o *.mod *.eps

ifort -c kind_module.f90 \
            constants.f90 \
            init_energy.f90 \
            kdis.f90 \
            DR_Module.f90 \
            k_ex_savelev_st.f90 \
            EX_Module.f90 \
            brent_module.f90 \
            kvt_fho.f90 \
            VT_Module.f90 \
            kvv_fho.f90 \
            VV_Module.f90 \
            rpart_fho.f90 \
            ODE/odepack.f \
            ODE/odepack_sub1.f \
            ODE/odepack_sub2.f \
            OpenMP_dvode_f90_m.f90 \
            main.f90

# compiling with gfortran is somewhow more
# sensible to the parameter values of the
# brent subroutine for the zero finding
#gfortran *.o -lopenblas -o shprot.x
ifort *.o -mkl -o shprot.x

#time ./shprot.x

# some write lines should be uncommented in the main
# in order to write solution files and matlab results
# should be added for comparison ...
#./plot.sh
