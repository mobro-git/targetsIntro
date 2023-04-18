
# Load packages required to define the pipeline:
library(targets)
# library(tarchetypes) # Load other packages as needed.

# Set target options:
tar_option_set(
  packages = c("tibble"), # packages that your targets need to run
  format = "rds" # default storage format
  # Set other options as needed.
)

# Run the R scripts in the R/ folder with your custom functions:
tar_source()
# source("other_functions.R") # Source other scripts as needed.

# Replace the target list below with your own:
list( # or tar_plan()

  tar_target(
    name = data_folder,
    command = "data",
    format = "file"), # format = "file" tracks the metadata of the file, not what's inside. It should trigger a refresh if the contents of the file change
  tar_target(
    name =
      data_files,
    command = dir_ls(data_folder),
    format = "file"),
  tar_target(
    name = raw,
    command = map_dfr(data_files, read_data)),
  # default format is is "rds". With the exception of format = "file, each target gets a file in _targets/objects
  # format = "feather" for efficient storage of large data frames

  tar_target(rename_csv, "process/mapping.xlsx", format = "file"), # as with any function, you do not need to name all of your arguments
  tar_target(rename, read_csv(rename_csv)),

  tar_target(data, clean(raw, rename))

  )

# IDE theme editor https://tmtheme-editor.glitch.me/
