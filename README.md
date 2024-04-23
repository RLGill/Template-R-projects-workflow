# Template & workflow for R projects

#### By Raissa L Gill

⏸️ If you're reading this in RStudio, select `Visual` mode (top of pane) for easy reading.

▶️ Welcome to this template repository and workflow designed for R projects. This framework, originally derived from and expanded upon the foundations laid by Start Your Lab's [r-project-template](https://github.com/startyourlab/r-project-template), harnesses the power of several R packages, including [config](https://www.rdocumentation.org/packages/config/versions/0.3.2), [devtools](https://www.rdocumentation.org/packages/devtools/versions/2.4.5), [fs](https://www.rdocumentation.org/packages/fs/versions/1.6.3), [here](https://www.rdocumentation.org/packages/here/versions/1.0.1), [lintr](https://www.rdocumentation.org/packages/lintr/versions/3.1.0), [markdown](https://www.rdocumentation.org/packages/markdown/versions/1.10), [plyr](https://www.rdocumentation.org/packages/plyr/versions/1.8.9), [renv](https://www.rdocumentation.org/packages/renv/versions/1.0.3), [rmarkdown](https://www.rdocumentation.org/packages/rmarkdown/versions/2.25), [rstudioapi](https://rdocumentation.org/packages/rstudioapi/versions/0.15.0), [styler](https://www.rdocumentation.org/packages/styler/versions/1.10.2). Check the end of this README file for full attributions.

------------------------------------------------------------------------

## Key features

R projects that use this template and workflow will benefit from the following:

#### 1. Improved organisation and reproducibility

