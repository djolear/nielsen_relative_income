standardize_vars_group <- function(df) {
  scale2 <- function(x, na.rm = TRUE) (x - mean(x, na.rm = na.rm)) / sd(x, na.rm)
  
  df <-
    df %>% 
    mutate_at(
      vars(
        income,
        baby_food:yogurt,
        Household_Size:Female_Head_Age,
        Male_Head_Age,
        Male_Head_Education:Female_Head_Education,
        contains("Employment"),
        unweighted_pop_county,
        total_pop_county,
        land_area_2010,
        median_income_county,
        median_monthly_housing_cost_county,
        median_home_value_county,
        gini_county,
        
        starts_with("med_"),
        starts_with("median")
      ),
      as.numeric
    ) %>% 
    mutate_at(
      vars(
        income,
        baby_food:yogurt,
        Household_Size:Female_Head_Age,
        Male_Head_Age,
        Male_Head_Education:Female_Head_Education,
        contains("Employment"),        
        unweighted_pop_county,
        total_pop_county,
        land_area_2010,
        median_income_county,
        median_monthly_housing_cost_county,
        median_home_value_county,
        gini_county,
        
        starts_with("med_"),
        starts_with("median"),
        
        -Household_Composition,
        -unweighted_pop_county,
        -Projection_Factor,
        -Panel_Year
      ),
      list(scale = scale2)
    ) %>% 
    mutate_at(
      vars(
        ends_with("scale")
      ),
      as.numeric
    )  %>% 
    mutate_at(
      vars(
        Race,
        Marital_Status
      ),
      as.factor
    )
  
  return(df)
}

standardize_vars_qfahpd_health <- function(df) {
  scale2 <- function(x, na.rm = TRUE) (x - mean(x, na.rm = na.rm)) / sd(x, na.rm)
  
  df <-
    df %>% 
    mutate_at(
      vars(
        income,
        yes, 
        no,
        household_size:Female_Head_Age,
        Male_Head_Age,
        Male_Head_Education:Female_Head_Education,
        contains("Employment"),        
        unweighted_pop_county,
        total_pop_county,
        land_area_2010,
        median_income_county,
        median_monthly_housing_cost_county,
        median_home_value_county,
        gini_county,
        
        starts_with("med_"),
        starts_with("median"),
        
        -Household_Composition,
        -unweighted_pop_county,
        -Projection_Factor,
        -Panel_Year
      ),
      as.numeric
    ) %>% 
    mutate_at(
      vars(
        income,
        yes, 
        no,
        household_size:Female_Head_Age,
        Male_Head_Age,
        Male_Head_Education:Female_Head_Education,
        contains("Employment"),        
        unweighted_pop_county,
        total_pop_county,
        land_area_2010,
        median_income_county,
        median_monthly_housing_cost_county,
        median_home_value_county,
        gini_county,
        
        starts_with("med_"),
        starts_with("median")
      ),
      list(scale = scale2)
    ) %>% 
    mutate_at(
      vars(
        ends_with("scale")
      ),
      as.numeric
    )  %>% 
    mutate_at(
      vars(
        Race,
        Marital_Status
      ),
      as.factor
    )
  
  return(df)
}


standardize_vars_tfp <- function(df) {
  scale2 <- function(x, na.rm = TRUE) (x - mean(x, na.rm = na.rm)) / sd(x, na.rm)
  
  df <-
    df %>% 
    mutate_at(
      vars(
        income,
        starts_with("tfp"), 
        household_size:Female_Head_Age,
        Male_Head_Age,
        Male_Head_Education:Female_Head_Education,
        
        unweighted_pop_county,
        total_pop_county,
        land_area_2010,
        median_income_county,
        median_monthly_housing_cost_county,
        median_home_value_county,
        gini_county,
        
        starts_with("med_"),
        starts_with("median"),
        
        -Household_Composition,
        -unweighted_pop_county,
        -Projection_Factor,
        -Panel_Year
      ),
      as.numeric
    ) %>% 
    mutate_at(
      vars(
        income,
        starts_with("tfp"), 
        household_size:Female_Head_Age,
        Male_Head_Age,
        Male_Head_Education:Female_Head_Education,
        contains("Employment"),
        
        unweighted_pop_county,
        total_pop_county,
        land_area_2010,
        median_income_county,
        median_monthly_housing_cost_county,
        median_home_value_county,
        gini_county,
        
        starts_with("med_"),
        starts_with("median")
      ),
      list(scale = scale2)
    ) %>% 
    mutate_at(
      vars(
        ends_with("scale")
      ),
      as.numeric
    )  %>% 
    mutate_at(
      vars(
        Race,
        Marital_Status
      ),
      as.factor
    )
  
  return(df)
}

