rockspec_format = "1.0"

package = "kata"
version = "1.0.0-1"

source = {
	url = "git+https://github.com/itssimmons/kata-challenge-setup.git"
}

description = {
	summary = "This repository contains a simple setup for coding kata challenges in Lua.",
	detailed = "This repository contains a simple setup for coding kata challenges in Lua. It includes a main file for the challenge implementation and a test file to verify the solution.",
	homepage = "https://github.com/itssimmons/kata-challenge-setup",
	license = "MIT"
}

dependencies = {
	"lua >= 5.1"
}

build = {
	type = "builtin",
	modules = {
		main = "main.lua",
		test_main = "test_main.lua"
	}
}
