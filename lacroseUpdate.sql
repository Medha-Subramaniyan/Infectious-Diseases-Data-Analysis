# Neuroinvasive / Human cases by county + state
SELECT cntystyear.State,
cntystyear.County,
cntystyear.population,
cntystyear.Incidence,
cntystyear.Cases,
statcntyneuro.Human_cases,
statcntyneuro.Neuroinvasive_cases
FROM lacrose.cntystyear
JOIN lacrose.statcntyneuro
ON cntystyear.County = statcntyneuro.County; 
#Cases by age group and gender 2003-2023
SELECT *,
ROUND(Reported_cases * (agegender.Male/100), 0) AS Male_cases,
ROUND(Reported_cases * (agegender.Female/100), 0) AS Female_cases
FROM lacrose.yearcases
JOIN lacrose.agegender; 



