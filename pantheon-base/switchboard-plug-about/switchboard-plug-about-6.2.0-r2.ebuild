# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

VALA_MIN_API_VERSION=0.22

inherit meson vala

DESCRIPTION="Switchboard plug to show system information"
HOMEPAGE="https://github.com/elementary/switchboard-plug-about"
SRC_URI="https://github.com/elementary/switchboard-plug-about/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="2"
KEYWORDS="amd64"
IUSE="systemd"

RDEPEND="
	!pantheon-base/switchboard-plug-about:0
	sys-apps/fwupd[introspection]
	sys-fs/udisks[introspection]
	dev-libs/glib:2
	dev-libs/granite:0
	dev-libs/libgudev
	gnome-base/libgtop
	pantheon-base/switchboard:2
	x11-libs/gtk+:3
	gui-libs/libhandy
	<dev-libs/appstream-1.0.0
	systemd? ( sys-apps/systemd )
	!systemd? ( app-admin/openrc-settingsd )
"
DEPEND="${RDEPEND}
	$(vala_depend)
	virtual/pkgconfig
"

src_prepare() {
	eapply_user
	vala_setup
}

pkg_postinst() {
	use systemd || einfo "Ensure openrc-settingsd is running when you want to use this plug."
}
