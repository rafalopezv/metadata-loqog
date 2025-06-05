# about: template for static plots

library(tidyverse)
library(ggthemes)
library(showtext)  

a <- sf::st_read("../geo_files/merger_before.geojson")
b <- sf::st_read("../geo_files/merger_after.geojson")


font_add_google(name = "Source Sans Pro", family = "sourcesans")
showtext_auto()  

# before plot
a %>%
  mutate(
    com_name = str_to_title(com_name),
    label = paste0(
      com_name, "\n",
      "Year ",
      year, "\n",
      "Municipality Id: ", 
      com_id
    )
  ) %>%
  ggplot() +
  geom_sf(fill = NA) +
  geom_sf_text(
    aes(label = label), 
    family = "sourcesans",
    color = "#343A40",
    size = 7,         
    check_overlap = FALSE,
    lineheight = .9
  ) +
  ggthemes::theme_map() +
  theme(
    panel.background = element_rect(fill = "#FAFAFA", color = NA),
    plot.background  = element_rect(fill = "#FAFAFA", color = NA)
  )

ggsave(
  filename = "/Users/xlopra/Documents/metadata-loqog/img/merger_before.svg", 
  width = 8, 
  height = 8,
  dpi      = 300,     
  device   = "svg"
)

# after plot

b %>% 
  mutate(
    com_name = str_to_title(com_name),
    label = paste0(
      com_name, "\n",
      "Year ",
      year, "\n",
      "Municipality Id: ", 
      com_id
    )
  ) %>%
  ggplot() +
  geom_sf(fill = NA) +
  geom_sf_text(
    aes(label = label), 
    family = "sourcesans",
    color = "#343A40",
    size = 7,         
    check_overlap = FALSE,
    lineheight = .9
  ) +
  ggthemes::theme_map() +
  theme(
    panel.background = element_rect(fill = "#FAFAFA", color = NA),
    plot.background  = element_rect(fill = "#FAFAFA", color = NA)
  )

ggsave(
  filename = "../img/merger_after.svg", 
  width = 8, 
  height = 8,
  dpi      = 300,     
  device   = "svg"
)


