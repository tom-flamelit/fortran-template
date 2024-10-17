#### **Basic Build Setup (Makefile)**
```makefile
# Define compiler
FC = gfortran
FLAGS = -Wall -g

# Project files
SRC = src/main.f90
OBJ = $(SRC:.f90=.o)
EXE = bin/project-name

# Create the build and bin directories if they don't exist
$(EXE): $(OBJ)
	@mkdir -p bin
	$(FC) -o $@ $(OBJ)

%.o: %.f90
	$(FC) $(FLAGS) -c $< -o $@

.PHONY: clean

clean:
	rm -f $(OBJ) $(EXE)
