% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/metricas.R
\name{calcula_nse}
\alias{calcula_nse}
\title{Calcula NSE}
\usage{
calcula_nse(
  simulacao,
  observacao,
  pesos = rep(1/length(observacao), length(observacao))
)
}
\arguments{
\item{simulacao}{vetor com os valores da serie simulada}

\item{observacao}{vetor com os valores da serie simulada}

\item{pesos}{pesos a serem utilizados para cada data}
}
\value{
nse
}
\description{
Realiza o calculo do NSE
}
\examples{
observacao <- 1:30
simulacao <- observacao - 0.5
nse <- calcula_nse(simulacao, observacao)
}
