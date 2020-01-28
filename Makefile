
.PHONY :  setup build test run bootstrap kill_xcode project clean

BAZEL=tools/bazelw

setup:
	scripts/setup

build:
	$(BAZEL) build //Modules/App:Pomotimer

test:
	$(BAZEL) test //...

run:
	$(BAZEL) run //Modules/App:Pomotimer

bootstrap: setup build test run
	echo "Done"

kill_xcode:
	killall Xcode || true
	killall Simulator || true

project: kill_xcode
	scripts/tulsigen config/Pomotimer.tulsiproj Develop

develop: kill_xcode
	scripts/tulsigen config/PomotimerTimerOnly.tulsiproj DefaultConfig


clean: kill_xcode
	rm -rf **/*.xcworkspace
	rm -rf **/*.xcodeproj
	$(BAZEL) clean

