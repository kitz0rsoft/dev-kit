# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/64/0e/57/640e570e32a3687161cfb5f0a75ee53605a02520d20d8865b6917f93c9d83f537f33f37924b4ba401db3387994c80b98d9cbb5ef950938e71caf67ee99fb498e -> cargo-c-0.10.11-funtoo-crates-bundle-9432c287e43aa610dea49eabf036a742683346551922d1f9e052d191d798f8ac5312be9812082979a9c7a4f65e140bc151406c039b9e5616b25a347a03a38810.tar.gz"

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