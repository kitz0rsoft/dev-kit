# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/ee7d7ef74b9c1fa00c6780da41a838752c76b3eb -> cargo-c-0.10.3-ee7d7ef.tar.gz
https://regen.mordor/88/72/d1/8872d192727e612bc59fef9d62939ddbb9c4f7863b43743a31e283db8194b43c0639d7af0ed948101b06d2e4c7c61e4c1e58f5131408f860b14ee2d4764cf7d8 -> cargo-c-0.10.3-funtoo-crates-bundle-541cc7953436f3b4945c44cfce8dd86ecbb6d185a0c4b74193c87caae00dc4dd762d2487d91e7cc923c1e92cffee4ae7cf48a6fabd70e92493ad2db500256997.tar.gz"

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