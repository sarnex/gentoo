# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit cmake-utils

if [[ ${PV} = *9999 ]]; then
	inherit git-2
	EGIT_REPO_URI="https://github.com/vitalif/${PN}2.git"
else
	inherit vcs-snapshot
	COMMIT="cfb8ff08b300d1fa57e12cdc85f724e3e25c906d"
	SRC_URI="https://github.com/vitalif/${PN}2/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
fi

DESCRIPTION="An open source Linux client for Google Drive"
HOMEPAGE="https://github.com/vitalif/grive2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-libs/boost:=
	dev-libs/expat
	>=dev-libs/json-c-0.11-r1:=
	dev-libs/libgcrypt:0=
	net-misc/curl
	sys-libs/binutils-libs:0=
	sys-libs/glibc
	dev-libs/yajl
"
DEPEND="${RDEPEND}"
