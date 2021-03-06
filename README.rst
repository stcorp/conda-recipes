Conda recipies for Anaconda stcorp channel
==========================================

This is a repository of `Conda <http://conda.pydata.org/>`_ recipies for items that are made available via the `stcorp Anaconda channel <https://anaconda.org/stcorp/repo>`_.

Using stcorp packages
---------------------

To use the Conda packages just install Anaconda or Miniconda and run ``conda install -c stcorp <pkgname>``.


Building packages
-----------------

To build a package, install the latest version of Anaconda or Miniconda and then install the following components:

.. code-block:: bash

    $ conda install conda-build anaconda-client

Packages need to be build locally on each of the supported platforms (usually ``linux-64``, ``osx-64``, and ``win-64``).

The `anaconda-client` is only needed of you use Miniconda and don't want the full Anaconda environment. The Anaconda client is needed to upload packages to anaconda.org.

When building on macos you may have to install the necessary `MacOSX SDK <https://github.com/phracker/MacOSX-SDKs>`_ in /opt first. This is because the R dependency requires using the conda-forge version of compilers that use a CONDA_BUILD_SYSROOT setting that points to an SDK in /opt.

Make sure you add the ``stcorp`` channel before building:

.. code-block:: bash

    $ conda config --add channels stcorp

Also, make sure that your local conda installation is up-to-date before each build:

.. code-block:: bash

    $ conda upgrade -y conda
    $ conda upgrade -y conda-build anaconda-client

Then enter the subdirectory that contains the recipe of the required package and run:

.. code-block:: bash

    $ conda build .

This will generate a binary package that can be uploaded to anaconda.org.

To upload this package use:

.. code-block:: bash

    $ anaconda login
    $ anaconda upload --force --user stcorp <root>/conda-bld/<arch>/<pkgname>.tar.bz2

