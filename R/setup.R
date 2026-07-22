library(tidyverse)
if (!dir.exists("throughput")) {
  dir.create("throughput")
}

# create a cached set of geocodes if it does not exist already in the throughput directory
if (!file.exists("throughput/geocodes.csv")) {
  write.csv(tibble(location = character(), lat = numeric(), lon = numeric()), "throughput/geocodes.csv", row.names = FALSE)
}