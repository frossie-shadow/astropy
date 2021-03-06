TAP_PACKAGE=1
_MODULE="astropy"
_VERSION="1.1.1"

config()
{
	# Verify that a compatible module can be found exists
	./scripts/check_python_module -v $_MODULE $_VERSION | eups_console

	if [[ ${PIPESTATUS[0]} -ne 0 ]]; then
		die "Failed to find a compatible externally provided $_MODULE."
	fi
}

prep() { :; }
build() { :; }
