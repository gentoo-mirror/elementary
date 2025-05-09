# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit gnome2 meson

DESCRIPTION="Default settings for the Pantheon Desktop Environment"
HOMEPAGE="https://github.com/elementary/default-settings"
SRC_URI="https://github.com/elementary/default-settings/archive/${PV}.tar.gz -> ${P}.tar.gz"

S="${WORKDIR}/default-settings-${PV}"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="amd64"

RDEPEND="${DEPEND}
	x11-themes/elementary-icons-theme
	x11-themes/elementary-sound-theme
	x11-themes/elementary-theme
	x11-themes/elementary-wallpapers
	media-fonts/open-sans
	media-fonts/roboto
	pantheon-base/pantheon-settings-daemon
	sys-apps/dbus
	sys-auth/polkit
	sys-apps/accountsservice
"

src_prepare() {
	eapply_user

	eapply "${FILESDIR}/6.0.0-drop_test_page.patch"
}

src_configure() {
	local emesonargs=(
		-Dappcenter-flatpak=false
	)
	meson_src_configure
}
