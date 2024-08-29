# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1 cargo

DESCRIPTION="A modern alternative to ls"
HOMEPAGE="https://eza.rocks https://github.com/eza-community/eza"
SRC_URI="https://github.com/eza-community/eza/tarball/f4d257d9ceee6c84d1db5f7bc777c389980ffcbd -> eza-0.19.1-f4d257d.tar.gz
https://regen.mordor/2a/fd/f5/2afdf57344f4e785682c37dc43f71bc86771b8157ec409435b09ab1a49fb02062ae124d563701894ea7e79d08289f202c0737af9376d0a9b939de21a050a5d70 -> eza-0.19.1-funtoo-crates-bundle-246e015ccf39210b7c8da5d068c8ac1ccbb4411fa50f09dd35256cbd5800482ac857dd36112719880f30ec3ae946fa0766e9fc23b020f4d8e19a17d8381bcb60.tar.gz"

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