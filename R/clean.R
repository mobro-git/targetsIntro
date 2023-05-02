
clean = function(raw, rename) {

  clean = raw %>%
    select(model,scenario,region,variable,unit,datasrc,everything()) %>%
    pivot_longer(cols = 7:162, names_to = "year", values_to = "value") %>%
    left_join(rename, by = c("model","scenario")) %>%
    select(-model,-scenario) %>%
    mutate(model = model_new,
           scenario = scenario_new) %>%
    select(model,scenario,region,year,variable,unit,value) %>%
    group_by(scenario)


}
