.PHONY: clean build clean-build

# Clean the build outputs
clean:
	flutter pub run build_runner clean

# Build the project with deleting conflicting outputs
build:
	flutter pub run build_runner build --delete-conflicting-outputs

# Clean and then build
clean-build: clean build

# upgrade library
lib-upgrade:
	flutter pub upgrade --major-versions