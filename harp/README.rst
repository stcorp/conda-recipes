Conda recipe for HARP
=====================

This is the Conda recipe for `HARP <http://github.com/stcorp/harp/>`_.

The build scripts support ``linux-32``, ``linux-64``, ``osx-64```, and ``win-64``.

Make sure to add ``stcorp`` as channel because HARP depends on CODA.

Pre-generated packages for Python 3.7 and 64-bit platforms can be found on `Anaconda Cloud <https://anaconda.org/stcorp/harp>`_.


Mac specific build instructions
-------------------------------

The R dependency pulls in the Anaconda compiler tools which requires that we set the SDK sysroot properly.
Download the 10.9 SDK from e.g. https://github.com/phracker/MacOSX-SDKs and put this in /opt.
Then set the SDKROOT environment variable to SDKROOT=/opt/MacOSX10.9.sdk before building the HARP conda package.
