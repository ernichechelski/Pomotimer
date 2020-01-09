
.PHONY :  setup build test run bootstrap kill_xcode project clean

BAZEL=tools/bazelw

setup:
	scripts/setup

build:
	$(BAZEL) build //App:Pomotimer

test:
	$(BAZEL) test //...

run:
	$(BAZEL) run //App:Pomotimer

bootstrap: setup build test run
	echo "Done"

kill_xcode:
	killall Xcode || true
	killall Simulator || true

project: kill_xcode
	scripts/tulsigen config/Pomotimer.tulsiproj Develop

clean: kill_xcode
	rm -rf **/*.xcworkspace
	rm -rf **/*.xcodeproj
	$(BAZEL) clean
