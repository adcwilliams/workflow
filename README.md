# Introduction

Welcome to **GitHub**!

If this is your first time using Git, then make sure you set up your user
details from the command line as follows:

```
git config --global user.name "My Name"
git config --global user.email "My Email Address"
```

Replace _My Name_ and _My Email Address_ with your actual details. This will
enable people to see who has made changes to code and who to contact if there
are any questions.

# Accessing Repositories

A repository contains files, along with their histories, known as _commits_.
In order to contribute to a repository you must first make a local copy on
your computer. This is known as _cloning_. When you clone a repository you
are not just taking a copy of the files, but the entire history of the
project, every change that has occurred, who performed the change, and
any comments they may have made to explain the change. In this way, Git is
_self documenting_.

GitHub includes extra features such as _Issues_, where development tasks
can be written and assigned, _merge requests_ for peer-reviewing code, and
a _wiki_ for general purpose documentation such a development guide or
instructions on what requirements must be met for code to be allowed. This
usually includes a set of tests to be performed before merge requests can
be approved, both code correctness and experimental correctness tests.

## Cloning

It is frequently useful to have a directory that contains all your Git
projects or workflows. The name is not important as long as you can
remember it. For my work I store my projects in a `git` directory. If
using Git on Linux or `Git Bash` for Windows, you can make such a directory
and then enter it using the following steps:

```
mkdir ~/git
cd ~/git
```

To clone this repository, type:

```
git clone git@github.com:adcwilliams/workflow.git
```

You may be asked for your GitHub username and password. It is possible to
set up passwordless access using public keys, but we won't cover that here.
Assuming your login details are accepted, you now should have a directory
called `workflow`. If you go into that directory you'll see an identical
set of files to those listed on GitHub, including the development history.


