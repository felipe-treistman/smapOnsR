% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/escreve_saida.R
\name{escreve_previsao}
\alias{escreve_previsao}
\title{Escreve arquivos de previsao}
\usage{
escreve_previsao(pasta_saida = "arq_saida", previsao)
}
\arguments{
\item{pasta_saida}{pasta com os arquivos de saida}

\item{previsao}{data.table contendo as seguintes colunas:
\itemize{
\item{data_caso - data da rodada}
\item{data_previsao - data da previsao}
\item{cenario - nome do cenario}
\item{nome - nome da sub-bacia}
\item{variavel - nome da variavel}
\item{valor - valor da variavel}
}}
}
\value{
data.table contendo a dado de previsao arrumado
\itemize{
\item{data_caso} data do caso executado
\item{data_previsao} dia alvo da previsao
\item{cenario} cenario de precipitacao utilizado
\item{nome} nome da subbacia da qual estes dados dizem respeito
\item{variavel} nome da variavel prevista
\item{valor} valor da variavel prevista
}
}
\description{
Funcao de escrita dos arquivos oficiais de previsao por cenario e por sub-bacia
}
