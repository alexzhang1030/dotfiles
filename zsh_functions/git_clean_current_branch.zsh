function git_clean_current_branch() {
  # -k 1 -> read a character from input
  # -s -> slient mode, don't echo input
  read -k 1 -s "reply?Are you sure you want to clean current branch? (Y/n): "
  echo # echo empty line

  if [[ $reply =~ ^[Yy]?$ ]]; then
      # get current branch 
      local current_branch=$(git rev-parse --abbrev-ref HEAD)

      # fetch default main branch name from remote repository 
      local default_branch=$(git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@')

      # check if is already on default branch
      if [ "$current_branch" = "$default_branch" ]; then
          echo "Already on '$default_branch' branch."
          return
      fi

      # switch to default main branch
      git switch "$default_branch"
      if [ $? -ne 0 ]; then
          echo "Failed to switch to '$default_branch' branch."
          return
      fi

      # pull changes from remote repository
      git pull
      if [ $? -ne 0 ]; then
          echo "Failed to pull changes for '$default_branch' branch."
          return
      fi

      # remove current branch
      git branch -d "$current_branch"
      if [ $? -ne 0 ]; then
          echo "Failed to delete branch '$current_branch'."
      else
          echo "Branch '$current_branch' deleted successfully."
      fi
  elif [[ $reply =~ ^[Nn]$ ]]; then
      echo "Action cancelled."
      return 1
  else
      return 1
  fi
}
