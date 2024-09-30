# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/ac/e2/e5/ace2e5143e76cc226f5615902a93ddc1422038cd999733be102d86fe6a688584d606481e69747c143695aa780d6a95a3142844b4165ef94b89296b0953a3153a -> cargo-c-0.10.4-funtoo-crates-bundle-67ca73dfec5b449d6009383454ba7d3a7835b1a0c06d29721aa2feef35c5404f366d8b1ec9eb2d864e1dc978cc3ebd72b579f8a66e526de8d582ef2e8ea8eaea.tar.gz"

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