# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://regen.mordor/8c/fe/1c/8cfe1c90b67e4604380faee8c6411e53732a46d1e316cd0278e463370a8b05ad43d2e13b5159289d6c7bd20bc7af50ffa8881fbf36536e151f071a3836caf15e -> cargo-c-0.10.5-funtoo-crates-bundle-c73c00eb0c38a582144de42fdae4b93dcaf92eaae34e092cc7b616a0b9fe6f6214ebec2c96def6c720c0b73b262afc93299eeb63c40b18438ecc4c537d3a0430.tar.gz"

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