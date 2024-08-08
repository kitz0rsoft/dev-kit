# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1 go-module

go-module_set_globals

SRC_URI="https://github.com/kubernetes-sigs/cri-tools/tarball/5c35c71f607a9baf63e92109ae95b96d9424ba0d -> cri-tools-1.31.0-5c35c71.tar.gz
https://regen.mordor/2e/4d/d1/2e4dd1510f1e255e948ab86158c30caa68696828fd8594e307b4e8f9cd4ab8af36e97128e0100e9610ba08e12aedea685c3a9f8614f4fb379469d2f35e3f0f89 -> cri-tools-1.31.0-funtoo-go-bundle-142e2eabfa4a58ee3cda08136ada1ae200b8789d9fe7bb6a42792eba066c3c1e6dbce92ed728e3740d8f07b97e57fa0726b15f346b948ec35a9c7d5d7a87a36f.tar.gz"

DESCRIPTION="CLI and validation tools for Kubelet Container Runtime (CRI)"
HOMEPAGE="https://github.com/kubernetes-sigs/cri-tools"

LICENSE="Apache-2.0 BSD BSD-2 CC-BY-SA-4.0 ISC MIT MPL-2.0"
SLOT="0"
KEYWORDS="*"

DEPEND="dev-lang/go"

RESTRICT+=" test"

src_unpack() {
	go-module_src_unpack
	if [ ! -d "${S}" ]; then
		mv kubernetes-sigs-cri-tools* "${S}" || die
	fi
}

src_compile() {
	emake VERSION="${PV}"
	./build/bin/linux/amd64/crictl completion bash > "${PN}.bash" || die
	./build/bin/linux/amd64/crictl completion zsh > "${PN}.zsh" || die
}

src_install() {
	dobin ./build/bin/linux/amd64/crictl

	newbashcomp ${PN}.bash ${PN}
	insinto /usr/share/zsh/site-functions
	newins ${PN}.zsh _${PN}

	dodoc -r docs {README,RELEASE,CHANGELOG,CONTRIBUTING}.md
}