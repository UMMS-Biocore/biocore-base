.. _introduction:

************
Introduction
************

The `UMMS Biocore Team <http://www.umassmed.edu/biocore/>`_ provides this
repository as a basis for documentation and metadata included in the source of
current and future projects. You are free to modify and use as you see fit.

**Documentation**
    
    :ref:`end-user-doc`
      Sphinx+readthedocs recommended

    :ref:`reference-doc`
      Whatever is native in your language (e.g. docstring for python)
      All public methods, functions, classes, etc. should be documented

    :ref:`comment-doc`
      Inline code comments

**Version Control**

    All code should be committed to version control from inception.
    This is a critical part of managing development and regression, and makes it
    much easier to share and collaborate - now or in the future.
    We recommend `git <http://git-scm.com/>`_. Free hosting is available on
    `github <github.com>`_ for open source projects and `bitbucket <bitbucket.org>`_
    for private ones.
    You may find that a specific branching process and release strategy becomes
    more critical as your project's code base and contributor base grows bigger.
    Pick one (`git flow branching <https://github.com/nvie/gitflow>`_ and
    `semantic versioning <http://semver.org/>`_ are popular choices) and
    document that choice in your source. 
    
**Style**

    When collaborating on code with others, especially with the intention of
    releasing it, it is critical to maintain a consistent style. Select and
    reference a style guide for your project before you begin. Code which does
    not follow the style guidelines should be rejected and refactored. To aid in
    this, run a linting tool in a post-commit hook and/or in your CI.

**Testing**

    Write tests with your code. Treat them as a single entity, along with your
    documentation.
    Invest some time in learning how to write good tests. 
    Consider `Test Driven Development
    <http://www.extremeperl.org/bk/test-driven-design>`_, but don't incorporate
    excessive complexity just to make something TDD compatible.

**Continuous Integration**

    When collaborating on code with others, especially with the intention of releasing it,
    it is important to maintain a consistent style. 
    Travis
    Unit tests
    linting

**License**

    This repository is released under the MIT license included in `LICENSE`.
    You may choose to use another license instead for your project.
