# 📘 Foundations of R for Bioinformatics

Welcome to this 3-part **Foundations of R for Bioinformatics** course.

This course is delivered as part of the MRes Research Skills and LM Core Academic and Research Skills modules at the University of Birmingham. All of the material can be accessed here on Github and on the modules pages on Canvas.

## 🧭 Course Overview

This short course introduces MRes students to R programming for bioinformatics, focusing on practical data analysis and visualisation using a tidyverse-first approach. Over three sessions, students will gain hands-on experience with data visualisation, data wrangling, and bioinformatics analysis in R, all using data from one real experiment: a published bulk RNAseq comparison of rat brain tissue after traumatic brain injury (TBI) against sham-operated controls.

The course aims to provide students with an understanding of fundamental programming and data analysis concepts in R, while also equipping them with transferable skills applicable to a wide range of biological datasets. Using the [tidyverse](https://www.tidyverse.org/), a coherent collection of R packages designed for data science, we will learn how to import, explore, transform, and visualise data efficiently and reproducibly.

The course is structured as follows:

### Session 1: Introduction to R and the tidyverse

Students will be introduced to RStudio and Quarto notebooks, learn the essentials of R syntax, variable types, and packages, and load a real RNAseq results table into R. Using `ggplot2`, students will then build five figures, including a volcano plot. This session emphasises exploratory data visualisation and developing confidence in interacting with R.

### Session 2: The tidyverse continued: data wrangling

We will go back a step to the experiment's raw count data and build on these foundations to import, clean, transform, and combine data using key tidyverse tools such as `dplyr`, `tidyr`, and `readr`. The session includes a practical example of applying these skills to RNAseq quality control.

### Session 3: Putting it all together: analysis of RNAseq data in R

In the final session, students will apply their new skills to a bulk RNAseq workflow, using `DESeq2` and `tidySummarizedExperiment` to take the raw counts through differential expression analysis to a list of differentially expressed genes. This is the same results table that we use in Session 1, so students will have seen the experiment through from start to finish. Real published data will be used to illustrate how computational analysis connects to biological interpretation.

While the course provides only a broad overview of each step in an RNAseq analysis pipeline, we hope that students will finish with a strong conceptual foundation and a practical workflow they can adapt for their own projects. Throughout the sessions, additional resources and suggestions for independent learning will be provided to support students who wish to explore specific topics in greater depth.

## 📖 Prior knowledge

No programming experience is required or assumed. The sessions will run on the cluster PCs, which are already set up for the course, so there is nothing to install in advance.

## 🗓️ Session Breakdown

| Session | Date        | Topic                                                  |
|:-------:|-------------|--------------------------------------------------------|
| 1       | 12/11, 3pm  | Introduction to R and the tidyverse                    |
| 2       | 19/11, 3pm  | The tidyverse continued: data wrangling                |
| 3       | 26/11, 2pm  | Putting it all together: analysis of RNAseq data in R  |