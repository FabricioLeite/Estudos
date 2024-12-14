GIT Commands
============

The list of most used git commands.
___

### Basic explanations
| Term | Description |
| ------- | --------- |
| Git | It is a control system version, commonly used on software development to track changes and coordinate team work. It was created by Linus Torvalds in 2005 |
| Local repository | It is a local project repository that uses Git, usually linked to a remote repository |
| Remote repository | It is a remote project repository that uses Git, you can clone it creating a local repository |
| Staging area | It is a temporary space where you put the changes you want send to remote repository |

### Get and create projects
| Command | Description |
| ------- | --------- |
| `npm login` | Log into remote server |
| `git init` | Initialize a local Git repository |
| `git clone <remote-repository-url>` | Download a remote repository creating a local repository |
| `git remote -v` | Show the remote repository linked to this local repository |
| `git remote add origin <remote-repository-url>` | Create a link between local repository and a remote repository |

### Staging area
| Command | Description |
| ------- | --------- |
| `git status` | Check status to see files changed |
| `git add <file.txt>` | Add a file to the staging area |
| `git add -A` | Add all new and changed files to the staging area |
| `git add .` | Add all changed files to the staging area |
| `git rm -r <file-name.txt>` | Remove a file or folder to the staging area |

### Branch
| Command | Description |
| ------- | --------- |
| `git branch` | List local branches |
| `git branch <branch-name>`| Create a new branch based on active branch |
| `git branch -a` | List local and remote branches |
| `git branch -d <branch-name>`| Delete a local branch |
| `git branch -m <current-branch-name> <new-branch-name>`| Delete a local branch |
| `git push origin --d <branch-name>`| Delete a remote branch |
| `git checkout <branch-name>` | Switch to a branch |
| `git checkout -b <branch-name>` | Create a new branch based on active branch and switch to it |
| `git checkout -b <branch-name> origin/<branch-name>` | Clone a remote branch and switch to it |
| `git checkout -- <file-name.txt>` | Discard not commited changes to a file |
| `git merge <branch-name>` | Merge a specified branch into the active branch |
| `git merge <source-branch> <target-branch>` | Merge a specified branch into a target branch |
| `git reset <commit-id>` | Reset the status of a local branch to the specified commit |
| `git reset --hard <commit-id>` | Reset the status of a local branch to the specified commit, erasing all file changes uncommitted |
| `git commit -m <commit-message>` | Create a new commit with the all changes in stage area |
| `git commit --amend <commit-message>` | Changes the last commit message if not sent to remote |
| `git diff` | Show each line of code that was created or changed and not staged yet |
| `git diff --cached` | Show each line of code that was created or changed, staged or not |
| `git gui` | Open visual app |

### Stash
| Command | Description |
| ------- | --------- |
| `git stash` | Saves uncommitted local changes to the stash |
| `git stash list` | List saved stashes |
| `git stash apply <stash-index>` | Applies changes from a stash to the current branch |
| `git stash pop <stash-index>` | Applies changes from a stash to the current branch and delete the stash |
| `git stash show <stash-index>` | Show what is stored in the stash |
| `git stash show -p <stash-index>` | Show details of what is stored in the stash |
| `git stash clear` | Delete all stashes |

### Configuration
| Command | Description |
| ------- | --------- |
| `git config --global user.email "you@example.com"` | Configure e-mail globally to access the server |
| `git config --global user.name "Your Name"` | Configure name globally to access the server |
| `git config --global user.password "Your password"` | Configure password globally to access the server |
| `git config --global --unset user.email` | Erase user e-mail configuration |
| `git config --global --unset user.name` | Erase user name configuration |
| `git config --global --unset user.password` | Erase user password configuration |
| `git config --global --edit` | Configure all global configurations |