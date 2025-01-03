# Copyright 2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Pantheon DE meta package"
HOMEPAGE="https://elementary.io/"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64"
IUSE="accessibility bluetooth cups libnotify +minimal networkmanager pulseaudio upnp upower input_devices_wacom"

RDEPEND="${DEPEND}
	accessibility? (
		pantheon-base/switchboard-plug-a11y:2
		pantheon-base/wingpanel-indicator-a11y
	)
	bluetooth? (
		pantheon-base/switchboard-plug-bluetooth:2
		pantheon-base/wingpanel-indicator-bluetooth
	)
	cups? (
		pantheon-base/switchboard-plug-printers:2
		pantheon-extra/contract-print
	)
	input_devices_wacom? (
		pantheon-base/switchboard-plug-wacom:2
	)
	media-fonts/inter
	!minimal? (
		app-editors/pantheon-code
		pantheon-extra/bookworm
		pantheon-extra/pantheon-calculator
		pantheon-extra/pantheon-calendar
		pantheon-extra/pantheon-camera
		pantheon-extra/pantheon-mail
		pantheon-extra/pantheon-music
		pantheon-extra/pantheon-photos
		pantheon-extra/pantheon-screenshot
		pantheon-extra/pantheon-tasks
		pantheon-extra/pantheon-tweaks
		pantheon-extra/pantheon-videos
		pantheon-extra/shortcut-overlay
		pantheon-extra/pantheon-agent-geoclue2
		pantheon-extra/pantheon-agent-polkit
		sys-apps/xdg-desktop-portal-pantheon
	)
	networkmanager? (
		pantheon-base/switchboard-plug-network:2
		pantheon-base/wingpanel-indicator-network
		!minimal? (
			pantheon-extra/pantheon-capnet-assist
		)
	)
	upnp? (
		net-misc/rygel
		pantheon-base/switchboard-plug-sharing:2
	)
	libnotify? (
		pantheon-base/switchboard-plug-notifications:2
		pantheon-base/wingpanel-indicator-notifications
		virtual/notification-daemon[pantheon]
	)
	pantheon-base/applications-menu
	pantheon-base/pantheon-files
	pantheon-base/pantheon-greeter
	pantheon-base/pantheon-shell[accessibility?]
	pantheon-base/pantheon-settings
	pantheon-base/pantheon-settings-daemon
	pantheon-base/switchboard:2
	pantheon-base/switchboard-plug-about:2
	pantheon-base/switchboard-plug-applications:2
	pantheon-base/switchboard-plug-datetime:2
	pantheon-base/switchboard-plug-display:2
	pantheon-base/switchboard-plug-keyboard:2
	pantheon-base/switchboard-plug-locale:2
	pantheon-base/switchboard-plug-mouse-touchpad:2
	pantheon-base/switchboard-plug-onlineaccounts:2
	pantheon-base/switchboard-plug-pantheon-shell:2
	pantheon-base/switchboard-plug-parental-controls:2
	pantheon-base/switchboard-plug-security-privacy:2
	pantheon-base/switchboard-plug-useraccounts:2
	pantheon-base/wingpanel
	pantheon-base/wingpanel-indicator-datetime
	pantheon-base/wingpanel-indicator-keyboard
	pantheon-base/wingpanel-indicator-nightlight
	pantheon-base/wingpanel-indicator-session
	pulseaudio? (
		pantheon-base/switchboard-plug-sound:2
		pantheon-base/wingpanel-indicator-sound
	)
	upower? (
		pantheon-base/switchboard-plug-power:2
		pantheon-base/wingpanel-indicator-power
	)
	x11-misc/lightdm
	x11-terms/pantheon-terminal
"
