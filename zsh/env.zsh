# -*- mode: sh -*-
# Global Order: zshenv, zprofile, zshrc, zlogin


PATH=/scratch2/Mozilla/FakeRoot/bin:/home/scriptdevil/.gem/ruby/1.9.1/bin:/scratch2/leiningen/bin:/home/scriptdevil/FakeRoot/bin:/scratch2/FakeRoot/bin/:/usr/local/bin:$PATH
export PATH

export EDITOR='emacsclient -c'

export PROMPT="%F{cyan}%m%f %# "
export RPROMPT=" [ %* %! %F{yellow}%~%f %0(?.%F{green}OK%f.%K{red}%F{white}E%?%f%k) ]"

# Prevent RPROMPT from hurting M-x shell
if [[ -n $INSIDE_EMACS ]]
then
  export PROMPT="[%m:%~ %# ] "
  export RPROMPT=""
fi

# Java stinks. WTF is hard-coding a WM list doing here?
export _JVM_AWT_WM_NONREPARENTING=1

setup_ibmjdk() {
  export PATH=/scratch2/IBM_JDK/install/bin:$PATH
  export JAVA_HOME=/scratch2/IBM_JDK/install
}


refreshwifi() {
	sudo modprobe -r rtl8192ce
	sudo modprobe -r rtlwifi
	sudo modprobe rtl8192ce
	sudo modprobe rtlwifi
}
