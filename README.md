# GROMACS-4.5.3-multi_mode_Tavis-Cummings

Code from https://github.com/rhti/gromacs_qed
In this fork of GROMACS version 4.5.3 we have implemented routines in qm_gaussian.c to perform multi-mode Tavis Cummings QM/MM simulations of molecules in optical cavities.

Papers describing the implementation:

1) Extension of 2-level system in Tavis Cummings model to QM/MM description of molecules, for a single mode cavity:

Multiscale molecular dynamics simulations of polaritonic chemistry
HL Luk, J Feist, JJ Toppari, G Groenhof
Journal of chemical theory and computation 13 (9), 4324-4335

2) Implementation of Fewest-Switches Surface Hopping

Coherent light harvesting through strong coupling to confined light
G Groenhof, JJ Toppari
The journal of physical chemistry letters 9 (17), 4848-4851

3) Implementation of Mean-Field MD

Tracking polariton relaxation with multiscale molecular dynamics simulations
G Groenhof, C Climent, J Feist, D Morozov, JJ Toppari
The journal of physical chemistry letters 10 (18), 5476-5483

4) Implementation of Multipple Cavity Modes, following Michetti and La Rocca in Phys Rev. B 71 (2015) 115320

Multi-scale dynamics simulations of molecular polaritons: The effect of multiple cavity modes on polariton relaxation
RH Tichauer, J Feist, G Groenhof
The Journal of Chemical Physics 154 (10)

The work was funded by the Academy of Finland

installation requires MPI, LAPACK and FFTW libraries


