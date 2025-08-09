TPM_DIR := $(HOME)/.tmux/plugins/tpm
TPM_REPO := https://github.com/tmux-plugins/tpm

.PHONY: install-tpm
install-tpm: $(TPM_DIR)

$(TPM_DIR):
	git clone $(TPM_REPO) $(TPM_DIR)
