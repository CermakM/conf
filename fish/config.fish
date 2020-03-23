set -gx PATH $PATH /home/macermak/.local/bin

# janusgraph and ellasticsearch
set -gx PATH $PATH /home/macermak/Software/janusgraph-0.2.2-hadoop2/elasticsearch/bin
set -gx PATH $PATH /home/macermak/Software/janusgraph-0.2.2-hadoop2/bin/

alias ll="ls -calhtr --sort=time --group-directories-first"
alias cdd="cd .."
alias vim="vimx"

# git aliases
alias glo="git log "
alias gst="git status "

git config --global alias.br branch
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.lo log
git config --global alias.pr request-pull
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'

function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

function !!
	eval $history[1]
end

function rbac-lookup
	if test "$argv"
		kubectl get rolebindings,clusterrolebindings \
		  --all-namespaces  \
		  -o custom-columns=(string join0 'KIND:kind,NAMESPACE:metadata.namespace,NAME:metadata.name,SUBJECT:subjects[?(@.name=="'"$argv"'")].name') | grep -v '<none>'
	else
		kubectl get rolebindings,clusterrolebindings \
		  --all-namespaces  \
		  -o custom-columns='KIND:kind,NAMESPACE:metadata.namespace,NAME:metadata.name,SUBJECT:subjects[].name'
	end
end

function rbac-namespace-lookup
	if test "$argv"
		kubectl get rolebindings \
		  -o custom-columns=(string join0 'KIND:kind,NAMESPACE:metadata.namespace,NAME:metadata.name,SUBJECT:subjects[?(@.name=="'"$argv"'")].name') | grep -v '<none>'
	else
		kubectl get rolebindings \
		  -o custom-columns='KIND:kind,NAMESPACE:metadata.namespace,NAME:metadata.name,SUBJECT:subjects[].name'
	end
end

# AWS
set -gx AWS_DEFAULT_PROFILE upshift

# go
set -gx GOPATH /home/macermak/go
set -gx PATH $PATH /usr/local/bin/go $GOPATH/bin
set -gx PATH $PATH /usr/local/go/bin
# set -gx GO111MODULE on
#
# kubebuilder
set -gx PATH $PATH /usr/local/kubebuilder/bin

# gem
set -gx PATH $PATH /usr/share/gems $HOME/.gem/ruby $HOME/bin

# gofish
set -gx PATH $PATH /usr/local/bin/

# minishift
set -gx PATH $PATH /home/macermak/minishift/

# npm
set -gx PATH $PATH $HOME/.npm/bin
set -gx PATH $PATH $HOME/.npm/lib

# pipenv
set -gx PIPENV_DEFAULT_PYTHON_VERSION 3.6

# snaps
set -gx PATH $PATH /snap/bin

# for kubectl edit
set -gx KUBE_EDITOR vim
