-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/3n0ZYT
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE [Percentages] (
    [location] VARCHAR  NOT NULL ,
    [population] INT  NOT NULL ,
    [%_deaths_per_population] NUMERIC  NOT NULL ,
    [%_vaccinated_per_population] NUMERIC  NOT NULL ,
    [%_boosters_per_population] NUMERIC  NOT NULL ,
    [%_hosps_per_population] NUMERIC  NOT NULL ,
    [%_cases_per_population] NUMERIC  NOT NULL ,
    [%_diabetes_prevalence] NUMERIC  NOT NULL ,
    CONSTRAINT [PK_Percentages] PRIMARY KEY CLUSTERED (
        [location] ASC,[population] ASC
    )
)

CREATE TABLE [Total] (
    [population] INT  NOT NULL ,
    [total_cases] NUMERIC  NOT NULL ,
    [total_deaths] NUMERIC  NOT NULL ,
    [total_vaccinations] NUMERIC  NOT NULL ,
    [total_boosters] NUMERIC  NOT NULL ,
    [total_hospitilizations] NUMERIC  NOT NULL 
)

CREATE TABLE [Miscellaneous] (
    [location] VARCHAR  NOT NULL ,
    [gdp_per_capita] NUMERIC  NOT NULL ,
    [median_age] NUMERIC  NOT NULL ,
    [diabetes_prevalence] NUMERIC  NOT NULL 
)

ALTER TABLE [Percentages] WITH CHECK ADD CONSTRAINT [FK_Percentages_location] FOREIGN KEY([location])
REFERENCES [Miscellaneous] ([location])

ALTER TABLE [Percentages] CHECK CONSTRAINT [FK_Percentages_location]

ALTER TABLE [Percentages] WITH CHECK ADD CONSTRAINT [FK_Percentages_population] FOREIGN KEY([population])
REFERENCES [Total] ([population])

ALTER TABLE [Percentages] CHECK CONSTRAINT [FK_Percentages_population]

COMMIT TRANSACTION QUICKDBD