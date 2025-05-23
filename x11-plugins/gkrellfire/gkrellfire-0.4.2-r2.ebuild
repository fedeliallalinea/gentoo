# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit gkrellm-plugin toolchain-funcs

DESCRIPTION="CPU load flames for GKrellM 2"
HOMEPAGE="http://people.freenet.de/thomas-steinke"
SRC_URI="http://distcache.freebsd.org/ports-distfiles/${P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="app-admin/gkrellm:2[X]"
DEPEND="${RDEPEND}"

PATCHES=(
	"${FILESDIR}"/fix-CC-CFLAGS-LDFLAGS-handling.patch
)

src_compile() {
	emake CC="$(tc-getCC)"
}
