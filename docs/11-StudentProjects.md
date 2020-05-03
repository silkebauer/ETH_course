# Student projects

We encourage students to work on a research project during the course. We have compiled a list of suggested projects (see below) but students may come up with their own suggested project within the realm of bird and migration ecology. 



## Phenology: Migration patterns within season and their changes over the years


Which species migrate early or late and why?
Link migration patterns (median of migration) to ecological variables such as migration route, food and other species-traits
Has the timing of peak migration changed over the years? If so, in which species? What could be potential reasons?

	zugzeiten.txt: Variable baird.mean is an estimate for the average passage day corrected for truncation (migration is still ongoing at the end of the field season) 
passage_by_spec_year.txt: Median passage day per year and species
species_data.txt: ecological characteristica of species


## Long-term changes in morphology

Has wing length changed over the years in specific species? Are there patterns, e.g. in short- and long-distance migrants? How could this pattern be explained, i.e. which processes or constraints may play a role?

	Analyse species-specific ringing lists

## Differential Migration

Do young and old birds or males and females migrate at different times? If such sub-groups migrate at different times in specific species, what could explain these patterns? Potential test species: age-differences in reed warblers, age- and sex-differences in chaffinches. 

	Analyse species-specific ringing lists



## Flight energetics in the course of a night and over the season
Dynamics of fat reserves: how do the fat reserves change over the night and over the season

comparison with expectations based on energetics and aero-physics  

	Analyse species-specific ringing lists 

specific softare:
Flight 2.4 (Windows) 
or R-package afpt

## Estimate survival from capture-recapture data 
Marking and recapturing individual birds allows for estimating apparent survival probability (= the probability that a bird survives and returns to the breeding site). Do survival probabilities correlate with conditions in the wintering area?

	Analyse a mark-recapture data set of reed warblers from a constant ringing effort site 
using MCMC (software: Jags)


## Modelling (spring) migration: several questions
-	Long-term changes in migration phenology
-	Consequences of climate-driven changes in site-conditions
-	Consequences of human actions, e.g. hunting, on migration success
	Use dynamic migration model and analyse your own scenarios 
Download model from GitHub https://github.com/slisovski/sdpMig - you may need to install the R-packages devtools, Rtools, zoo, maptools


## Estimating Migration volume
-	What is the total number and biomass of birds migrating?
-	Are there changes in numbers and biomasses over the past decades?
-	What might have caused these changes and which consequences could they have?
	
Analyse overall ringing lists over the years
