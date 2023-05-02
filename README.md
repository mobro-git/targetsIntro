# targetsIntro

Introduction to the targets pipeline for efficient reproducability.

## Setup:

This introduction assumes project as package as pipeline. Aka we are working within a project (targetsIntro) that is set up as a package (targetsIntro) and are using the targets pipeline within it. 

Set up a project as a package at `File > New Project > New Directory > R project`. 
To start a targets pipeline, run `targets::use_targets()`

You can get a quick walkthrough of a targets package at https://books.ropensci.org/targets/walkthrough.html#inspect-the-pipeline and all documentation for the package at https://books.ropensci.org/targets/

## Getting Started:

See the `_targets.R` file for a walkthrough of pipeline development.

Basic pipeline functions:
`tar_manifest` to see if the targets and commands are actually the ones we expect.
`tar_visnetwork` to see the dependency graph and check that there is a natural, connected flow of work from left to right. `tar_visnetwork(targets_only = TRUE)` to exclude functions and see only named targets.
`tar_make` to run the targets in the correct order, based on their dependencies, and saves the results to files. The files live in a folder called `_targets` in a subfolder called `objects`. The `tar_read` function loads the data from an object and brings it back into your session for interactive viewing and use. You can make specific targets by running `tar_make(targetName)`, which only makes that target's dependencies and then the target, skipping the rest of the pipeline. 
`tar_oudated()` checks the targets to see if they're out of data, aka if one of their dependencies has changed. If there are no outdated targets, this function will return `0`.

