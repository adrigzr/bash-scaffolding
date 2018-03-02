_load_helper() {
	local src=${BASH_SOURCE[0]}
	local helper=$1
	local dir

	dir=$(dirname "${src}")

	if [ -f "${dir}/$helper/load.bash" ]; then
		load "helpers/${helper}/load"
	fi
}

_load_helper "support"
_load_helper "assert"
_load_helper "file"
_load_helper "mock"
