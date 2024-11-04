# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/b6081a47813aab0175645e332b14282c651c893d -> cargo-c-0.10.5-b6081a4.tar.gz
https://distfiles.macaronios.org/f4/39/9d/f4399d79ec54e747ca8c1f18bf5c0f83cf220b90979b3ad3fcd7ebf960f2b2d3c64fc16a80c4f97805cdfae3ddfd85ad0442b5dad26a84c63dd2d96ca5fbb1c9 -> cargo-c-0.10.5-funtoo-crates-bundle-18118b9cb8754bf065459790d5819838c0aa526917de9bd2ec3c5f974a9feb3008d903d58e36ca611235ab83b15d0a007d70c5262d082acbd7ecbe96fef0babd.tar.gz"

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