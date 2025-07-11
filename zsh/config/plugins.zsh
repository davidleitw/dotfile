zinit snippet OMZL::history.zsh
zinit wait lucid for \
  OMZL::key-bindings.zsh \
  OMZP::sudo

zinit wait lucid light-mode for \
  zsh-users/zsh-history-substring-search \
  atinit"zicompinit; zicdreplay" \
      zdharma-continuum/fast-syntax-highlighting \
  atload"_zsh_autosuggest_start" \
      zsh-users/zsh-autosuggestions
zinit wait lucid atload"zicompinit; zicdreplay" for \
  zsh-users/zsh-completions \
  esc/conda-zsh-completion

zinit ice wait lucid
zinit light greymd/docker-zsh-completion

zinit ice lucid nocompile
zinit load ael-code/zsh-colored-man-pages

zinit ice depth=1
zinit light romkatv/powerlevel10k

zinit lucid from"gh-r" as"program" for \
  pick"bat-linux-*" extract mv"*/bat -> bat" @sharkdp/bat \
  pick"fd-*-linux-gnu-*" extract mv"*/fd -> fd" @sharkdp/fd \
  pick"fzf-*amd64-*" extract mv"*/fzf -> fzf" @junegunn/fzf

zinit ice lucid wait multisrc'shell/{completion,key-bindings}.zsh' id-as'junegunn/fzf_completions' pick'/dev/null'
zinit light junegunn/fzf

zinit ice wait lucid
zinit light Aloxaf/fzf-tab

# Zoxide - Smart directory jumping
zinit wait lucid from"gh-r" as"program" for \
  pick"zoxide-*-x86_64-unknown-linux-musl.tar.gz" extract atload"eval \"\$(zoxide init zsh)\"" ajeetdsouza/zoxide

# Forgit - Interactive git commands
zinit wait lucid for \
  wfxr/forgit

# Git-extras - Additional git commands
zinit wait lucid as"program" pick"$ZPFX/bin/git-*" for \
  tj/git-extras

# Oh My Zsh Git plugin - Rich git aliases
zinit wait lucid for \
  OMZP::git

# P10k Initialize
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh