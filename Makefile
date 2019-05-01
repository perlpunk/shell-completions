
BASH = $(wildcard bash/*.bash)
ZSH = $(wildcard zsh/_*)

SCRIPTS = $(notdir $(basename $(wildcard specs/*.yaml) ) )

all: bash zsh README.md

$(SCRIPTS):
	$(MAKE) bash/$@.bash
	$(MAKE) zsh/_$@

zsh: check $(ZSH)
bash: check $(BASH)

zsh/_%: specs/%.yaml
	appspec completion $< --zsh > $@

bash/%.bash: specs/%.yaml
	appspec completion $< --bash > $@

check:
	@which appspec >/dev/null || (echo "appspec not installed" && exit 1)

README.md: specs/*.yaml
	perl tools/update-readme.pl
