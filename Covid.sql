DROP TABLE Covid;
Create table Covid (
	"location" VARCHAR(255) PRIMARY KEY NOT NULL, 
	population INT NOT NULL, 
	"%_deaths_per_population" NUMERIC NOT NULL,
    "%_vaccinated_per_population" NUMERIC  NOT NULL, 
	"%_boosters_per_population" NUMERIC  NOT NULL,
    "%_hosps_per_population" NUMERIC  NOT NULL, 
	"%_cases_per_population" NUMERIC  NOT NULL,
    "%_diabetes_prevalence" NUMERIC  NOT NULL, 
	median_age NUMERIC  NOT NULL, 
	positive_rate NUMERIC  NOT NULL
);

SELECT * FROM Covid;

