#!/data/data/com.termux/files/usr/bin/bash

###########################################################
#
# Aliases for Android flashing and development work
# Utilizing the adb & fastboot packages
#
###########################################################
alias aliases.adb="nano $OSH_CUSTOM/aliases/android.aliases.sh"

alias adb_='adb devices -l'
alias adbk='adb kill-server'
alias adb.rt='adb root'
alias adb.urt='adb unroot'
alias adb.sh='adb shell -e \ -x'
alias adb.pu='adb push --sync'
alias adb.ll='adb pull -a'
alias adb.syl='adb sync -l'
alias adb.syd='adb sync -n'
alias adb.sd="adb shell -x 'ls -AFC --color=always /storage/emulated/0/'"
alias adb.sys="adb shell -x 'ls -AFC --color=always /system/'"
alias adb.ven="adb shell -x 'ls -AFC --color=always /vendor/'"
alias adb.dat="adb shell -x 'ls -AFC --color=always /data/'"
alias adb.pro="adb shell -x 'ls -AFC --color=always /product/'"
alias adb.un='adb uninstall'
alias adb.unk='adb uninstall -k' # Keep app files on device
alias adb.in='adb install -rg --instant --streaming'
alias adb.log='adb logcat --file="~/$(getprop ro.product.vendor.device)_$(date +%-I:%M_%_b-%_d-%_y).log" --format=raw,thread,color,descriptive -D --buffer=main,system,events,crash,security -S'
alias adb.re='adb reboot'
alias adb.rb='adb reboot bootloader'
alias adb.rr='adb reboot recovery'

alias adb.num='adb get-serialno'
alias adb.off='adb reconnect offline'
alias adb.con='adb tcpip 5555 && adb connect "$@":5555'


## Fastboot aliases for working with mobile devices
alias fast='fastboot'
alias fast_='fastboot devices -l'
alias fast.o='fastboot oem'
alias fast.re='fastboot reboot'
alias fast.rb='fastboot reboot bootloader'
alias fast.fb='fastboot flash boot'
alias fast.fr='fastboot flash recovery'
alias fast.fs='fastboot flash system'
alias fast.un='fastboot oem unlock'
#alias fast.un='fastboot flashing unlock'
alias fast.unc='fastboot flashing unlock_critical'
alias fast.var='fastboot getvar all'
alias fast.info='fastboot oem device-info'
alias andlog="logcat -d -b main,system,events -v tag,color -f $HOME/android/logcat_$(date +%m-%d-%y_%I:%M_%P).log"


function adb.wifi () {
	if [[ $# != 1 ]]; then
		cat <<-END
			Usage: adb.wifi <Phone-IP>
		END
		return 13
	fi

	adb kill-server && adb start-server || exit 13
	adb connect "$1"
}
