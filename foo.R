create_timestamped_folder <- function(directory = ".") {
  timestamp <- format(Sys.time(), "%Y%m%d_%H%M%S")
  folder_path <- file.path(directory, paste0("folder_", timestamp))
  dir.create(folder_path)
  return(folder_path)
}


save_pdf <- function(folder, plot, filename, height, width) {
  pdf_path <- file.path(folder, filename)
  pdf(pdf_path, height = height, width = width)
  print(plot)  # Ensure you print the plot to output it
  dev.off()
}
