# Contributing

This document explains how to contribute changes to the project. 
It assumes you have written and **tested** your code and followed [The Twelve-Factors App](http://12factor.net/) guidelines.

Note: The underlying guideline follows some thoughts from: [Go](https://golang.org/doc/contribute.html) and [puppet](https://github.com/puppetlabs/puppet/blob/master/CONTRIBUTING.md) contributing pages. You may also check them out!

## Making Changes

- Create a topic branch
- Make commits of logical units
- Check for unnecessary whitespace with ```git diff --check``` before committing
- Make sure your commit messages are in the proper format:
```
(XYZ-1234) Make the example in CONTRIBUTING imperative and concrete

Without this patch applied the example commit message in the CONTRIBUTING
document is not a concrete example.  This is a problem because the
contributor is left to imagine what the commit message should look like
based on a description rather than an example.  This patch fixes the
problem by making the example concrete and imperative.

The first line is a real life imperative statement with a ticket number
from our issue tracker.  The body describes the behavior without the patch,
why this is a problem, and how the patch fixes the problem when applied.
```
- Release changes (if necessary) following [Github workflow](https://help.github.com/articles/creating-releases/)
- Make sure you have added the necessary tests for your changes
- Run all the tests to assure nothing else was accidentally broken
- Open a merge request to ```master branch``` and ask someone from the team to review your changes
