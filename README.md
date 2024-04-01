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