Projects provide a self-contained environment for data analysis, where well-organised file structure and workflow can increase project reproducibility for both yourself and others. Code is formatted in a consistent style via the [styler](https://www.rdocumentation.org/packages/styler/versions/1.10.2) and [lintr](https://www.rdocumentation.org/packages/lintr/versions/3.1.0) packages to increase readability.

#### 2. Increase efficiency

Code is broken up until smaller fragments which are called upon and assembled as needed. This speeds up R running speed compared to one large R notebook, and makes identifying errors much easier!

#### 3. Reduced risk of data loss

All project contents are backed up to [GitHub](https://github.com/) - an online free repository. Changes are also tracked or 'version controlled' via [Git](https://git-scm.com/), allowing users to retrieve previous versions of projects.

#### 4. Easier sharing and collaboration

GitHub project repositories can be shared between collaborators. Project directories also use relative pathing via the [here](https://www.rdocumentation.org/packages/here/versions/1.0.1) package, making code easy to run on different devices.

#### 5. Resilient to future changes in R and R packages

Each project is isolated in its own environment, where the [renv](https://www.rdocumentation.org/packages/renv/versions/1.0.3) package allows users to record and use the same version of project dependencies without breaking other projects. The [config](https://www.rdocumentation.org/packages/config/versions/0.3.2) package lets you save and reuse other configurations made in the project's environment.

------------------------------------------------------------------------

## Prerequisites

Complete the following prerequisites for first-time use:

#### 1. Create a GitHub account

[Sign up](https://github.com/) using your personal email to ensure continued access.

#### 2. Download programs

Download the most recent version of [R software](https://cran.r-project.org/), [RStudio](https://posit.co/download/rstudio-desktop/), [Git](https://git-scm.com/downloads) (will also install Git Bash) and [GitHub Desktop](https://desktop.github.com/).

#### 3. Configure Git and GitHub Desktop

Git - for easy tracking/saving of code within RStudio

1.  [Set your username for every repository on your computer](https://docs.github.com/en/get-started/getting-started-with-git/setting-your-username-in-git)
2.  [Set your commit email address on GitHub](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-email-preferences/setting-your-commit-email-address#setting-your-commit-email-address-on-github)
3.  [Set your commit email address for every repository on your computer](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-email-preferences/setting-your-commit-email-address#setting-your-commit-email-address-on-github)

GitHub Desktop - for easy commit/revert permissions in GitHub Desktop

1.  [Connect your account](https://www.startyourlab.com/docs/github-desktop/#connect-your-account)
2.  [Configure your Git defaults](https://www.startyourlab.com/docs/github-desktop/#configure-your-git-defaults)
3.  [Pick your integrations](https://www.startyourlab.com/docs/github-desktop/#pick-your-integrations) - select `RStudio` as your preferred text editor.

#### 4. Connect Git to RStudio

1.  Open RStudio \> navigate to `Tools` \> `Global Options…` \> `Git/SVN` \> select `Git.exe` from the drop-down menu.
2.  If you don't have a SSH key allocated, click `Create SSH Key…` \> `OK` - you should now see a `Git` pane in the top-right of RStudio.

------------------------------------------------------------------------

## Setting up your project

Complete the following each time you want to set up a new R project from this template:

#### 1. Create a new project repository from this template

[Click here](https://github.com/RLGill/Template-R-projects-workflow) \> `Use this template` (green button) \> `Create a new repository` \> add a repository name, description and tick public/private - once generated, you will be redirected to the repository on GitHub.

#### 2. Clone the repository to your local machine

Click `<> Code` (green button) \> `Open with GitHub Desktop` \> choose a location to save your project.

#### 3. Rename files in your root directory

1.  Navigate to the R-project-template folder you created - this is your 'root' directory.
2.  Change the file name `Template-r-projects-workflow.Rproj` to your repository name.
3.  If applicable to your project, amend the license and author(s) in the `LICENSE.md` file - [click here](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/licensing-a-repository) for more information about licensing.

#### 4. Organise folder structure and populate with initial files

1.  Go to your root directory \> review folder structure and modify to suit your purposes by creating/renaming/deleting folders as needed.
2.  Place a blank R script file in each new folder as a place-holder for GitHub - you can copy-paste the `EMPTY.R` files from this template.
3.  Populate folders with initial scripts and/or data - this is generally done within the `00-code` and `01-data` sub-directories.
4.  Rename scripts and data according to [tidyverse's file naming conventions](https://style.tidyverse.org/files.html#names) - remember, good coding style makes R easier to read and use!

#### 5. Open RStudio within R projects

Go to your root directory \> double click the `.Rproj file` to open the project in RStudio \> check text in top-right corner - this should match the name of your project. Ensure you are always working within projects to reap the benefits provided by this template. You can switch and close projects using the drop-down arrow (don't do this now).

#### 6. Install package dependencies

1.  From RStudio, go to the `Files` tab from the bottom-right pane (by default) \> select your root directory and navigate to `00-code` \> `00-install-dependencies.R` - this will open the script in a separate tab (top).
2.  Run the script to install all packages required to use this template/workflow - enter `Y` into the console when prompted to include dependencies and to update the project's lockfile. This will install and update the project's lockfile with these packages (including their version). When working in projects from this template, R will use this lockfile instead of your complete inventory of packages.

#### 7. Back-up your project to GitHub's online repository

1.  From RStudio, click the save icon (top-left) \> close RStudio.

2.  Open GitHub Desktop \>select your project from `Current repository` tab (left panel) \> select the `Changes` tab to review changes made locally (i.e. on this device) - green text/files show project additions, and red text/files show deletions.

3.  Ensure all changes are ticked \> add a summary and description in `Summary (required)` and `Description` boxes. E.g., "Project set up" and "Create new repository, clone to local, rename files, organise folders, populate folders with initial files, install dependencies.".

4.  Click `Commit to main` to incorporate these changes into your `main` online version (more on this later) \> select the `History` tab - you should now see a record of your past commits.

5.  Navigate to `Changes` tab \> click `Push origin` (in blue) to "push" local changes to GitHub.com - this project is now backed up online and accessible for public/private use from any device.

6.  Check that your progress was logged on GitHub.com by right-clicking your project under the `Current repository` tab \> `View on GitHub` \> `Go to file` (top right) \> `History` (top right) \> select your commit message \> review the changes.

------------------------------------------------------------------------

## Project workflow

Once your project is set up, your regular workflow will look something like this:

#### 1. Sync your local machine with the most up-to-date version of your project on GitHub.com

1.  Open GitHub Desktop \> select project from `Current repository` tab \> click `Fetch origin` (top panel) - this will compare your local repository or "repo" against the online repo on GitHub.com (the "origin").

2.  Check the message and respond accordingly:

    "`Last fetched just now`" = your local repo is up-to-date with GitHub.com - do nothing.

    "`Pull origin`" = a change exists on GitHub.com which is not in your local repo - click `Pull origin` to pull from GitHub.com onto your machine.

#### 2. Open `conductor.Rmd` within R projects

1.  Go to your root directory \> double click the `.Rproj file` to open the project in RStudio.
2.  In the `Files` pane, click `00-code` \> `conductor.Rmd` to open the notebook - this is where you call on scripts and data contained in sub-directories to generate output(s).

#### 3. Install, load and add packages to your project

1.  Run the "`Current dependencies`" chunk to install and/or load packages from the project's lockfile.
2.  As you progress through your project, add any extra packages to the `list_packages()` vector in the "`Add/load packages during a coding session`" chunk \> run the chunk to install and load these packages.

#### 4. Write R code and source them via `conductor.Rmd`

1.  Begin writing your code for the project in the "`Begin writing your code`" chunk of `conductor.Rmd`.
2.  As you complete stages in the analysis, move your code out of `conductor.Rmd` into their own separate files. I've created two templates `template-r-script.R` and `template-r-notebook.Rmd` in `00-code/templates` that you can use to create new files with nice structure and formatting.
3.  Save your code as separate files in the `00-code` directory - index these (00, 01 etc.) or create sub-folders if needed to keep track of code. Don't forget to use [tidyverse's file naming conventions](https://style.tidyverse.org/files.html#names).
4.  In `conductor.Rmd`, use `source()` functions to stitch your code together and run these as needed - `source()` uses relative pathing from the root folder (via `./`) to locate and run code. E.g. `source("./00-code/00-install-dependencies.R", chdir = TRUE)`.

#### 5. Backup your project to GitHub periodically to keep a continuous record

1.  Open GitHub Desktop \>select your project from `Current repository` tab (left panel) - you should keep this open next to RStudio as you are working and use it regularly.
2.  When ready to commit changes to your `main` online version, save your R code \> tick/untick box(es) from the `Changes` tab in GitHub Desktop \> populate the `Summary (required)` and `Description` boxes - try to group these together in small, related tasks for easy tracking. If you group too many or too few tasks in a single commit, it will be harder to view or amend your changes in the future.
3.  When happy, click `Commit to main` \> `Push origin` - your changes are now backed up to GitHub.com.

#### 6. Format and save your code

1.  After each coding session, add any extra package(s) to your project's lockfile by navigating to `00-code` from the `Files` pane \> `00-install-dependencies.R` \> add packages to the `list_packages()` vector \> run the script \> save and close - this will load them with the "`Current dependencies`" chunk in future sessions.
2.  In the "`Add/load packages during a coding session`" chunk of `conductor.Rmd`, remove the package name(s) from the `list_packages()` vector \> run the chunk - check that your package(s) were installed/loaded without error.
3.  Before you proceed with the next step, commit and push the current version of your project to GitHub.
4.  Format your code according to the [tidyverse style guide](https://style.tidyverse.org/) by running the "`Format code as you complete stages`" chunk line-by-line (don't click the play symbol!) and perform the following checks and/or changes as appropriate:

`lintr::use_lintr(type = "tidyverse")` - can change type to other styles if preferred.

`lintr::lint_dir()` - identifies bad formatting across all R code in entire project ("Markers" tab below). Use this to identify where checks should be made in the next line.

`styler::style_dir("./")` - reformats your entire project to the style specified in use_lintr(). Check the modified code identified above to ensure it works and you're happy with the change(s).

`lintr::lint_dir()` - identify bad formatting that cannot be fixed by styler. Use this to manually make formatting changes according to the [tidyverse style guide](https://style.tidyverse.org/).

5.  Save all changes and commit them to GitHub.com when ready.

------------------------------------------------------------------------

## Extra utility

You may also require these functions on a case-by-case basis:

#### Undo changes to a project

Open GitHub Desktop \> select your project from the `Current repository` tab (left panel) \> complete the following based on your scenario:

-   If not already committed: Go to the `Changes` tab \> select the change(s) you want to revert \> right click \> `Discard changes…`.

-   If already committed: Go to the `History` tab \> select the commit(s) you want to revert \> right click \> `Revert changes in commit`.

#### Branch out for testing or collaboration

Branching allows you to clone a version of your repo and develop it independently from the `main` version - this allows you to try new things without risk of messing up your previous code. It is also a good way for collaborators to work on projects independently before deciding on and committing changes.

Here is an example of how branching works:

-   Bill creates an R project with GitHub and gave shared access to Bob. The `main` branch of the project includes all the data and initial scripts used for cleaning and summarising the data.

-   Bob wants to try out a new technique for summarising the data without affecting the Bills code, so he creates a new branch called `Bob-summary-trial` which clones the `main` branch. He then works on `Bob-summary-trial` independently from the `main` branch.

-   Bob finishes his technique and pushes this variation of the code to GitHub.com. He also creates a pull request for Bill to assess whether he wants to merge Bobs changes into `main`.

-   Bill pulls `Bob-summary-trial` from GitHub.com and compares it to `main`. He likes Bobs changes and approves the pull request - Bobs code is now merged into the `main` branch of the project.

How to branch:

1.  Open GitHub Desktop \> select your project from the `Current repository` tab (left panel) \> select `Current branch` (top panel) \> `New branch` \> name your new branch \> click `Create branch`. Under the `Changes` tab, click `Publish branch` to push the new branch to GitHub.com.
2.  Work under the new branch by selecting the branch from `Current branch` (top panel) in GitHub Desktop - push and pull changes as you would normally in the `main` branch.
3.  To request that changes made in your new branch be merged with `main`, open GitHub Desktop \> select your project from the `Current repository` tab (left panel) \> select the new branch from `Current branch` (top panel) \> `Preview Pull Request` \> check that the request states "`Merge [x] commits into [base: main] from [name of new branch].`" and that the commit history is accurate.
4.  When happy, click `Create pull request` \> leave a title and description to describe the merge \> click `Create pull request` - this request needs to be approved by the project creator.
5.  To approve a pull request, click `Current branch` in GitHub Desktop \> select the `main` branch that you want to merge with \> `Choose a branch to merge into main` \> select the new branch you want to merge into `main` \> `Create a merge commit` \> `Push origin` - the two branches are now merged.
6.  If desired, delete the old branch by clicking `Current branch` \> right-click the branch you want to delete \> `Delete…`'\> tick `Yes, delete this branch on the remote` \> `Delete`.

#### Publish your repository

[Click here](https://github.com/skills/github-pages) for the tutorial on creating a site or blog using GitHub pages, [here](https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content) for linking your repo to a Digital Object Identifier (DOI), and [here](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files) for adding a CITATION file to your repo to help users cite you accurately.

------------------------------------------------------------------------

## Package attributions

| Package                                                                      | Attribution                                                                                                                                                                                                                      |
|---------------------|---------------------------------------------------|
| [config](https://www.rdocumentation.org/packages/config/versions/0.3.2)      | Allaire J (2023). \_config: Manage Environment Specific Configuration Values\_. R package version 0.3.2, <https://CRAN.R-project.org/package=config>.                                                                            |
| [devtools](https://www.rdocumentation.org/packages/devtools/versions/2.4.5)  | Wickham H, Hester J, Chang W, Bryan J (2022). \_devtools: Tools to Make Developing R Packages Easier\_. R package version 2.4.5, <https://CRAN.R-project.org/package=devtools>.                                                  |
| [fs](https://www.rdocumentation.org/packages/fs/versions/1.6.3)              | Hester J, Wickham H, Csárdi G (2023). \_fs: Cross-Platform File System Operations Based on 'libuv'\_. R package version 1.6.3, <https://CRAN.R-project.org/package=fs>.                                                          |
| [here](https://www.rdocumentation.org/packages/here/versions/1.0.1)          | Müller K (2020). \_here: A Simpler Way to Find Your Files\_. R package version 1.0.1, <https://CRAN.R-project.org/package=here>.                                                                                                 |
| [lintr](https://www.rdocumentation.org/packages/lintr/versions/3.1.0)        | Hester J, Angly F, Hyde R, Chirico M, Ren K, Rosenstock A, Patil I (2023). \_lintr: A 'Linter' for R Code\_. R package version 3.1.0, <https://CRAN.R-project.org/package=lintr>.                                                |
| [markdown](https://www.rdocumentation.org/packages/markdown/versions/1.10)   | Xie Y, Allaire J, Horner J (2023). \_markdown: Render Markdown with 'commonmark'\_. R package version 1.10, <https://CRAN.R-project.org/package=markdown>.                                                                       |
| [plyr](https://www.rdocumentation.org/packages/plyr/versions/1.8.9)          | Hadley Wickham (2011). The Split-Apply-Combine Strategy for Data Analysis. Journal of Statistical Software, 40(1), 1-29. URL <https://www.jstatsoft.org/v40/i01/.>                                                               |
| [renv](https://www.rdocumentation.org/packages/renv/versions/1.0.3)          | Ushey K, Wickham H (2023). \_renv: Project Environments\_. R package version 1.0.3, <https://CRAN.R-project.org/package=renv>.                                                                                                   |
| [rmarkdown](https://www.rdocumentation.org/packages/rmarkdown/versions/2.25) | Allaire J, Xie Y, Dervieux C, McPherson J, Luraschi J, Ushey K, Atkins A, Wickham H, Cheng J, Chang W, Iannone R (2023). \_rmarkdown: Dynamic Documents for R\_. R package version 2.25, <https://github.com/rstudio/rmarkdown>. |
| [rstudioapi](https://rdocumentation.org/packages/rstudioapi/versions/0.15.0) | Ushey K, Allaire J, Wickham H, Ritchie G (2023). \_rstudioapi: Safely Access the RStudio API\_. R package version 0.15.0, <https://CRAN.R-project.org/package=rstudioapi>.                                                       |
| [styler](https://www.rdocumentation.org/packages/styler/versions/1.10.2)     | Müller K, Walthert L (2023). \_styler: Non-Invasive Pretty Printing of R Code\_. R package version 1.10.2, <https://CRAN.R-project.org/package=styler>.                                                                          |
