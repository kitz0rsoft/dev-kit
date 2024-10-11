# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/b9/2e/22/b92e22204e314f6b9a53547eabfb0ec2e009b03dd3736061f6b4d6c26c1a7b55cb9b21c93006cbda542bdd9f784e2a435b07d9f44cb1533883ece9f544709dc8 -> cargo-c-0.10.4-funtoo-crates-bundle-9a129c4bf2ec0441366bf4cc7e48c9426f0d89e4324bea7946a709e018248c1cace359ed327a82562f0990cfa497406e327d78a9046824f21d991e63ca336908.tar.gz"

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