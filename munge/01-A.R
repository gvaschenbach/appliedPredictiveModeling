# Example preprocessing script.
library(AppliedPredictiveModeling)
data( "segmentationOriginal" )

# Split into train set
segdata <- subset( segmentationOriginal, Case == 'Train' )

# Separate out cell and class variables
cellID <- segdata$Cell
class <- segdata$Class
case <- segdata$Case

# Remove columns
segdata <- segdata[, -(1:3)]