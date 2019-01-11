project(
    'clr-desktop-defaults', 'c',
    version : '17',
    license: 'MIT'
)

# Directory vars
prefix = get_option('prefix')
datadir = get_option('datadir')
bindir = get_option('bindir')
xdgdir = join_paths(datadir, 'xdg')
schemasdir = join_paths(datadir, 'glib-2.0', 'schemas')
systemddir = join_paths(prefix, 'lib', 'systemd')
libexecdir = join_paths(prefix, get_option('libexecdir'))

desktop_conf = configuration_data()
desktop_conf.set('prefix', prefix)

configure_file(
    input: 'org.clearlinux.initFlathubRepo.desktop.in',
    output: 'org.clearlinux.initFlathubRepo.desktop',
    configuration: desktop_conf,
    install_dir: join_paths(xdgdir, 'autostart')
)

configure_file(
    input: 'clr-desktop-files.desktop.in',
    output: 'clr-desktop-files.desktop',
    configuration: desktop_conf,
    install_dir: join_paths(xdgdir, 'autostart')
)

install_data(
    'clr-desktop-files.sh',
    install_dir : bindir
)

install_data(
    'clr-init-flathub-repo',
    install_dir : libexecdir
)

subdir('schemas')
subdir('logind.conf.d')
