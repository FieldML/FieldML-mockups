xcoords <- c()
ycoords <- c()
xValues <- 1:4
yValues <- 1:5
for (x in xValues)
{
  for (y in yValues)
    {
      xcoords <- c(xcoords, x);
      ycoords <- c(ycoords, y);
    }
}

dataValue <- c()
for (realisation in 1:100)
{
  baseValue <- rnorm(1, 10, 1)
  pointSigma <- rexp(1, 1)
  coeffX <- rnorm(1, 1, 0.1)
  coeffY <- rnorm(1, 0, 0.2)
  for (x in xValues)
    {
      for (y in yValues)
        {
          value <- baseValue + x * coeffX + y * coeffY + rnorm(1, 0, pointSigma)
          dataValue <- c(dataValue, value)
        }
    }
}
