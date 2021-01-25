# text_df$data <- stringr::str_trim(string = text_df$data, side = "both")
text_df$data <- str_squish(string = text_df$data)

text_df$data <-
  str_replace(text_df$data, pattern = "ACAPS$", replacement = "Assessment Capacities Project (ACAPS)")
text_df$data <-
  str_replace(text_df$data, pattern = "Apple Mobility Data", replacement = "Apple Mobility")
text_df$data <-
  str_replace(text_df$data, pattern = "^Apple.*$", replacement = "Apple Mobility")
text_df$data <-
  str_replace(text_df$data, pattern = "^Assessment.*$", replacement = "Assessment Capacities Project (ACAPS)")
text_df$data <-
  ifelse(
    str_detect(text_df$data, pattern = "Labor Statistics"),
    "U.S. Bureau of Labor Statistics",
    text_df$data
  )
text_df$data <-
  str_replace(text_df$data, pattern = "corona virus package", replacement = "coronavirus package")
text_df$data <-
  str_replace(text_df$data, pattern = "^Covid Tracking.*$", replacement = "COVID Tracking Project")
text_df$data <-
  str_replace(text_df$data, pattern = "covidtracking.com", replacement = "COVID Tracking Project")
text_df$data <-
  str_replace(text_df$data, pattern = "COVID Tracking project", replacement = "COVID Tracking Project")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "COVID-19 package",
              replacement = "COVID-19 package")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "COVID-19R",
              replacement = "COVID-19 package")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "Centers",
              replacement = "Centre")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "data.gouv.fr/fr/datasets/
",
              replacement = "data.gouv.fr")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "gouv.fr",
              replacement = "data.gouv.fr")
text_df$data <-
  str_replace(text_df$data, pattern = "^European Centre.*$", replacement = "European Centre for Disease Control (ECDC)")
text_df$data <-
  str_replace(text_df$data, pattern = "European Center for Disease Control", replacement = "European Centre for Disease Control (ECDC)")
text_df$data <-
  str_replace(text_df$data, pattern = "^ECDC.*$", replacement = "European Centre for Disease Control (ECDC)")
text_df$data <- str_replace(
  text_df$data,
  pattern = "
European Centre for Disease Control (ECDC) (ECDC)",
  replacement = "European Centre for Disease Control (ECDC)"
)
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "french site data.data.gouv.fr",
              replacement = "data.gouv.fr")
text_df$data <-
  str_remove(text_df$data, pattern = "Geocodes from ")
text_df$data <-
  str_replace(text_df$data, pattern = "^Google Mob.*$", replacement = "Google Mobility")
text_df$data <-
  str_replace(text_df$data, pattern = "Google mobility", replacement = "Google Mobility")
text_df$data <-
  str_replace(text_df$data, pattern = 'Google \\"COVID-19 Community Mobility Reports\\"', replacement = "Google Mobility")
text_df$data <-
  str_replace(text_df$data, pattern = "^Hopkins.*$", replacement = "Johns Hopkins Univ.")
text_df$data <-
  str_remove(string = text_df$data, pattern = "https\\:")
text_df$data <-
  str_replace(text_df$data, pattern = "^Human Mortality.*$", replacement = "Human Mortality Database")
text_df$data <-
  str_replace(text_df$data, pattern = "I n stituto", replacement = "Instituto")
text_df$data <-
  str_replace(text_df$data, pattern = "^Japan National.*$", replacement = "Japan National Land Numeric Information")
text_df$data <-
  str_replace(text_df$data, pattern = "Johns Hopkins$", replacement = "Johns Hopkins Univ.")
text_df$data <-
  str_replace(text_df$data, pattern = "microsimulation", replacement = "Simulation")
text_df$data <-
  str_replace(text_df$data, pattern = "^Mobility Trends.*$", replacement = "Apple Mobility")
text_df$data <-
  str_replace(text_df$data, pattern = "^New York T.*$", replacement = "New York Times")
text_df$data <-
  str_replace(text_df$data, pattern = "Not sourced", replacement = "No data")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "Opentable",
              replacement = "OpenTable")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "our world in data",
              replacement = "Our World in Data")
text_df$data <-
  str_remove(string = text_df$data, pattern = "regression, log-linear")
text_df$data <-
  str_replace(text_df$data, pattern = "^The Guard.*$", replacement = "The Guardian (Australia)")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "the united states project",
              replacement = "United States Project")
text_df$data <-
  str_replace(text_df$data, pattern = "simulation", replacement = "Simulation")
text_df$data <-
  str_replace(text_df$data, pattern = "S imulation", replacement = "Simulation")
text_df$data <-
  str_replace(text_df$data, pattern = "T ennessee", replacement = "Tennessee")
text_df$data <-
  str_replace(text_df$data, pattern = "U nited S tates P roject", replacement = "United States Project")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "US Census",
              replacement = "U.S. Census Bureau")
text_df$data <-
  ifelse(
    str_detect(text_df$data, pattern = "Census"),
    "U.S. Census Bureau",
    text_df$data
  )
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "Wikipedia: Case statistics\\)",
              replacement = "Wikipedia")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "Wikipeida",
              replacement = "Wikipedia")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "W ikipeida",
              replacement = "Wikipedia")
text_df$data <-
  ifelse(str_detect(text_df$data, pattern = "Wikipedia"),
         "Wikipedia",
         text_df$data)
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "W ikipedia",
              replacement = "Wikipedia")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "US Census Bureau",
              replacement = "U.S. Census Bureau")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "Worldbank",
              replacement = "World Bank")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "WorldBank",
              replacement = "World Bank")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "World o meters",
              replacement = "Worldometers")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "W orldometers",
              replacement = "Worldometers")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "^World Pop.*$",
              replacement = "World Population Review (WPR)")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "WorldPop",
              replacement = "World Population Review (WPR)")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = "www.insee.fr",
              replacement = "INSEE")
text_df$data <-
  str_replace(string = text_df$data,
              pattern = fixed("Johns Hopkins Univ."),
              replacement = "Johns Hopkins University")
text_df$data <-
  str_remove(string = text_df$data, pattern = "www\\.")
text_df$data <- 
  str_remove_all(text_df$data, "�")
text_df$data <- 
  str_remove_all(text_df$data, "//")
