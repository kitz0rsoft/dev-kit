# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Just a command runner"
HOMEPAGE="https://github.com/casey/just"
SRC_URI="https://github.com/casey/just/tarball/ae09563eda15e62a88e390dc9dd8bb7d91bb84cc -> just-1.36.0-ae09563.tar.gz
https://regen.mordor/55/58/6d/55586df44122958778ee59c7336da874e9bb02bc704c4d155d2cc56f676bb991f513545fc5028a0497a4a80fbe4c9b7acef480b2e09ba8876f55fa35cba2d1a4 -> just-1.36.0-funtoo-crates-bundle-c93f937fa8c0bbc27234f80c7776e07b8c6ddd9ee1c0a8c7c8e315505392732640cfb9ed1dbfceaf512b9c95c9add6b1d9a94806bf79c33f8737e4becc2a01b9.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

DEPEND=""
RDEPEND=""
BDEPEND="virtual/rust"

QA_FLAGS_IGNORED="/usr/bin/just"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/casey-just-* ${S} || die
}

src_install() {
	cargo_src_install

	mkdir ${S}/man
	${S}/target/release/just --man > ${S}/man/just.1
	doman man/just.1

	dodoc README.md
	einstalldocs
}