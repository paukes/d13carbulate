% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/d13carbulate.R
\name{d13carbulate}
\alias{d13carbulate}
\title{Calculate d13C Carbonate Species using d13C-DIC, pH, and Temperature}
\usage{
d13carbulate(
  dat,
  temp_col_C,
  d13C_DIC_col,
  DIC_col_mg.L,
  CO3_col_uM,
  HCO3_col_uM,
  CO2_col_uM
)
}
\arguments{
\item{dat}{Your dataframe with values}

\item{temp_col_C}{Name of column with your measured water temperature (in celsius)}

\item{d13C_DIC_col}{Name of column with your d13C of DIC (per mille PDB)}

\item{DIC_col_mg.L}{Name of column that contains your measured dissolved inorganic carbon concentration (mg C/L)}

\item{CO3_col_uM}{Name of column that contains your measured/calculated carbonate concentrations (umol C/L)}

\item{HCO3_col_uM}{Name of column that contains your measured/calculated bicarbonate concentrations (umol C/L)}

\item{CO2_col_uM}{Name of column that contains your measured/calculated dissolved carbon dioxide concentrations (umol C/L)}
}
\description{
This function calculates the d13C for all dissolved inorganic carbon species given the measured pH, DIC concentration, and water temperature.
}
\examples{
water.dat <- data.frame(
Sample = c('Lake A', 'Lake B', 'Lake C'),
DIC_mgC.L = c(1.2,8.5,15),
Temp_C = c(12,15,18),
d13C_DIC = c(-22, -15, 1),
calc_CO2_uM = c(30.6, 100.6, 1108),
calc_HCO3_uM = c(69.2, 606.8, 140.7),
calc_CO3_uM = c(0.015, 0.357, 0.0018))

water.dat <- d13carbulate(water.dat, 'Temp_C', 'd13C_DIC', 'DIC_mgC.L', 'calc_CO3_uM', 'calc_HCO3_uM', 'calc_CO2_uM')
}
\author{
Pieter J. K. Aukes
}
\keyword{carbonate}
\keyword{d13C-DIC}
\keyword{isotopes}
\keyword{speciation}
