dconf = find_program('dconf')

conf_data = configuration_data()

indir = join_paths(meson.current_source_dir(), 'system-wide.d')
dconf_dir = join_paths(datadir, 'defaults', 'clearlinux', 'dconf')
dconf_profile_dir = join_paths(datadir, 'dconf', 'profile')

# Write the dconf path to conf data
conf_data.set('DCONF_PATH', dconf_dir)

# Write the configuration file to dconf profile dir
conf_file = configure_file(
     configuration: conf_data,
     input: 'profile.in',
     output: 'user',
     install: true,
     install_dir: dconf_profile_dir,
)

# compile binary data
dconf_db_bin = custom_target(
    'clearlinux-defaults',
    output: 'clearlinux-defaults',
    command: [dconf, 'compile', '@OUTPUT@', indir],
    install: true,
    install_dir: dconf_dir,
)
