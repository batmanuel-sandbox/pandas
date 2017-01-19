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
