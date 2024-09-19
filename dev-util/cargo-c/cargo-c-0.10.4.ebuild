# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/b3/4c/b6/b34cb655b7f6c2e23475d02f3af23582043ced84b5de66fd4bb2c920abdfe69692cf3ab4e7c4f8a46e35d05a14bf19c8b1b80785b1bacfc3446cbad923cd5857 -> cargo-c-0.10.4-funtoo-crates-bundle-ee6ba33f9e600367a69905769faac3893af8c3a971fd57656ab92c62b5ea4b84d2ceea75dc2af8285f27d2a2a377cf3857e561747a78300360cd41e188c777f7.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND="sys-libs/zlib
	dev-libs/openssl:0=
	dev-vcs/git
	net-misc/curl[ssl]
"
BDEPEND="virtual/rust"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/lu-zero-cargo-c-* ${S} || die
}