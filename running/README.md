# Running a large number of models

The **run_hockhunk3d** script is a (bash) wrapper script that edits the **mctherm.par**
parameter file in a fresh run directory, and runs **ttsre**.  This enables users to
run a lot of models, most notably in parallel.

For example, to recreate a really fast benchmark (faster than the
quick one), do this in this directory:

    # first ensure the running/ directory is in your $PATH
    source rc1

    # make symlinks to the template model
    ln -s ../models/modcII_quick/mctherm.par
    ln -s ../models/parfiles

    # run a few models, results in separate directories
    run_hochunk3d run_bench1 NP=1000 NPMIN=100 RGAPD1=3.0
    run_hochunk3d run_bench2 NP=1000 NPMIN=100 RGAPD1=4.0

    # or if you have those two lines in a bench.run file
    parallel -j 2 < bench.run

The current wrapper will only work if you run models in a subdirectory of hochunk3d,
but given that it relies on symlinks, there is no reason it could not be created
in any location. The current method is probably more proper, given the code stays with
the data, giving clear provenance how the data was created.

This run file can also be run serially via bash:

    bash bench.run

of if you have an HPC system that uses SLURM method, you can wrap your
runfile (e.g. using NEMO's sbatch_nemo.sh script) as follows:

    sbatch_nemo.sh bench.run


# Workflow

An overview of your workflow:

0.  Ensure **run_hochunk3d** is in your $PATH

1.  Create a subdirectory off the **hochunk3d** directory, and change your directory there

2.  create symlinks to **models/parfiles** and one of the selects **models/*/mctherm.par** file.
    This will be the template parameter file.

3.  Create a (text) runfile with many lines showing a run_hochunk3d instantiation. This can often
    be automated with a bash or python script.

4.  Use **parallel** or **bash** to run the runfile. Each model will be in a separate run directory.


