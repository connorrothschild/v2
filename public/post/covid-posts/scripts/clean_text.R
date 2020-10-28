# textDF_data$data <- stringr::str_trim(string = textDF_data$data, side = "both")
textDF_data$data <- str_squish(string = textDF_data$data)

textDF_data$data <-
  str_replace(textDF_data$data, pattern = "ACAPS$", replacement = "Assessment Capacities Project (ACAPS)")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "Apple Mobility Data", replacement = "Apple Mobility")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "^Apple.*$", replacement = "Apple Mobility")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "^Assessment.*$", replacement = "Assessment Capacities Project (ACAPS)")
textDF_data$data <-
  ifelse(
    str_detect(textDF_data$data, pattern = "Labor Statistics"),
    "U.S. Bureau of Labor Statistics",
    textDF_data$data
  )
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "corona virus package", replacement = "coronavirus package")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "^Covid Tracking.*$", replacement = "COVID Tracking Project")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "covidtracking.com", replacement = "COVID Tracking Project")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "COVID Tracking project", replacement = "COVID Tracking Project")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "COVID-19 package",
              replacement = "COVID-19 package")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "COVID-19R",
              replacement = "COVID-19 package")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "Centers",
              replacement = "Centre")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "data.gouv.fr/fr/datasets/
",
              replacement = "data.gouv.fr")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "gouv.fr",
              replacement = "data.gouv.fr")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "^European Centre.*$", replacement = "European Centre for Disease Control (ECDC)")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "European Center for Disease Control", replacement = "European Centre for Disease Control (ECDC)")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "^ECDC.*$", replacement = "European Centre for Disease Control (ECDC)")
textDF_data$data <- str_replace(
  textDF_data$data,
  pattern = "
European Centre for Disease Control (ECDC) (ECDC)",
  replacement = "European Centre for Disease Control (ECDC)"
)
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "french site data.data.gouv.fr",
              replacement = "data.gouv.fr")
textDF_data$data <-
  str_remove(textDF_data$data, pattern = "Geocodes from ")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "^Google Mob.*$", replacement = "Google Mobility")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "Google mobility", replacement = "Google Mobility")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = 'Google \\"COVID-19 Community Mobility Reports\\"', replacement = "Google Mobility")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "^Hopkins.*$", replacement = "Johns Hopkins Univ.")
textDF_data$data <-
  str_remove(string = textDF_data$data, pattern = "https\\:")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "^Human Mortality.*$", replacement = "Human Mortality Database")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "I n stituto", replacement = "Instituto")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "^Japan National.*$", replacement = "Japan National Land Numeric Information")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "Johns Hopkins$", replacement = "Johns Hopkins Univ.")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "microsimulation", replacement = "Simulation")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "^Mobility Trends.*$", replacement = "Apple Mobility")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "^New York T.*$", replacement = "New York Times")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "Not sourced", replacement = "No data")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "Opentable",
              replacement = "OpenTable")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "our world in data",
              replacement = "Our World in Data")
textDF_data$data <-
  str_remove(string = textDF_data$data, pattern = "regression, log-linear")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "^The Guard.*$", replacement = "The Guardian (Australia)")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "the united states project",
              replacement = "United States Project")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "simulation", replacement = "Simulation")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "S imulation", replacement = "Simulation")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "T ennessee", replacement = "Tennessee")
textDF_data$data <-
  str_replace(textDF_data$data, pattern = "U nited S tates P roject", replacement = "United States Project")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "US Census",
              replacement = "U.S. Census Bureau")
textDF_data$data <-
  ifelse(
    str_detect(textDF_data$data, pattern = "Census"),
    "U.S. Census Bureau",
    textDF_data$data
  )
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "Wikipedia: Case statistics\\)",
              replacement = "Wikipedia")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "Wikipeida",
              replacement = "Wikipedia")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "W ikipeida",
              replacement = "Wikipedia")
textDF_data$data <-
  ifelse(str_detect(textDF_data$data, pattern = "Wikipedia"),
         "Wikipedia",
         textDF_data$data)
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "W ikipedia",
              replacement = "Wikipedia")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "US Census Bureau",
              replacement = "U.S. Census Bureau")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "Worldbank",
              replacement = "World Bank")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "WorldBank",
              replacement = "World Bank")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "World o meters",
              replacement = "Worldometers")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "W orldometers",
              replacement = "Worldometers")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "^World Pop.*$",
              replacement = "World Population Review (WPR)")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "WorldPop",
              replacement = "World Population Review (WPR)")
textDF_data$data <-
  str_replace(string = textDF_data$data,
              pattern = "www.insee.fr",
              replacement = "INSEE")
textDF_data$data <-
  str_remove(string = textDF_data$data, pattern = "www\\.")
textDF_data$data <- 
  str_remove_all(textDF_data$data, "�")
textDF_data$data <- 
  str_remove_all(textDF_data$data, "//")
