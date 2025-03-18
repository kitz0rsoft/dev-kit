# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/d0/9e/ce/d09ece9cbf53a1841b34d3e5c430dcff17cc2ea6ab3174b980cd137750bc257f81a99d52adabb519c79790b6caf1eea58019c3b452c74e24893ae99e12dd9cb7 -> cargo-c-0.10.11-funtoo-crates-bundle-50fc19b9b773d553eb6cf065fb9307efc1ff3817027b9cc97b54b0dcd3411f198e032e42616f43bdc26421871b5947e88218a12a3858a68a6456dde1068b2fae.tar.gz"

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