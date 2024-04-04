![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)
![Microsoft Excel](https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![MATLAB](https://img.shields.io/badge/MATLAB-Supported-blue.svg)


Hi guys, it is not finished yet. I will try to update it from time to time. Even though, I think there will be no one reading it,Hahahaha

<p align="center">
  <img src="static/covid19_immunisation_prog.png" width="800" height="400">
</p>


# COVID19-cases-prediction

## Abstract
This paper presents a new compartmental model for studying and simulating the novel coronavirus (COVID-19) spread in Malaysia by incorporating the effect of the COVID-19 vaccine waning. 
Through this study, COVID-19 transmission is investigated by using the daily confirmed cases in Malaysia until August 31, 2021, as the index cases. 
The real COVID-19 data released by the Ministry of Health Malaysia (MOH) are being used to find some of the epidemiological parameters of this system. 
The proposed model is based on a susceptible, exposed, infected, and recovered (SEIR) compartmental model. However, to illustrate the objective situation, some additional compartments have been added. 
Furthermore, a mathematical analysis is carried out to find the epidemic equilibrium and the basic reproduction number, R_0 of the proposed model. 
The impact of various embedded parameters such as the transmission rate, vaccination program, outcome of the percentage of the vaccinated population, and the type of the vaccines wanes over time was explained in the numerical results.
Then, the Nelder-Mead algorithm is used as a method in optimization with real data conducted and the prediction on transmission trajectory of COVID-19 with the effect of vaccine waning was produced. 
By comparing all the data obtained, we can conclude that although getting vaccinated against COVID-19 can continue to reduce the risk of infections and death, a COVID booster is recommended for COVID-19 vaccines that have a fast-waning rate. 
Through this paper, herd immunity is expected to be achieved when 80% to 90% of people are needed to be vaccinated.


# Problem statements

COVID-19 is a communicable disease that struck Malaysia in February 2020. Since then, it has evolved into an unprecedented scale and caused health, socioeconomic and humanitarian crisis. Even though vaccines become available at the beginning of 2021, there are some studies that shows the effectiveness of the vaccines is gradually decreases over time. This can be risky since the vaccine has been viewed as a solution to provide long-term immunity. From that, the spread of COVID-19 can be more unpredictable and deadly. 
On the other hand, there are also some parts of the society that still doubt about the vaccination. This is due to numerous facts about the side effects of the vaccines. Some may be concerned that vaccines are in a hurry due to the rapid progress of research, accompanied by vaccine hesitancy. However, a result only can be achieved if people are willing to receive the vaccine.
Despite the hesitation, vaccines have been proven as the best way to achieve herd immunity in such a short period of time. Herd immunity is needed to suppress the spread of COVID-19, only if majority of people become immune to the disease. From there, the transmission of COVID-19 disease can be controlled.


# Objectives

a)	To propose a mathematical model forecasting transmission of COVID-19 in Malaysia by incorporating the effect of COVID-19 vaccine waning.   
b)	To study the impact of vaccination programs on COVID-19 outbreaks.   
c)	To investigate the percentage of people who need to be immune against COVID-19 disease in order to achieve herd immunity.

# Methodology

Through this situation, the use of mathematical modelling can play an important role in assisting to quantify possible disease control strategies to control the pandemic's spread and reduce the impact as well as forecast how the disease will evolve. The epidemiological model such as the SEIR model has been widely applied to model the transmission of COVID-19. In its classical form, it models the dynamic interaction of people that consists of four different compartments, the susceptible (S), exposed (E), infected (I), and recovered (R). 
Compared to the other models such as the SIR model which does not consist of an exposed (E) compartment, the SEIR model is an established and appropriate approach to model the transmission of COVID-19 wherein the process of disease spread, the susceptible individual will move to the exposed population due to the incubation period. Hence, with the modified SEIR model and several assumptions, the transmission of COVID-19 can be illustrated.

