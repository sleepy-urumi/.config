#!/usr/bin/env bash

# Aktuellen Status auslesen
current=$(tlpctl get)

# Zyklische Rotation: power-saver -> balanced -> performance -> power-saver
case "$current" in
    *"power-saver"*)
        echo "Wechsle zu Balanced..."
        tlpctl set balanced
        ;;
    *"balanced"*)
        echo "Wechsle zu Performance..."
        tlpctl set performance
        ;;
    *)
        echo "Wechsle zu Power-Saver..."
        tlpctl set power-saver
        ;;
esac
