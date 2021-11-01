# Practice Script
## Collisions of birds on buldings by year

### Instructions
To generate the data representation, GNU Make and GNU awk must be installed. The script assumes it runs on a linux OS.

Move to the directory in which you keep the repository, and enter the command:
```
make
```
The data representation will be generated in `report.txt`.

### What the report shows
This is a practice script, that generates a simple data representation from a CSV file. The dataset contains a date in each record.

The representation lists the years appearing in the data, alongside the total number of instances of each year.

The recorded years are split into groups of eleven, except for the final group. Before listing each group's yearly counts, a simple average for the group is printed.


### Source of raw data
The data used lists the number of collisions of birds on buildings which occured in Chicago, Illinois, between the years of 1978 and 2016.

The dataset was taken from [data.world](https://data.world/animals/bird-building-collisions), which itself was sourced from the publisher [Dryad](https://doi.org/10.5061/dryad.8rr0498); and that data was generated from a research article published by [Royal Society](https://doi.org/10.1098/rspb.2019.0364).

### Tools used to construct the script
[GNU Make](https://www.gnu.org/software/make/)

[GNU awk](https://www.gnu.org/software/gawk/)
