# omega_regression
The `regression.sh` is a shell script to calculate harmonic frequency ω<sub>e</sub> and anharmonicity constant ω<sub>e</sub>x<sub>e</sub> of a given molecule and a given state using linear regression. It is based on an analysis of the Birge-Sponer plot. See: David, Carl W., "The Birge Sponer Extrapolation" (2008), Chemistry Education Materials, Paper 63, `digitalcommons.uconn.edu/chem_educ/63`.

## Requirements
The script was tested only on the `bash` shell.

Before using the script, `bc` and `gnuplot` packages have to be installed:
```
sudo apt install bc gnuplot 
```

## How to use

The script takes the `fort.7` file as an input. 
The file is generated from the potential energy curve using the 8.0 version of Robert J. LeRoy’s LEVEL program (see: `doi.org/10.1016/j.jqsrt.2016.05.028`). 
It is not yet compatible with version 16.

The script needs the `fort.7` to be in the same directory. Then, it can be executed simply by:
```sh
./regression.sh
```

**Be careful**! The script removes files with these filenames during execution: `fit.log`, `freqs.out`, `scratch*.out`.

## Addendum
This repo also contains an example `fort.7` file.
