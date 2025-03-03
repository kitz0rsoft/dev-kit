# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/3e/18/c1/3e18c1f805bfcf0d94667caf2506a785767c333e7aec0162a5a1309fb926d10932ce30e5e3ab47ce43737705ad6b255285bf095d526f2821b2ed3708d3ffaa64 -> cargo-c-0.10.11-funtoo-crates-bundle-f0fa1b98a454829cd6a095299563a951266e2bab0cfdad8cb557d315c8466c920c9dd73e3ce91740921a3bab9db6543a569c3a0d0c3f0f7d49c3fc075fbd1c05.tar.gz"

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