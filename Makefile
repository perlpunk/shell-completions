
SCRIPTS= \
    cpanm \
    cpan-upload \
    dzil \
    hypnotoad \
    jq \
    json_pp \
    json_xs \
    lwp-request \
    morbo \
    plackup \
    starman \
    tower-cli \
    ysh \

completion:
	for script in $(SCRIPTS); do \
		echo $$script; \
		appspec completion specs/$$script.yaml --bash > bash/$$script.bash; \
		appspec completion specs/$$script.yaml --zsh > zsh/_$$script; \
	done

