# DECIPHER-Sequence-Alignment
High throughput nucleotide and protein secondary structure based alignment R script, created from the R package DECIPHER 

Wright ES. 2015. DECIPHER: harnessing local sequence context to improve protein multiple sequence alignment. BMC Bioinformatics. 16:322. doi: 10.1186/s12859-015-0749-z.

Must have DECIPHER package installed into R library

source("https://bioconductor.org/biocLite.R")
biocLite("DECIPHER")

change path to directory containing multifasta file of nucelotide sequences

hash/unhash nucelotide or protin alignment (ORF can be selected for protein alignment if known, leave black for the script to calculate)

visual alignment will be written to a html file
multifasta alignment file will be produced
