This package is an EUPS stub.  It runs a script to make sure that the user has
the correct versions of pandas, numexpr, and bottleneck installed.  We check for
numexpr and bottleneck because they are silent dependencies of some (not all)
pandas functionality.  We did not want to create three separate EUPS stubs all
implementing essentially the same code.
