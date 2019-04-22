
SCRIPTS= \
    cpanm \
    cpan-upload \
    dzil \
    jq \
    json_pp \
    json_xs \
    lwp-request \
    tower-cli \
    ysh \

completion:
	for script in $(SCRIPTS); do \
		echo $$script; \
		appspec completion specs/$$script.yaml --bash > bash/$$script.bash; \
		appspec completion specs/$$script.yaml --zsh > zsh/_$$script; \
	done

