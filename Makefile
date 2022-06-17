TREMOR ?= tremor
TREMOR_PATH := ${PWD}/lib:${PWD}/config:${TREMOR_PATH}

run:
	TREMOR_PATH="$(TREMOR_PATH)" $(TREMOR) server run config/discord.troy

init:
	@[ -f lib/config.tremor ] && echo "Config file already exists" || echo "Preparing config file: lib/config.tremor"
	@[ -f lib/config.tremor ] || cp lib/config.tremor.example lib/config.tremor
	@[ -f config/discord.troy ] && echo "Main file already exists" || echo "Preparing config file: config/discord.troy"
	@[ -f config/discord.troy ] || cp config/discord.troy.example config/discord.troy
	@[ -f config/plugins/setup.troy ] && echo "Setup file exists" || echo "Preparing config file: config/plugins/setup.troy"
	@[ -f config/plugins/setup.troy ] || cp config/plugins/setup.troy.example config/plugins/setup.troy
