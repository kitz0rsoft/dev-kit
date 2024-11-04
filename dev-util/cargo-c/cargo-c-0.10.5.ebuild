# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://distfiles.macaronios.org/20/4f/90/204f90e60879dfdc4f4bc424dbe4c1afabf50ec8cc1397ad68e83586cddef15316dd3ad50f7b3e110ae985984a92ef1f590536e7ca9e70d5eadeeb75b4bd189d -> cargo-c-0.10.5-funtoo-crates-bundle-49f97a06cc025b25343a16b82897f821c691b828a61923b28fbb2de2a19ada259ed3209fa4d85b73ef9aaf33337205785f93c30208612f950937ce348bd856c2.tar.gz"

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