function switchAndCleanBranch() {
  read "reply?Are you sure you want to clean current branch? [yY]"
  # 检查用户的回答
  if [[ $reply =~ ^[Yy]?$ ]]; then
      local current_branch=$(git rev-parse --abbrev-ref HEAD)

      if [ "$current_branch" = "main" ]; then
          echo "Already on 'main' branch."
          return
      fi

      git switch main
      if [ $? -ne 0 ]; then
          echo "Failed to switch to 'main' branch."
          return
      fi

      git pull
      if [ $? -ne 0 ]; then
          echo "Failed to pull changes for 'main' branch."
          return
      fi

      git branch -d $current_branch
      if [ $? -ne 0 ]; then
          echo "Failed to delete branch '$current_branch'."
      else
          echo "Branch '$current_branch' deleted successfully."
      fi
  else
      echo "Action cancelled."
      return 1  # return non-zero value to cancel
  fi
}
