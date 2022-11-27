alias aliases.repo='nano ${OSH_CUSTOM}/aliases/repo.aliases.sh'

# Repo calls with various flags I'm too lazy to type each time
function respo () {
    repo sync --force-sync --no-clone-bundle --current-branch --no-tags --optimized-fetch -j4 "$@"
	# My standard repo sync call for fast, and minimal syncing
}

function repair () {
	repo sync --detach --force-sync --force-remove-dirty --prune --no-clone-bundle -j4 "$@"
	# My standard repo call for fixing broken projects or directories that I broke
}

function repoir () {
	sudo repo sync --no-clone-bundle --force-sync -j4 "$@"
	# For syncing my mirror repos b/c they're owned by root to keep contamination down
}

function repinit () {
	repo init --no-clone-bundle --platform='linux' --no-tags --current-branch --reference=$Aosp_Mirror/platform/manifest.git --dissociate -u "$@"
}

function losinit () {
	repo init --no-clone-bundle --no-tags --depth=1 --reference="${Aosp_Mirror}/platform/manifest.git" --dissociate --platform='linux' --current-branch -u "${Los_Mirror}/android_manifest.git" -b '$1'
}

function aospinit () {
	repo init --no-clone-bundle --no-tags --depth=1 --dissociate --current-branch --platform='linux' --reference='https://android.googlesource.com/platform/manifest.git' -u '${Aosp_Mirror}/platform/manifest.git' -b '$1'
}

function starch () {
	repo start "$1" --all; repo checkout "$1"; repo branches -a;
	# Call to start a new branch for development and also checkout that same branch in one call
}
