# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/f4/f9/b3/f4f9b32e81a329daabaa0d29c646cae439d6c388b942d6ca898952958647cc8c9a55f3611fdd5e20ef6aca84cb58e27da106d421e0ec6cb51ee31def32e5b8c6 -> cargo-c-0.10.11-funtoo-crates-bundle-7b13bb9fb3fbd6426dbf9cac5bc231b932379fe1f572360a2282803ac42876f2df833bf969ea80fd993e9159f6890502c5eb0fa297d79fef38c0d1c7ecad7811.tar.gz"

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