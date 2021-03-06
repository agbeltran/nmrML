# This is a simple example file to demonstrate
# reading MetaboQuant output, and create
# an Metabolights MAF file
# 
# AUTHORS: Steffen Neumann 
#
# To install the requirements run 
# the following commands in R
# 
# 	source("http://bioconductor.org/biocLite.R")
#       biocLite("Risa")
# 
# To run the example, launch R from the root NMR-ML directory then
# run 
# 
# 	source("tools/R/reader.R")
# 


library(Risa)

## Use mtbls1 as template
ISAmtbls1 <- readISAtab("../mtbls1")
mtbls1.maf <- read.delim("../mtbls1/m_live_mtbl1_rms_metabolite profiling_NMR spectroscopy_v2_maf.tsv")

## Read mtbls25
ISAmtbls25 <- readISAtab()

## Read MetaboQuant output. comment.char is a bad hack to exclude
## the summary statistics at the end of MetaboQuant output
Latin_Square_Quantification <- t(read.table("Results_Latin_Square_Quantification_Results.txt",
                                          comment.char="z"))

## Todo: Now write m_Latin_Square_maf.tsv



