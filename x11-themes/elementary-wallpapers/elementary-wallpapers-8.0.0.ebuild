# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

DESCRIPTION="Wallpapers for elementary OS"
HOMEPAGE="https://github.com/elementary/wallpapers"
SRC_URI="https://github.com/elementary/wallpapers/archive/${PV}.tar.gz -> ${P}.tar.gz"

S=${WORKDIR}/wallpapers-${PV}

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
