# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/41/7a/3b/417a3ba79d11b8ab1ebdfe658d6c409d9c8b899770304cb2db94ca392ca942c44de9758ca7c19744b03bb0cf99add5056e2a3a01f0fe9a080c00552d085bab2d -> cargo-c-0.10.4-funtoo-crates-bundle-7b6245be56be8104857c14c01879110f75d7dd789123d345cb9fc26c9d71b9c9dd899157597f89f203841f1d8c7ea0f44fea50814ecd1031dbb2fd3fdde4eda2.tar.gz"

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