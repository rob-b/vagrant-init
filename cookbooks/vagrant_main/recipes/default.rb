#
# Cookbook Name:: vagrant_main
# Recipe:: default
#
# Copyright 2011, Aaron Bull Schaefer
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

# sync package database
include_recipe 'package_sync'

include_recipe 'ack'
include_recipe 'ctags'
include_recipe 'curl'
include_recipe 'dkms'
include_recipe 'dotfiles'
include_recipe 'git'
include_recipe 'htop'
include_recipe 'lsof'
include_recipe 'mercurial'
include_recipe 'python'
include_recipe 'tmux'
include_recipe 'tree'
# include_recipe 'rbenv'
include_recipe 'vim'
include_recipe 'zsh'
