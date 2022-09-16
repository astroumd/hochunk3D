# hochunk3D: 3-D Radiation Transfer Codes

This code was imported from https://gemelli.colorado.edu/~bwhitney/codes/
(without the SVN history). The initial import included the patched output.F90 file.

## Branches

Please check which branches exist, in case they will benefit you

* main : this is the original import

* UMD : The UMD branch contains a number of  improvements, and it's easiest to grab
this code using

     git clone -b UMD https://github.com/astroumd/hochunk3d

* test : TBD


## Installation

Follow guidelines in instructions.txt there to configure, compile and run.
For example:

     cd src
     ./configure FC=gfortran --enable-fits --with-cfitsio=/usr/lib/x86_64-linux-gnu
     make
     make bench

on a standard Ubuntu linux. The actual *cfitsio* directory can vary on your system. Look
for **libcfitsio.a** on your system.

The benchmark takes about 4-8 mins on a typical 2022 type CPU.


## Running

In the UMD branch we (will) have a wrapper that enable running the
code a little easier, while creating run directories for a new set of
parameters.

The wrapper needs to do:
     - start with a clean "hochunk3d/results"
     - commands:
            cd results
	    ln -s ../models/modcII_quick/mctherm.par
      	    ln -s ../models/parfiles
     - create a rundirectory with a new mctherm.par file (or use NEMO's pedit)
            mkdir run123
	    cp mcterm.par run123
	    cd run123
	    /usr/bin/time ../../src/ttsre > bench.log 2>&1
     - note that the PARDIR is always ../parfiles, because it assumes we're running
       from inside models, and we use symlinks to pretend we are. This way
