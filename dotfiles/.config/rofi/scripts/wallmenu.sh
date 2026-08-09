#!/usr/bin/env bash
export LC_ALL=POSIX LANG=POSIX; . "${HOME}/.crusedo_var"

ROFI="rofi -theme themes/wallmenu.rasi"

shopt -s nullglob
walls=( "${WALL_DIR}"/*.* )

if [ "${#walls[@]}" -eq 0 ]; then
    exec "$EXNOTIFY_SEND" -u low -r 999 -i "$NOTIF_WALLY_ICON" '' 'No wallpapers found!'
fi

# Build (and cache) square cover-cropped thumbnails so previews fill the cards.
THUMB_DIR="${HOME}/.cache/wallmenu/${CHK_VISMOD}"
THUMB_SIZE="${WALLY_THUMB_SIZE:-320}"
[ -d "$THUMB_DIR" ] || mkdir -p "$THUMB_DIR"
type -p convert &>/dev/null && HAVE_CONVERT=1

SEL="$(
    for image in "${walls[@]}"; do
        name="${image##*/}"
        if [ "$HAVE_CONVERT" = 1 ]; then
            thumb="${THUMB_DIR}/${name%.*}.jpg"
            if [ ! -f "$thumb" ] || [ "$image" -nt "$thumb" ]; then
                convert "$image" -resize "${THUMB_SIZE}x${THUMB_SIZE}^" -gravity center \
                         -extent "${THUMB_SIZE}x${THUMB_SIZE}" -quality 85 "$thumb" &>/dev/null || thumb="$image"
            fi
        else
            thumb="$image"
        fi
        printf '%s\0icon\x1f%s\n' "$name" "$thumb"
    done | ${ROFI} -dmenu -show-icons -i -no-custom -selected-row 0 -p 'Wallpapers'
)"

[ -z "$SEL" ] && exit 0

IMG="${WALL_DIR}/${SEL}"
[ -f "$IMG" ] || exit 1
exec "${VISMOD_DIR}/wally" apply "$IMG"

exit ${?}
