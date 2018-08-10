#!/bin/bash

# Config
gfsetup_branch_master="master"
gfsetup_branch_develop="develop"

gfsetup_prefix_feature="i-"
gfsetup_prefix_bugfix="i-"
gfsetup_prefix_release="r-"
gfsetup_prefix_hotfix="h-"
gfsetup_prefix_support="s-"
gfsetup_prefix_versiontag=""



# Init git flow with the defaults
git flow init -fd



# Override the things we need

# Basic branches
git config gitflow.branch.master "${gfsetup_branch_master}"
git config gitflow.branch.develop "${gfsetup_branch_develop}"

# Branch prefixes
git config gitflow.prefix.feature "${gfsetup_prefix_feature}"
git config gitflow.prefix.bugfix "${gfsetup_prefix_bugfix}"
git config gitflow.prefix.release "${gfsetup_prefix_release}"
git config gitflow.prefix.hotfix "${gfsetup_prefix_hotfix}"
git config gitflow.prefix.support "${gfsetup_prefix_support}"
git config gitflow.prefix.versiontag "${gfsetup_prefix_versiontag}"



# Display the results
echo -e "\ngit flow config after setup:\n"
git flow config
