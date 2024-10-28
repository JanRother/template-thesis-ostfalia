# Ostfalia Computer Science Archive | Template Thesis

> Ostfalia University of Applied Sciences  
> Computer Science & Business Informatics  
> Archive  
>
> **Template Thesis**  
> from [github.com/Ostfalia-ComputerScience-Archive](https://github.com/Ostfalia-ComputerScience-Archive/ostfalia-computerscience-templatethesis)
> 
> Jan Rother  
> jan.rother@ostfalia.de  

## Table of Contents

<!-- TOC -->
* [Ostfalia Computer Science Archive | Template Thesis](#ostfalia-computer-science-archive--template-thesis)
  * [Table of Contents](#table-of-contents)
  * [Introduction](#introduction)
    * [Overview](#overview)
    * [Demarcation](#demarcation)
    * [Important Notes](#important-notes)
  * [Usage](#usage)
    * [Toolchain](#toolchain)
    * [Setup](#setup)
    * [Editing the Document](#editing-the-document)
      * [Structure](#structure)
      * [Files for the Thesis](#files-for-the-thesis)
      * [Files for the Toolchain](#files-for-the-toolchain)
    * [Configuring the Document](#configuring-the-document)
    * [Writing](#writing)
    * [Compiling](#compiling)
    * [Cleaning Up](#cleaning-up)
    * [Miscellaneous](#miscellaneous)
  * [Utilizing Development Container](#utilizing-development-container)
    * [DevContainer](#devcontainer)
    * [Getting Started locally](#getting-started-locally)
      * [Prerequisites](#prerequisites)
      * [Starting the Development Container](#starting-the-development-container)
    * [Getting Started in the Cloud](#getting-started-in-the-cloud)
      * [Prerequisites](#prerequisites-1)
      * [Starting a Code Space](#starting-a-code-space)
    * [Adjust to every Need](#adjust-to-every-need)
    * [Compatibility](#compatibility)
  * [Note](#note)
<!-- TOC -->

-----

## Introduction

### Overview

The *Ostfalia Computer Science Archive* strives to provide a collection of useful resources for students of computer science and business informatics at the Ostfalia University of Applied Sciences. Documents, such as exam protocols, lecture notes, templates and other materials, created and provided by students will make up a collaborative collection of resources to help others succeed in their studies.

This repository [ostfalia-computerscience-templatethesis](https://github.com/Ostfalia-ComputerScience-Archive/ostfalia-computerscience-templatethesis) is part of the archive and dedicated to providing a template for theses written by students of computer science and business informatics at the Ostfalia University of Applied Sciences. The template is intended to provide a starting point for students to structure and format their thesis according to the guidelines of the university and the department.

### Demarcation

The template only provides a basic structure and formatting for the thesis. It does not include any content or specific requirements for the thesis. Students are expected to fill in the content of their thesis according to the guidelines of their university and department. The template is provided as a LaTeX document, which is a common format for scientific papers and theses. Students are expected to have a basic understanding of LaTeX and the tools required to compile the document.

### Important Notes

- **The template is not an official document of the university or the department.** It is provided by students and may not be up to date with the latest guidelines or requirements. Students are expected to consult the official guidelines and requirements of the university and the department before using the template.
- **The template is provided as is.** It is not guaranteed to be free of errors or to work on all systems. Students are expected to test the template and make any necessary adjustments to fit their needs.
- **The template comes without support.** Students are expected to be able to use LaTeX and the tools required to compile the document. They are also expected to be able to make any necessary adjustments to the template to fit their needs.

## Usage

### Toolchain

The following tools form one possible way to compile the LaTeX document and are tested to work on Microsoft Windows 10 and higher.

- **LaTeX Distribution**: [MiKTeX](https://miktex.org/)
- **Perl Distribution**: [Strawberry Perl](http://strawberryperl.com/) or `winget install -e --id StrawberryPerl.StrawberryPerl`
- **Python Distribution**: [Python](https://www.python.org/)
- **Editor**: [Microsoft Visual Studio Code](https://code.visualstudio.com/)
  - **LaTeX Language Support**: [LaTeX](https://marketplace.visualstudio.com/items?itemName=mathematic.vscode-latex)
  - **LaTeX Workshop**: [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
  - **LaTeX Utilities**: [LaTeX Utilities](https://marketplace.visualstudio.com/items?itemName=tecosaur.latex-utilities)
- **Literature Management**: [BibLaTeX](https://www.ctan.org/pkg/biblatex) or [BibTeX](http://www.bibtex.org/)

### Setup

1. Install the *LaTeX* distribution *MiKTeX* from [miktex.org](https://miktex.org/) or via `winget install --id=MiKTeX.MiKTeX  -e`.
2. Install the *Perl* distribution *Strawberry Perl* from [strawberryperl.com](http://strawberryperl.com/) or via `winget install -e --id StrawberryPerl.StrawberryPerl`.
3. Install the *Python* distribution from [python.org](https://www.python.org/) or via `winget install -e --id Python.Python.3.10`.
4. When planning to use packages like `minted` for code highlighting, install `pygments` and `latexminted` via `pip install pygments latexminted`.
5. Install your preferred *LaTeX* editor with the recommended extensions for *LaTeX* support.
6. Install a literature management tool, such as or exactly *BibLaTeX* or *BibTeX*.
7. Ensure to have a *GIT* client installed on your system.
8. Clone the repository to your local machine using `git clone`.
9. Open the repository as a project in your preferred *LaTeX* editor, for example *Microsoft Visual Studio Code*.

> **Note**:  
> The above steps are a guideline for setting up the *LaTeX* environment on *Microsoft Windows*.  
> For help with other operating systems, please refer to the documentation of the respective tools or look for help in other resources. For unix based systems, you can try the [Baeldung Tutorial](https://www.baeldung.com/linux/install-latex).

### Editing the Document

#### Structure

```text
TEMPLATE-THESIS-OSTFALIA
.
│   .gitattributes
│   .gitignore
│   .latexmkrc
│   cleanup-files
│   cleanup.bat
│   cleanup.sh
│   LICENSE
│   literature.bib
│   main.pdf
│   main.tex
│   README.md
│   README.pdf
│   
├───.devcontainer
│       .zshrc
│       devcontainer.json
│       Dockerfile
│       starship.toml
│
├───.idea
│       ...
│
├───chapters
│   ├───00
│   │       introduction-and-motivation.tex
│   │
│   ├───01
│   │       chapter.tex
│   │
│   ├───99
│   │       ending-and-conclusion.tex
│   │
│   ├───AA
│   │       attachment.tex
│   │
│   ├───example
│   │       example.tex
│   │
│   └───template
│           template.tex
│
├───images
│   └───logos
│           logo_ostfalia.jpg
│           sublogo_sz-sud-wob.jpg
│           sublogo_wf.jpg
│
├───main
│       abstract.tex
│       affidavit.tex
│       cover.tex
│       glossaries.tex
│       preface.tex
│
├───meta
│       commands.tex
│       header.tex
│       hyphenation.tex
│       packages.tex
│       parameters.tex
│
└───out
        main.pdf
        ...
```

#### Files for the Thesis

The document is structured into several files and directories, that fulfill different purposes:

- The **main file** is `main.tex`. It includes all other files and sets the general structure of the document.
- The **chapters** are located in the directory `./chapters`. Each chapter is a separate file and is included in the main file. It is recommended to copy the `./chapters/template/` directory to a new directory to create a new chapter. Note, that new chapters have to be included in the main file, otherwise they will not be compiled. The `./chapters/example/` directory provides an example chapter with a simple structure and some content. For chapters dedicated to the appendix, the `./chapters/AA/` directory is provided as template and can, if needed, be copied and expended to new chapters `./chapters/BB/`, `./chapters/CC/`, and so on.
- The **meta data** such like document styles are located in the directory `./meta`. The files are included in the main file and provide the general settings and definitions for the document.
  - `commands.tex` provides custom commands and environments.
  - `header.tex` provides settings for the document layout and appearance.
  - `hyphenation.tex` provides custom hyphenation rules.
  - `packages.tex` list all required packages and their settings.
  - `parameters.tex` provides the general parameters and configuration for the document.
- Content that is not part of the chapters but is relevant for the document, is located in the directory `./main`. Those files contain text for pages outside the main matter.
  - `abstract.tex` contains the abstract of the work in German and English. (only visible in `thesis`-mode, see [Configuring the Document](#configuring-the-document))
  - `affidavit.tex` contains the affidavit that the work was created independently including placeholders for signatures.
  - `cover.tex` contains the cover page of the document.
  - `glossaries.tex` contains the glossaries and acronyms used in the document and controlled by the `glossaries` package.
  - `preface.tex` contains the preface of the document. (only visible in `thesis`-mode, see [Configuring the Document](#configuring-the-document))
- **Literature** can be added to the file `literature.bib`, by using the *BibTeX* format. Data having the *BibTeX* format can be obtained from various sources and most of the literature databases provide the possibility to export the data in the *BibTeX* format.
- **Images** used in the document should be placed in the `./images/` directory. The directory `./images/logos/` is intended to store logos and other images used in the cover and the affidavit.

#### Files for the Toolchain

The following files are provided to support the toolchain and the usage of the document:

- In the **`README.md`** file, all necessary information about the document and the template is provided.
- The **`.gitignore`** file is used to exclude files and directories from the version control system *GIT*.
- The **`.gitattributes`** file is used to define attributes like line endings or *GIT LFS* settings for the repository.
- The **`LICENSE`** file provides the license of the document and the template.
- To remove files associated to or created by the compilation, the **`cleanup.bat`** (for *Microsoft Windows*) and **`cleanup.sh`** (for *Unix* based systems) files are provided. Their usage is explained under [Cleaning Up](#cleaning-up).
- The **`.devcontainer`** directory contains the configuration for the development container, which is used to provide a consistent development environment for the document.

### Configuring the Document

The document can be configured by adjusting the settings in the files located in the `./meta/` directory. Every file is dedicated to a specific purpose and provides the possibility to adjust the settings and definitions for the document. Content and context related settings such as title and author can be adjusted in the `parameters.tex` file. Settings regarding the layout and formatting of the document can be adjusted in the `header.tex` and the `commands.tex` files.

> **Note**:  
> Some of the documents content is only enabled in `thesis`-mode.  
> This mode can be enabled by setting the `thesis`-flag in the `parameters.tex` file to `true`.

Every document has comments and explanations in the files to help the user to understand the purpose and the usage of the settings and definitions.

### Writing

The thesis can be built by extending the directory structure explained under [Structure](#structure) and by adding content to the files. For the most basic layout functions, have a look at the `./chapters/example/` directory. The `example.tex` file provides a simple example including use cases like sub- and subsubsections, lists, tables, figures, references, citations and more.

### Compiling

The document can be compiled using the *LaTeX* distribution *MiKTeX* and the *Perl* distribution *Strawberry Perl*. The compilation can be done using the command line or by using an integrated development environment (IDE) like *Microsoft Visual Studio Code* with the recommended extensions for *LaTeX* support.

To start the compilation execute

```shell
latexmk
```

This compiles the document as configured in the `./.latexmkrc` file. This file is used to define the compilation process and the output directory. By default, the output directory is set to `./out/`. Other settings configured in this file are

- the default file to compile,
- the used *LaTeX* compiler,
- the number of maximum runs per call,
- the behavior of the configuration used during [Cleaning Up](#cleaning-up), and
- custom dependencies required for `glossaries` package.

As an alternative, use the integrated compilation feature of your preferred *LaTeX* editor or IDE.

The compiled document can be found under `./main.pdf` respectively `./out/main.pdf`, depending on the configuration.

### Cleaning Up

To remove files associated to or created by the compilation, use the provided batch or shell script.

- `.\cleanup.bat` for *Microsoft Windows*
- `./cleanup.sh` for *Unix* based systems

By default, the script assumes the project root directory as output folder and removes any files listed in `./cleanup-files`. Furthermore, it moves the artifacts matching `*.pdf` pattern to the project root directory. This behavior can be adjusted by applying the following options:

- `cleanup.* --no-move` prevents the artifacts from being moved
- `cleanup.* [DIRECTORY]` specifies the output directory to be cleaned up (relative to the project root directory)

As an alternative, `latexmk` can be used to clean up the project directory by executing

```shell
latexmk -c
```

to remove build files or

```shell
latexmk -C
```

to remove all files created by the compilation process, including the output PDF file.

### Miscellaneous

Nothing.

## Utilizing Development Container

### DevContainer

A *DevContainer* allows developers to define a development environment in a container. This leads to a consistent development environment across different machines and therefore simplifies the setup process while also reducing dependencies on the host system. Some of the most relevant Integrated Development Environments (IDEs) already support the use of *DevContainers*:

- **Visual Studio Code**: [Developing inside a Container](https://code.visualstudio.com/docs/devcontainers/containers)
- **JetBrains IntelliJ**: [DevContainers](https://www.jetbrains.com/help/idea/connect-to-devcontainer.html)

Any configuration regarding the development container is stored in the `./.devcontainer/` directory. It must not be removed.

### Getting Started locally

#### Prerequisites

To use the *DevContainer* feature, the following software has to be installed on the host system:

- To clone the repository, a **GIT client** is required.
- For containerizing the development environment, **Docker Desktop** has to be installed via [docker.com](https://www.docker.com/products/docker-desktop/) or by using `winget install -e --id Docker.DockerDesktop`.
- An **Editor or IDE** as described in the [DevContainer](#devcontainer) section for accessing the development container is required:
  - **Visual Studio Code** can be downloaded at [code.visualstudio.com](https://code.visualstudio.com/download) or directly installed via `winget install -e --id Microsoft.VisualStudioCode`.
  - **JetBrains IntelliJ** is recommended to be installed using the [JetBrains Toolbox](https://www.jetbrains.com/toolbox-app/download/).

#### Starting the Development Container

1. Before starting the development container, ensure that the *Docker Engine* is running on the host system.
2. Clone your fork of the repository to your local machine using `git clone <your-fork-url>`.
3. Open the repository as new project in your preferred IDE or editor.
4. If the editor supports *DevContainers*, a notification should appear to reopen the project in a container.
5. The editor will build the container and open the project in the development container.

### Getting Started in the Cloud

#### Prerequisites

To use the *DevContainer* remotely, no software has to be installed on the host system. Other requirements have to be met:

- A **GitHub account** at [github.com](https://github.com/) has to be created.
- A **GitHub repository** containing the toolchain, especially the `.devcontainer` directory, has to be created.

#### Starting a Code Space

1. Open the repository in the browser and click on the `Code` button.
2. Select `Codespaces` from the dropdown menu.
3. Click on `Create Codespace on Main` to create a new code space.
4. The code space will be created and opened in the browser.
5. After the *DevContainer* is built, the development environment is available right in the browser.

> **Note**:  
> *Visual Studio Code* provides an option to connect to a *DevContainer* in the cloud.  
> Therefore, the *GitHub Codespaces* extension has to be installed in the editor.

### Adjust to every Need

The *DevContainer* can be adjusted to every need. The `Dockerfile` defines the base image and the tools installed in the container. The `devcontainer.json` file defines the settings for the development container, thus shaping the development environment.

It is recommended to leave the `Dockerfile` as-is. It uses the `texlive/texlive` image from [hub.docker.com](https://hub.docker.com/r/texlive/texlive) as base image and configures it for the *LaTeX* environment. In its current state, the `latest` tag is used, to ensure that everything is up to date. This and other specifiers can easily be modified using `ARG` variables.

If changes to the development environment are necessary, the `devcontainer.json` file can be adjusted. It uses the image created by the `Dockerfile` and defines the settings for the development container. Besides its behavior, precise settings for the editor `vscode` or the IDEs `jetbrains` can be defined. The `extensions` array can be used to install additional extensions in the development container.

The *DevContainer* provides a pre-configured ZSH shell. It can be further customized by adjusting the `.zshrc` file. The `starship.toml` file can be used to configure the prompt of the shell.

### Compatibility

If after initial creation of a project, a higher compatibility should be achieved, the base images and packages used should be pinned to a specific version.

## Note

I hope this template helped you to get started with your thesis. However, it is possible that it contains errors or is not up to date with the latest guidelines or requirements. If you face any issues or have any suggestions, feel free to contact me.

**Best of luck with your work!**  
**Jan**
