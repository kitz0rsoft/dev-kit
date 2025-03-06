# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1 cargo

DESCRIPTION="A modern alternative to ls"
HOMEPAGE="https://eza.rocks https://github.com/eza-community/eza"
SRC_URI="https://github.com/eza-community/eza/tarball/1d2e201e4fb159809bf3f779dbb2d3307a12f883 -> eza-0.20.23-1d2e201.tar.gz
https://regen.mordor/4a/4a/15/4a4a15c1bc872c1f369726a53fac2c03b2b00919ce07f4c6c23e0e4a621a97ea2ddc45d218b903b1dbce201fc997d34fc92454133a2c59aa5487efa25a5b3458 -> eza-0.20.23-funtoo-crates-bundle-5de31a987cd8942877cea456e978c4b11e02f1b703e0e5a86cd91e109d7940b36b3e5e4142eea832033a9a43da303608c817bed4879b97cc066d10b2169b96a2.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"
IUSE="+git"

DEPEND="
	git? (
		dev-libs/libgit2:=
	)
"
RDEPEND="${DEPEND}"
BDEPEND="
	|| ( app-text/pandoc-bin app-text/pandoc )
	virtual/rust
"

DOCS=( README.md CHANGELOG.md )

QA_FLAGS_IGNORED="/usr/bin/eza"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/eza-community-eza-* ${S} || die
}

src_configure() {
	local myfeatures=(
		$(usev git)
	)
	# https://bugs.funtoo.org/browse/FL-11956
	# Enabling vendoring of libgit2 as eza requires version >= 1.7.2
	# Once Funtoo has a new version this can be changed back to 1 for
	# linking against the Funtoo system libgit2
	export LIBGIT2_NO_VENDOR=0
	export PKG_CONFIG_ALLOW_CROSS=1
	cargo_src_configure --no-default-features

	find ${S}/man -iname "*.md" -type f -exec sh -c 'pandoc --standalone -f markdown -t man "${0}" -o "${0%.md} "' {} \; || die
	rm -f ${S}/man/*.md || die
	mv ${S}/man ${S}/man.tmp || die

}

src_install() {
	cargo_src_install
	einstalldocs

	newbashcomp completions/bash/eza eza

	insinto /usr/share/zsh/site-functions
	doins completions/fish/eza.fish

	insinto /usr/share/fish/vendor_completions.d
	doins completions/zsh/_eza

	doman man.tmp/*
}