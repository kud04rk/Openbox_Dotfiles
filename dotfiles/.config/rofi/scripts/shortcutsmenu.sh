#!/usr/bin/env bash
#
# Shortcuts cheatsheet: lists every Openbox key/mouse binding (from rc.xml),
# grouped by category. Type to filter, Esc to close.

ROFI="rofi -no-lazy-grab -i -dmenu -p Shortcuts -theme themes/shortcutsmenu.rasi"

${ROFI} <<'EOF'
System · Brightness Up — Increase screen brightness
System · Brightness Down — Decrease screen brightness
System · Volume Up — Increase volume
System · Volume Down — Decrease volume
System · Volume Mute — Toggle mute
System · Media Stop — Stop playback
System · Media Play/Pause — Toggle play/pause
System · Media Prev — Previous track
System · Media Next — Next track
System · Calculator — Open calculator
Switching · Alt+Tab — Cycle to next window
Switching · Alt+Shift+Tab — Cycle to previous window
Switching · Super+Shift+→ — Focus window to the right
Switching · Super+Shift+← — Focus window to the left
Switching · Super+Shift+↑ — Focus window above
Switching · Super+Shift+↓ — Focus window below
Tiling · Super+← — Snap window to left half
Tiling · Super+→ — Snap window to right half
Tiling · Super+↑ — Snap window to top (half width/height)
Tiling · Super+↓ — Snap window to bottom (half width/height)
Desktops · Super+1 … 8 — Switch to desktop 1-8
Desktops · Super+Shift+1 … 8 — Send window to desktop 1-8
Windows · Alt+Space — Window (client) menu
Windows · Super+Space — Openbox root menu
Windows · Super+T — Toggle window decorations
Windows · Super+Shift+R — Toggle visual mode and reconfigure Openbox
Windows · Super+F — Toggle fullscreen
Windows · Super+X — Toggle maximize
Windows · Super+Z — Minimize (iconify) window
Windows · Super+C — Close window
Windows · Super+D — Toggle show desktop
Applications · Super+L — Lock screen
Applications · Super+B — Web browser (Brave)
Applications · Super+R — Application launcher (rofi)
Applications · Super+PgUp — Brightness menu (rofi)
Applications · Super+PgDn — Volume menu (rofi)
Applications · Super+F12 — Network menu
Applications · Super+Esc — Power menu (rofi)
Applications · Super+Return — Terminal
Applications · Super+E — File manager
Applications · Super+M — Music player (rofi)
Applications · Super+S — Text editor (Leafpad)
Applications · PrintScreen — Take screenshot now
Applications · Super+PrintScreen — Screenshot menu (rofi)
Applications · Super+F1 — Show this shortcuts popup
Mouse · Super+Left drag — Move window
Mouse · Super+Right drag — Resize window
Mouse · Super+Middle click — Lower window below others
Mouse · Titlebar Left drag — Move window
Mouse · Titlebar Left double-click — Toggle maximize
Mouse · Titlebar scroll up/down — Shade/unshade window
Mouse · Desktop scroll up/down — Previous/next desktop
Mouse · Desktop right-click — Openbox root menu
Mouse · Desktop middle-click — Window list menu
EOF

exit ${?}
