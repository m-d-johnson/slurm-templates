slurm-templates
===============

SLURM job submit template(s) for SLURM cluster

These templates should work immediately on the local batch system.  Please
note that you will need to substitute various pathnames and username
fields to fit with your requirements.

If you have questions please open a ticket by emailing me

To submit the file to the batch system use the following command:

$ sbatch <sbatch file>

To check the queue status, use:

$ squeue

To cancel a job

$ scancel <job id>
