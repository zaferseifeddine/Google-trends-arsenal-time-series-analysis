#' ---
#' title: Time Series Week NNN
#' author: You
#' date: Today
#' ---

# 1. R Scratchpad ------------------------------------------------------------
#   You will only write in R Markdown for code and results
#   that are more or less finalised.
#   In the meantime, you can use this R scratchpad.
#   Delete all this text and write your own code
#   Don't forget to add explanatory comments
#   And to separate out different bits with headings or
#   subheadings

# 2. Use Sectioning ----------------------------------------------------------
#   Comment lines start with #, they are not read by R
#   If you end comment lines with space and four minus signs -
#   they will be interpreted as section headings.
#   You can add more - to visually separate sections.
#   CTRL+SHIFT+R / ⌘+SHIFT+R creates a new section and adds the hyphens.
#
#   These sections are accessible in
#     - the drop-down list on the bottom left of the scripting area,
#       ALT+SHIFT+J / ⌘+SHIFT+J brings it up
#   and
#     - the outline section on the top-right corner of the scripting area
#       CTRL+SHIFT+O / ⌘+SHIFT+O brings it up

## 2.1 Subsection -----------------------------------
#   You can also have subsections
#   RStudio does not treat them differently from sections
#   but if you add a extra #, number or spaces they will look
#   different in the outline section.
#   This makes it easier to navigate your R file
#   I use less hyphens for subsections to help visually

### 2.1.1 Subsection -------------------
#   And sub-subsections,...

# 3. Folding sections -----------------------------------------------------
#   You can fold sections by clicking on the little grey down-arrow on the left
#   of the section heading. Or hitting ALT+L/⌘+ALT+L
#   This is useful to hide sections you are not working on
#   SHIFT+ALT+L / ⌘+SHIFT+⌥+L unfolds the section
#   ALT+O / ⌘+⌥+O folds all sections
#   SHIFT+ALT+O / ⌘+SHIFT+⌥+O unfolds all sections

# 4. Etiquette ------------------------------------------------------------
#   It is a good idea (valued in any business environment) to have a certain
#   etiquette when writing code (or anything else really).
#   For instance, I write a blank line before a section heading and not after
#   You can choose your own style, but be consistent, and have the least
#   amount of random variations in your style as possible.
section 1 - introduction
#introduction This project explores a time series dataset and applies forecasting
#techniques Metas Prophet model. the aim is analyse patterns such as trends and
#seasonality and generate predictions for future values

section 2 - the datasets
two coloumns ds-the date
y-the value of the time series

section 3 - data analysis
plot data
gplot(data, aes(x = ds, y = y)) +
    geom_line() +
    labs(title = "Time Series Data",
         x = "Date",
         y = "Value")
allows to visualise data:long term trends , seasonal patterns, short term fluc

section 4 - trend analysis
linear regression model
trend_model <- lm(y ~ ds, data = data)
summary(trend_model)
look for positive or negative slope

section 5 - prophet forecasting model
model <- prophet(data)

future <- make_future_dataframe(model, periods = 12, freq = "month")

forecast <- predict(model, future)

plot(model, forecast)
The forecast plot shows:
    historical observations
predicted future values
uncertainty intervals

section 6 - conclusion
