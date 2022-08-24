#############
#		    #
#  Aliases  #
#		    #
#############

###############################################
alias aliases.repo='nano ${OSH_CUSTOM}/aliases/repo.aliases.sh'
y
alias rstat='repo status'
alias reman='repo manifest'
alias rebra='repo branches'
alias rechk='repo checkout'
alias reup='repo selfupdate'
alias repoh='repo help --all'
alias rerepo='repo rebase -i'
alias rediff='repo diffmanifests'
alias rebaser='repo rebase --autosquash --auto-stash -m'


###############
#			  #
#  Functions  #
#			  #
###############

################################################
## Repo commands with various flags I'm
## too lazy to type each time
function installRepo () {
    local REPO=$(mktemp /tmp/repo.XXXXXXXXX)
    curl -o ${REPO} https://storage.googleapis.com/git-repo-downloads/repo && install -m 755 ${REPO} /usr/bin/repo

    ln -s ${PREFIX}/bin/repo ~/.local/bin/repo || return 13
}

## My standard repo sync call for fast,
## and minimal syncing
function respo () {
    repo sync --force-sync --no-clone-bundle --current-branch --no-tags --optimized-fetch -j2 "$@"
}

function resub () {
    repo sync --force-sync --no-clone-bundle --current-branch --no-tags --submodules --optimized-fetch -j2 "$@"
}

## My standard repo call for fixing
## broken projects or directories that
## I broke
function repair () {
        repo sync --detach --force-sync --force-remove-dirty --prune --no-tags --current-branch --no-clone-bundle -j4 "$@"
}

function repoir () {
	sudo repo sync --force-sync --no-clone-bundle -j4 "$@"
}

function repoinit () {
        repo init --no-clone-bundle --no-tags --current-branch --depth=1 --platform=linux -u "$@" --reference=${AOSP_MIRROR} --dissociate
}

function recoinit () {
    repo init --no-clone-bundle --platform=linux -u https://github.com/"$1" -b "$2"
}

function aospinit () {
        repo init --no-clone-bundle --no-tags --current-branch --depth=1 --platform=linux -u https://android.googlesource.com/platform/manifest -b "$@" --reference=${AOSP_MIRROR} --dissociate
}

function losinit () {
    repo init --no-clone-bundle --no-tags --current-branch --depth=1 --platform=linux -u "https://github.com/LineageOS/android" -b "$@" --reference=${LOS_MIRROR} --dissociate
}

## Call to start a new branch for
## development and also checkout that
## same branch in one call
function starch () {
        time repo start "$1" --all
        time repo checkout "$1"
        time repo branches -a
}
