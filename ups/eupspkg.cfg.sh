# This script will verify that pandas, numexpr, and bottleneck have all
# been installed. numexpr and bottleneck are prerequisites of some, but
# not all, pandas functionality. We are checking for all three packages
# here because
#    1) It will not always be obvious to developers when they need
#       numexpr or bottleneck.  All they will see is pandas.
#
#    2) We do not want to needlessly create two more stub repositories
#       with copies of the scripts/check_python_module script in them.

_PANDAS_VERSION="0.19.1"
_NUMEXPR_VERSION="2.6.0"
_BOTTLENECK_VERSION="1.2.0"

config()
{
	# Verify that a compatible module can be found exists
	./scripts/check_python_module -v pandas $_PANDAS_VERSION | eups_console

	if [[ ${PIPESTATUS[0]} -ne 0 ]]; then
		die "Failed to find a compatible externally provided pandas."
	fi

        ./scripts/check_python_module -v numexpr $_NUMEXPR_VERSION | eups_console

	if [[ ${PIPESTATUS[0]} -ne 0 ]]; then
		die "Failed to find a compatible externally provided numexpr."
	fi

        ./scripts/check_python_module -v bottleneck $_BOTTLENECK_VERSION | eups_console

	if [[ ${PIPESTATUS[0]} -ne 0 ]]; then
		die "Failed to find a compatible externally provided bottleneck."
	fi
}

prep() { :; }
build() { :; }
