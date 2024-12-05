function fish_prompt -d "Write out the prompt"
    # Inspiration by ParrotOS

    # if test
    set -l __prompt_status__ "[$(set_color normal)$status$(set_color red)]─"
    
    set -l __prompt_host__ "[$(set_color brred)$USER$(set_color bryellow)@$(set_color brblue)$(prompt_hostname)$(set_color red)]"

    set -l __prompt_pwd__ "[$(set_color green)$(prompt_pwd --dir-length=0)$(set_color red)]"
    
    set -l __prompt_symbol__ "$(set_color yellow)\$"
    fish_is_root_user; and set __prompt_symbol__ "$(set_color yellow)#"

    # TODO: git status setup
    # with fish_git_prompt
    # set -g __fish_git_prompt_showdirtystate 1
    
    printf '%s┌─%s%s─%s\n└──╼ %s %s' \
        (set_color red) \
        $__prompt_status__ $__prompt_host__ \
        $__prompt_pwd__ \
        $__prompt_symbol__ \
        (set_color normal)
end

