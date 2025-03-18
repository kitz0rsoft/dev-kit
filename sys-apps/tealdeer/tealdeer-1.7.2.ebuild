# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo bash-completion-r1

DESCRIPTION="A very fast implementation of tldr in Rust."
HOMEPAGE="https://github.com/dbrgn/tealdeer https://dbrgn.github.io/tealdeer/"
SRC_URI="https://github.com/dbrgn/tealdeer/tarball/5347e803e1f8713ea9833f2756fb45ba02a63908 -> tealdeer-1.7.2-5347e80.tar.gz
https://regen.mordor/52/6f/e6/526fe6e08c8979e7c020975d409c6afbce0225b3230d1f6fd7bdfa43722955aa12e3c0166472d7c41b4ff5a5cc979f479aa5059c302a72155286e8e6afefe77f -> tealdeer-1.7.2-funtoo-crates-bundle-e46ffc1071f994675b901dbcef8db31d68bb92e96aff928d40aa2c952a36962a16b246c8d98a53524a417774920927487acadbddb276c2f5b2333af4b3a59410.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="+bash-completion zsh-completion fish-completion"

DOCS=( README.md CHANGELOG.md )

QA_FLAGS_IGNORED="usr/bin/tldr"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/dbrgn-tealdeer-* ${S} || die
}

src_install() {
	cargo_src_install
	einstalldocs

	use bash-completion && newbashcomp completion/bash_tealdeer tldr

	use zsh-completion && {
		insinto /usr/share/zsh/site-functions
		newins completion/zsh_tealdeer _tldr
	}

	use fish-completion && {
		insinto /usr/share/fish/vendor_completions.d
		newins completion/fish_tealdeer tldr.fish
	}
}