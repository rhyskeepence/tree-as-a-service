all: server client

.PHONY: server
server:
	stack build

.PHONY: client
client: client/dist/app.js

client/dist/app.js: client/src/*.elm
	mkdir -p $(@D) && elm-make client/src/Main.elm --output $@

.PHONY: serve
serve:
	stack exec server