
SCRIPTS = \
    cpan \
    cpanm \
    cpan-upload \
    dzil \
    hypnotoad \
    jq \
    json_pp \
    json_xs \
    lwp-request \
    morbo \
    mpath \
    pip \
    plackup \
    starman \
    tower-cli \
    ysh \

all: $(SCRIPTS)

$(SCRIPTS):
		@echo "=== $@"
		appspec completion specs/$@.yaml --bash > bash/$@.bash
		appspec completion specs/$@.yaml --zsh > zsh/_$@

