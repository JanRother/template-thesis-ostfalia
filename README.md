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
- [Ostfalia Computer Science Archive | Template Thesis](#ostfalia-computer-science-archive--template-thesis)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
    - [Overview](#overview)
    - [Demarcation](#demarcation)
    - [Important Notes](#important-notes)
  - [Usage](#usage)
    - [Toolchain](#toolchain)
    - [Setup](#setup)
    - [Editing the Document](#editing-the-document)
      - [Structure](#structure)
      - [Files for the Thesis](#files-for-the-thesis)
      - [Files for the Toolchain](#files-for-the-toolchain)
    - [Configuring the Document](#configuring-the-document)
    - [Writing](#writing)
    - [Compiling](#compiling)
    - [Miscellaneous](#miscellaneous)
  - [Note](#note)
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
- **Editor**: [Microsoft Visual Studio Code](https://code.visualstudio.com/)
  - **LaTeX Language Support**: [LaTeX](https://marketplace.visualstudio.com/items?itemName=mathematic.vscode-latex)
  - **LaTeX Workshop**: [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
  - **LaTeX Utilities**: [LaTeX Utilities](https://marketplace.visualstudio.com/items?itemName=tecosaur.latex-utilities)
- **Literature Management**: [BibTeX](http://www.bibtex.org/)

### Setup

1. Install the *LaTeX* distribution *MiKTeX* from [miktex.org](https://miktex.org/).
2. Install the *Perl* distribution *Strawberry Perl* from [strawberryperl.com](http://strawberryperl.com/) or via `winget install -e --id StrawberryPerl.StrawberryPerl`.
3. Install your preferred *LaTeX* editor with the recommended extensions for *LaTeX* support.
4. Install a literature management tool, such as or exactly *BibTeX*.
5. Ensure to have a *GIT* client installed on your system.
6. Clone the repository to your local machine using `git clone`.
7. Open the repository as a project in your preferred *LaTeX* editor.

> **Note**:  
> The above steps are a guideline for setting up the *LaTeX* environment on *Microsoft Windows*.  
> For help with other operating systems, please refer to the documentation of the respective tools or look for help in other resources. For unix based systems, you can try the [Baeldung Tutorial](https://www.baeldung.com/linux/install-latex).

### Editing the Document

#### Structure

```text
.
│   .gitignore
│   affidavit.tex
│   cover.tex
│   LICENSE
│   literature.bib
│   main.tex
│   README.md
│   _delete.bat
│   _delete.sh
│
├───.devcontainer
│       devcontainer.json
│
├───chapters
│   ├───00
│   │       Einleitung-und-Motivation.tex
│   │
│   ├───01
│   │       Kapitel.tex
│   │
│   ├───99
│   │       Schluss-und-Fazit.tex
│   │
│   ├───AA
│   │       Anhang.tex
│   │
│   ├───example
│   │       example.html
│   │       Example.java
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
└───meta
        commands.tex
        header.tex
        hyphenation.tex
        packages.tex
        parameters.tex
```

#### Files for the Thesis

The document is structured into several files and directories, that fulfill different purposes:

- The **main file** is `main.tex`. It includes all other files and sets the general structure of the document.
- The **chapters** are located in the directory `./chapters`. Each chapter is a separate file and is included in the main file. It is recommended to copy the `./chapters/template/` directory to a new directory to create a new chapter. Note, that new chapters have to be included in the main file, otherwise they will not be compiled. The `./chapters/example/` directory provides an example chapter with a simple structure and some content. For chapters dedicated to the appendix, the `./chapters/AA/` directory is provided as template and can, if needed, be copied and expended to new chapters `./chapters/BB/`, `./chapters/CC/`, and so on.
- The **meta data** such like packages, commands, parameters and hyphenation are located in the directory `./meta`. The files are included in the main file and provide the general settings and definitions for the document.
  - `commands.tex` provides custom commands and environments.
  - `header.tex` provides settings for the document layout and appearance.
  - `hyphenation.tex` provides custom hyphenation rules.
  - `packages.tex` list all required packages and their settings.
  - `parameters.tex` provides the general parameters and configuration for the document.
- The **cover** and **affidavit** are located in the root directory in the files `cover.tex` and `affidavit.tex`.
- **Literature** can be added to the file `literature.bib`, by using the *BibTeX* format. Data having the *BibTeX* format can be obtained from various sources and most of the literature databases provide the possibility to export the data in the *BibTeX* format.
- **Images** used in the document should be placed in the `./images/` directory. The directory `./images/logos/` is intended to store logos and other images used in the cover and the affidavit.

#### Files for the Toolchain

The following files are provided to support the toolchain and the usage of the document:

- In the **`README.md`** file, all necessary information about the document and the template is provided.
- The **`.gitignore`** file is used to exclude files and directories from the version control system *GIT*.
- The **`LICENSE`** file provides the license of the document and the template.
- To remove files associated to or created by the compilation, the **`_delete.bat`** (for *Microsoft Windows*) and **`_delete.sh`** (for *Unix* based systems) files are provided.
- The **`.devcontainer`** directory contains the configuration for the development container, which is used to provide a consistent development environment for the document.

### Configuring the Document

The document can be configured by adjusting the settings in the files located in the `./meta/` directory. Every file is dedicated to a specific purpose and provides the possibility to adjust the settings and definitions for the document. Content and context related settings such as title and author can be adjusted in the `parameters.tex` file. Settings regarding the layout and formatting of the document can be adjusted in the `header.tex` and the `commands.tex` files.

Every document has comments and explanations in the files to help the user to understand the purpose and the usage of the settings and definitions.

### Writing

The thesis can be build by extending the directory structure explained under [Structure](#structure) and by adding content to the files. For the most basic layout functions, have a look at the `./chapters/example/` directory. The `example.tex` file provides a simple example including use cases like sub- and subsubsections, lists, tables, figures, references, citations and more.

### Compiling

The document can be compiled using the *LaTeX* distribution *MiKTeX* and the *Perl* distribution *Strawberry Perl*. The compilation can be done using the command line or by using an integrated development environment (IDE) like *Microsoft Visual Studio Code* with the recommended extensions for *LaTeX* support.

To start the compilation execute

```shell
latexmk -pdf .\main.tex
```

or use the integrated compilation feature of your preferred *LaTeX* editor.

The compiled document can be found under `./main.pdf`.
To remove files associated to or created by the compilation, execute

```shell
.\_delete.bat
```

or

```shell
./_delete.sh
```

### Miscellaneous

Nothing.

## Note

I hope this template helped you to get started with your thesis. However, it is possible that it contains errors or is not up to date with the latest guidelines or requirements. If you face any issues or have any suggestions, feel free to contact me.

**Best of luck with your work!**  
**Jan**