# Model framework and equation
By implementing the SEIR model with a few new compartments that are suitable for our study, the mathematical model of the spread and transmission of SARS-CoV-2 was formulated. We consider that there is a possibility for a person who has been vaccinated to get infected and thus spread the virus depending on the vaccine's effectiveness. Therefore, our model consists of eight compartments and every individual in a total human population (N) is in one of eight states - they are either susceptible (S) to the disease, exposed (Es) and infected (Is) people from the susceptible group to the disease, the person who is recovered (R) or died (D) from the disease, vaccinated (V) people, lastly, the exposed (Ev) and infected (Iv) people from the vaccinated group. In this context, we assume an exposed individual is infected, but not yet infectious, while the infected individual is infectious to other people. Thus, the disease transmission flow of this project is being illustrated in Figure 2:

![SEIRDV_model](static/The_SEIRDV_Model_Updated.png)

Noted that, the σ is the vaccine inefficacy where 0≤σ≤1. Thus 1-σ represents the vaccine efficacy and if σ=0, the vaccine will offer 100% protection against the infection of the disease. Then, the dynamics of the transitions between eight different compartments in Figure 2 can be expressed in the form of nonlinear ordinary differential equations. The ODE system is given by


![model_equation](static/Model_eq.PNG)

With non-negative initial condition 〖S(0)=S〗_0,E_S (0)=E_S0,I_S (0)=I_S0,R(0)=R_0,D(0)=D_0,V(0)=V_0,E_V (0)=E_V0, and I_V (0)=I_V0. 

# The Model Assumptions
Following the proposed model, the exposed compartment plays an important role in
contributing to the potential exponential transmission of COVID-19. In doing so, we made six important assumptions:

1)	The total size of population remains constant where N = S +Es +Is +R +D +V +Ev +Iv.
2)	The population are mixed homogeneously.
3)	A constant population was assumed due to the short time period for the model development and projection, wherein changes of birth and death rates would be negligible.
4)	The death rate is constant in time.
5)	The probability of being infected does not depend on factors such as age, gender or social status.
6)	The asymptomatic and symptomatic infection is ignored.
7)	The risk of virus mutation or the emergence of variants that partly evade vaccines is negligible.

The epidemic equilibrium X^0 of the system (1) is obtained by setting all the derivatives to zero with I=0, 
X^0=(N-K,0,0,0,0,K,0,0) , where S=N-K and V=K

## 3. Result and discussion
# 3.1 Numerical method (Ode15s)
Since our model is a nonlinear equation, it might be impossible to use analytical method to solve it. However, in the numerical simulations section, we decided to use ode15s in MATLAB as numerical method for this project where ode15s is variable order solver based on the numerical differentiation formulas (NDFs) of order 1 to 5 and only works with functions that use two input argument, t and y [20]. Besides, ode15s is a multistep solver and it is used to solve a stiff problem [21].

# 3.2 The impact of vaccination program
On February 24, 2021, Malaysia began its Covid-19 vaccination program two days ahead of schedule, with Prime Minister Muhyiddin Yassin receiving the first dose of Pfizer-BioNTech. Besides, the first phase of the vaccination distribution will go until April. According to the government, it affects roughly 500,000 frontline workers, including health-care, defence and security employees, as well as teachers with co-morbidities [22]. As of August 31, 2021, a total of 15295254 people has received full vaccinations under National COVID-19 Immunization Program [23].

Here, we would like to study the impact of the vaccination program on COVID-19 outbreaks by assuming the initial value of infected from susceptible and vaccinated are roughly 2000 people. To see the noticeable difference in the number of deaths accumulated of COVID-19, we would like to divide the death group in the proposed model into two subgroups that contain the number of deaths from susceptible and the number of deaths from vaccinated with zero as the initial value for both of the subgroups. Hence, the simulation results for this section are shown in Figures 3.2(a) and 3.2(b) below.


Results.............................................................................

