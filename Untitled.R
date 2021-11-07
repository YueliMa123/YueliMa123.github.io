library(tidyverse)
library(p8105.datasets)
library(plotly)

data("instacart")
instacart = 
  instacart %>%
  select(order_id, reordered, order_dow, order_hour_of_day, days_since_prior_order,department_id, product_name, order_number)%>%
  filter(
    department_id == 16,
    reordered == 1,
    order_number %in% 2:3
  )
instacart%>%
  plot_ly(
    y = ~order_dow, color = ~product_name, type = "box", colors = "viridis"
  )
