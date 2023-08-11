# HunterX Get Your Max Performance By Zyarexx

SKIPMOUNT=false
AUTOMOUNT=true
PROPFILE=true
POSTFSDATA=true
LATESTARTSERVICE=true

REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

REPLACE="
"

print_modname() {
  sleep 0.5   
  ui_print " "                 
  ui_print "                     _          __  __ "
  ui_print "   /\  /\_   _ _ __ | |_ ___ _ _\ \/ / "
  ui_print "  / /_/ / | | | '_ \| __/ _ \ '__\  /  "
  ui_print " / __  /| |_| | | | | ||  __/ |  /  \  "
  ui_print " \/ /_/  \__,_|_| |_|\__\___|_| /_/\_\ "
  ui_print " "
  sleep 0.8
  ui_print " +*+ 𝙂𝙀𝙏 𝙔𝙊𝙐𝙍 𝙈𝘼𝙓 𝙋𝙀𝙍𝙁𝙊𝙍𝙈𝘼𝙉𝘾𝙀⚡ +*+"
  ui_print " "
  sleep 0.8
  ui_print " +*+ Version ☞ 𝑹𝑬𝑩𝑶𝑹𝑵 Ⅱ +*+"
  ui_print " "
  sleep 0.8
  ui_print " 𝓓𝓔𝓥 | Zyarexx @𝕿𝖊𝖑𝖊𝖌𝖗𝖆𝖒"
  ui_print " "
  sleep 0.8
  ui_print " ✍Credits"
  ui_print " -@Erico_Cristiant"
  ui_print " -@nuuwy0"
  ui_print " "
  sleep 0.8
  ui_print " ✰Thanks For My Tester"
  ui_print " -@Aflows"
  sleep 0.8
  ui_print " "
}

loading() {
    local pid=$!
    local delay=3
    local spin='-\|/'

    echo -n "Loading... "
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spin#?}
        printf "[%c]" "$spin"
        local spin=$temp${spin%"$temp"}
        sleep $delay
        printf "\b\b\b"
    done
    printf "    \b\b\b\b"
}

on_install() {
  ui_print " - Unzip Module File"
  loading & unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm  $MODPATH/system/etc/permissions/handheld_core_hardware.xml  0  0  0644
}