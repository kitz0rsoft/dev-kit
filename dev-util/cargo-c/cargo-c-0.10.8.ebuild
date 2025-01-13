# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/0d90bc5a47f2c37187545fe65efe37cc2f2647d7 -> cargo-c-0.10.8-0d90bc5.tar.gz
https://regen.mordor/da/c5/4a/dac54afa6ea75007d9d818b3bf1901bd1d10f211ca999223bb5f633dd0a73d41ef0a35bfa1c4122cfc90aa17ab4cb60552031bf8756a81602a0a942188e69642 -> cargo-c-0.10.8-funtoo-crates-bundle-58c3a61cdffedc076cc6078efe5d6ffe8c5e02359e9316aeb5e84aa40d42ae744ea4e07989a174c32341fb8d4e32a44afbbbde72fecd68b057b51fb140dac33d.tar.gz"

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