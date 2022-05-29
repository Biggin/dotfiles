alias aliases.repo="nano ${OSH_CUSTOM}/aliases/repo.aliases.sh"

## Various repo commands simplified slightly to reduce typing...
alias rstat='repo status'
alias relist='repo list .'
alias relist.n='repo list -n'
alias relist.p='repo list -p'
alias reup='repo selfupdate'
alias repo.h='repo help --all'
alias rebra='repo branches'
alias restart='repo start'
alias rediff='repo diff'
alias reman='repo manifest'
alias remdiff='repo diffmanifests'
alias repobase='repo rebase -i'
alias restash='repo rebase --autosquash --autostash -m'
alias review='repo overview --current-branch'


## Repo functions for various tasks pertaining to building the Android OS
function installRepo () {
    local REPO=$(mktemp /tmp/repo.XXXXXXXXX)
    curl -o ${REPO} https://storage.googleapis.com/git-repo-downloads/repo && sudo install -m 755 ${REPO} /usr/bin/repo
    ln -s /usr/bin/repo ~/.local/bin/repo || return 13
}

function resync () {
    repo sync --no-clone-bundle --current-branch --no-tags --optimized-fetch -j4 "$@"
}

function resubs () {
    repo sync --no-clone-bundle --current-branch --no-tags --optimized-fetch --submodules -j4 "$@"
}

function repair () {
	repo sync --detach --force-sync --force-remove-dirty --no-tags 	--current-branch --no-clone-bundle -j4 "$@"
}

function sudosync () {
	sudo repo sync --force-sync --no-clone-bundle -j4 "$@"
}

function repoinit () {
	repo init --no-clone-bundle --depth=1 --platform=linux -u ${Aosp_Mirror} -b "$@" --reference=${Los_Mirror} --dissociate
}

function recoinit () {
    repo init --no-clone-bundle --depth=1 --platform=linux -u 
    https://github.com/"$@"
}

function aospinit () {
	repo init --no-clone-bundle --depth=1 --platform=linux -u https://android.googlesource.com/platform/manifest -b "$@" --reference=${Aosp_Mirror} --dissociate
}

function losinit () {
    repo init --no-clone-bundle --depth=1 --platform=linux -u https://github.com/LineageOS/android -b "$@" --reference=${Los_Mirror}
}

function starch () {
    repo start "$1" --all
    repo checkout "$1"
    repo branches -a
}
