# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Virtual for notification daemon dbus service"
SLOT="0"
KEYWORDS="amd64"
IUSE="gnome kde pantheon"

RDEPEND="
	gnome? ( || ( x11-misc/notification-daemon
		gnome-base/gnome-shell ) )
	kde? ( kde-plasma/plasma-workspace )
	pantheon? ( x11-misc/pantheon-notification-daemon )
	!gnome? ( !kde? ( !pantheon? ( || (
		x11-misc/notification-daemon
		gnome-extra/cinnamon
		gui-apps/mako
		xfce-extra/xfce4-notifyd
		x11-misc/notify-osd
		x11-misc/dunst
		>=x11-wm/awesome-3.4.4[dbus]
		x11-wm/enlightenment
		x11-misc/mate-notification-daemon
		lxqt-base/lxqt-notificationd
		net-misc/eventd[notification] ) ) ) )"
