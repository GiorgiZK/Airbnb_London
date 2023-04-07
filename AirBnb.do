// Import cleaned Airbnb London dataset
import delimited "C:\Users\Zukakishvili_Giorgi\Desktop\airbnb_london_cleaned.csv"

// Display information about variables and summary statistics
describe
summarize

// Clean data by dropping observations with missing values
drop if property_type == "NA"
drop if bedrooms == "NA"
drop if beds == "NA"
drop if price == "NA"
drop if airconditioning == .
drop if wirelessinternet == .

//
destring bedrooms, replace
destring beds, replace
destring airconditioning, replace
destring price, replace


// Perform linear regression analysi
reg price bedrooms beds airconditioning wirelessinternet

// View the regression results
estimates table

// Create Graph
hist price

// save
hist price, title("Histogram of Price")
graph export "histogram.png", replace

