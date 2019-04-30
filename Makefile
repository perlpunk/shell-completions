
TASK = shells

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

all: check $(SCRIPTS)

bash: TASK = bash
zsh: TASK = zsh

bash zsh: check $(SCRIPTS)

$(SCRIPTS):
	$(MAKE) $(TASK)-$@

zsh/_%: specs/%.yaml
	appspec completion $< --zsh > $@

bash/%.bash: specs/%.yaml
	appspec completion $< --bash > $@

zsh-%: zsh/_% ;

bash-%: bash/%.bash ;

shells-%: zsh/_% bash/%.bash ;

check:
	@which appspec || (echo "appspec not installed" && exit 1)
