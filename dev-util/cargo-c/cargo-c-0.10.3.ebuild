# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/88/d9/c9/88d9c9ffdca52b58cf9737e0333a587b9ddb6e152e8760edae0072002be683e8548e5a6c27a293f899ac29331c1db38125e3622e496963b07aad0aa68d692a14 -> cargo-c-0.10.3-funtoo-crates-bundle-2f8c53ef831ffe2559f8652c7f030236fdb286f7a2a350e847fd46a4e7916fde8b5edadc60477a89c3f8ad8d2250b190dce4cfe182c87b4b233ca35cd3eeecb1.tar.gz"

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