# Statistical tools for studying migration 

##	Distribution models for counts of resting or migrating individuals
Count data are classically analysed using generalized linear (mixed) models (GLMM). Typically, the Poisson or negative-binomial models serve as a first model choice when the outcome variable is a count data. In most cases, depending on the data structures, these models are expanded by including spatial or temporal structures, accounting for an excess of zero values (zero-inflation) or a large vari-ance (overdispersion). Any textbook introducing linear models, linear mixed models, generalized linear models and generalized linear mixed models is recommended. We particularly like the introduction to hierarchical models by Gelman & Hill (2007). Of course, we also recommend our own introduction to linear models that follows the philosophy of Gelman and Hill but is written by ecologists for ecologists, i.e. less technically (Korner-Nievergelt et al. 2015).

Example studies that analysed count data for the study of bird migration:
- Migration intensity of Wood pigeons Columba palumbus in relation to weather (Kestenholz et al. 2009).
- Distribution of migratory species during the non-breeding season within Africa (Wisz et al. 2007).

##	Connectivity models
Migratory connectivity is the extent to which breeding areas are connected with non-breeding areas via migrating individuals (Webster et al. 2002, Bauer & Hoye 2014). A (multidimensional) measure of mi-gratory connectivity are the proportions of individuals from specific, predefined, breeding areas that spend the non-breeding season in specific, predefined, non-breeding areas. This method requires that distinct breeding areas and distinct non-breeding areas need to be defined by the researcher. There-fore, some authors measure the strength of migratory connectivity by correlating the between individual distances during the breeding season with the ones during the non-breeding season (“Mantel correla-tion coefficient”, (Ambrosini et al. 2009)). However, such a correlation coefficient is strongly scale de-pendent (what and how many populations are included in the analyses) and values are difficult to inter-pret. 
Estimates of migratory connectivity can be obtained by tracking individuals from their breeding grounds to their non-breeding ground. However, because migratory connectivity is a characteristic of popula-tions (not of individuals) a lot of individuals need to be tracked in order to get a reliable estimate of mi-gratory connectivity. Therefore, reencounters of marked individuals that are often available for a large number of individuals and from many different populations are well suited to study migratory connec-tivity. However, the spatial heterogeneity of reencounter probability introduces a bias in the raw mark reencounter data. Stochastic models to correct for this bias have been developed by Kania & Busse (1987), Kendall et al. (2006), Bauthian et al. (2007) and Thorup & Conn (2009). The model has further been expanded by Korner-Nievergelt et al. (2012), Cohen et al. (2014), and Korner-Nievergelt et al. (2014). Combination of different data sources such as ring recoveries, GPS tracking data, geolocator data or stable isotopic data further improves the accuracy of the migratory connectivity estimates (Korner-Nievergelt et al. 2017).

##	Estimating survival based on mark-recapture data: The Cormack-Jolly-Seber model
To study population processes, individuals often are marked and later recaptured or re-sighted. Such mark-recapture/re-sight data contain information on demographic parameters such as survival, move-ment and population size. The difficulty with mark-recapture data is that not all marked individuals are recaptured during each capture occasion. If an individual has not been captured, it may have died, emigrated from the study area, or it may have escaped being captured. For the study of the demo-graphic parameters it is important to disentangle capture probability from the parameters of interest. To do so, Cormack (1964), Jolly (1965), and Seber (1965) developed a statistical model, the Cormack-Jolly-Seber model (CJS), which became the method used by myriad population biologists (Lebreton et al. 1992). The software MARK (www.phidot.org/software/mark/) has become a standard software for the analyses of mark-recapture data (White & Burnham 1999, Cooch & White 2016). The technique is still being developed for the study of various aspects of demographic processes by a lively society of ecologists and statisticians (www.phidot.org).
Here, we introduce the Cormack-Jolly-Seber (CJS) model for estimating apparent survival and recap-ture probability, or re-sighting probability in cases of re-sights, respectively. The correct term “apparent” survival expresses that in a mark-recapture/re-sight data set from one study site individuals that per-manently emigrated from the study site cannot be distinguished from individuals that died. “Apparent” survival is a product of survival and site fidelity. Whenever below in this section we write “survival”, we actually mean apparent survival. 
The CJS model explicitly models the capture process (the observation process) conditional on a sur-vival model (the biological process). By including an observation process model, the recapture proba-bility and thus the proportion of individuals still alive and present but not recaptured is estimated and taken into account while estimating the probability that an individual survives (and stays in the study area). 
For example, mark-recapture data of Reed warblers Acrocephaus scirpaceus at the constant ringing effort site (CES) in the Wauwilermoos (LU) can be presented as in Table 7.

Table 7. Number of Reed warblers marked at Wauwilermoos per year of first capture and number of recaptured individuals thereof in the subsequent years. The capture occasion numbers are given in brackets behind the year numbers. 
Year of first capture	n marked	2014 (2)	2015 (3)	2016 (4)	2017 (5)	2018 (6)
2013 (1)	107	13	7	4	5	1
2014 (2)	76	-	6	2	1	1
2015 (3)	65	-	-	4	3	0
2016 (4)	54	-	-	-	7	2
2017 (5)	64	-	-	-	-	3

The probability that an individual of all marked individuals released at occasion k is recaptured at occa-sion t is a function of apparent survival probability t and recapture probability pt (Table 8). The recap-ture probability p is the probability that an individual that is alive and present in the study area is cap-tured. The model parameters (apparent survivalt and recapture probability pt) can be estimated by fitting a multinomial model to the number of recaptured individuals at the different occasions. Such a multinomial model is fitted for each cohort of individuals released at the same occasion with the cell probabilities of Table 8.

