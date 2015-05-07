.. _versioning:

************
Versioning
************

Versioning refers to the practice of assigning an arbitrary identifier to code
at a particular point in development.

Semantic Versioning
===================

We strongly recommend following `semantic versioning (semver) <http://semver.org/>`_.
Avoid the temptation to create your own versioning schema, append build ids,
dates, etc. Keep this information in a change log or other metadata, and tag
with semver.

Tagging
=============

Use git tags to "ship" a version. Github `provides some functionality
<https://help.github.com/articles/about-releases/>`_  on top of
this, to include release notes, etc.

Documentation
=============

Since :ref:`documentation` is only current for a particular release, it must be
versioned in the same way. The simplest way to do this is to include the
documentation as code in your repository.
