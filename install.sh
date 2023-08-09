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
  ui_print "                     _          __  __ "
  ui_print "   /\  /\_   _ _ __ | |_ ___ _ _\ \/ / "
  ui_print "  / /_/ / | | | '_ \| __/ _ \ '__\  /  "
  ui_print " / __  /| |_| | | | | ||  __/ |  /  \  "
  ui_print " \/ /_/  \__,_|_| |_|\__\___|_| /_/\_\ "
  ui_print ""
  ui_print " +*+ GET YOUR MAX PERFORMANCE | Zyarexx @Telegram"
  ui_print " "
  ui_print " +*+ Version - REBORN "
  ui_print " "

}

on_install() {
  ui_print " - Unzip Module File"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm  $MODPATH/system/etc/permissions/handheld_core_hardware.xml  0  0  0644
}