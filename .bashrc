if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi
eval "$(starship init bash)"


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/chrstn/.opam/opam-init/init.sh' && . '/home/chrstn/.opam/opam-init/init.sh' > /dev/null 2> /dev/null || true
# END opam configuration
