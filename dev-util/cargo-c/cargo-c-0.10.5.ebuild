# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://distfiles.macaronios.org/36/53/6e/36536e8d07383bfab34295c0ea37b2b0a3998e3327536957e0cc881a6b6bb8800521329b6a052df4a8119e8f543919ca6ab93f303d91319490155e9623d113ff -> cargo-c-0.10.5-funtoo-crates-bundle-ec659858f9a2de288aa7b6aa4f4525df9569791b7abb37c20bc8bd37fc7743cb8aa1ddcf27c161193d2e449ea1a02501ed7c114f3d8e322b1e8d3c0a111371fb.tar.gz"

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