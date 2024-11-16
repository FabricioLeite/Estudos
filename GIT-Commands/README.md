GIT Commands
============

List of most used git commands.
___

### Basic explanations
| Term | Description |
| ------- | --------- |
| Git | Is a control system version, commonly used on software development to track changes and coordinate team work. Was created by Linus Torvalds in 2005 |
| Local repository | Is a local project repository that uses Git, usually linked to a remote repository |
| Remote repository | Is a remote project repository that uses Git, you can clone it creating a local repository |
| Staging area | Is a temporary space where you put the changes you want send to remote repository |

### Get and create projects
| Command | Description |
| ------- | --------- |
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

### Branches
| Command | Description |
| ------- | --------- |
| `git branch` | List local branches |
| `git branch <branch-name>`| Create a new branch based on active branch |
| `git branch -a` | List local and remote branches |
| `git branch -d <branch-name>`| Delete a local branch |
| `git branch -m <current-branch-name> <new-branch-name>`| Delete a local branch |
| `git push origin --delete <branch-name>`| Delete a remote branch |
| `git checkout <branch-name>` | Switch to a branch |
| `git checkout -b <branch-name>` | Create a new branch based on active branch and switch to it |
| `git checkout -b <branch-name> origin/<branch-name>` | Clone a remote branch and switch to it |
| `git checkout -- <file-name.txt>` | Discard changes to a file |
| `git merge <branch-name>` | Merge a specified branch into the active branch |
| `git merge <source-branch> <target-branch>` | Merge a specified branch into a target branch |