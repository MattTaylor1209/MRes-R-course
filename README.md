# 📘 Foundations of R for Bioinformatics

This course is delivered as part of the *MRes Research Skills* module at the University of Birmingham.

## 🧭 Course Overview

This short course introduces MRes students to **R programming for bioinformatics**, focusing on practical data analysis and visualisation using a **tidyverse-first approach**. Over three sessions, students will gain hands-on experience with data wrangling, visualisation, and statistical analysis in R, culminating in the analysis of a real bulk RNAseq dataset.

The course aims to provide students with an understanding of fundamental programming and data analysis concepts in R, while also equipping them with transferable skills applicable to a wide range of biological datasets. Using the **tidyverse**—a coherent collection of R packages designed for data science—we will learn how to import, explore, transform, and visualise data efficiently and reproducibly.

The course is structured as follows:
1. **Session 1: Introduction to R and the tidyverse**
Students will be introduced to **RStudio** and **Quarto** notebooks, learn the essentials of R syntax, variable types, and packages, and explore data using **ggplot2**. This session emphasises exploratory data visualisation and developing confidence in interacting with R.
2. **Session 2: The tidyverse continued: import, transformation, tidying**
We will build on these foundations to import, clean, transform, and combine data using key **tidyverse** tools such as **dplyr**, **tidyr**, and **readr**. The session concludes with a practical example of applying these skills to **RNAseq quality control data**.
3. **Session 3: Putting it all together: analysis of RNAseq data in R**
In the final session, students will apply their new skills to a complete bulk RNAseq workflow. We will use tools from **Rsubread**, **DESeq2**, and **clusterProfiler** to perform read counting, differential expression analysis, and pathway or gene ontology enrichment. Real published data will be used to illustrate how computational analysis connects to biological interpretation.

While the course provides only a broad overview of each step in an RNAseq analysis pipeline, we hope that students will finish with a strong conceptual foundation and a practical workflow they can adapt for their own projects. Throughout the sessions, additional resources and suggestions for independent learning will be provided to support students who wish to explore specific topics in greater depth.

## 📖 Prior knowledge

No programming experience is required or assumed. The only thing students need to be able to do in advance is download zip files from the web and extract them to a folder on their computer.

---

## 🗓️ Session Breakdown

| Session | Date        | Topic                                           |
|---------|-------------|-------------------------------------------------|
| 1       | 13/11, 3pm | Introduction to R and the tidyverse            |
| 2       | 20/11, 3pm | The tidyverse continued: import, transformation, tidying      |
| 3       | 27/11, 2pm | Putting it all together: analysis of RNAseq data in R              |

---

## 💻 Software Requirements

- [R](https://cran.r-project.org/) (version 4.5.1+)
- [RStudio](https://posit.co/download/rstudio/)  
- R packages: will be installed during setup phase.

### Before the first session (IMPORTANT!)

- Go to https://posit.co/download/rstudio/
- Follow the instructions for downloading and installing R and Rstudio
  - For Mac users: follow the link under "Download and install R", click "Download R for MacOS" then select the appropriate version for your processor type (probably the one that says "arm64" if you have a new-ish Mac). Install using the default settings. Then go back to the link above and install Rstudio using the default settings.
  - For Windows users: follow the link under "Download and install R", click "Download R for Windows", then click "base" and then "Download R 4.5.1 for Windows". Install using the default settings. Then go back to the link above and install Rstudio using the default settings.
  - For Linux users, follow the instructions appropriate for your distribution.
- Download this repository as a zip file, then extract to a location of your choosing.
- Open the "Foundations of R for Bioinformatics.Rproj" file in Rstudio (just double click the file and Rstudio should open)
- Open the "setup.R" script in Rstudio (File - Open File... - setup.R).
- Click the source button in the top right corner above the script. (If it asks you for confirmation, type "y" in the console and hit enter).

*At the beginning of first session:*

- Open the .qmd file for the session in Rstudio (File - Open - Session_1/Session_1.qmd).
  
---

## 🧑‍🏫 Author
**Dr Matthew Taylor**<br>
Postdoctoral Research Fellow<br>
Department of Cancer and Genomics<br>
College of Medicine and Health<br>
<br>
University of Birmingham<br>
<br>
Email: m.taylor.1@bham.ac.uk<br>
<br>
github.com/MattTaylor1209
