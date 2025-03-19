# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/3c/c9/8e/3cc98eefcf70abd685124c7e6096de5c8efc54c1c4c44e2293ab494a605d9f71f41a7ce869c81bcf36d528060a073bbf1ff659e9ea404e3881065ee4cb1cf627 -> cargo-c-0.10.11-funtoo-crates-bundle-558e316a4354757d50279845ed277c7455ba603bc4ce81d32663371e083b1a3119005e9781f82914492804cc71bda2fc6eb8db226fcd05262ea7ad8799b9db01.tar.gz"

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