# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit mount-boot-utils meson

DESCRIPTION="an elementary theme for rEFInd"
HOMEPAGE="https://github.com/danirabbit/refind-theme-elementary"
SRC_URI="https://github.com/danirabbit/refind-theme-elementary/archive/559555ae8c30e1e08d56cd2af067bfb89034ab6c.zip -> ${P}.zip"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
IUSE=""


DEPEND="
	gnome-base/librsvg
"

S="${WORKDIR}/refind-theme-elementary-559555ae8c30e1e08d56cd2af067bfb89034ab6c"

pkg_pretend() {
	mount-boot_check_status
}

src_install() {
	meson_src_install
	mv "${ED}/boot/efi/EFI/refind/refind.conf" "${ED}/boot/efi/EFI/refind/refind.conf-elementary"
	einfo "Add the contents from /boot/efi/EFI/refind/refind.conf-elementary to your /boot/efi/EFI/refind/refind.conf file to enable the theme."
}
