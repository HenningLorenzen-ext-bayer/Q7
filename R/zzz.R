#' Global Options for Q7 Package
#'
#' The **q7.keep.source** option controls whether the source code of functions
#' is retained when parsing. When set to **TRUE**, the complete original source
#' code is preserved in function objects, which can be useful for debugging
#' purposes.
#'
#' By default, `q7.keep.source` is set to `FALSE`. Users can override this
#' behavior by setting the option in their R session:
#'
#' ```r
#' options(q7.keep.source = TRUE)
#' ```
#'
#' @name q7_options
#' @keywords internal
#' @md
NULL

.onLoad <- function(libname, pkgname) {
        op <- options()

        # default value; change as needed for debugging
        op.q7 <- list(q7.keep.source = FALSE)

        toset <- !(names(op.q7) %in% names(op))
        if (any(toset))
                options(op.q7[toset])
}
