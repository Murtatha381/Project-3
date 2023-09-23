Select * From covid;
Drop table Countries;
Create Table Countries(
	"location" VARCHAR(255) PRIMARY KEY NOT NULL,                     
	population NUMERIC NOT NULL,
	total_cases NUMERIC NOT NULL,
	total_deaths NUMERIC NOT NULL,
	total_cases_per_population NUMERIC NOT NULL,
	positive_rate NUMERIC NOT NULL,
	people_fully_vaccinated NUMERIC NOT NULL,
	total_boosters NUMERIC NOT NULL,
	median_age NUMERIC NOT NULL,
	hosp_patients NUMERIC NOT NULL,
	gdp_per_capita NUMERIC NOT NULL,
	diabetes_prevalence NUMERIC NOT NULL,
	total_deaths_per_population NUMERIC NOT NULL,
	vaccinations_per_population NUMERIC NOT NULL,
	boosters_per_population NUMERIC NOT NULL,
	hosps_per_population NUMERIC NOT NULL
);

Select * From Countries;

Create Table Countries_Pop(
	"location" VARCHAR(255) PRIMARY KEY NOT NULL, 
	total_cases_per_population NUMERIC NOT NULL, 
	total_deaths_per_population NUMERIC NOT NULL,
    vaccinations_per_population NUMERIC NOT NULL, 
	boosters_per_population NUMERIC NOT NULL,
    positive_rate NUMERIC NOT NULL,
	median_age NUMERIC NOT NULL,
	population NUMERIC NOT NULL,
	gdp_per_capita NUMERIC NOT NULL,
    hosps_per_population NUMERIC NOT NULL,
	diabetes_prevalence NUMERIC NOT NULL
);

SELECT * FROM Countries_Pop;

