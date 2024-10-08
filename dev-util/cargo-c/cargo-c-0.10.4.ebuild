# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/f0/b5/ca/f0b5ca72ea5dea83f14350551b1183ea2d0105f554f7290a8c529036e3ba6e4633fc54dba43bfd87ee6ab3342939751094473fecba9d1e722aa9c52353f4630f -> cargo-c-0.10.4-funtoo-crates-bundle-add019d5cb6a39de8eb96f8c5a97852468437ae5417a860625e0ac631862aa949f9a384cfd61865dc9903f52dcf4e421ddbfc491e2754f4233bacbd2d4449d85.tar.gz"

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