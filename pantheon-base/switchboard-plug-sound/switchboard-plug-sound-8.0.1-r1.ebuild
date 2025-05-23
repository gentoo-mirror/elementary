# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

VALA_MIN_API_VERSION=0.22

inherit meson vala

DESCRIPTION="Switchboard Sound Plug"
HOMEPAGE="https://github.com/elementary/switchboard-plug-sound"
SRC_URI="https://github.com/elementary/switchboard-plug-sound/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="3"
KEYWORDS="amd64"

RDEPEND="
	dev-libs/glib:2
	dev-libs/granite:7
	|| ( media-libs/libcanberra[gtk3] media-libs/libcanberra-gtk3 )
	media-libs/libpulse[glib]
	pantheon-base/switchboard:3
	gui-libs/gtk:4[X]
	gui-libs/libadwaita:1
"
DEPEND="${RDEPEND}
	$(vala_depend)
	virtual/pkgconfig
"

src_prepare() {
	eapply_user
	vala_setup
}