In Figure 3.2(a), we notice that the impact of vaccination program does show a significant decrease in the number of infected cases from vaccinated. On the day of the 100th, we observe a reduction of 87.39% for those who have been vaccinated compared to the susceptible people. The same goes to the number of the cumulative deaths in Figure 3.2(b), where there is a reduction of 91.55% on the day of the 300th for those who have been vaccinated. Therefore, from the results obtained, we can conclude that COVID-19 are effective at preventing infection, serious illness, and death. Vaccination can help protect those who are vaccinated as well as those around them by reducing the transmission of disease.

# 3.3 The impact of transmission rate
At the onset of the COVID-19 pandemic, Malaysia had initiated travel restrictions and quarantine. However, the situation got worse when there is an increasing number of COVID-19 cases that forced the government of Malaysia to initiate the Movement Control Order (MCO) on 18 March 2020 [27]. Under the Prevention and Control of Infectious Diseases Act 1988 and well as the Police Act 1967, the Movement Control Order is imposed to measures that encompassed restrictions on movement, assembly and international travel, and mandated the closure of business, industry, government and educational institutions to curb the spread of SARS-CoV-2, that causes COVID-19 [28]. On the other hand, the use of face masks also would be mandatory at crowded places in hope that all these efforts will help to reduce the rate of transmission of the COVID-19 [29].
In this section, we would like to study the impact of transmission rate on the COVID-19 outbreaks by simulating the three different scenarios where the rates of transmission are 0.5, 0.4 and 0.3. The rate of transmission, 0.3 is the lowest in this section where we assume various public health interventions are being imposed and the community has an awareness to follow almost all the preventive measures taken by the government against the COVID-19 outbreak compared to the 0.5, rate of transmission. The simulation results can be seen in Figures 3.3(a) and 3.3(b) respectively.

Results.............................................................................


The quantitative analysis in Figure 3.3(a) can be explained by comparing the highest number of infected cases for  = 0.5 with  = 0.4 and 0.3. We observed there is a reduction of 35.87% in the number of infected cases for  = 0.4 while  = 0.3 shows a reduction up to 72.91%. Meanwhile, on the last day of the simulations (300th days) in Figure 3.3(b), there is a reduction of 13.81% and 39.54% in the number of cumulative deaths for  = 0.4 and 0.5 respectively. In addition, the number of cumulative deaths in Figure 3.3(b) shows a constant trend or have the same output for a certain time frame due to the decreased number of infected cases in figure 3.3(a). 
Therefore, we can conclude that the lower the rate of transmission, the lower the risk to get infected by COVID-19 and thus reducing the number of cumulative deaths. Practising preventive measures such as physical or social distancing, quarantining, covering coughs and sneezes, hand washing, and keeping unwashed hands away from the face can minimize the risk of transmissions. Wearing a face mask is recommended as part of personal protective equipment and as a public health measure to prevent the spread of coronavirus disease 2019 (COVID-19) pandemic.

# 3.4 The outcome of vaccinated population achieved for COVID-19 disease 

In the fight against the global spread of COVID-19, vaccination would be the best approach to acquire herd immunity against the virus. However, in reality, the world's medical experts still have much to learn about this novel virus. Herd immunity in this context means where a large portion of a community becomes immune to the disease and the disease is less likely to spread from one person to another. As a result, it will protect the entire community, not just those with immunity [13]. 
Many countries are pinning their hopes on the COVID-19 vaccine as the solution for normalcy. At this point, Malaysia is currently progressing quite well in terms of the inoculation of its population where more than 500,000 vaccinations have been recorded as daily COVID-19 vaccination on July 29 [30]. As of September 1, 2021, the percentage of the population that has received two doses of vaccines in Malaysia has achieved a 47% vaccinated population through the National Immunization Program (NIP) [23]. However, we have not seen a substantial reduction in the daily number of COVID-19 cases [23].
Thus, we would like to investigate the outcome of the vaccinated population for COVID-19 in Malaysia by simulating three different cases where we have achieved a 40%, 60% and 80% total vaccinated population. The trend of the COVID-19 transmission can be investigated from the results we obtained below. 


Results.............................................................................



