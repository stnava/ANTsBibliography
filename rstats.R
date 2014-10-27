library(scholar) # https://github.com/jkeirstead/scholar
library(visreg)
id<-"ox-mhOkAAAAJ"
print( get_profile(id) )
citehist<-get_citation_history(id)
print(citehist)
mdl<-lm( cites ~ stats::poly(year,4)  , data=citehist )
visreg(mdl)
 journals=c("Neuroimage","Brain","Brain and language","Neuropsychologia","Hippocampus","Neuroscience Letters","Neuroscience","Neuropsychology","Cortex","Neurobiology of aging","Neurology","Radiology","Neuropsychopharmacology","Medical Imaging, IEEE Transactions on","The Journal of Neuroscience","Magnetic Resonance in Medicine","Pattern Analysis and Machine Intelligence, IEEE Transactions on")
 print( get_num_top_journals(id, journals) )
