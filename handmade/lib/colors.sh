#!/data/data/com.termux/files/usr/bin/env bash

    ##########################################################
    #                                                        #
    #   Author: clnelson@github.com                          #
    #   Date: Jan/25/2021                                    #
    #   License: GPLv3                                       #
    #                                                        #
    #   Special thanks to everyone that I've 'borrowed'      #
    #   code from, 'Akhil Narang', 'Nathan Chancellor',      #
    #   'osm0sis', 'enesuzun2002' & anyone else that I've    #
    #   missed. Without these guys my code would'nt be       #
    #   here, THANK YOU OPENSOURCE SOFTWARE!                 #
    #  ----------------------------------------------------  #
    #   My modified version of the BASH 'ANSI escape'        #
    #   color variables to fit my environment and            #
    #   coding style.                                        #
    #                                                        #
    ##########################################################

#: Regular colors are listed first and BOLD colors are listed second,

export Res="\e[0m"
export Bfg='\e[1m'

export Blk='\e[30m'
export Bblk='\e[1;30m'
export Blk_Bg='\e[40m'

export Red='\e[31m'
export Bred='\e[1;31m'
export Red_Bg='\e[41m'

export Grn='\e[32m'
export Bgrn='\e[1;32m'
export Grn_Bg='\e[42m'

export Yel='\e[33m'
export Byel='\e[1;33m'
export Yel_Bg='\e[43m'

export Blu='\e[34m'
export Bblu='\e[1;34m'
export Blu_Bg='\e[44m'

export Mag='\e[35m'
export Bmag='\e[1;35m'
export Mag_Bg='\e[45m'

export Cya='\e[36m'
export Bcya='\e[1;36m'
export Cya_Bg='\e[46m'

export Whi='\e[37m'
export Bwhi='\e[1;37m'
export Whi_Bg='\e[47m'
