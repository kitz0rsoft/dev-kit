# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/70/fb/f0/70fbf0e46fa5ade9e4375a9440acca09e9a719f9906175a56f39248357feddb18e40428027d25e787c04a406c281a895babe2c65938994a2751bd07415ae0fdd -> cargo-c-0.10.4-funtoo-crates-bundle-622ac25aa72069945ee2c86628ff81f581da709a1972c10ba5f91d36a161fcbba4f4d637a9266c8651bd7d57c8a3e59eaa0d7df47f79c7ae070aed45595e1a9c.tar.gz"

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