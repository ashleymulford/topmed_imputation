# topmed_imputation

Info on how to run imputation on the topmed server:
https://imputation.biodatacatalyst.nhlbi.nih.gov/#!pages/home


## Required input file format:
- vcf format
- separated by chromosome
- bgzipped
- genome build 37 or 38
- if build 37, chr must be number only (ie 1); if build 38 chr must include "chr" (ie chr1)
- strand must be consistent, if too many strand flips imputation will fail - see Fix_strand_flip_error for help

For more info please see:
- https://topmedimpute.readthedocs.io/en/latest/prepare-your-data/
- https://www.well.ox.ac.uk/~wrayner/tools/

