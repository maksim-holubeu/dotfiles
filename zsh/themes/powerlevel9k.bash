# export DEFAULT_USER="v1rgul"
export TERM="xterm-256color"

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='awesome-patched'


POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='black'
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='178'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="cyan"
# POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="178"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="015"

POWERLEVEL9K_CONTEXT_TEMPLATE="%m"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S %d/%m/%Y}"

POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'

POWERLEVEL9K_RVM_BACKGROUND="black"
POWERLEVEL9K_RVM_FOREGROUND="249"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"

POWERLEVEL9K_NVM_BACKGROUND="238"
POWERLEVEL9K_NVM_FOREGROUND="green"

POWERLEVEL9K_HOME_SUB_ICON="$( print $'\uE12C' )"
POWERLEVEL9K_DIR_PATH_SEPARATOR=" ❯ "

# POWERLEVEL9K_BATTERY_ICON="$( print $'\u26a1' )"

zsh_internet_signal(){
local signal=$(ifconfig | awk '/'status/' {print $2}' | sed -n '/^active/{p;q;}')

# No Signal - No Internet
if [[ -z $signal ]] ;
  then color='%F{red}' ; symbol="\u262F";
  echo -n "%{$color%}$symbol"
fi
}
POWERLEVEL9K_CUSTOM_INTERNET_SIGNAL="zsh_internet_signal"
POWERLEVEL9K_CUSTOM_INTERNET_SIGNAL_BACKGROUND="black"
POWERLEVEL9K_CUSTOM_INTERNET_SIGNAL_FOREGROUND="white"

# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator ssh context root_indicator dir dir_writable vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv rvm  background_jobs time)

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator ssh dir dir_writable vcs background_jobs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status custom_internet_signal rbenv rvm battery time)
