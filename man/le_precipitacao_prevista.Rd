% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/leitura_nova.R
\name{le_precipitacao_prevista}
\alias{le_precipitacao_prevista}
\title{Le csv com os dados de precipitacao prevista}
\usage{
le_precipitacao_prevista(arq)
}
\arguments{
\item{arq}{nome do arquivo "precipitacao_prevista.csv"}
}
\value{
data.table com a precipitacao prevista com as colunas
\itemize{
\item{data_rodada - data da rodada do modelo que gerou a previsao}
\item{data_previsao - data da previsao}
\item{cenario - codigo do cenario}
\item{nome - nome da sub bacia}
\item{valor - valor da previsao de precipitacao}
}
}
\description{
Realiza a leitura do csv 'precipitacao_prevista.csv' com os dados iniciais
}
