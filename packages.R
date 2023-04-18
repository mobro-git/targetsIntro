# packages.R

library(targets)
library(tarchetypes)
library(here)
library(tidyverse)
library(conflicted)
library(fs)

conflict_prefer("filter", "dplyr")
conflict_prefer("summarize", "dplyr")
