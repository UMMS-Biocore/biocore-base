.. _git:

************
Git
************

All code should be committed to version control from inception.
This is a critical part of managing development and regression, and makes it
much easier to share and collaborate - now or in the future.
We recommend `git <http://git-scm.com/>`_. Free hosting is available on `github
<http://www.github.com>`_ for open source projects and `bitbucket
<http://www.bitbucket.org>`_ for private ones.

Recommended Workflow
====================

Central org repo
personal fork
master, develop, and feature branches

from local:
git fetch upstream
git checkout develop



For small to medium projects (2-50 contributors), we recommend the following
workflow:

Create Organization Repo
------------------------

On github, `create an organization
<https://help.github.com/articles/creating-a-new-organization-account/>`_ if
you don't have one already and `initialize your empty repository
<https://help.github.com/articles/create-a-repo/>`_ (do not create any files).

Clone the repository, create develop and stable branches, and push to github by
following the steps below:

.. code-block:: bash

  $ mkdir REPONAME
  $ cd $REPONAME
  $ git init
  $ git commit --allow-empty -m'Initial commit'
  $ git remote add upstream https://github.com/ORGNAME/REPONAME.git
  $ git checkout -b develop
  $ git branch -d master
  $ git push -u upstream develop
  $ git checkout -b stable
  $ git push -u upstream stable

Fork Repo
---------

Create a `fork of the repository
<https://help.github.com/articles/fork-a-repo/>`_ under your github username by
clicking the fork button.

.. code-block:: bash

  $ git remote add origin https://github.com/USERNAME/REPONAME.git
  $ git config branch.develop.remote origin
  $ git config branch.stable.remote origin

Work in a Feature Branch
------------------------

.. code-block:: bash

  $ git checkout -u origin 2015-04-22_my_feature
  $ .... do some work ...
  $ git add <files>
  $ git commit -m 'Commit message'
  $ git push

`Create a pull request
<https://help.github.com/articles/creating-a-pull-request/>`_ onto upstream
from your feature branch.

Once it's merged, you can fetch the updated copy of develop:

.. code-block:: bash
  $ git checkout develop
  $ git pull upstream develop

Additional info
---------------

`hub <https://hub.github.com/>_` is a tool from github which simplifies many of
these commands, and is highly recommended when working with github.

Branching
=========

You may find that a more complex branching process and release strategy becomes
useful as your project's code base and contributor base grows bigger. This is
particularly important if one group is working on preparing code for a release
while another is adding new features.
Pick one (`git flow branching <https://github.com/nvie/gitflow>`_ is
recommended) and document that choice in your source.

If using the develop -> stable model, it's important to `set the default branch
<https://help.github.com/articles/setting-the-default-branch/>`_
to develop in github settings. This is the branch pull requests will be opened
against, and should be set correctly if you followed the steps above.

FAQ
===

I've lost a file that I didn't commit
-------------------------------------

Unfortunately, git can't help you here. Commit early and often. Local backups (such as time machine) may have a copy.

I've lost a commit
------------------

``git reset --hard`` and ``git rebase``, can cause you to lose progress if you
make a mistake. Fortunately it is almost always possible to recover commits in
git using the reflog. See `Data Recovery
<http://git-scm.com/book/en/v2/Git-Internals-Maintenance-and-Data-Recovery#_data_recovery>`_.

I've committed a large file and now my repository is huge
---------------------------------------------------------

Large binary files generally shouldn't be kept in source control. Github has a
100MB per file limit.
If you must store a large file in source control, consider using `Large File
Storage <https://git-lfs.github.com/>`_.

To remove a file from your git tree, see `Removing Objects
<http://git-scm.com/book/en/v2/Git-Internals-Maintenance-and-Data-Recovery#Removing-Objects>`_. 


LFS
Recovery
Fork pull model
GUIs
Github

