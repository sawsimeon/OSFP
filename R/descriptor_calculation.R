### Function to compute amino acid composition
computeAAC = function(x) {
  if (protcheck(x) == FALSE) stop("x has unrecognized amino acid type")
  AADict = c("T", "R", "Q", "E", "D", "C", "A")
  AAC = summary(factor(strsplit(x, split = "")[[1]], levels = AADict),
                maxsum = 8)/nchar(x)
  return(AAC)
}
### Function to compute dipeptide composition
computeDC = function(x) {
  if (protcheck(x) == FALSE) stop("x has unrecognized amino acid type")
  DCDict = c("LI", "ML", "YS", "SF", "NR", "HY", "TA", "LT")
  xSplitted = strsplit(x, split = '')[[1]]
  n = nchar(x)
  DC = summary(factor(paste(xSplitted[-n], xSplitted[-1], sep = ''), 
                      levels = DCDict), maxsum = 9)/(n - 1)
  return(DC)
}
### Function to compute tripeptide composition
computeTC = function(x) {
  if (protcheck(x) == FALSE) stop('x has unrecognized amino acid type')
  TCDict = c("RMY", "MVS", "KLE", "GTN", "IKV")
  xSplitted = strsplit(x,split = '')[[1]]
  n = nchar(x)
  TC = summary(factor(paste(paste(xSplitted[-c(n, n-1)],
                                  xSplitted[-c(1, n)], sep = ''),
                            xSplitted[-c(1, 2)], sep = ''),
                      levels = TCDict), maxsum = 6)/(n - 2)
  return(TC)
}