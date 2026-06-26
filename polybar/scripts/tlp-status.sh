#!/usr/bin/env bash

# Liest das aktuelle Profil aus
current=$(tlp-stat -m)

case "$current" in
    *"power-saver"*)
        # Grünes Icon (#00FF00) + weißer Text
        echo -e "%{F#00FF00} %{F-}Eco"
        ;;
    *"balanced"*)
        # Oranges Icon (#FFB300) + weißer Text
        echo -e "%{F#FFB300} %{F-}Bal"
        ;;
    *"performance"*|*"ac"*)
        # Rotes Icon (#FF3D00) + weißer Text
        echo -e "%{F#FF3D00} %{F-}Perf"
        ;;
    *)
        # Graues Icon (#555555) + weißer Text bei unbekanntem Status
        echo -e "%{F#555555} %{F-}TLP"
        ;;
esac
