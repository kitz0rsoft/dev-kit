# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/39/9c/1f/399c1ffce515a2916ab8e50f933dc7b78364e77041e42c24dce688f85846e66dc82d7a44dbbf7860ffde8da0220eb50520b3cb45c89e7e8fe485160433bf63da -> cargo-c-0.10.11-funtoo-crates-bundle-9470a3f3d2b425362a80a6d54120bfa4677278283e39c37a8b3aae4f170458b05cfc8bb2fd919da326c8f0fd17fb130ee6ddb7fbc82e8e32d6e77c2c2dbd08d4.tar.gz"

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