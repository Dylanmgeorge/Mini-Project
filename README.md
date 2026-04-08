# Island-Based Differences in Size Measurements of Female Adelie Penguins of the Palmer Archipelago

## Description

This observational study seeks to investigate the size differences in female members of the Adelie Penguin (Pygoscelis adéliae) species within the islands of the Palmer Archipelago. Specifically, this study aims to analyze the difference in flipper length (mm) and body mass (g) between the female members of the Adelie species observed on the islands : Biscoe, Dream and Torgerson.

The OSF project associated with this study can be accessed [here](https://osf.io/s2dv8/overview?view_only=fb116c8fccd94fd4b957d10ee8576d0c).

## Researcher Information

Name: Dylan George

Institution: University of British Columbia Okanagan

Email: [Dylanmgeorge9\@gmail.com](mailto:Dylanmgeorge9@gmail.com){.email}

ORCHID: 0009-0005-2987-8890

Roles: The sole author for all aspects of this study. This includes study design, data acquisition, data processing and interpretations. The author was also completed all documentation including the preregistration, data management plan, manuscript, README files, and data dictionaries. Furthermore, the author created and managed both an OSF project and GitHub repository linked to this study.

## Methodology

All data‑collection methods are described in the source study, available [here](https://pallter.marine.rutgers.edu/catalog/erddap/dataset.php?dataset=StructuralSizeMeasurementsAndIsotopicSignaturesAdeliePenguins).

Raw data was then processed to exclude male penguins. The body mass and flipper length variables of the female Adelie penguins were then analyzed for similarity across the three islands in the study: Biscoe, Dream and Torgerson. Two descriptive statistics tables were generated to display the mean flipper length and mean body mass values along with their measures of uncertainty. Two violin plots were then produced to visualize if there was a difference between the islands for both flipper length and body mass.

## Data and File Overview

In the data folder of the root directory, the data_raw folder contains the raw dataset and data dictionary describing the variables in the dataset. Similarly, in the data_processed folder of the data folder, both the processed dataset and data dictionary can be found.

In the scripts folder of the root directory, the Raw-to-processed_script includes the necessary code to transform the raw data into processed data. Similarly, the Processed-to-analyzed_script includes the code necessary to create the tables of descriptive statistics and the violin plots.

In the outputs folder within the root directory, the table of descriptive statistics and violin plots for body mass and flipper length can be found.

## Data-Specific Information

In the datasets under the data folder, the unit "mm" refers to millimeters and the unit "g" represents grams. Stable isotope variables are labeled as “Delta 15 N (‰)” and “Delta 13 C (‰),” representing nitrogen and carbon isotope ratios expressed in parts per thousand.

Categorical variables include species, island, region, sex, and clutch completion status. Continuous variables include culmen (bill) length, culmen (bill) depth, flipper length, body mass, and isotope ratios.

For further information on the variables in this study, see the data dictionaries within the data_processed and data_raw folders within the data folder of the root directory.

## Sharing and Access Information

The data used in this study is publicly available and can be accessed [here](https://portal.edirepository.org/nis/mapbrowse?packageid=knb-lter-pal.219.5).

The data generated in this study, the scripts or any other materials, are publicly available and distributed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) and can be used, modified and distributed upon appropriate attribution to the author.

The data does not contain personal or sensitive information and therefore no confidentiality restrictions apply.

## Acknowledgments

The author thanks Kristen Gorman of Simon Fraser University and the Palmer Station Antartica LTER for collecting the data and making it publicly available. The study would not have been possible without their contributions.

The author also thanks Jason Pither of the University of British Columbia for his support and guidance in the creation of all aspects of this study. Similarly, this study would not have been possible without his contributions.
