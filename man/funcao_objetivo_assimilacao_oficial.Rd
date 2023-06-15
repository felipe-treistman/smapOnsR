% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assimilacao.R
\name{funcao_objetivo_assimilacao_oficial}
\alias{funcao_objetivo_assimilacao_oficial}
\title{Funcao objetivo da assimilacao oficial}
\usage{
funcao_objetivo_assimilacao_oficial(
  vetor_variaveis,
  vetor_modelo,
  TuInic,
  precipitacao_ponderada,
  evapotranspiracao,
  evapotranspiracao_planicie,
  vazao,
  area,
  numero_dias,
  pesos_funcao_objetivo = rep(1/length(numero_dias), length(numero_dias))
)
}
\arguments{
\item{vetor_variaveis}{vetor com os parametros:
\itemize{
\item{pesos}{pesos da ponderacao da precipitacao}
\item{Ebin}{vazao de base inicial}
\item{Supin}{vazao superficial inicial}
}}

\item{vetor_modelo}{vetor resultante de unlist do objeto de classe smap_ons}

\item{TuInic}{umidade do solo inicial}

\item{precipitacao_ponderada}{Vetor de precipitacao final (ja corrigido e/ou ponderado)}

\item{evapotranspiracao}{Vetor de ETo do final(ja corrigido e/ou ponderado)}

\item{evapotranspiracao_planicie}{Vetor de ETo de planicie do final(ja corrigido e/ou ponderado)}

\item{vazao}{vetor de vazao observada}

\item{area}{area da sub-bacia}

\item{numero_dias}{numero de dias da assimilacao}

\item{pesos_funcao_objetivo}{vetor de pesos da funcao objetivo}
}
\value{
objetivo valor da funcao objetivo
}
\description{
Funcao objetivo de assimilacao de dados oficial do SMAP/ONS
}