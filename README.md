# targetsIntro

Introduction to the targets pipeline for efficient reproducability.

## Setup:

This introduction assumes project as package as pipeline. Aka we are working within a project (targetsIntro) that is set up as a package (targetsIntro) and are using the targets pipeline within it. 

Set up a project as a package at `File > New Project > New Directory > R project`. 
To start a targets pipeline, run `targets::use_targets()`

You can get a quick walkthrough of a targets package at https://books.ropensci.org/targets/walkthrough.html#inspect-the-pipeline and all documentation for the package at https://books.ropensci.org/targets/

## Getting Started:

The data pipeline is managed via targets. The overall plan is listed in _targets.R. To run the project, from the console run: ```targets::tar_make()``` from the project working directory. (e.g., via opening the EMF37.Rproj file). Final results are html and text in /outputs. 

TO run the project interactively:
1) Load packages: ```source("packages.R")```
2) Load custom functions: ```devtools::load_all(".")```
3) Load cached intermediate objects: ```targets::tar_load(everything())``` (or specify names of particular targets to load). ```targets::tar_load(everything())``` will take a long while to load everything into the environment. Loading particular targets is advised. 

