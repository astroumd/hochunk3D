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
     make clean all bench

on a standard Ubuntu linux. The actual *cfitsio* directory can vary on your system. Look
for **libcfitsio.a** on your system. For example, at UMD this would be /local/lib64

The benchmark takes about 4-8 mins on a typical 2022 type CPU, though in the running/
directory a much faster benchmark for testing is given.


## Running

In the UMD branch we have a wrapper in the running/ subdirectory that
enables running the code a little easier while surveying a large
number of models (e.g. looping over some parameters).  Is does this by
creating run directories for each set of parameters. Some examples
exist how to create the runfiles, as well how to efficiently farm them
out to different machines, either private or HPC cluster.
