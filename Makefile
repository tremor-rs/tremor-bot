TREMOR ?= tremor
TREMOR_PATH := ${PWD}/lib:${TREMOR_PATH}

run:
	TREMOR_PATH="$(TREMOR_PATH)" $(TREMOR) server run -f config/plugins/*.trickle config/*.trickle config/*.yaml

init:
	@[ -f lib/config.tremor ] && echo "Config file already exists" || echo "Preparing config file: lib/config.tremor"
	@[ -f lib/config.tremor ] || cp lib/config.tremor.example lib/config.tremor
	@[ -f config/00_source.yaml ] && echo "Source file already exists" || echo echo "Preparing config file: config/00_source.yaml"
	@[ -f config/00_source.yaml ] || cp config/00_source.yaml.example config/00_source.yaml