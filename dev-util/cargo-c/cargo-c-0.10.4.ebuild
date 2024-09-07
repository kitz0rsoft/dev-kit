# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/d7/ad/34/d7ad341427d872f93be1c997a4dad1ce459eb8610a09cd4555af023f769a9d20859f92af5eea5819612390f96ab82248881948f97c034f6505dc6fdeaef0cfd9 -> cargo-c-0.10.4-funtoo-crates-bundle-9a3f9251e396ed06b3074654631cb594341335df4c337fcabc9f9d68ed5fe2afb4c7d62f337f6b282efa945c849d8c51e7558ec42c322dcfd664373d5f73d00d.tar.gz"

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