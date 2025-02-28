# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/72/f3/8d/72f38ddbaf9730698ddcbdcee123e7d1736273ebb7fcfb9434a100322ba47b0cfaf947779baf6b9099c41e2f1d082ab79d92625ff391d6f0143b920fcf36c289 -> cargo-c-0.10.11-funtoo-crates-bundle-e38e338543f0b83c121d5ae2b8ba3d47ac0267a23cab00e606da78848e56157edeaad70e1a93713141b82a24b31d5503c845c992ba9d9775aeeac4003506cfc8.tar.gz"

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