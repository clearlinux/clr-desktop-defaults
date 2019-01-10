gnome_schemas = [
    'org.gnome.desktop.background.gschema.override',
    'org.gnome.desktop.input-sources.gschema.override',
    'org.gnome.desktop.interface.gschema.override',
    'org.gnome.desktop.peripherals.touchpad.gschema.override',
    'org.gnome.desktop.screensaver.gschema.override',
    'org.gnome.desktop.wm.preferences.gschema.override',
    'org.gnome.nautilus.icon-view.gschema.override',
    'org.gnome.nautilus.preferences.gschema.override',
    'org.gnome.settings-daemon.plugins.power.gschema.override',
    'org.gnome.settings-daemon.plugins.xsettings.gschema.override',
    'org.gnome.shell.extensions.dash-to-dock.gschema.override',
    'org.gnome.shell.extensions.desktop-icons.gschema.override',
    'org.gnome.shell.extensions.net.gfxmonk.impatience.gschema.override',
    'org.gnome.shell.extensions.user-theme.gschema.override',
    'org.gnome.shell.gschema.override',
    'org.gnome.Terminal.Legacy.Settings.gschema.override',
    'org.gtk.Settings.FileChooser.gschema.override',
]

# Generate single schema override file from all input files using cat redirect
custom_target('10_gnome_settings.gschema.override',
    output: '10_gnome_settings.gschema.override',
    capture: true,
    input: gnome_schemas,
    command: ['cat', '@INPUT@'],
    install: true,
    install_dir: schemasdir,
)
