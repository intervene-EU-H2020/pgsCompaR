#' Meta-analysed pairwise method comparisons
#'
#' Equivalent to the dst data, but for meta-analysed effect size estimates.
#'
#' @format
#' A data frame with 4193 rows and 27 columns:
#' \describe{
#'   \item{method_x}{PRS method, method x}
#'   \item{method_y}{PRS method, method y}
#'   \item{beta_diff}{beta_x - beta_y}
#'   \item{cov_x_y}{\code{cov(beta_x, beta_y)}}
#'   \item{var_x}{\code{var(beta_x)}}
#'   \item{var_y}{\code{var(beta_y)}}
#'   \item{beta_x}{equivalent to BETA in \link{metrics} for method x}
#'   \item{beta_y}{equivalent to BETA in \link{metrics} for method y}
#'
#'   The following have the same definitions as the \link{dst} dataset:
#'
#'   \item{se_diff}{standard deviation of beta_diff, calculated as:
#'       \deqn{ \sqrt{ \text{se}_x^2 + \text{se}_y^2 - 2 \cdot \text{cor}_{xy} \cdot \text{se}_x \cdot \text{se}_y } }
#'   }
#'   \item{z_diff}{test statistic to calculate p_z_greater, p_z_smaller, and p_z_equal}
#'   \item{p_z_greater}{p-value for the z-test:
#'       \deqn{H_0: beta_y > beta_x} }
#'   \item{p_z_smaller}{p-value for the z-test:
#'       \deqn{ H_0: beta_y < beta_y} }
#'   \item{p_z_equal}{p-value for the z-test:
#'       \deqn{ H_0: beta_x - beta_y = 0} }
#'
#'   t-test data:
#'
#'   \item{beta_diff_t}{should be equal to beta_diff}
#'   \item{df_t}{degrees of freedom for the t-test}
#'   \item{tval}{t-statistic for beta_x - beta_y}
#'   \item{p_t_equal}{t-test p-value H_0: beta_x - beta_y = 0}
#'   \item{p_t_smaller}{t-test p-value H_0: beta_x < beta_y}
#'   \item{p_t_greater}{t-test p-value J_0: beta_x > beta_y}
#'
#'   The following columns have the same meaning across all datasets:
#'
#'   \item{study}{the GWAS study identifier (GWAS catalog)}
#'   \item{phenotype}{the evaluated endpoint}
#'   \item{ancestry}{the target ancestry}
#'   \item{biobanks}{the target biobank}
#'   \item{method_type_x}{\strong{tuning type} (auto/CV), method x}
#'   \item{method_type_y}{\strong{tuning type} (auto/CV), method y}
#'   \item{ci_high_diff}{ \deqn{ \text{beta}_\text{diff} + 1.96 \cdot \text{se}_\text{diff} } }
#'   \item{ci_low_diff}{ \deqn{ \text{beta}_\text{diff} - 1.96 \cdot \text{se}_\text{diff} } }
#' }
#' @source \url{https://doi.org/10.1101/2023.11.20.23298215}
"pv_mrg"
