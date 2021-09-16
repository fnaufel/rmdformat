
library(ggplot2)

# Sober theme for ggplot
theme_set(
  theme_linedraw() +                         # Set simple theme for ggplot
    theme(                                   # with some tweaks
      axis.title.y.left = element_text(
         angle = 0,                          # Never rotate y axis title
         margin = margin(r = 20),            # Separate y axis title a little
         vjust = .5                          # Leave y axis title in the middle
      ),
      axis.title.y.right = element_text(
         angle = 0,                          # Never rotate y axis title
         margin = margin(l = 20),            # Separate y axis title a little
         vjust = .5                          # Leave y axis title in the middle
      ),
      axis.ticks.y.right = element_blank(),  # No ticks on secondary y axis
      axis.title.x.bottom = element_text(
         margin = margin(t = 20)             # Separate x axis title a little
      ),
      axis.line = element_blank(),           # No axis lines
      panel.border = element_blank(),        # No frame
      panel.grid.minor = element_blank()     # No grid minor lines
    )
)


# Format a number with thousand separators (default point)
# and decimal comma enclosed in curly braces for LaTeX printing.
# CAREFUL: if called outside math mode, will print the braces!
fm <- function(
  x,
  digits = getOption('fmdigits', default = 4),
  big = '.',
  decimal = '{,}',
  ...
) {
  if (!is.numeric(x)) {
    x
  } else {
    if (any(x != floor(x))) {
      # floating point
      formatC(
        x,
        big.mark = big,
        decimal.mark = decimal,
        digits = digits,
        format = 'f',
        ...
      )
    } else {
      # integer
      formatC(
        x,
        big.mark = big,
        decimal.mark = decimal,
        format = 'd',
        ...
      )
    }
  }
}

# Set this as a hook for inline R code
knitr::knit_hooks$set(inline = fm)

# To center the results of a chunk (image, video etc.)
# Usage:
#         out.extra=center()
#
center <- function(){

  if (is_html_output()) {
    'class="center"'
  }

}


# To embed YT videos in HTML and the link (centered) in LaTeX
embed_yt <- function(code) {

  if (is_html_output()) {
    include_url(
      paste0(
        'https://www.youtube.com/embed/',
        code
      )
    )
  } else {
    cat(
      paste0(
        '```{=latex}\n',
        '\\begin{center} \\url{https://youtu.be/',
        code,
        '} \\end{center}\n',
        '```'
      )
    )
  }

}

