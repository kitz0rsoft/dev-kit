# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/d8/1c/7e/d81c7e1d9e586d2f000af5881c1628947cd12d910e34d6859c167b8e6600947cc4e32529df693ae16a68c548aed11b326ab9f17edbc5e426a493499dfadfe178 -> cargo-c-0.10.3-funtoo-crates-bundle-a9a051732f62a38c93a06ddda6ff5c22e08ff2fdb7d1aea6f3ce590c8e65ac9f6d796b9df87e15c0f4fa4bd14b72b55ee50d5912f8c52daee36efdafde92ddc7.tar.gz"

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