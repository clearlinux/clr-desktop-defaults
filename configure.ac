AC_INIT([clr-desktop-defaults], 10, [marcos.simental.magana@intel.com], [clr-desktop-defaults], [https://clearlinux.org/])
AM_INIT_AUTOMAKE([-Wno-portability no-dist-gzip dist-xz foreign subdir-objects 1.9 tar-ustar])
AC_PREFIX_DEFAULT(/usr/local)
AM_SILENT_RULES([yes])
AC_CONFIG_FILES([Makefile
                 clr-desktop-files.desktop])
systemdlogindconfdir="/usr/lib/systemd/logind.conf.d"
AC_SUBST(systemdlogindconfdir)


AC_OUTPUT


AC_MSG_RESULT([
        clr-desktop-defaults $VERSION
        ========

        prefix:                 ${prefix}
        libdir:                 ${libdir}
        sysconfdir:             ${sysconfdir}
        exec_prefix:            ${exec_prefix}
        bindir:                 ${bindir}
        datarootdir:            ${datarootdir}
        systemdlogindconfdir:   ${systemdlogindconfdir}
])
