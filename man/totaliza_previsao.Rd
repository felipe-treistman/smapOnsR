% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/totaliza.R
\name{totaliza_previsao}
\alias{totaliza_previsao}
\title{Totaliza previsoes}
\usage{
totaliza_previsao(previsao, vazao_observada, configuracao)
}
\arguments{
\item{previsao}{data.table previsao contendo as seguintes colunas:
\itemize{
\item{data_caso - data da rodada}
\item{data_previsao - data da previsao}
\item{cenario - nome do cenario}
\item{nome - nome da sub-bacia}
\item{variavel - nome da variavel}
\item{valor - valor da variavel}
}}

\item{vazao_observada}{data.table com as colunas
\itemize{
\item{data - data da observacao}
\item{posto - nome do posto}
\item{valor - valor da precipitacao observada}
}}

\item{configuracao}{data.table com as colunas
\itemize{
\item{data - data da observacao}
\item{posto - nome do posto}
\item{valor - valor da precipitacao observada}
}}
}
\value{
previsao_totalizada - data.table contendo as seguintes colunas
\itemize{
\item{data_rodada - data em que o caso foi executado}
\item{data_previsao - data da previsao realizada}
\item{nome - nome da UHE}
\item{cenario - nome do cenario}
\item{previsao_distribuida - valor da vazao apos o processo de distribuicao de incrementais agrupadas previstas}
\item{previsao_incremental - valor da vazao incremental prevista}
\item{previsao_total - valor da vazao total prevista, considerando o tempo de viagem entre as UHES}
\item{previsao_total_sem_tv - valor da vazao total prevista, sem copnsiderar o tempo de viagem entre as UHES}
}
}
\description{
Funcao para totalizar as previsoes do SMAP/ONS, atraves de metodos de propagacao
}
\examples{
\dontrun{
  zip::unzip(system.file("extdata", "dados_entrada.zip", package = "smapOnsR"), exdir = system.file("extdata", package = "smapOnsR"))

pasta_entrada <- system.file("extdata", "caso_completo2", "Arq_Entrada", package = "smapOnsR")
pasta_saida <- system.file("extdata", "caso_completo2", "Arq_Saida", package = "smapOnsR")

entrada <- le_arq_entrada(pasta_entrada)
execucao <- le_execucao(pasta_saida, entrada$datas_rodadas$data)

set.seed(129852)
saida <- rodada_sem_assimilacao(entrada$parametros,
    entrada$inicializacao, entrada$precipitacao, entrada$previsao_precipitacao, entrada$evapotranspiracao, entrada$vazao,
    entrada$postos_plu, entrada$datas_rodadas, length(unique(entrada$previsao_precipitacao[, cenario])), entrada$caso$nome_subbacia, execucao)

configuracao <- data.table::fread(file.path(system.file("extdata", "arq_entrada_novo", package = "smapOnsR"), "configuracao.csv"))
configuracao[, sub_bacia_agrupada := tolower(sub_bacia_agrupada)]
configuracao <- configuracao[sub_bacia_agrupada \%in\% entrada$caso$nome]
vazao_observada <- entrada$vazao

 previsao_totalizada <- totaliza_previsao(saida$previsao[variavel == "Qcalc"], vazao_observada, configuracao)
}
}
