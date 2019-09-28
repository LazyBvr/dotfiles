function fish_prompt
  # print prompt segment
  function _segment
    ## Powerline right arrow/triangle
    set -l ARROW \ue0b0
    set -l color $argv[1]
    set -l fade_to $argv[2]
    set -l content "$argv[3]"

    echo -ens \
      (set_color --background $color black) " $content " \
      (set_color --background $fade_to $color) $ARROW
  end

  # check whether the repo has all changes commited
  function _git_up_to_date
    test -z (string join0 (git status -uno --porcelain 2> /dev/null))
  end

  # print git status (if any)
  function _git_status
    ## get current branch name (if any)
    function _git_branch
      git rev-parse --abbrev-ref HEAD 2> /dev/null
    end
    ## get the number of untracked files in the repo
    function _git_untracked
      git status --porcelain | grep '??' | wc -l
    end
    
    ## figure out how to format status
    set -l git_branch (_git_branch)
    if test -z $git_branch; return 0; end
    set -l untracked (_git_untracked)
    if test $untracked -gt 0
      set untracked_str " [$untracked]"
    end
    echo -n "$git_branch$untracked_str"
  end
  
  # figure out the color of git status segment
  set -l git_status (_git_status)
  set -l git_color green
  if ! _git_up_to_date
    set git_color yellow
  end
  if test -z "$git_status"
    set git_color normal
  end

  # output the prompt
  _segment $ALT_BLUE $git_color (prompt_pwd)
  if test -n "$git_status"
    _segment $git_color normal "$git_status"
  end
  echo -n ' '
end
