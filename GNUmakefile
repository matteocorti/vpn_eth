VERSION=`cat VERSION`
DIST_DIR=vpn_eth-$(VERSION)
DIST_FILES=vpn_eth VERSION Makefile vpn_eth.completion
FORMATTED_FILES=vpn_eth VERSION vpn_eth.completion
SHELLCHECK_FILES=vpn_eth
YEAR=`date +"%Y"`

dist: version_check formatting_check copyright_check shellcheck
	rm -rf $(DIST_DIR) $(DIST_DIR).tar.gz
	mkdir $(DIST_DIR)
	cp -r $(DIST_FILES) $(DIST_DIR)
# avoid to include extended attribute data files
# see https://superuser.com/questions/259703/get-mac-tar-to-stop-putting-filenames-in-tar-archives
	export COPY_EXTENDED_ATTRIBUTES_DISABLE=1; \
	export COPYFILE_DISABLE=1; \
	tar cfz $(DIST_DIR).tar.gz  $(DIST_DIR)
	tar cfj $(DIST_DIR).tar.bz2 $(DIST_DIR)

CODESPELL := $(shell command -v codespell 2> /dev/null )
# spell check
codespell:
ifndef CODESPELL
	echo "no codespell installed"
else
	codespell \
	.
endif

remove_blanks:
	sed -i '' 's/[[:blank:]]*$$//' $(DIST_FILES)

formatting_check:
	! grep -q '\\t' $(FORMATTED_FILES)
	! grep -q '[[:blank:]]$$' $(DIST_FILES)

SHFMT= := $(shell command -v shfmt 2> /dev/null)
format:
ifndef SHFMT
	echo "No shfmt installed"
else
# -p POSIX
# -w write to file
# -s simplify
# -i 4 indent with 4 spaces
	shfmt -p -w -s -i 4 $(SHELLCHECK_FILES)
endif

version_check:
	grep -q "VERSION\ *=\ *[\'\"]*$(VERSION)" vpn_eth
	echo "Version check: OK"

copyright_check:
	grep -q "Copyright (c) $(YEAR) Matteo Corti <matteo.corti@ethz.ch>" vpn_eth
	echo "Copyright year check: OK"

SHELLCHECK := $(shell command -v shellcheck 2> /dev/null)

shellcheck:
ifndef SHELLCHECK
	echo "No shellcheck installed: skipping test"
else
	if shellcheck --help 2>&1 | grep -q -- '-o\ ' ; then shellcheck -o all $(SHELLCHECK_FILES) ; else shellcheck $(SHELLCHECK_FILES) ; fi
endif

COMPLETIONS_DIR := $(shell pkg-config --variable=completionsdir bash-completion)
install_bash_completion:
ifdef COMPLETIONS_DIR
	cp vpn_eth.completion $(COMPLETIONS_DIR)/vpn_eth
endif

install:
	cp vpn_eth /usr/local/bin

clean:
	rm -rf *~ *.bak

distclean: clean
	rm -rf vpn_eth-[0-9]*

.PHONY: distclean version_check copyright_check remove_blanks dist codespell clean install install_completion
