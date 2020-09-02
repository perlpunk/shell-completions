
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
zsh/_GET: specs/lwp-request.yaml
	appspec completion $< --name GET --zsh > $@
zsh/_HEAD: specs/lwp-request.yaml
	appspec completion $< --name HEAD --zsh > $@
zsh/_POST: specs/lwp-request.yaml
	appspec completion $< --name POST --zsh > $@

bash/%.bash: specs/%.yaml
	appspec completion $< --bash > $@
bash/GET.bash: specs/lwp-request.yaml
	appspec completion $< --name GET --bash > $@
bash/HEAD.bash: specs/lwp-request.yaml
	appspec completion $< --name HEAD --bash > $@
bash/POST.bash: specs/lwp-request.yaml
	appspec completion $< --name POST --bash > $@

check:
	@which appspec >/dev/null || (echo "appspec not installed" && exit 1)

README.md: specs/*.yaml
	perl tools/update-readme.pl

lint:
	yamllint -c .yamllint.yaml specs/
