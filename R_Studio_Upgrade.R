# installing/loading the package:
if(!require(installr)) {
  install.packages("installr"); 
  require(installr)
} #load / install+load installr
update.packages()

#------------------------------ after upgrading ---

update.packages(ask = FALSE)

packs = as.data.frame(installed.packages(.libPaths()[1]), stringsAsFactors = F)

## and now re-install install packages using install.packages()
install.packages(packs$Package)