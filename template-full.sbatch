#!/bin/sh

# First we set up the SLURM environment.
# All the SBATCH directives below are optional but they do 
# allow you to modify the behaviour of your job.  

#SBATCH --comment="SLURM - Test Job"                    # An arbitrary comment on the job

#SBATCH --job-name="SHERPA Job no. 23"                  # Give this job an arbitrary name

#SBATCH --mail-type=ALL                                 # When to send mail 
                                                        # (BEGIN, END, FAIL, REQUEUE, ALL)

#SBATCH --mail-user=my.username                         # Where to send mail.  Either an IPPP
                                                        # username or an email address

#SBATCH --requeue                                       # On failure, requeue for another try
#SBATCH --verbose                                       # Increase informational messages

#SBATCH --workdir="/mt/batch/users/mdj/job9001/"        # Set current directory before job starts

#SBATCH --error="%j.err"                                # Direct STDERR here (file identifier), 
                                                        # %j is substituted for the job number

#SBATCH --output="%j.out"                               # Direct STDOUT here (file identifier), 
                                                        # %j is substituted for the job number

#SBATCH --export="EDITOR=/bin/vi"                       # Set arbitrary environment variables

#SBATCH --get-user-env                                  # Import your user environment setup

#SBATCH --requeue                                       # On failure, requeue for another try

#SBATCH --verbose                                       # Increase informational messages


# From this point you treat this file like a shell script, running your code as necessary

/mt/home/mdj/test-qsub/a.out

# Dump the environment that the job uses to a text file in the current directory
env > environment

# Indicate which node the job used.
hostname -f > worknode

# Create files
touch this-file-is-in-current-dir

# Perform operations on your output files.
gzip out

# Make sure you return zero as exit code otherwiser SLURM will report your job
# as failed.
exit 0
