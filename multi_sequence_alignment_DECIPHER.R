# load the DECIPHER library in R
library(DECIPHER)

# specify the path to the FASTA file (in quotes)
fas <- "/PATH/TO/SEQUENCE.fasta"

# load the sequences from the file
# change "DNA" to "RNA" or "AA" if necessary
seqs <- readDNAStringSet(fas)

# look at some of the sequences (optional)
seqs

# nucleotide sequences need to be in the same orientation
# if they are not, then they can be reoriented (optional)
#seqs <- OrientNucleotides(seqs)

#return AA or DNA sequences? hash either line 22 (for protein) or 25 (for nucleotide)

# perform the alignment via the protein translations
# change NA to 1, 2 or 3 if the readingFrame is known
aligned <- AlignTranslation(seqs, readingFrame=NA, asAAStringSet=TRUE) 

# perform the alignment on nucleotide sequences
aligned <- AlignSeqs(seqs)

# view the alignment in a browser (optional)
BrowseSeqs(aligned, highlight=0, htmlFile = paste ("/PATH/TO/EXPORT/SEQUENCE_align.html"))

# write the alignment to a new FASTA file
writeXStringSet(aligned,
  file="/PATH/TO/EXPORT/SEQUENCE_align.fasta")
