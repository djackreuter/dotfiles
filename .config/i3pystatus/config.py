from i3pystatus import Status

status = Status()

DRACULA_THEME={
    "background": "#282a36",
    "current line": "#44475a",
    "selection": "#44475a",
    "foreground": "#f8f8f2",
    "comment": "#6272a4",
    "cyan": "#8be9fd",
    "green": "#50fa7b",
    "orange": "#ffb86c",
    "pink": "#ff79c6",
    "purple": "#bd93f9",
    "red": "#ff5555",
    "yellow": "#f1fa8c",
}

status.register("clock",
        format="%H:%M %b/%d/%Y",
        color=DRACULA_THEME['yellow'],
        )

# Shows your CPU temperature, if you have a Intel CPU
status.register("temp",
    format=" {temp:.0f}°C",
    color=DRACULA_THEME["purple"],
    alert_color=DRACULA_THEME["red"],
    alert_temp=80,
    )

status.register("battery",
    format="{status} {percentage:.0f}%",
    alert=True,
    alert_percentage=10,
    color=DRACULA_THEME["purple"],
    charging_color=DRACULA_THEME["green"],
    full_color=DRACULA_THEME["green"],
    status={
        "DIS": "",
        "CHR": "",
        "FULL": "",
    },)

status.register("network",
        interface="wlp2s0",
        format_up="",
        color_up=DRACULA_THEME["green"],
        dynamic_color=False,
        )

status.register("mem",
        format="MEM {percent_used_mem}%",
        color=DRACULA_THEME["purple"],
        warn_percentage=60,
        warn_color=DRACULA_THEME["yellow"],
        alert_color=DRACULA_THEME["red"],
        )

status.register("cpu_usage",
        format="CPU: {usage}%",
        color=DRACULA_THEME["green"],
        )

# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("pulseaudio",
        format="\ue812 {volume}%",
        color_unmuted=DRACULA_THEME["purple"],
        color_muted=DRACULA_THEME["red"],
        )

status.run()
