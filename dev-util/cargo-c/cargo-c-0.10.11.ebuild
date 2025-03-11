# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/c6da659efddf1ff1c6e7322f72654f018907cc2d -> cargo-c-0.10.11-c6da659.tar.gz
https://regen.mordor/d1/83/92/d183921668328133edee323d85326426cf0753d8232bc31a484762746fcc97285f2e19aeadf3a3b634a1afdd65c2e81db1f62e384563986037cfbf94a441d5a2 -> cargo-c-0.10.11-funtoo-crates-bundle-6fd10e171fa7ab939db8941cd394b5e8f50b782ade1545be0f6b2ecf8ffc744fe543adc735bc58724ae6ea9f7f938034cd1f2efefa17b9cfd02217587d5cb9a9.tar.gz"

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