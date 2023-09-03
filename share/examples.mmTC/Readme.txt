To perform a simulation, prepare tpr files for each molecule. These tpr files are created with Grompp, one for each job, with the parameters for the Tavis-Cummings model included in the mdp file. 

Below is an example for one of the molcules in a single mode (n_max=0) cavity with a raditive decay rate of 200/ps, length = 1 um, refractive index (n_index) = 1, and tuned at 0.151 Hartree. A mean-field (Ehrenfest) MD simulations is performed.  

; OPTIONS FOR QMMM calculations
QMMM                     = yes
; Groups treated Quantum Mechanically
QMMM-grps                = HBQ
; QM method
QMmethod                 = B3LYP
; QMMM scheme
QMMMscheme               = normal
; QM basisset
QMbasis                  = 6-31G*
; QM charge
QMcharge                 = 0
; QM multiplicity
QMmult                   = 1
; cavity QED
QED                      = yes
; omega in au
omega                    = 0.151
SHmethod = Ehrenfest
QEDdecay = 200;66.7
L = 1
n_index =1
n_max=0

after the tpr's are created and a subdir called moleculeX is created for each molecule in which s1.dat and s0.dat are to be copied, a simulation can be performed using the QM/MM interface to Terachem.

Script run_gpu.sh is a script for submitting the job to SLURM
Script doqedcis.qmmm is called from mdrun and sets up terachem input, calls terachem and extracts the relavant output data from the terachem output file.

s1.dat and s0.dat are terachem inputs for the S1 and S0 states of the molecule.

For further information, contact Gerrit Groenhof at gerrit.x.groenhof@jyu.fi

