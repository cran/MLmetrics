% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Classification.R
\name{Specificity}
\alias{Specificity}
\title{Specificity}
\usage{
Specificity(y_true, y_pred, positive = NULL)
}
\arguments{
\item{y_true}{Ground truth (correct) 0-1 labels vector}

\item{y_pred}{Predicted labels vector, as returned by a classifier}

\item{positive}{An optional character string for the factor level that
corresponds to a "positive" result}
}
\value{
Specificity
}
\description{
Compute the specificity score.
}
\examples{
data(cars)
logreg <- glm(formula = vs ~ hp + wt,
              family = binomial(link = "logit"), data = mtcars)
pred <- ifelse(logreg$fitted.values < 0.5, 0, 1)
Specificity(y_pred = pred, y_true = mtcars$vs, positive = "0")
Specificity(y_pred = pred, y_true = mtcars$vs, positive = "1")
}

