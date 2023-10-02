# README for R Project Template

This is a template repository and guide to setting up your projects in RStudio with Git version control. The template is a modification of [r-project-template](https://github.com/startyourlab/r-project-template) by start your lab.

------------------------------------------------------------------------

## Key features

R projects that use this template and workflow will benefit from the following:

### 1. Improved organisation, reproducibility and efficiency:

Projects provide a self-contained environment for data analysis, where well-organised file structure and workflow can increase project reproducibility and efficiency for yourself and others. Code is broken up until smaller fragments, which are called upon and assembled as needed - this increases running speed compared to one large notebook.

### 2. Reduced risk of data loss:

All project contents are backed up to [GitHub](https://github.com/) - an online free repository. Changes are also tracked or 'version controlled' via `Git`, allowing users to retrieve previous versions of projects.

### 3. Easier sharing and collaboration:

GitHub project repositories can be shared between collaborators. Project directories also use relative pathing via the [`Here` package](https://www.rdocumentation.org/packages/here/versions/1.0.1), making code easy to run on different devices.

### 4. Resilient to future changes in R and R packages:

Each project is isolated in its own environment, where the [`renv` package](https://www.rdocumentation.org/packages/renv/versions/1.0.3) allows users to record and use the same version of project dependencies without breaking other projects. The [`config` package](https://www.rdocumentation.org/packages/config/versions/0.3.2) lets you save and reuse other configurations made in the project's environment.

------------------------------------------------------------------------

## Prerequisites

Complete the following on first-time use only:

### 1. Create a GitHub account:

[Sign up](https://github.com/) using your personal email to ensure continued access.

### 2. Download the following programs:

Recent version of [R software](https://cran.r-project.org/), [RStudio](https://posit.co/download/rstudio-desktop/), [Git](https://git-scm.com/downloads) (will also install Git Bash) and [GitHub Desktop](https://desktop.github.com/).

### 3. Configure Git and GitHub Desktop:

Git - for easy tracking/saving of code within RStudio

1.  [Set your username for every repository on your computer](https://docs.github.com/en/get-started/getting-started-with-git/setting-your-username-in-git)
2.  [Set your commit email address on GitHub](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-email-preferences/setting-your-commit-email-address#setting-your-commit-email-address-on-github)
3.  [Set your commit email address for every repository on your computer](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-email-preferences/setting-your-commit-email-address#setting-your-commit-email-address-on-github)

GitHub Desktop - for easy commit/revert permissions in GitHub Desktop

1.  [Connect your account](https://www.startyourlab.com/docs/github-desktop/#connect-your-account)
2.  [Configure your Git defaults](https://www.startyourlab.com/docs/github-desktop/#configure-your-git-defaults)
3.  [Pick your integrations](https://www.startyourlab.com/docs/github-desktop/#pick-your-integrations) - select `RStudio` as your preferred text editor.

### 4. Connect Git to RStudio:

1.  Open RStudio, navigate to `Tools` \> `Global Options…` \> `Git/SVN` and use the drop down menu to locate `Git.exe`.
2.  If you don't have a SSH key already allocated, click `Create SSH Key…` \> `OK` - you should now see a `Git` pane in the top-right of RStudio.

------------------------------------------------------------------------

## Setting up your project

Complete the following on project set up only:

### 1. Create a new project repository from this template:

1.  Click this link: [github.com/RLGill/R-project-template](https://github.com/RLGill/R-project-template)
2.  Click `Use this template` (green button) \> `Create a new repository`.
3.  Add a repository name, description and tick public/private - once generated, you will be redirected to the repository on GitHub.

### 2. Clone the repository to your local machine:

Click `<> Code` (green button) \> `Open with GitHub Desktop` and choose a location to save your project.

### 3. Rename the following files in your root directory:

1.  Navigate to the R-project-template folder you created - this is your 'root' directory.
2.  Change the file name `R-project-template.Rproj` to your repository name.
3.  If applicable to your project, amend the license and author(s) in the `LICENSE.md` file.

### 4. Open R project:

1.  In the root directory, double click your `.Rproj file` to open the project in RStudio - ensure you are always working within projects to reap the benefits provided by this template.
2.  Check the top-right corner of RStudio - this text should match the name of your project.
3.  You can exit a project by selecting the drop down arrow \> `Close Project` (don't exit now).

### 5. Install package dependencies:

1.  Go to the `Files` pane \> `R-project-template` \> `00-R-scripts` and open the `Install-dependencies.R` script.
2.  Run the script - this installs all packages required to use this workflow into the project's `lockfile` (contains only the packages required for a project which R will use instead of your complete inventory).
3.  If it asks you `Would you like to restore the project library? [y/N]` enter `y` into the console - this will install libraries that are already in the project's `lockfile` (including most of these dependencies). Run the script again after these installations are completed.
4.  If it asks you `Do you want to proceed? [Y/n]` enter `Y` into the console - this will update the current `lockfile` to include all of these packages.

### 6. Organise folder structure and populate with initial files:

1.  From the root directory, review the template folder structure and create/rename/delete folders as needed for your project - see the [R style] section below for tips on formatting your folder directories (and R code).
2.  Place a blank R script file in each new folder as a place-holder for GitHub - you can copy-paste the `EMPTY.R` files from this template.
3.  Populate folders with initial scripts and/or data - this is generally done within the `00-R-scripts` and `01-Raw-data` sub-directories.

### 7. Initial project backup to GitHub's online repository:

1.  Open GitHub Desktop and select your project under the `Current repository` tab (left panel) - you can review local changes in the `Changes` tab, where green/red text indicate text or files that were added/removed.

2.  Ensure all your changes are ticked, then add a summary and description of the changes in the `Summary (required)` and `Description` box - an example:

    `Summary` = project set up;

    `Description` = create new repository; rename files; install package dependencies; organise folder structure; populate folders with initial files

3.  Click `Commit` to incorporate these changes into your `main` online version - you can now see a record of your past commits in the `History` tab.

4.  Push all commits to GitHub.com by clicking `Push origin` on the top panel - you will now be able to access this repository from any device, and your collaborators will be able to pull these changes from GitHub into their own local version of this repository (see the [Branch out:] section below for more information about collaborating on projects).

5.  Check that your progress was logged on GitHub.com by right-clicking your project under the `Current repository` tab \> `View on GitHub` \> `Go to file` (top right) \> `History` (top right) - select your commit message and review the changes side-by-side.

------------------------------------------------------------------------

## Regular workflow

Your regular workflow for a project will look something like this:

### 1. Sync your local machine with the most up-to-date version of your project on GitHub.com

Option 1: In RStudio

1.  Open GitHub Desktop \> select your project under the `Current repository` tab (left panel).
2.  Click `Fetch origin` (top panel) - this will compare your local repository against the online repo on GitHub.com to ensure you are working with the most up-to-date version.
3.  If you get the message `Last fetched just now` you are good to go. If you get the message `Pull origin` this indicates that a change exists on GitHub.com which is not incorporated on your local machine - click `Pull origin` to pull it from GitHub.com and incorporate it into your local repo.

Option 2: In GitHub Desktop

1.  In RStudio, go to the `Git` pane and check whether you have the following message denoted by a blue ( i ) symbol: `Your branch is ahead of 'origin/main' by 1 commit.` - this indicates that your local repo is the most up-to-date version of this project, and you should push your changes to GitHub.com by clicking `Push` (upwards green arrow).
2.  Pull all changes from GitHub.com into your local repo by clicking `Pull` (downwards blue arrow) - click `History` to check whether any changes were incorporated.

### 2. Open your latest version of `Conductor.Rmd` within R projects:

1.  In the root directory of your local repo, double click the `.Rproj file` to open the project in RStudio.
2.  In the `Files` pane, open `Conductor.Rmd` - this is where you call on scripts and data contained in sub-directories to generate output(s).

### 3. Load/install packages using `renv`:

1.  Run the first chunk containing `renv::restore()` to load packages already saved in the project's `lockfile` - this inventory of packages will increase as your project progresses.
2.  To add packages, go to the `Files` pane \> `00-R-scripts` \> open `Install-packages.R`.
3.  In `Install-packages.R`, add the package name to the `libraryRecord` object and run the script - this updates the project's existing `lockfile` to include this package when running the first chunk.

### 4. Create R scripts and source them via `Conductor.Rmd`:

1.  In `Conductor.Rmd`, begin writing your code for the project - see the [R style] section below for tips on formatting your code (and folder directories).
2.  As you complete stages in the analysis, move these out of `Conductor.Rmd` into their own separate file - these should ideally be a compilation of R scripts but can also be R notebooks.
3.  Save your code as separate files in the `00-R-scripts` directory - index these files (00, 01 etc.) or create sub-folders if needed to keep track of code.
4.  In `Conductor.Rmd`, use `source()` functions to stitch your code together and run these chunks as needed - `source()` uses relative path directories (from the root folder) to locate and run your small pieces of code - an example:

<div>

source("./00-R-scripts/Install-dependencies.R", chdir = TRUE)

</div>

### 5. Backup your project to GitHub periodically to keep a continuous record:

Option 1: In RStudio

1.  In RStudio, go to the `Git` pane \> select changes you want to incorporate into your `main` online version by ticking the `Staged` boxes.
2.  Click `Commit` \> check the change history and add a description in the `Commit message` box.
3.  When happy, click `Commit` \> close the pop-up.

Option 2: In GitHub Desktop

1.  In GitHub Desktop, navigate to your project (left panel) \> select the changes you want to incorporate into your `main` online version by ticking/unticking the boxes.
2.  Add a summary and description of the changes in the `Summary (required)` and `Description` box \> click `Commit`.

When committing, group changes together by task and commit these together for easy tracking. If you group too many or too few tasks together in a single commit, it will be harder to view or amend your changes down the line.

------------------------------------------------------------------------

## Additional functionality

You may also require these functions on a case-by-case basis:

### Revert changes to a project:

If not already committed:

-   Option 1: In RStudio, go to the `Git` pane and Ctrl+Select the change(s) you want to revert \> click the `[cog symbol]` \> `Revert…` \> `No`.

-   Option 2: In GitHub Desktop, go the `Changes` tab in your project \> select the change(s) you want to revert \> right click \> `Discard changes…`.

If already committed:

-   In GitHub Desktop, go the `History` tab in your project \> select the commit(s) you want to revert \> right click \> `Revert changes in commit`.

### Branch out:

Branching allows you to clone a version of your repo and develop it independently from the `main` version - this allows you branch out and try new things without risk of messing up your previous code. It is also a good way for collaborators to work on projects independently before deciding on and committing changes. An example:

-   Bill created an R project and gave shared access to Bob. The `main` branch of the project includes all the data and initial scripts used for cleaning and summarising the data.

-   Bob wants to try out a new technique for summarising the data without affecting the Bills code, so he creates a new branch called `Bob-summary-trial` which clones the `main` branch. He then works on `Bob-summary-trial` independently from the `main` branch.

-   Bob finishes his technique and pushes this variation of the code to GitHub.com. He also creates a pull request for Bill to assess whether he wants to merge Bobs changes into `main`.

-   Bill pulls `Bob-summary-trial` from GitHub.com and compares it with `main`. He agrees that it's a good addition to the code and approves the pull request - Bobs changes are now merged into the `main` branch of the project.

How to branch:

1.  Create a new branch and push it to GitHub.com:
    -   Option 1: In RStudio, go to the `Git` pane \> select `New Branch` - name your new branch and tick `Sync branch with remote` \> `Create`.
    -   Option 2: In GitHub Desktop, navigate to your project (left panel) \> select `Current branch` (top panel) \> `New branch` \> name your new branch and click `Create branch`. Under the `Changes` tab, click `Publish branch` to push the new branch to GitHub.com.
2.  Work under the new branch by selecting the branch from `Current branch` (top panel) in GitHub Desktop or from the drop-down menu in the `Git` panel (right) of RStudio - push and pull changes as you would normally in the `main` branch.
3.  To request that changes made in your new branch be merged with `main`, open GitHub Desktop and navigate to your project (left panel) \> select the new branch from `Current branch` (top panel) \> `Preview Pull Request` \> check that the pull request states `Merge [number of commits] commits into [base: main] from [name of new branch].` and that the commit history is accurate.
4.  When happy, click `Create pull request` \> leave a title and description to describe the merge \> click `Create pull request` - this merge request needs to be approved by the project creator.
5.  To approve a pull request, click `Current branch` in GitHub Desktop \> select the `main` branch that you want to merge with \> `Choose a branch to merge into main` \> select the new branch you want to merge into `main` \> `Create a merge commit` \> `Push origin` - the two branches are now merged.
6.  If desired, delete the old branch by clicking `Current branch` \> right-click the branch you want to delete \> `Delete…`'\> tick `Yes, delete this branch on the remote` \> `Delete`.

------------------------------------------------------------------------

## R style

These are some recommendations for formatting your R folder directories and code:

### R folder directories:

> |     | Parameter                   | Format               | Example                  |
> |---------------|--------------------|-------------------|-------------------|
> | 📁  | Project root folder         | Project-name-me      | R-project-template       |
> | 📂  | Root sub-folders            | [Index]-Sub-name-me  | 01-Raw-data              |
> | 📂  | Root sub-folder sub-folders | Sub-sub-name-me      | Figures                  |
> | 📜  | R scripts                   | Script-name-me.R     | Install-packages.R       |
> | 📔  | R notebooks                 | Notebook-name-me.Rmd | Conductor.Rmd            |
> | 🧊  | R projects                  | Project-name-me      | R-project-template.Rproj |
> | 🌴  | Repository branch           | Branch-name-me       | Bob-summary-trial        |

### R objects, data, functions:

> |     | Parameter             | Format           | Example           |
> |-----|-----------------------|------------------|-------------------|
> | 👩‍💻  | [in line] objects     | objectName       | libraryRecord     |
> | 👩‍💻  | [in line] data frames | df.dataframeName | df.allObjects     |
> | 👩‍💻  | [in line] matrices    | mat.matrixName   | mat.allObjects    |
> | 👩‍💻  | [in line] lists       | list.listName    | list.allObjects   |
> | 👩‍💻  | [in line] functions   | fn.functionName  | fn.installLibrary |

### R scripts:

> General layout:
>
> ``` r
> # -----------------------------------------------------------------------/
> # Title: Name Group - Task
> # Author: Author name
> # Date: Creation date
> # Description: Describe task(s) or function(s)
> # -----------------------------------------------------------------------/
>
> # main comment
> #[insert code]
>
> # main comment
> # - secondary comment
> # - secondary comment
> #[insert code]
> #[insert code]
> ```
>
> An example:
>
> ``` r
> # -----------------------------------------------------------------------/
> # Title: R Style - Format for R scripts
> # Author: Raissa Gill
> # Date: 26 September 2023
> # Description: Creates objects and calculates summary statistics
> # -----------------------------------------------------------------------/
>
> # create an object
> #anObject <- c(1, 2, 3)
>
> # calculate summary statistics
> # - mean for linear
> # - median for non-linear
> #mean(anObject)
> #median(anObject)
> ```

### R notebook:

> General layout:
>
> ``` r
> #---
> #title: "Name Group - Name Set of Tasks"
> #author: Author name
> #date: Creation date
> #---
>
>
> # Read Me!
>
> #This notebook does the following:
> #- describe task(s) 1
> #- describe task(s) 2 etc.
>
>
> # Code starts here:
>
>
> # (1) Name set of tasks
>
> #```{r name task1}
>
> # main comment
> #[insert code]
>
> # main comment:
> # - secondary comment
> # - secondary comment
> #[insert code]
> #[insert code]
>
> #```
>
> #```{r name task2}
>
> # main comment
> #[insert code]
> #[insert code]
>
> #```
>
>
> # (2) Name set of tasks
>
> #```{r name task3, etc.}
>
> # main comment:
> # - secondary comment
> # - secondary comment
> #[insert code]
> #[insert code]
>
> #```
> ```
>
> An example:
>
> ``` r
> #---
> #title: "R Style - Format for R notebooks"
> #author: Raissa Gill
> #date: 26 September 2023
> #---
>
>
> # Read Me!
>
> #This notebook does the following:
> #- creates objects
> #- calculates summary statistics
>
>
> # Code starts here:
>
>
> # (1) Objects
>
> #```{r create}
>
> # lets create an object
> #anObject <- c(1, 2, 3)
>
> # lets create others
> # - another object
> # - and a final object
> #anotherObject <- c(1, 2, 3)
> #finalObject <- c(4,5,6)
>
> #```
>
> #```{r merge}
>
> # merge as dataframe
> #df.allObjects <- data.frame(
> #    value = c(anObject, anotherObject),
> #    name = c(rep(1,3),rep(2,3)
> #    )
> #df.allObjects
>
> #```
>
>
> # 2) Summary statistics
>
> #```{r central location}
>
> # statistics
> # - mean for linear
> # - median for non-linear
> #mean(anObject)
> #median(anObject)
>
> #```
> ```

```{r}

# ──────▄▀▄─────▄▀▄
# ─────▄█░░▀▀▀▀▀░░█▄
# ─▄▄──█░░░░░░░░░░░█──▄▄
# █▄▄█─█░░▀░░┬░░▀░░█─█▄▄█

```
