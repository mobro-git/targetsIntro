
clean = function(data, mapping) {

  data_clean = data %>%
    left_join(mapping, by = "model","scenario") %>%
    select(-model,-scenario) %>%
    mutate(model = model_new,
           scenario = scenario_new)

}
