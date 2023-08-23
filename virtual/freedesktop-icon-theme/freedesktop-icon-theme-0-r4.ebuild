# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Virtual to choose between different icon themes"
SLOT="0"
KEYWORDS="amd64"

RDEPEND="|| (
	x11-themes/adwaita-icon-theme
	x11-themes/faenza-icon-theme
	lxde-base/lxde-icon-theme
	x11-themes/tango-icon-theme
	kde-frameworks/breeze-icons
	kde-frameworks/oxygen-icons
	x11-themes/mate-icon-theme
	x11-themes/elementary-xfce-icon-theme
	x11-themes/elementary-icons-theme
)"
