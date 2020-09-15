#Create VCFs for imputation:

#Convert bed/bim/fam to chr specific VCF files:
for chr in {1..22};
do plink --bfile ACCOuNTBLACKSfinal_updated --chr ${chr} --recode vcf --out account_blacks_chr${chr}_updated;
done

#GRCh38 requires chromosomes as "chr1" not "1" - convert with awk: 
for chr in {1..22};
do awk '{if($0 !~ /^#/) print "chr"$0; else print $0}' account_blacks_chr${chr}_updated.vcf > account_blacks_chrchr${chr}_updated.vcf;
done

#bgzip files:
for chr in {1..22};
do bgzip account_blacks_chrchr${chr}_updated.vcf;
done

#qc and imputation performed: https://imputation.biodatacatalyst.nhlbi.nih.gov/#!pages/home

#once imputation is complete download and renmae files:
  #go to results for wget command

#unzip with 7za
for chr in {1..22};
do 7za e chr_${chr}.zip;
done
