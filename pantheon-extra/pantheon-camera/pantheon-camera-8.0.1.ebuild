# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit gnome2 meson vala

DESCRIPTION="The camera app designed for elementary OS"
HOMEPAGE="https://github.com/elementary/camera"
SRC_URI="https://github.com/elementary/camera/archive/${PV}.tar.gz -> ${P}.tar.gz"

S=${WORKDIR}/camera-${PV}

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"

DEPEND="
	$(vala_depend)
	virtual/pkgconfig
"
RDEPEND="${DEPEND}
	dev-libs/glib:2
	dev-libs/granite:7
	dev-libs/libgee:0.8
	media-libs/libcanberra
	media-libs/gstreamer
	gui-libs/gtk:4
"

src_prepare() {
	eapply_user
	vala_setup
}
