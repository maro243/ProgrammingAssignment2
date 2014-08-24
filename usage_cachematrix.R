
# note to reviewer - this is some example usage, this source call won't work due the the absolute referencing
#couldn't figure out how to get the path to be purely relative


source('ass2/ProgrammingAssignment2/cachematrix.R')

M2x2 = matrix (c(4,3,3,2), nrow=2, ncol=2)
MC2x2 <- makeCacheMatrix(M2x2)

#first call
cacheSolve(MC2x2)

#second call
cacheSolve(MC2x2)

