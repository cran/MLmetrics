% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Regression.R
\name{R2_Score}
\alias{R2_Score}
\title{R-Squared (Coefficient of Determination) Regression Score}
\usage{
R2_Score(y_pred, y_true)
}
\arguments{
\item{y_pred}{Estimated target values vector}

\item{y_true}{Ground truth (correct) target values vector}
}
\value{
R^2 Score
}
\description{
Compute the R-Squared (Coefficient of Determination) Regression Score.
}
\examples{
data(cars)
reg <- lm(log(dist) ~ log(speed), data = cars)
R2_Score(y_pred = exp(reg$fitted.values), y_true = cars$dist)
}

