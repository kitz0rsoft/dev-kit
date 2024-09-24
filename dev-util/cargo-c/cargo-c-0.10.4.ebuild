# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="build and install C-compatible libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
SRC_URI="https://github.com/lu-zero/cargo-c/tarball/46bd413718501a24afaf60fa36bad799d5e296d6 -> cargo-c-0.10.4-46bd413.tar.gz
https://regen.mordor/97/bf/98/97bf98f2667f7ffdb5ab250e2c7ab0d11679ce9f7944a0735a28fa0418cc862da01250393aee5091dbe3600e1667a094708ca277aec44430c5847d13d31155e9 -> cargo-c-0.10.4-funtoo-crates-bundle-872b51f21348d7bff15c51bef22a2ba2d5298b75b60f3942f5ff36fb015f7aa43b8f1d95add49bff95a78c6578316aaf2e0a4c2fc685a11cd65fc6956d565206.tar.gz"

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