Table 8. Multinomial cell probabilities a Cormack-Jolly-Seber model. Note that the cell probabilities are formulated so that one release of a marked individual is resulting in one recapture at maximum. There-fore, the data in Table 7 need to be re-arranged so that every recapture becomes a new release of a marked bird (such re-arranged data is called an m-array).
Occ	2	3	4	5	6
1	1p2	1(1-p2)2p3	1(1-p2)2(1-p3)3p4	tt-1(1-pt))4p5	tt-1(1-pt))5p6
2	0	2p3	2(1-p3)3p4	2(1-p3)3(1-p4)4p5	tt-1(1-pt))5p6
3	0	0	3p4	3(1-p4)4p5	3(1-p4)4(1-p5)5p6
4	0	0	0	4p5	4(1-p5)5p6
5	0	0	0	0	5p6

The original CJS model allows estimating apparent survival and recapture probability separately for each time period except for the last time period. For the last time period, only the product t-1pt is esti-mable. More stringent model assumptions, such as constant survival over time or relating survival to a linear predictor can give separate survival and recapture estimates also for the last time period.

The CJS model can alternatively be formulation as a partially hidden Markov model, and fitted to indi-vidual capture histories. Individual based model formulations are appealing because they allow includ-ing individual specific predictors and accounting for more complex correlation structures. The individual based model formulation consists of two logistic regressions, i.e. two Bernoulli-models. The first Ber-noulli variable is the partially observed indicator zit that indicates whether individual i is alive and pre-sent at time t:
zit ~ Bernoulli(zit-1it)
In other words, an individual i is alive and in the study area at time t (zit = 1) with probability it, if it was alive and in the study area at time t-1 (zit-1 = 1), or 0, if it was dead (or had permanently emigrated from the study area) at time t -1 (zit-1 = 0). A linear predictor for the logit (or another link function) of it can be added to study factors affecting apparent survival, logit(it) = Xit. This part of the model looks like an autoregressive logistic regression. However, the variable z is only partly observed. It is known that an individual is alive (zit = 1) when it has been recaptured or resighted at time t or at any time point later (yit = 1). When an individual is not recaptured (yit = 0) during any subsequent capture occasion, we do not know whether it has died or whether it is still alive but has not been captured or resighted. The capture process is added to the model as a second Bernoulli process.
yit ~Bernoulli(zitpit)
Also, a linear predictor can be added for the logit of pit to study factors affecting the capture probability.

Table 9. Some Software that provide algorithms for fitting CJS models.
Name	URL, Reference
MARK	www.phidot.org/software/mark/
R-package marked	CRAN, example in a group work of this course, (Laake et al. 2013)
Stan	http://mc-stan.org/
Chapter 14.5 in Korner-Nievergelt et al. (2015)
BUGS, Jags	WinBUGS:www.mrc-bsu.cam.ac.uk/software/bugs/the-bugs-project-winbugs
OpenBUGS: www.openbugs.ne
Jags: mcmc-jags.sourceforge.net
Chapter 7 in Kéry & Schaub (2012)
E-Surge	www.cefe.cnrs.fr/fr/pf/bibliotheque/guides-et-tutoriels/34-french/recherche/bc/bbp/264-logiciels
Choquet et al. (2009)


##	Multi-state models to estimate movement rates
Multi-state models are used for analysing changes between different states of animals. If the states are defined to be locations, a multi-state model analyses movements between different locations. The cen-tral parameters of such models are the probabilities that an animal moves from location A to location B between two time points. Multi-state models have been introduced by Arnason (1972) and Schwarz et al. (1993). They have later been used by many authors for a variety of different study questions. With a large number of locations, the number of possible movements, and thus the number of model parame-ters, becomes very large and a very high sample size is needed to estimate all parameters. But for some model formulations, even with a very high sample size, some parameters may not be identifiable (Brownie et al. 1993, Gimenez et al. 2003, King & Brooks 2003).
Antoniazza et al. (2012) used a multi-state model to describe the migration of juvenile and adult cormo-rants Phalacrocorax carbo that were colour marked at Lake Neuchatel during the breeding seasons. 

##	Individual based hidden Markov model for bird behaviour
Individual based hidden Markov models are used for analysing tracking data such as geolocator data or satellite telemetry data. Such data contain for each individual location measurements repeated at regular time intervals over a longer time span. Normally a measurement error is involved in the location measurement. For example, spatial error in a location measurement by light-based geolocation can be up to 1000 km (Lisovski et al. 2012) e.g. because of shading by clouds or vegetation.
The individual based hidden Markov models assume that each individual has a (hidden) "true" location at each time interval, and that the recorded locations are measurements of the true locations with a measurement error. Both the true location as well as the measurement error can depend on environ-mental and/or individual characteristics. Therefore, the model can be used to estimate the true loca-tions of the individuals over the time. Further, general patterns of migration can be studied, e.g. factors that influence migration speed, directions or decisions to depart on a migratory flight.
A seminal paper that introduces these models for the study of seal migration is Jonsen et al. (2005). The textbook by Hooten et al. (2017) give an understandable introduction to animal movement mo-delling.


##	The combination of different data sources
In future, we expect that more ornithologists combine different data sources in formal models, the inter-grated models. Bayesian techniques and user-friendly Bayesian software such as BUGS (www.mrc-bsu.cam.ac.uk/software/bugs/the-bugs-project-winbugs/) and Stan (mc-stan.org/) made these tech-niques available for ecologists. 
