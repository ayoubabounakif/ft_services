#!/bin/bash
BREW_GOINFRE=$HOME/goinfre/.brew
BREW_HOME=$HOME/.brew
DOCKER_GOINFRE=$HOME/goinfre/.docker
DOCKER_HOME=$HOME/.docker
VM_GOINFRE=$HOME/goinfre/VirtualBox\ VMs
MINIKUBE_GOINFRE=$HOME/goinfre/.minikube
MINIKUBE_HOME=$HOME/.minikube

# INSTALL BREW
if [[ ! -f "$BREW_HOME" || ! -d "$BREW_GOINFRE" ]];
then
	echo "----Installing Brew----"
	rm -rf $BREW_HOME && git clone --depth=1 https://github.com/Homebrew/brew.git $BREW_GOINFRE && echo 'export PATH=$HOME/goinfre/.brew/bin:$PATH' >> $HOME/.zshrc && source $HOME/.zshrc && brew update
	ln -s $DOCKER_GOINFRE $DOCKER_HOME
	mkdir $HOME/goinfre/Homebrew
	echo "export PATH=$HOME/goinfre/.brew/bin:$PATH" >> $HOME/.zshrc
fi

# INSTALL DOCKER
if [[ ! -f "$DOCKER_HOME" || -d "$DOCKER_GOINFRE" ]];
then
	echo "----Installing Docker----"
	rm -rf $DOCKER_HOME && mkdir $DOCKER_GOINFRE
	ln -s $DOCKER_GOINFRE $DOCKER_HOME
	brew install docker docker-machine
	docker-machine create --driver virtualbox default
fi

# INSTALL MINIKUBE
if [[ ! -f "$MINIKUBE_HOME" || -d "$MINIKUBE_GOINFRE" ]];
then
	echo "----Installing Minikube----"
	rm -rf $MINIKUBE_HOME && mkdir $MINIKUBE_GOINFRE
	ln -s $MINIKUBE_GOINFRE $MINIKUBE_HOME
	brew install minikube
fi

echo	"export HOME_BREW=\"/goinfre/$USER\""	>> ~/.zshrc
echo	"export PATH=$BREW_HOME/.brew/bin:$PATH"
echo	"export MACHINE_STORAGE_PATH=\"/Users/$USER/goinfre/.docker\""	>> ~/.zshrc
echo	"export MINIKUBE_HOME=\"/Users/$USER/goinfre/.minikube\""	>> ~/.zshrc
echo	"export MACHINE_STORAGE_PATH=\"/Users/$USER/goinfre/.docker\""	>> ~/.zshrc

# START
minikube start
# docker-machine start
# eval $(docker-machine env default)
eval $(minikube -p minikube docker-env)
