#' Equivalent to the \code{metrics} data, but meta-analysed.
#'
#' @format
#' A data frame with 351 rows and 21 columns:
#' \describe{
#'   \item{study}{the GWAS study identifier (GWAS catalog)}
#'   \item{ancestry}{the target ancestry}
#'   \item{phenotype}{the evaluated endpoint}
#'   \item{method}{PRS development method}
#'
#'   \item{beta}{the meta-analysed effect size estimate (equivalent to BETA in \link{metrics})}
#'   \item{se}{the standard deviation of beta}
#'   \item{ci_low}{95\% CI for beta, lower bound}
#'   \item{ci_high}{95\% CI for beta, upper bound}
#'
#'   \item{tau_biobank}{square root of the biobank random effect}
#'   \item{tau_biobank_ci_low}{likelihood-based 95\% confidence interval for tau_biobank, lower bound}
#'   \item{tau_biobank_ci_high}{likelihood-based 95\% confidence interval for tau_biobank, upper bound}
#'
#'   \item{tstat}{t-statistic}
#'   \item{ddf}{degrees of freedom for the t-statistic}
#'   \item{dfs}{argument passed to the metafor rma.mv function on how to calculate the degrees of freedom}
#'   \item{pval}{p-value for the t-test}
#'
#'   \item{zstat}{z-statistic (beta/se)}
#'   \item{pval_z}{p-value for the z-test (calculated from zstat)}
#'   \item{QE}{test statistic for Cochran's QE test}
#'   \item{QEp}{p-value for Cochran's QE test}
#'
#'   \item{biobanks}{biobanks used to calculate the meta-analysed effect size estimate}
#'   \item{tuning_type}{equivalent to method_type}
#' }
#' @source \url{https://doi.org/10.1101/2023.11.20.23298215}
"meta_res"
