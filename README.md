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
     cd ../models/modcII_quick
     ../src/ttsre

on a standard Ubuntu linux. The actual *cfitsio* directory can vary on your system. Look
for **libcfitsio.a** on your system.


