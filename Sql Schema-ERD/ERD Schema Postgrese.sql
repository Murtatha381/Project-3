CREATE TABLE Percentages(
    location VARCHAR  NOT NULL ,
    population INT  NOT NULL ,
    "%_deaths_per_population" NUMERIC  NOT NULL ,
    "%_vaccinated_per_population" NUMERIC  NOT NULL ,
    "%_boosters_per_population" NUMERIC  NOT NULL ,
    "%_hosps_per_population" NUMERIC  NOT NULL ,
    "%_cases_per_population" NUMERIC  NOT NULL ,
    "%_diabetes_prevalence" NUMERIC  NOT NULL ,
    CONSTRAINT PK_Percentages PRIMARY KEY (
        location
    )
);
SELECT * FROM Percentages;

CREATE TABLE Total (
    population INT  NOT NULL ,
    total_cases NUMERIC  NOT NULL ,
    total_deaths NUMERIC  NOT NULL ,
    total_vaccinations NUMERIC  NOT NULL ,
    total_boosters NUMERIC  NOT NULL ,
    total_hospitilizations NUMERIC  NOT NULL 
);

SELECT * FROM Total;


CREATE TABLE Miscellaneous(
    location VARCHAR  NOT NULL ,
    gdp_per_capita NUMERIC  NOT NULL ,
    median_age NUMERIC  NOT NULL ,
    diabetes_prevalence NUMERIC  NOT NULL 
);

SELECT * FROM Miscellaneous;










