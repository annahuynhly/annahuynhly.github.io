# all of the lists for cleaning

dog_diet_levels = c(
  "Meat-based – conventional"   = "Meat",
  "Meat-based – raw" = "Meat",
  "Meat-based – lab-grown"  = "Meat",
  "Vegan (consuming no animal products)" = "Plant",
  "Vegetarian (including eggs or milk, but not meat)" = "Plant",
  "Mixture" = "Other",
  "Fungi-based" = "Other",
  "Insect-based" = "Other",
  "Algae–based" = "Other",
  "Unsure" = "Other"
)

owner_diet_levels = c(
  "Omnivore (i.e. eat meat)" = 0,
  "Omnivore reducing animal product consumption" = 1,
  "Pescatarian (including fish but no other meats)" = 2,
  "Vegetarian (consuming plants, eggs and milk)" = 3,
  "Vegan (consuming no animal products)" = 4
)

education_levels = c(
  "Did not complete high school" = 0,
  "High school or equivalent" = 1,
  "College or University award lower than undergraduate degree" = 2,
  "University undergraduate degree" = 3,
  "University postgraduate degree lower than doctoral degree e.g. masters" = 4,
  "Doctoral degree" = 6
)

income_levels = c(
  "Low" = 0, "Medium" = 1, "High" = 2
)

health_levels = c(
  "Seriously ill" = 0, "Significant or frequent problems" = 1, 
  "Generally healthy with minor or infrequent problems" = 2, "Healthy" = 3
)

age_ranges = c(
  "18-19" = 18.5, "20–29" = 24.5, "30–39" = 34.5, "40–49" = 44.5, "50–59" = 54.5, "60–69" = 64.5, 
  ">70" = 80
)

dog_sizes = c(
  "Toy (≤ 4.1 kg or ≤ 9 lb)" = 0, 
  "Small (4.5–10.9 kg or 10–24 lb)" = 1,
  "Medium (11.4–22.3 kg or 25–49 lb)" = 2,
  "Large (22.7–40.5 kg or 50–89 lb)" = 3,
  "Giant (> 40.9 kg or > 90 lb)" = 4
)

vet_visit_range = c(
  "0" = 0, "1" = 1, "2" = 2, "3" = 3, ">3" = 4
)

binary_yn = c("Yes" = 1, "No" = 0)

neuter_statuses = c("sexually intact" = 0, "castrated" = 1, "spayed" = 1)
