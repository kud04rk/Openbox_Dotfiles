#!/usr/bin/env bash

exec rofi -no-lazy-grab -matching prefix -show drun -theme themes/appsmenu.rasi

exit ${?}
