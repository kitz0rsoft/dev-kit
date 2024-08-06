# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit ninja-utils python-any-r1 toolchain-funcs

DESCRIPTION="GN is a meta-build system that generates build files for Ninja"
HOMEPAGE="https://gn.googlesource.com/"
SRC_URI="https://regen.mordor/b7/1b/cc/b71bcc974e3be41e6b2d97a03bf92cd2ad548c530327b626930e95f8ba57e682a16a529b3d95845445cfe58ad9c4fa0334b090bef6cfb575f340b3aaabc3c6c2 -> gn-0.2179.tar.xz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/gn-0.2179"

BDEPEND="
	${PYTHON_DEPS}
	dev-util/ninja
"

pkg_setup() {
	:
}

src_configure() {
	python_setup

	tc-export AR CC CXX
	unset CFLAGS

	set -- ${EPYTHON} build/gen.py --no-last-commit-position --no-strip --no-static-libstdc++ --allow-warnings
	echo "$@" >&2
	"$@" || die
}

src_compile() {
	eninja -C out gn
}

src_install() {
	dobin out/gn
	einstalldocs

	insinto /usr/share/vim/vimfiles
	doins -r misc/vim/{autoload,ftdetect,ftplugin,syntax}
}