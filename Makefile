git=git
brew=brew

TEST_HOMEBREW_TAP?=aws/homebrew-aws-next
export HOMEBREW_PREFIX=$(shell $(brew) --prefix)

export HOMEBREW_COLOR?=1
export HOMEBREW_NO_COLOR?=
export HOMEBREW_NO_EMOJI?=1
export HOMEBREW_SIMULATE_MACOS_ON_LINUX?=1
export HOMEBREW_VERBOSE?=
export HOMEBREW_DEBUG?=

export HOMEBREW_DEVELOPER=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_BOOTSNAP=0
export HOMEBREW_NO_INSTALL_CLEANUP=1
export HOMEBREW_VERIFY_ATTESTATIONS=1
export HOMEBREW_DISPLAY_INSTALL_TIMES=1

LOCAL_CACHE_DIR=$(abspath ./test-cache)
export HOMEBREW_CACHE=$(abspath $(LOCAL_CACHE_DIR)/homebrew-cache)
export HOMEBREW_BUNDLE_USER_CACHE=$(abspath $(LOCAL_CACHE_DIR)/bundle-user-cache)

.default: check-style

dev-setup: test-tap test-cache

fmt format: check-style

test-tap:
	@-echo "(re)initialize tap worktree" >&2; sleep 1;
	-$(git) worktree remove $(GIT_FORCE) $(HOMEBREW_PREFIX)/Library/Taps/$(TEST_HOMEBREW_TAP)
	$(git) worktree add $(HOMEBREW_PREFIX)/Library/Taps/$(TEST_HOMEBREW_TAP) HEAD

test-cache: $(LOCAL_CACHE_DIR)

$(LOCAL_CACHE_DIR):
	mkdir $(LOCAL_CACHE_DIR) $(HOMEBREW_CACHE) $(HOMEBREW_BUNDLE_USER_CACHE)

check: check-style check-audit

check-style:
	$(brew) style .

check-audit:
	$(brew) audit --skip-style --except=version --signing --os=all --arch=all --display-filename --tap=$(TEST_HOMEBREW_TAP)

check-audit-slow: HOMEBREW_VERBOSE=1
check-audit-slow:
	$(brew) audit --skip-style --except=version --signing --os=all --arch=all --display-filename --online --tap=$(TEST_HOMEBREW_TAP)
