gnome_extensions_theme_schemas = [
    'org.gnome.Terminal.ProfilesList.gschema.override',
    'org.gnome.shell.extensions.dash-to-dock.gschema.override',
    'org.gnome.shell.extensions.desktop-icons.gschema.override',
    'org.gnome.shell.extensions.net.gfxmonk.impatience.gschema.override',
    'org.gnome.shell.extensions.user-theme.gschema.override',
    'org.gnome.desktop.interface-theme.gschema.override',
    'org.gnome.desktop.wm.preferences.gschema.override',
    'org.gnome.shell-enabled-extensions.gschema.override',
]

gnome_schemas = [
    'org.gnome.Terminal.Legacy.Settings.gschema.override',
    'org.gnome.desktop.app-folders.gschema.override',
    'org.gnome.desktop.background.gschema.override',
    'org.gnome.desktop.input-sources.gschema.override',
    'org.gnome.desktop.interface.gschema.override',
    'org.gnome.desktop.peripherals.touchpad.gschema.override',
    'org.gnome.desktop.screensaver.gschema.override',
    'org.gnome.nautilus.icon-view.gschema.override',
    'org.gnome.nautilus.preferences.gschema.override',
    'org.gnome.settings-daemon.plugins.media-keys.gschema.override',
    'org.gnome.settings-daemon.plugins.power.gschema.override',
    'org.gnome.settings-daemon.plugins.xsettings.gschema.override',
    'org.gnome.desktop.sound.gschema.override',
    'org.gnome.shell.gschema.override',
    'org.gtk.Settings.FileChooser.gschema.override',
]

# Single schema override file from all theme-related input files
custom_target('10_gnome_settings.gschema.override',
    output: '10_gnome_settings.gschema.override',
    capture: true,
    input: gnome_extensions_theme_schemas,
    command: ['cat', '@INPUT@'],
    install: true,
    install_dir: schemasdir,
)

# Single schema override file for non-theme related overrides
custom_target('20_gnome_settings.gschema.override',
    output: '20_gnome_settings.gschema.override',
    capture: true,
    input: gnome_schemas,
    command: ['cat', '@INPUT@'],
    install: true,
    install_dir: schemasdir,
)