From the simulation results obtained in Figure 3.4(a), on the day of the 100th, we observed that when the vaccinated people have reached 60% of the population, there is a reduction of 85.61% in the number of infected cases and when the number of vaccinated have reached 80% of the population, there is a 99.14% reduction from the 40% vaccinated population. The same goes in Figure 3.4(b), where we noticed a decline in the number of deaths due to an increase in the percentage of vaccinated people. On the last day of the simulations (300th day), the 60% vaccinated people have reduced to 48.25% number of deaths which is lower compared to 58.83% for the 80% vaccinated people. 
The more contagious the disease is, the greater the proportion of the population that needs to be immune against the disease. Therefore, we can conclude that the total percentage of vaccinated people are needed to achieve herd immunity is estimated at around 80% to 90%. However, this only can be achieved if the viruses are not mutated or the emergence of variants that partly evade vaccine-induced antibodies.

# 3.5 The type of vaccines wanes

By January 20, 2022, there are currently seven vaccines approved for use in Malaysia [31]. In this paper, we would like to focus on three types of vaccines that are mostly used in Malaysia for vaccination drive which are Pfizer-BioNTech, AstraZeneca and Sinovac. These three vaccines have been assessed by the Ministry of Health (MoH) to have met safety and efficacy standards [32,33,34].
However, there is a study about these vaccines’ wanes after a certain period and the efficiency of the vaccines are illustrated in Figure 3.5.


Picture of there types of vaccines and its effectiveness............................................


# 3.5.1 The function of vaccines wanes 
Here, we are able to obtain three functions from Figure 8 to show the progress of vaccine waning for these respective vaccines over time. We observe that all three types of vaccines are in a declining pattern. Thus, one of the ways to describe the trend is by using an exponential function.
The exponential function has the form:
Ft=y=abt , where a≠0 and b is a constant when 0<b<1, the function represents exponential decay.

BioNTech, Pfizer vaccine:
F0=y=ab0=0.89 -(2)
F150=y=ab150=0.68 -(3)
From eq. 2 we already have a=0.89, and by comparing these two equations we can obtained
ab150ab0=0.680.89
b150=0.76404
b=1500.76404
b=0.9982
Therefore, we have the function of y=0.89∙0.9982t to describe the Pfizer covid-19 vaccines wanes within 5 months.
By doing the same method for AstraZeneca and Sinovac vaccines, we have the function y=0.77∙0.9991t for AstraZeneca and y=0.76∙0.9934t for Sinovac vaccines respectively.
Thus, the decline in protection against infection for each three types of vaccines can be expressed in Figure 3.5.1 by using the exponential functions obtained.

Graph of vaccines waning over time.................................................................

# 3.5.2 The effect of vaccine wanes over time

The decline in the effectiveness of vaccines against the disease will affect our efforts to curb the epidemic where the number of infections and deaths is expected to increase. Thus, in this section, we would like to study the effect of vaccine waning on the proposed model and by using the functions obtained from respective vaccines, the impact of the vaccine wanes can be seen on the number of infected cases and deaths. Assuming the other parameters are the same as in table 1 above except for the vaccine efficiency, the simulation results are shown in Figures 3.5.2(a) and 3.5.2(b).



Results.............................................................................



From Figure 3.5.2(a), we observed that Sinovac shows the highest number of infected cases achieved compared to the other vaccines. About 176% increase in the number of highest infected cases calculated from the Pfizer-BioNTech while AstraZeneca only shows about 28% increases. Furthermore, on the last day of the simulations (300th day) in Figure 3.5.2(b), Sinovac has increased up to 133% in the number of cumulative deaths while AstraZeneca has slightly increased to 8% from the number of cumulative deaths of Pfizer.
In conclusion, a COVID booster shot might be needed for Sinovac recipients to provide an extra layer of protection due to the faster waning period. These results also have helped to shape the current booster recommendations in Malaysia [35].

