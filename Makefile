.PHONY: gen

gen:
	fvm flutter pub run build_runner build --delete-conflicting-outputs
