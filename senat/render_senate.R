library(purrr)

districts <- seq(3, 81, by = 3)
yr = 2026

walk(districts, ~{
  qmd_content <- sprintf('---
format: html
params:
  so_id: %d
---

{{< include _so_template.qmd >}}
', .x)
  
  writeLines(qmd_content, file.path("senat/", yr, sprintf("so%d.qmd", .x)))
})