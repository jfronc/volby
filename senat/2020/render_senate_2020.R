districts <- seq(3, 81, by = 3)

purrr::walk(districts, ~quarto::quarto_render(
  input = "senat/2020/so_template.qmd",
  output_file = paste0("so", .x, ".html"),
  execute_params = list(
    so_id = .x
    )
  )
)
