# Install necessary packages for enhanced data visualization and interactivity.
install.packages("hrbrthemes") # For themes and font customization in ggplot2
install.packages("GGally")     # For creating parallel coordinate plots
install.packages("plotly")     # For converting static ggplot2 figures into interactive plots

# Load the installed packages into the R session.
library(hrbrthemes) # Load hrbrthemes for advanced theming options
library(GGally)     # Load GGally for data visualization tools
library(plotly)     # Load plotly for interactive plot features

# Import datasets for visualization.
STIPRound1 <- read.csv(file=file.choose()) # Prompt user to select the CSV file for STIP Round 1 data
data1 <- STIPRound1 # Duplicate STIP Round 1 data (this step might be redundant unless further manipulation is needed)
STIPBackfund <- read.csv(file=file.choose()) # Prompt user to select the CSV file for STIP Backfund data
data2 <- STIPBackfund # Duplicate STIP Backfund data (this step might be redundant unless further manipulation is needed)

# Create and display a parallel coordinate plot for STIP Round 1 Recipients.
STIPRound1.plot <- ggparcoord(STIPRound1, columns = 4:10, groupColumn = 2, showPoints = TRUE, scale="uniminmax", title = "Parallel Coordinate Plot for the Protocol Metrics of STIP Round 1 Recipients") + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
STIPRound1.plot # Display the static plot for STIP Round 1
ggplotly(STIPRound1.plot) # Convert the static plot into an interactive plot using Plotly

# Create and display a parallel coordinate plot for STIP Backfund Recipients.
STIPBackfund.plot <- ggparcoord(STIPBackfund, columns = 4:10, groupColumn = 2, showPoints = TRUE, scale="uniminmax", title = "Parallel Coordinate Plot for the Protocol Metrics of the STIP Backfund Recipients") + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
STIPBackfund.plot # Display the static plot for STIP Backfund
ggplotly(STIPBackfund.plot) # Convert the static plot into an interactive plot using Plotly