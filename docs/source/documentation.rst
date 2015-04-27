.. _documentation:

*************
Documentation
*************

**Overview**

There are three major categories of documentation, all of which are critical to
the usability and maintainability of any project.

  what about :ref:`end-user-doc`
  :ref:`reference-doc`
  or
  :ref:`text <comment-doc>`

Parse published an excellent `primer on documentation <http://blog.parse.com/learn/engineering/designing-great-api-docs/>`_.

Shining examples: 

* `github <https://developer.github.com>`_
* `stripe API <https://stripe.com/docs/api>`_ 
* `stripe docs <https://stripe.com/docs>`_
* `bootstrap-datepicker <http://bootstrap-datepicker.readthedocs.org/en/v1.4.0/>`_.

.. _end-user-doc:
**End User Documentation**
    
Documentation for the end user consists of guides and tutorials. Markdown,
especially `github flavored markdown
<https://help.github.com/articles/github-flavored-markdown/>`_ may be a good
choice for small projects. `Restructured Text (reST)
<http://docutils.sourceforge.net/rst.html>`_ in the form of `Sphinx
<http://sphinx-doc.org/rest.html>`_ is strongly recommended for non-trivial
projects. It can easily be built automatically with `readthedocs
<http://docs.readthedocs.org/en/latest/getting_started.html#import-your-docs>`_

`reST syntax guide
<http://thomas-cokelaer.info/tutorials/sphinx/rest_syntax.html>`_ and `reference
<http://sphinx-doc.org/rest.html>`_.

.. _reference-doc:
**Reference [API] Documentation**

Most languages have some de facto standard(s) for API documentation. Pick one and use it.

For python these are docstring formats, currently either `numpy
<https://github.com/numpy/numpy/blob/master/doc/HOWTO_DOCUMENT.rst.txt#id6>`_
and `google's pyguide
<http://google-styleguide.googlecode.com/svn/trunk/pyguide.html?showone=Comments#Comments>`_.

Automated tools such as Doxygen may be able to aid in creating some of this.

Reference documentation should be up to date before every merge from a feature
branch. Incorrect documentation is worse than no documentation (goes for
comments too).

.. _comment-doc:
**Code Comments**

Code comments should describe complicated or non-obvious code for future
maintainers. Do not describe what the code does, but rather what you are
trying to do with the code. E.g. from `pyguide:
<http://google-styleguide.googlecode.com/svn/trunk/pyguide.html?showone=Comments#Comments>`_

.. code-block:: python

    # GOOD COMMENTS describe problem and explain non-obvious code:
    # We use a weighted dictionary search to find out where i is in
    # the array.  We extrapolate position based on the largest num
    # in the array and the array size and then do binary search to
    # get the exact number.

    if i & (i-1) == 0:        # true iff i is a power of 2

    # BAD COMMENTS describe code:

    # Now go through the b array and make sure whenever i occurs
    # the next element is i+1
    ...some obvious loop code...

    # OR WORSE:
    a++; #add one to a
