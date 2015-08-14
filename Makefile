buildDir = `pwd`/build
nimc     = nim c --lineDir:on --debugInfo --out:$(buildDir)

.DEFAULT_GOAL := all

all: deps clean breakout

breakout:
	$(nimc)/breakout breakout.nim

clean:
	rm -rf nimcache
	rm -f $(buildDir)/*

deps:
	nimble update
	nimble build
