# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

DESCRIPTION="The Gtk+ Stylesheet for elementary OS"
HOMEPAGE="https://github.com/elementary/stylesheet"
SRC_URI="https://github.com/elementary/stylesheet/archive/${PV}.tar.gz -> ${P}.tar.gz"

S="${WORKDIR}/stylesheet-${PV}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"

DEPEND="dev-lang/sassc"
