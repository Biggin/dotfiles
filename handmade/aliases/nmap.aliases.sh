# Some useful nmap aliases for scan modes
#--------------------------------------------------------------------
# Nmap options are:
#  -sS - TCP SYN scan
#  -v - verbose
#  -T1 - timing of scan. Options are paranoid (0), sneaky (1), polite (2), normal (3), aggressive (4), and insane (5)
#  -sF - FIN scan (can sneak through non-stateful firewalls)
#  -PE - ICMP echo discovery probe
#  -PP - timestamp discovery probe
#  -PY - SCTP init ping
#  -g - use given number as source port
#  -A - enable OS detection, version detection, script scanning, and traceroute (aggressive)
#  -O - enable OS detection
#  -sA - TCP ACK scan
#  -F - fast scan
#  --script=vuln - also access vulnerabilities in target
#--------------------------------------------------------------------
alias aliases.nmap='nano ${OSH_CUSTOM}/aliases/nmap.aliases.sh'

#################################################
#      -- Current script categories --
# auth, broadcast, default, discovery, dos,
# exploit, external, fuzzer, intrusive, malware,
# safe, version, and vuln
#################################################
alias nmap.h="nmap --help"
alias nmap.sh="nmap --script-help"
alias nmap_cmds="bat ~/.local/share/nmap/cmd_cheatsheet.txt"
alias nmap_open_ports="nmap -v --open"
alias nmap_list_interfaces="nmap --iflist"
alias nmap_slow="nmap -sS -v -T1"
alias nmap_fast="nmap -F -T5 --version-light --top-ports 300"
alias nmap_fin="nmap -sF -v"
alias nmap_full="nmap -sS -T4 -PE -PP -PS80,443 -PY -g 53 -A -p1-65535 -v"
alias nmap_check_for_firewall="nmap -sA -p1-65535 -v -T4"
alias nmap_ping_through_firewall="nmap -PS -PA -v"
alias nmap_detect_versions="nmap -sV -p1-65535 -O --osscan-guess -T4 -Pn"
alias nmap_check_for_vulns="nmap --script=vuln"
alias nmap_full_udp="nmap -sS -sU -T4 -A -v -PE -PS22,25,80 -PA21,23,80,443,3389 "
alias nmap_traceroute="nmap -sP -PE -PS22,25,80 -PA21,23,80,3389 -PU -PO --traceroute "
alias nmap_full_with_scripts="nmap -sS -sU -T4 -A -v -PE -PP -PS21,22,23,25,80,113,31339 -PA80,113,443,10042 -PO --script all "
alias nmap_web_safe_osscan="sudo nmap -p 80,443 -O -v --osscan-guess --fuzzy "
alias nmap_ping="nmap -vn -sn"
alias nmap_ping_scan="nmap -vn -sn -sP"

function nmap_script_cats () {
	echo -e "\t\tnmap script categories include: "
	echo -e "auth, broadcast, default, discovery, dos"
	echo -e "exploit, external, fuzzer, intrusive"
	echo -e "malware, safe, version and vuln \n"
	echo -e "Example: nmap -v --script=safe,discovery 10.0.0.0/24"
}

# Metasploit and PostgreSql aliases
alias db_stop='pg_ctl -D $HOME/.msf4/pg_db stop'
alias db_start='db_stop && pg_ctl -D $HOME/.msf4/pg_db -l $HOME/.msf4/msf.log start'
alias msf_start='db_start && msfconsole'
