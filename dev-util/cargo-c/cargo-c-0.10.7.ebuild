# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/8914ddfa8d45a0c27abdb48708138a5bc32e5bd6 -> cargo-c-0.10.7-8914ddf.tar.gz
https://regen.mordor/39/b4/19/39b419550d3fdbfbddc910888ad78f8c0fa6373e6ce96a6f3a8fbfe7905ebd63e01db833361bea5dbafef2660db84f6dead69548bb873a635b2cdf56837a4104 -> cargo-c-0.10.7-funtoo-crates-bundle-b1b5dc18c88cfeb5c47b03e07664ebd1ad544bad1d096fe704be40244788cd9b048fa61dc8dbca640142818e1e6b57f4d385f1a34bd8baf328aea3e059553b76.tar.gz"

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