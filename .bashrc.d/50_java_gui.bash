# make fonts and swing look better

command -v java >/dev/null || return

_JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on"
_JAVA_OPTIONS="$_JAVA_OPTIONS -Dswing.aatext=true"
_JAVA_OPTIONS="$_JAVA_OPTIONS -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
export _JAVA_OPTIONS
