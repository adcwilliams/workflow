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

# Making Changes

At it's simplest, making changes to files in a repository is a three
step process:

 * Make the change
 * Add the file to Git's staging list of files whose changes will be logged next time a _commit_ is made.
 * Commit the changes. The difference between the files as they were and the files as they are now is stored, and the author can enter a short message to explain what changes occurred.

At this point the changes are limited to your local copy of the respository.
To enable other people to see them there is a final step thhat must be
performed:

```
git push
```

This merges your changes into the GitHub repository, including the commit
messages that you have entered. Now imagine if you have multiple people
all trying to modify the same file, or possibily the same part of the same
file! If I'm trying to set `x = 1` and somebody else things it should be
`x = 2` then this is a recipe for chaos. That's where _branches_ come in.

## Branches

It is possible to imagine a GitHub repository as the trunk of a tree. When
anyone makes a change the trunk gets a bit taller as the updates are added
to the top. However, development is not generally performed on the trunk, or
_master branch_ as GitHub calls it. To avoid conflicts a developer normally
makes a _development branch_, which is an exact copy of the top of the trunk.
Any changes made to the development branch are private, and nobody else can
alter them. Then, when work on a task is completed, that entire branch can
be merged into the master branch in a single step.

## Reviews and Merge Requests

One advantage of this system of development branches is that it allows the
project owner to control what is merged into the master branch, but without
preventing developers from working unconstrained. It's only when the branch
is ready to be merged that the project owner has to decide whether it is
appropriate or not. This action is performed via a _merge request_, known
in GitHub terminology as a _pull request_. In simple terms, the developer
is requesting the master branch owner grant permission for their changes
to be merged.

The pull request is initiated by via a **New pull request** button in
GitHub, which allows the developer to assign a reviewer (usually the
branch owner or a delegate) and comment what they have done and why it should
be merged. Since branches are usually generated in response to _issues_, the
developer can point to the issue that their work has solved. The process
is a peer-review similar to that undertaken when publishing research. Other
participants may be included for comments and advice, and there are three
possible outcomes.

 * The request is accepted, and the changes become part of the master branch.
 * The reviewer and other participants make comments and suggestions on how the work could be improved or altered to meet the requirements of the issue or other guidelines like coding standards. The developer would then go and make those changes and the process is repeated until all parties are happy. The request is then accepted. This is by far the most common result in a pull request.
 * The request is rejected outright. This is very rare if the work has been intended to solve an issue, and generally only occurs in response to unsolicited work.

Once the changes are merged, the development branch and any associated issues
are closed and the process begins again with a new issue. This is how
collaborative software development works. The team owns the code, not any
individual, and development is a process by which every member contributes.


