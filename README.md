# MATLAB & Simulink Labs

## Overview
This repository is a completion of my course works during my first year in Electrical and Electronic Engineering which includes a set MATLAB numerical methods, submitted as a formal lab report and a smaller Simulink Communications labs.

The focus here is less about MATLAB coding, and more so about analysis and the ability to understand what certain outputs meant. For each question, the report explains the implementation, why specific numerical approaches were chosen, how error or unexpected outputs were diagnosed, what limitations applied, and why the results and graphs behaved the way they did. 
## MATLAB Lab Report and analysis
Two lab reports, analysing different numerical and mathematic questions.

### Lab Report 1 | Functions, Plotting & McLaurin Expansion
Covers function implementation and plotting, along with numerical analysis of a McLaurin series expansion of sin(x), including factorial computation.  
- Diagnosed why MATLAB's element-wise `.` operator produces mathematically incorrect results and outputs without displaying an error, tracing the issue to matrix vs. element-wise multiplication.
- Investigated the numerical limits of a factorial implementation (failing at n >= 170 ) and then verified results using MATLAB's own built-in functions.

### Lab Report 2 | Root Finding, Regression, Interpolation & Integration
Covers bisection and false position root finding, Newton's method, fzero, linear and nonlinear regression, Lagrange and inverse interpolation, and trapezoid and Romberg numerical integration.
- benchmarking of classical root‑finding algorithms, where the false‑position method reached a 10⁻¹⁵ convergence tolerance in ~20 iterations compared with ~50 for bisection, accompanied by an analysis of the sensitivity of iteration counts to increasingly strict tolerances.
- A further evaluation of filtration‑based root search versus incremental scanning showed filtration to be ~15× slower (1.09 s vs. 0.074 s) and susceptible to accuracy loss through rounding‑induced root merging
- Identified and explained a limitation of MATLAB's fzero, which is requiring an initial interval exhibiting a sign change. 


## Communication Simulink Lab
A smaller series of informal lab reports regarding my understanding of a communication system concept using Simulink models. 

## Skills Demonstrated
- Numerical methods (root findings, integration, etc...)
- Error diagnosis and analysis
- Evaluating results, limitations and accuracy
- Data analysis and plotting graphs
- Report writing 
- Simulink modelling workflow

## How to Run
- Open MATLAB R2023b or later
- Run scripts inside /Code

## Note
The original Simulink .slx model is not included because it was deleted from the university coursework server and could not be recovered. 
All reports have been converted to PDF.

## License
MIT License
