-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/3n0ZYT
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Covid" (
    "location" VARCHAR,   NOT NULL,
    "population" INT,   NOT NULL,
    "%_deaths_per_population" NUMERIC,   NOT NULL,
    "%_vaccinated_per_population" NUMERIC,   NOT NULL,
    "%_boosters_per_population" NUMERIC,   NOT NULL,
    "%_hosps_per_population" NUMERIC,   NOT NULL,
    "%_cases_per_population" NUMERIC,   NOT NULL,
    "%_diabetes_prevalence" NUMERIC,   NOT NULL,
    "median_age" NUMERIC,   NOT NULL,
    "positive_rate" NUMERIC   NOT NULL
);

CREATE TABLE "Countries" (
    "location" VARCHAR   NOT NULL,
    "population" NUMERIC,   NOT NULL,
    "total_cases" NUMERIC,   NOT NULL,
    "total_deaths" NUMERIC,   NOT NULL,
    "total_cases_per_population" NUMERIC,   NOT NULL,
    "positive_rate" NUMERIC,   NOT NULL,
    "people_fully_vaccinated" NUMERIC,   NOT NULL,
    "total_boosters" NUMERIC,   NOT NULL,
    "median_age" NUMERIC,   NOT NULL
);

CREATE TABLE "CountriesPop" (
    "Location" VARCHAR,   NOT NULL,
    "total_cases_per_population" NUMERIC,   NOT NULL,
    "total_deaths_per_population" NUMERIC,   NOT NULL,
    "vaccinations_per_population" NUMERIC,   NOT NULL,
    "boosters_per_population" NUMERIC,   NOT NULL,
    "positive_rate" NUMERIC,   NOT NULL,
    "median_age" NUMERIC,   NOT NULL,
    "population" NUMERIC,   NOT NULL,
    "gdp_per_capita" NUMERIC,   NOT NULL,
    "hosps_per_population" NUMERIC,   NOT NULL,
    "diabetes_prevalence" NUMERIC   NOT NULL
);

ALTER TABLE "Covid" ADD CONSTRAINT "fk_Covid_location" FOREIGN KEY("location")
REFERENCES "CountriesPop" ("Location");

ALTER TABLE "Countries" ADD CONSTRAINT "fk_Countries_location" FOREIGN KEY("location")
REFERENCES "CountriesPop" ("Location");

ALTER TABLE "Countries" ADD CONSTRAINT "fk_Countries_positive_rate_median_age" FOREIGN KEY("positive_rate", "median_age")
REFERENCES "Covid" ("positive_rate", "median_age");

ALTER TABLE "CountriesPop" ADD CONSTRAINT "fk_CountriesPop_population" FOREIGN KEY("population")
REFERENCES "Covid" ("population");

