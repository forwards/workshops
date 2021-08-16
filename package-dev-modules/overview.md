# Forwards Package development modules

**A WORK IN PROGRESS!**

## Computing requirements
[Computing requirements overall](Computing_requirements.md)

## Modules

### Packages in a nutshell

#### Outline
This workshop explains what a package is and why you might want to write one. It covers where packages come from, where they live on your computer and the different states a package can be in. We will explore the key components of a package using an example and outline the Forwards approach to package development process.


What is a package - unit of shareable code    
Why write a package? impact, recognition, documentation   
Where do they live on your computer  
where do they come from  
Components of a package: demo of package we will develop; demo of well known  
Package states  
Forwards approach to packages: devtools and rstudio  
overview of development process; needs rtools/XCode/`r-base-dev`, git recommended   

Ref: Packages Chapter 4 Package structure and state

#### Learning Objectives

At the end of this module the successful learner will be able to:

* explain the rationale for writing packages  
* find and explore their own package library/libraries  
* describe the different states a package can be in  
* describe the key components of a package  
* outline the development of a package using devtools   

#### Prerequisites

Before starting this module you should:

* install R and RStudio   
* have some experience of coding in R and it will help to have previously installed and loaded packages  





---

### Setting up your system 

#### Outline

Setting up your system to develop version controlled package with `devtools` in RStudio

R version, Rstudio versions  - discuss but should have been done  
packages needed: devtools, roxygen2, testthat, knitr  - ditto  
R build toolchain: Rtools(windows) or XCode (mac) or `r-base-dev`; `has_devel() `   - ditto  
git - ditto - check Tools | Global Options | Git/SVN tab - path to git included

Opportunity to carry out in session if not done.  

we need devtools but development process includes restarting session therefore put this in .Rprofile
```
if (interactive()) {
  suppressMessages(require(devtools))
}
```
Can be done with `use_devtools()`  
Add `options()` to .Rprofile to set maintainer name, license defaults.  

Use of RStudio projects

set up for use of git and github in Rstudio - can do with a RS project (no need to be a pkg) - minimal/little detail on git (refer to a more detailed module on git)
usethis::use_git() - initilaises a git repo and makes initial commit (if you select that option)

Do Tools | Version Control | Project Setup and selcting git will also initialise a git repo

github: using "Existing project github last" and https approach - use_github(), error, browse_github_token(), generate and copy token, add to .Renviron with usethis::edit_r_environ(), restart and do use_github(),

Ref: Packages Chapter 3 System setup; Packages Chapter 2 The whole game 2.5 and 2.17 

#### Learning Objectives

At the end of this module the successful learner will be able to:  

* list and install the programs and packages required for version controlled package development with `devtools` in RStudio  
* check these are available to RStudio
* edit their .Rprofile to ensure devtools is loaded  
* configure git for use, initialise an RStudio project as a git repo
* authorise and link to a github repo  
*   

#### Prerequisites

##### Other modules

* Packages in a nutshell or equivalent - desirable but not essential

##### Sytem
* git installed
* github account


---

### Your first package

#### Outline

minimal package, one function
load devtools  
describe pkg to be built; 
using workflow: Existing project, GitHub last: create_package, use_git, use_github, make a function, load_all(), check(), add roxygen, document(), alter DESCRIPTION, add a LICENSE (refer to package documentation module)

Ref: Packages Chapter 2 The whole game; Happy Git and GitHub for the useR Chapter 

#### Learning Objectives

At the end of this module the successful learner will be able to:  
* create a simple version controlled package  
* link a local version controlled package to a remote repository on GitHub  
* explain the key components of a minimal package  
* create and document a function with roxygen2 and document()
* use the package interactively with load_all()  
* use check() to execute R CMD check
* explain, create and populate a DESCRIPTION file
* add a LICENSE file and explain the rationale for doing so

#### Prerequisites

##### Other modules

* Packages in a nutshell or equivalent - desirable but not essential
* Setting up your system

##### Sytem

* r and rstudio installed
* git installed, github acc, github use authorised
* devtools, roxygen2, testthat, knitr  
* R build toolchain: Rtools(windows) or XCode (mac) or `r-base-dev`


---

### Package documentation

#### Outline

types of documentation: about the package metadata
DESCRIPTION file
dependencies
licenses
version
object documentation roxygen
workflow

Ref: 

#### Learning Objectives

At the end of this module the successful learner will be able to:  

* recognise the different levels of package documentation: Metadata,  Object documentation and Vignettes
* explain, create and populate a DESCRIPTION file
* know how to add package dependencies with `usethis::use_package()` and the difference between Imports and Suggests
* explain the components of a LICENSE file 
* add object documentation using `roxygen2`, `devtools::document()`  
* explain what a vignette is and create one with `usethis::use_vignette()`  
*   

#### Prerequisites

##### Other modules

* Packages in a nutshell or equivalent - desirable but not essential
* Setting up your system
* Your first package or equivalent

##### Sytem

* git installed
* github account
* r and rstudio installed
* git installed, github acc, github use authorised
* devtools, roxygen2, testthat, knitr  
* R build toolchain: Rtools(windows) or XCode (mac) or `r-base-dev`


Ref: Packages Chapter 8 Package metadata

---

### Git and GitHub

#### Outline

what is version control and why use it
Git and GitHub (reference other options)
RStudio approach (contextualise)
Workflow: GitHub flow
Principles of git: init, commit, clone, fork, diff, branch, push, pull, merge

"New project, GitHub first" workflow for package dev: create repo on gh, new project | version control | git.  then set up package structure with Tools > Project Options > Build Tools. Select Package and use_description(), use_namespace(), use_r("funtname") 

Ref: Happy Git and GitHub for the useR Chapters 4,5,6,7,8; https://docs.github.com/en; https://the-turing-way.netlify.app/reproducible-research/vcs.html; https://edav.info/github.html

#### Learning Objectives

At the end of this module the successful learner will be able to:  
*   
*   
*   
*   

#### Prerequisites

* r and rstudio installed
* git installed, github acc, github use authorised
* devtools, roxygen2, testthat, knitr  
* R build toolchain: Rtools(windows) or XCode (mac) or `r-base-dev`
* ability to create a minimal version controlled package using the using "Existing project, GitHub last" workflow:
See Packages in a nutshell,  Setting up your system... and A simple package 
---

### six

#### Outline

#### Learning Objectives

At the end of this module the successful learner will be able to:  

*   
*   
*   
*   

#### Prerequisites

*
* 
* 



 
