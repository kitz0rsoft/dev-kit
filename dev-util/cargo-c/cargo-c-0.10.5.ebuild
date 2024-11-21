# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/d6/47/d5/d647d5ef811cd939a97d451456e25eedf25808b354fa63725b45ed0bea4ca1524fbc30a2954a0de86971092c34f88b20c93a8b488062ffb643e5c2214e2a9198 -> cargo-c-0.10.5-funtoo-crates-bundle-cb980812b6dcdfa6b9acced6f3ff379c1945ed6fbee668f7a75b0d796ba56108ca00224d502a6a152002e91c5c6a954345ccaed39371a00b231dcab4b6796d9a.tar.gz"

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