# 4. The optimization of the proposed model
Optimizing functions is one of the most common problems of mathematics and is also very often required in real-world problems. The use of an optimization algorithm is often required in solving the optimization problem where it is a procedure that is executed iteratively by comparing various solutions till an optimum or a satisfactory solution is found [36].
The use of an optimization algorithm is required where there are some parameters in our proposed model which may be varied with the real-life situation such as the rate of contacts between people in the population or in this context, we refer to it as the rate of transmission (). Thus, optimization of the proposed model for the transmission of COVID-19 is been done to find the uncertain parameters in the proposed model which are the rate of transmission (), the death rate of susceptible (S), and the death rate of vaccinated people (V). By assuming that these parameters have different values for every 12 days, the objective results in this section can be obtained below.
4.1 The Nelder-mead simplex method
The Nelder-Mead algorithm or known as Simplex Search Algorithm is first published in 1965. It is one of the best-known algorithms for multidimensional, unconstrained optimization without derivatives and is very popular in many fields of science and technology, especially in chemistry and medicine. The method is suitable for problems with non-smooth functions where it does not require any derivative information. It is widely used to solve parameter estimation and similar statistical problems and also used for problems with discontinuous functions, which occur frequently in statistics and experimental mathematics [37].
Hence, the Nelder-Mead simplex method is used in this paper to determine the next estimated parameter values for each iteration by using several techniques contract, reflect, expand, and etc. The residue sum of square (RSS) is been used as the objective function:

e=i=0N(Iobserved-Itarget)2...............................................Formula RSS


The error remaining between the regression function and the data set will be measures by the RSS. It also acts as the termination condition where when the objective function has converged to nearly zero or unchanged. Also, the smaller the residual sum of square, the better our model fits the targeted data [38].

# 4.2 Optimization results
Through this section, we would like to focus more on BioNTech, Pfizer vaccine since it is the most vaccine used in Malaysia [39]. By using the Nelder-Mead simplex algorithm with the residue sum of square, the optimization can be achieved. The optimization results are display in Figures 4.2(a), 4.2(b) and 4.2(c) respectively.


Results................................................................


We observed that in the early phase of time, there is a small S-curve on the graph in Figure 4.2(a). This is due to the average latent of time of our model for the infected individual to become infectious. However, we able to see that our model are almost fits with the actual data. The value of the uncertain parameters in the proposed model which are the rate of transmission (), the death rate of susceptible (S), and the death rate of vaccinated people (V) that are different for every 12 days are able to be defined and will be used in the section 4.3.










# 4.3 Prediction on transmission trajectory of COVID-19 with the effect of vaccine waning

Here, by using the data obtained in section 4.2, the prediction on transmission trajectory of COVID-19 with the effect of vaccine waning can be illustrate in the Figures below. 


Results.............................................................................



From Figure 4.3(a), we observe a slight increase in the number of active cases due to the decline in protection against the infection and almost no noticeable change in the number of cumulative susceptible deaths in Figure 4.3(b). However, there was a significant increase in the number of cumulative vaccinated deaths when the vaccine waning effect is included in Figure 4.3(c) and an increase of 27.89% can be calculated on the last day of the simulation (96 days).
Although there shows an increase in the number of infected cases and deaths due to the vaccine wanes, it is still in a controlled state. To reinforce this, the implemented social distancing and various counter measures plays important roles in controlling the spread of COVID-19.





# 5. Conclusion 

From all the data obtained, we can conclude that getting vaccinated against COVID-19 can continue to reduce the risk of infections and deaths. Despite the vaccine effectiveness decreasing over time, the problem is still solvable by registering COVID booster shots for fast-waning vaccines. Besides the vaccination, there are other ways that can help to reduce the spread of the disease which is by implementing various countermeasures such as social distancing, wearing a mask in public and quarantining.
On the other hand, vaccination also has been proven as one of the primary methods to achieve herd immunity in such a short period of time compare to natural immunity. Therefore, herd immunity can be achieved if at least 80% to 90% of the total population are vaccinated and only the risk of virus mutation or the emergence of variants that partly evade vaccine is negligible.


## References
.
.
.
.
.
.
.
.
.
.





