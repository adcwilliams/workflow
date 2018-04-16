FC=gfortran
FFLAGS=-O2
OBJ=sample_module.o testmain.o

%.o: %.f90
	$(FC) -c -o $@ $< $(FFLAGS)

testmain: $(OBJ)
	$(FC) -o $@ $^ $(FFLAGS) 
