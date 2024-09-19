# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Command-line Git information tool"
HOMEPAGE="https://github.com/o2sh/onefetch"
SRC_URI="https://github.com/o2sh/onefetch/tarball/5151b54289e6fc94b0a3f7d2ffca06949fc1a4d7 -> onefetch-2.22.0-5151b54.tar.gz
https://regen.mordor/73/ba/61/73ba61da4158ac3e2061d43f9d993678bc4b8c540d8e7bbddc59401e6eee83473de2abc7ceeb2aba39121f266583bb0a3a23370ec6f63b3bf5f76c90ffc363de -> onefetch-2.22.0-funtoo-crates-bundle-9baf236c46175749a81c2724e628ae4b9d6d9ab9663ce9419801d67f92f6b70c44c9b01b96e08a2a17877858ef06c902ebc4c8137a68ac598a3252f56a09c244.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

BDEPEND="virtual/rust"

QA_FLAGS_IGNORED="/usr/bin/onefetch"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/o2sh-onefetch-* ${S} || die
}