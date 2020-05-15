appName := $(shell basename $(shell pwd))

.PHONY: bootstrap
bootstrap:
	sed -i '' 's/(AppName)/$(appName)/g' project.yml
	mkdir Sources
	mkdir Tests
	mv $(appName) 'Sources/$(appName)'
	mv '$(appName)Tests' 'Tests/$(appName)Tests'
	mv '$(appName)UITests' Tests