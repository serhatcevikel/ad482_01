    cranlist <- c("devtools", "tidyverse", "rmarkdown", "knitr", "DT", "data.table", "microbenchmark",
                    "kableExtra", "gridExtra", "learnr", "plotly", "rpivotTable", "plot3D",
                    "adegraphics", "D3partitionR", "dygraphs", "formattable", "GGally",
                    "radiant", "shinydashboard", "visreg", "flexdashboard", "randomcoloR",
                    "widgetframe", "leaflet", "httr", "RWeka")


    githublist <- c("lionel-/redpen", "dtkaplan/checkr", "cardiomoon/ggiraphExtra", "rstudio/r2d3", "bwlewis/rthreejs")
            

    #mirid <- match("tr", getCRANmirrors()[,8])
    #chooseCRANmirror(graphics=FALSE, ind=mirid)

    ## cran packages
    for (package in cranlist)
    { 
        if (!require(package, character.only = T, quietly = T))
        {
            install.packages(package)
        }
    }

    ## github packages
    for (package in githublist)
    { 
        if (!require(package, character.only = T, quietly = T))
        {
            devtools::install_github(package)
        }
    }
#install.packages("radiant", repos = "https://radiant-rstats.github.io/minicran/")

