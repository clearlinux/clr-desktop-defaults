GNOME_SCHEMAS = \
	schemas/org.gnome.desktop.background.gschema.override \
	schemas/org.gnome.desktop.interface.gschema.override \
	schemas/org.gnome.desktop.screensaver.gschema.override \
	schemas/org.gnome.desktop.wm.preferences.gschema.override \
	schemas/org.gnome.settings-daemon.plugins.xsettings.gschema.override \
	schemas/org.gnome.shell.extensions.user-theme.gschema.override \
	schemas/org.gnome.shell.gschema.override

%.gschema.override:
	rm -f $@ ;
	for i in ${GNOME_SCHEMAS} ; do \
	    cat $${i} >> $@; \
	    echo  >> $@; \
	done ;

EXTRA_DIST = \
	LICENSE \
	README.md \
	clr-desktop-files.sh \
	clr-desktop-files.desktop.in \
	lightdm/clr-gtk-greeter.conf \
	lightdm/clr-lightdm.conf \
	lightdm/users.conf \
	$(GNOME_SCHEMAS)

xdgdir = $(datadir)/xdg/autostart

xdg_DATA = \
	clr-desktop-files.desktop

bin_SCRIPTS = \
	clr-desktop-files.sh

# Default configuration for the GTK greeter
lightdm_gtk_confdir = $(datadir)/lightdm/lightdm-gtk-greeter.conf.d
lightdm_gtk_conf_DATA = \
	lightdm/clr-gtk-greeter.conf

lightdm_confdir = $(datadir)/lightdm/lightdm.conf.d
lightdm_conf_DATA = \
	lightdm/clr-lightdm.conf

# Note that this currently relies on a stateless patch within Clear Linux to
# support a $(datadir)/lightdm/users.conf file
lightdm_vendor_confdir = $(datadir)/lightdm
lightdm_vendor_conf_DATA = \
	lightdm/users.conf

# Combine all our individual schema files into a single override and install
# to the glib schemas dir
overridesdir = \
	$(datadir)/glib-2.0/schemas

overrides_DATA = \
	10_gnome_settings.gschema.override

distclean-local:
	rm -fv ${top_builddir}/10_gnome_settings.gschema.override
