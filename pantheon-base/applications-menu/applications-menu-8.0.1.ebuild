# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit gnome2 meson vala

VALA_MIN_API_VERSION="0.52"

DESCRIPTION="A lightweight and stylish app launcher for Pantheon and other DEs"
HOMEPAGE="https://github.com/elementary/applications-menu"
SRC_URI="https://github.com/elementary/applications-menu/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"

DEPEND="
	$(vala_depend)
	virtual/pkgconfig
"
RDEPEND="${DEPEND}
	dev-libs/glib:2
	dev-libs/granite:0
	dev-libs/json-glib
	dev-libs/libgee:0.8
	net-libs/libsoup:2.4
	pantheon-base/switchboard:3
	pantheon-base/wingpanel
	gui-libs/libhandy:1
	x11-libs/gtk+:3
"

src_prepare() {
	eapply_user
	vala_setup
}

src_configure() {
	local emesonargs=(
		-Dwith-zeitgeist=false
	)
	meson_src_configure
}
