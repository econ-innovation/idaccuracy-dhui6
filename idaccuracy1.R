setwd("D:/桌面/work1/Aminer_data")
getwd()
library(readr)
csv_files <- list.files(pattern = "\\.csv$")
print(csv_files)
all_data <- data.frame()
for (file in csv_files) {
  file_path <- file.path("D:/桌面/work1/Aminer_data", file)
  temp_data <- read_csv(file_path)
  extracted_data <- temp_data %>% 
    select(doi, 标题, 期刊, 年份)
  all_data <- bind_rows(all_data, extracted_data)
}
write_csv(all_data, file = "merged_data.csv")