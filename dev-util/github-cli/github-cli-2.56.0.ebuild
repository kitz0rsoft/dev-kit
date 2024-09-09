# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1 go-module

EGO_SUM=(
	"cloud.google.com/go v0.112.1"
	"cloud.google.com/go/compute v1.25.1"
	"cloud.google.com/go/compute v1.25.1/go.mod"
	"cloud.google.com/go/compute/metadata v0.2.3"
	"cloud.google.com/go/compute/metadata v0.2.3/go.mod"
	"cloud.google.com/go/iam v1.1.6"
	"cloud.google.com/go/iam v1.1.6/go.mod"
	"cloud.google.com/go/kms v1.15.8"
	"cloud.google.com/go/kms v1.15.8/go.mod"
	"filippo.io/edwards25519 v1.1.0"
	"filippo.io/edwards25519 v1.1.0/go.mod"
	"github.com/!adam!korcz/go-fuzz-headers-1 v0.0.0-20230919221257-8b5d3ce2d11d"
	"github.com/!adam!korcz/go-fuzz-headers-1 v0.0.0-20230919221257-8b5d3ce2d11d/go.mod"
	"github.com/!alec!aivazis/survey/v2 v2.3.7"
	"github.com/!alec!aivazis/survey/v2 v2.3.7/go.mod"
	"github.com/!azure/azure-sdk-for-go/sdk/azcore v1.10.0"
	"github.com/!azure/azure-sdk-for-go/sdk/azcore v1.10.0/go.mod"
	"github.com/!azure/azure-sdk-for-go/sdk/azidentity v1.5.1"
	"github.com/!azure/azure-sdk-for-go/sdk/azidentity v1.5.1/go.mod"
	"github.com/!azure/azure-sdk-for-go/sdk/internal v1.5.2"
	"github.com/!azure/azure-sdk-for-go/sdk/internal v1.5.2/go.mod"
	"github.com/!azure/azure-sdk-for-go/sdk/security/keyvault/azkeys v1.1.0"
	"github.com/!azure/azure-sdk-for-go/sdk/security/keyvault/azkeys v1.1.0/go.mod"
	"github.com/!azure/azure-sdk-for-go/sdk/security/keyvault/internal v1.0.0"
	"github.com/!azure/azure-sdk-for-go/sdk/security/keyvault/internal v1.0.0/go.mod"
	"github.com/!azure!a!d/microsoft-authentication-library-for-go v1.2.2"
	"github.com/!azure!a!d/microsoft-authentication-library-for-go v1.2.2/go.mod"
	"github.com/!burnt!sushi/toml v1.2.1/go.mod"
	"github.com/!make!now!just/heredoc v1.0.0"
	"github.com/!make!now!just/heredoc v1.0.0/go.mod"
	"github.com/!netflix/go-expect v0.0.0-20220104043353-73e0943537d2"
	"github.com/!netflix/go-expect v0.0.0-20220104043353-73e0943537d2/go.mod"
	"github.com/alecthomas/assert/v2 v2.2.1"
	"github.com/alecthomas/assert/v2 v2.2.1/go.mod"
	"github.com/alecthomas/chroma/v2 v2.8.0"
	"github.com/alecthomas/chroma/v2 v2.8.0/go.mod"
	"github.com/alecthomas/repr v0.2.0"
	"github.com/alecthomas/repr v0.2.0/go.mod"
	"github.com/alessio/shellescape v1.4.2"
	"github.com/alessio/shellescape v1.4.2/go.mod"
	"github.com/asaskevich/govalidator v0.0.0-20230301143203-a9d515a09cc2"
	"github.com/asaskevich/govalidator v0.0.0-20230301143203-a9d515a09cc2/go.mod"
	"github.com/aws/aws-sdk-go v1.51.6"
	"github.com/aws/aws-sdk-go v1.51.6/go.mod"
	"github.com/aws/aws-sdk-go-v2 v1.27.2"
	"github.com/aws/aws-sdk-go-v2 v1.27.2/go.mod"
	"github.com/aws/aws-sdk-go-v2/config v1.27.18"
	"github.com/aws/aws-sdk-go-v2/config v1.27.18/go.mod"
	"github.com/aws/aws-sdk-go-v2/credentials v1.17.18"
	"github.com/aws/aws-sdk-go-v2/credentials v1.17.18/go.mod"
	"github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.16.5"
	"github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.16.5/go.mod"
	"github.com/aws/aws-sdk-go-v2/internal/configsources v1.3.9"
	"github.com/aws/aws-sdk-go-v2/internal/configsources v1.3.9/go.mod"
	"github.com/aws/aws-sdk-go-v2/internal/endpoints/v2 v2.6.9"
	"github.com/aws/aws-sdk-go-v2/internal/endpoints/v2 v2.6.9/go.mod"
	"github.com/aws/aws-sdk-go-v2/internal/ini v1.8.0"
	"github.com/aws/aws-sdk-go-v2/internal/ini v1.8.0/go.mod"
	"github.com/aws/aws-sdk-go-v2/service/internal/accept-encoding v1.11.2"
	"github.com/aws/aws-sdk-go-v2/service/internal/accept-encoding v1.11.2/go.mod"
	"github.com/aws/aws-sdk-go-v2/service/internal/presigned-url v1.11.11"
	"github.com/aws/aws-sdk-go-v2/service/internal/presigned-url v1.11.11/go.mod"
	"github.com/aws/aws-sdk-go-v2/service/kms v1.30.0"
	"github.com/aws/aws-sdk-go-v2/service/kms v1.30.0/go.mod"
	"github.com/aws/aws-sdk-go-v2/service/sso v1.20.11"
	"github.com/aws/aws-sdk-go-v2/service/sso v1.20.11/go.mod"
	"github.com/aws/aws-sdk-go-v2/service/ssooidc v1.24.5"
	"github.com/aws/aws-sdk-go-v2/service/ssooidc v1.24.5/go.mod"
	"github.com/aws/aws-sdk-go-v2/service/sts v1.28.12"
	"github.com/aws/aws-sdk-go-v2/service/sts v1.28.12/go.mod"
	"github.com/aws/smithy-go v1.20.2"
	"github.com/aws/smithy-go v1.20.2/go.mod"
	"github.com/aymanbagabas/go-osc52/v2 v2.0.1"
	"github.com/aymanbagabas/go-osc52/v2 v2.0.1/go.mod"
	"github.com/aymerick/douceur v0.2.0"
	"github.com/aymerick/douceur v0.2.0/go.mod"
	"github.com/beorn7/perks v1.0.1"
	"github.com/beorn7/perks v1.0.1/go.mod"
	"github.com/blang/semver v3.5.1+incompatible"
	"github.com/blang/semver v3.5.1+incompatible/go.mod"
	"github.com/briandowns/spinner v1.18.1"
	"github.com/briandowns/spinner v1.18.1/go.mod"
	"github.com/cenkalti/backoff/v3 v3.2.2"
	"github.com/cenkalti/backoff/v3 v3.2.2/go.mod"
	"github.com/cenkalti/backoff/v4 v4.3.0"
	"github.com/cenkalti/backoff/v4 v4.3.0/go.mod"
	"github.com/cespare/xxhash/v2 v2.2.0"
	"github.com/cespare/xxhash/v2 v2.2.0/go.mod"
	"github.com/charmbracelet/glamour v0.7.0"
	"github.com/charmbracelet/glamour v0.7.0/go.mod"
	"github.com/charmbracelet/lipgloss v0.10.1-0.20240413172830-d0be07ea6b9c"
	"github.com/charmbracelet/lipgloss v0.10.1-0.20240413172830-d0be07ea6b9c/go.mod"
	"github.com/charmbracelet/x/exp/term v0.0.0-20240425164147-ba2a9512b05f"
	"github.com/charmbracelet/x/exp/term v0.0.0-20240425164147-ba2a9512b05f/go.mod"
	"github.com/cli/browser v1.0.0/go.mod"
	"github.com/cli/browser v1.3.0"
	"github.com/cli/browser v1.3.0/go.mod"
	"github.com/cli/go-gh/v2 v2.9.0"
	"github.com/cli/go-gh/v2 v2.9.0/go.mod"
	"github.com/cli/oauth v1.0.1"
	"github.com/cli/oauth v1.0.1/go.mod"
	"github.com/cli/safeexec v1.0.0/go.mod"
	"github.com/cli/safeexec v1.0.1"
	"github.com/cli/safeexec v1.0.1/go.mod"
	"github.com/cli/shurcoo!l-graphql v0.0.4"
	"github.com/cli/shurcoo!l-graphql v0.0.4/go.mod"
	"github.com/codahale/rfc6979 v0.0.0-20141003034818-6a90f24967eb"
	"github.com/codahale/rfc6979 v0.0.0-20141003034818-6a90f24967eb/go.mod"
	"github.com/containerd/stargz-snapshotter/estargz v0.14.3"
	"github.com/containerd/stargz-snapshotter/estargz v0.14.3/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.2/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.4"
	"github.com/cpuguy83/go-md2man/v2 v2.0.4/go.mod"
	"github.com/creack/pty v1.1.17/go.mod"
	"github.com/creack/pty v1.1.23"
	"github.com/creack/pty v1.1.23/go.mod"
	"github.com/cyberphone/json-canonicalization v0.0.0-20220623050100-57a0ce2678a7"
	"github.com/cyberphone/json-canonicalization v0.0.0-20220623050100-57a0ce2678a7/go.mod"
	"github.com/danieljoos/wincred v1.2.1"
	"github.com/danieljoos/wincred v1.2.1/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc"
	"github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc/go.mod"
	"github.com/digitorus/pkcs7 v0.0.0-20230713084857-e76b763bdc49/go.mod"
	"github.com/digitorus/pkcs7 v0.0.0-20230818184609-3a137a874352"
	"github.com/digitorus/pkcs7 v0.0.0-20230818184609-3a137a874352/go.mod"
	"github.com/digitorus/timestamp v0.0.0-20231217203849-220c5c2851b7"
	"github.com/digitorus/timestamp v0.0.0-20231217203849-220c5c2851b7/go.mod"
	"github.com/distribution/reference v0.5.0"
	"github.com/distribution/reference v0.5.0/go.mod"
	"github.com/dlclark/regexp2 v1.4.0"
	"github.com/dlclark/regexp2 v1.4.0/go.mod"
	"github.com/docker/cli v27.1.1+incompatible"
	"github.com/docker/cli v27.1.1+incompatible/go.mod"
	"github.com/docker/distribution v2.8.2+incompatible"
	"github.com/docker/distribution v2.8.2+incompatible/go.mod"
	"github.com/docker/docker-credential-helpers v0.7.0"
	"github.com/docker/docker-credential-helpers v0.7.0/go.mod"
	"github.com/fatih/color v1.7.0/go.mod"
	"github.com/fatih/color v1.16.0"
	"github.com/fatih/color v1.16.0/go.mod"
	"github.com/felixge/httpsnoop v1.0.4"
	"github.com/felixge/httpsnoop v1.0.4/go.mod"
	"github.com/frankban/quicktest v1.14.6"
	"github.com/frankban/quicktest v1.14.6/go.mod"
	"github.com/fsnotify/fsnotify v1.7.0"
	"github.com/fsnotify/fsnotify v1.7.0/go.mod"
	"github.com/gabriel-vasile/mimetype v1.4.5"
	"github.com/gabriel-vasile/mimetype v1.4.5/go.mod"
	"github.com/gdamore/encoding v1.0.0"
	"github.com/gdamore/encoding v1.0.0/go.mod"
	"github.com/gdamore/tcell/v2 v2.5.4"
	"github.com/gdamore/tcell/v2 v2.5.4/go.mod"
	"github.com/go-chi/chi v4.1.2+incompatible"
	"github.com/go-chi/chi v4.1.2+incompatible/go.mod"
	"github.com/go-jose/go-jose/v3 v3.0.3"
	"github.com/go-jose/go-jose/v3 v3.0.3/go.mod"
	"github.com/go-jose/go-jose/v4 v4.0.2"
	"github.com/go-jose/go-jose/v4 v4.0.2/go.mod"
	"github.com/go-logr/logr v1.2.2/go.mod"
	"github.com/go-logr/logr v1.4.1"
	"github.com/go-logr/logr v1.4.1/go.mod"
	"github.com/go-logr/stdr v1.2.2"
	"github.com/go-logr/stdr v1.2.2/go.mod"
	"github.com/go-openapi/analysis v0.23.0"
	"github.com/go-openapi/analysis v0.23.0/go.mod"
	"github.com/go-openapi/errors v0.22.0"
	"github.com/go-openapi/errors v0.22.0/go.mod"
	"github.com/go-openapi/jsonpointer v0.21.0"
	"github.com/go-openapi/jsonpointer v0.21.0/go.mod"
	"github.com/go-openapi/jsonreference v0.21.0"
	"github.com/go-openapi/jsonreference v0.21.0/go.mod"
	"github.com/go-openapi/loads v0.22.0"
	"github.com/go-openapi/loads v0.22.0/go.mod"
	"github.com/go-openapi/runtime v0.28.0"
	"github.com/go-openapi/runtime v0.28.0/go.mod"
	"github.com/go-openapi/spec v0.21.0"
	"github.com/go-openapi/spec v0.21.0/go.mod"
	"github.com/go-openapi/strfmt v0.23.0"
	"github.com/go-openapi/strfmt v0.23.0/go.mod"
	"github.com/go-openapi/swag v0.23.0"
	"github.com/go-openapi/swag v0.23.0/go.mod"
	"github.com/go-openapi/validate v0.24.0"
	"github.com/go-openapi/validate v0.24.0/go.mod"
	"github.com/go-sql-driver/mysql v1.8.1"
	"github.com/go-sql-driver/mysql v1.8.1/go.mod"
	"github.com/go-test/deep v1.1.1"
	"github.com/go-test/deep v1.1.1/go.mod"
	"github.com/godbus/dbus/v5 v5.1.0"
	"github.com/godbus/dbus/v5 v5.1.0/go.mod"
	"github.com/golang-jwt/jwt/v5 v5.2.1"
	"github.com/golang-jwt/jwt/v5 v5.2.1/go.mod"
	"github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da"
	"github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da/go.mod"
	"github.com/golang/protobuf v1.5.4"
	"github.com/golang/protobuf v1.5.4/go.mod"
	"github.com/google/certificate-transparency-go v1.2.1"
	"github.com/google/certificate-transparency-go v1.2.1/go.mod"
	"github.com/google/go-cmp v0.6.0"
	"github.com/google/go-cmp v0.6.0/go.mod"
	"github.com/google/go-containerregistry v0.20.2"
	"github.com/google/go-containerregistry v0.20.2/go.mod"
	"github.com/google/gofuzz v1.2.0"
	"github.com/google/gofuzz v1.2.0/go.mod"
	"github.com/google/s2a-go v0.1.7"
	"github.com/google/s2a-go v0.1.7/go.mod"
	"github.com/google/shlex v0.0.0-20191202100458-e7afc7fbc510"
	"github.com/google/shlex v0.0.0-20191202100458-e7afc7fbc510/go.mod"
	"github.com/google/tink/go v1.7.0"
	"github.com/google/tink/go v1.7.0/go.mod"
	"github.com/google/trillian v1.6.0"
	"github.com/google/trillian v1.6.0/go.mod"
	"github.com/google/uuid v1.6.0"
	"github.com/google/uuid v1.6.0/go.mod"
	"github.com/googleapis/enterprise-certificate-proxy v0.3.2"
	"github.com/googleapis/enterprise-certificate-proxy v0.3.2/go.mod"
	"github.com/googleapis/gax-go/v2 v2.12.3"
	"github.com/googleapis/gax-go/v2 v2.12.3/go.mod"
	"github.com/gorilla/css v1.0.0"
	"github.com/gorilla/css v1.0.0/go.mod"
	"github.com/gorilla/websocket v1.5.3"
	"github.com/gorilla/websocket v1.5.3/go.mod"
	"github.com/h2non/parth v0.0.0-20190131123155-b4df798d6542"
	"github.com/h2non/parth v0.0.0-20190131123155-b4df798d6542/go.mod"
	"github.com/hashicorp/errwrap v1.0.0/go.mod"
	"github.com/hashicorp/errwrap v1.1.0"
	"github.com/hashicorp/errwrap v1.1.0/go.mod"
	"github.com/hashicorp/go-cleanhttp v0.5.2"
	"github.com/hashicorp/go-cleanhttp v0.5.2/go.mod"
	"github.com/hashicorp/go-hclog v1.6.3"
	"github.com/hashicorp/go-hclog v1.6.3/go.mod"
	"github.com/hashicorp/go-multierror v1.1.1"
	"github.com/hashicorp/go-multierror v1.1.1/go.mod"
	"github.com/hashicorp/go-retryablehttp v0.7.7"
	"github.com/hashicorp/go-retryablehttp v0.7.7/go.mod"
	"github.com/hashicorp/go-rootcerts v1.0.2"
	"github.com/hashicorp/go-rootcerts v1.0.2/go.mod"
	"github.com/hashicorp/go-secure-stdlib/parseutil v0.1.7"
	"github.com/hashicorp/go-secure-stdlib/parseutil v0.1.7/go.mod"
	"github.com/hashicorp/go-secure-stdlib/strutil v0.1.2"
	"github.com/hashicorp/go-secure-stdlib/strutil v0.1.2/go.mod"
	"github.com/hashicorp/go-sockaddr v1.0.2"
	"github.com/hashicorp/go-sockaddr v1.0.2/go.mod"
	"github.com/hashicorp/go-version v1.3.0"
	"github.com/hashicorp/go-version v1.3.0/go.mod"
	"github.com/hashicorp/golang-lru v0.5.4"
	"github.com/hashicorp/golang-lru/v2 v2.0.7"
	"github.com/hashicorp/golang-lru/v2 v2.0.7/go.mod"
	"github.com/hashicorp/hcl v1.0.0"
	"github.com/hashicorp/hcl v1.0.0/go.mod"
	"github.com/hashicorp/vault/api v1.12.2"
	"github.com/hashicorp/vault/api v1.12.2/go.mod"
	"github.com/henvic/httpretty v0.1.3"
	"github.com/henvic/httpretty v0.1.3/go.mod"
	"github.com/hexops/gotextdiff v1.0.3"
	"github.com/hexops/gotextdiff v1.0.3/go.mod"
	"github.com/hinshun/vt10x v0.0.0-20220119200601-820417d04eec"
	"github.com/hinshun/vt10x v0.0.0-20220119200601-820417d04eec/go.mod"
	"github.com/howeyc/gopass v0.0.0-20210920133722-c8aef6fb66ef"
	"github.com/howeyc/gopass v0.0.0-20210920133722-c8aef6fb66ef/go.mod"
	"github.com/in-toto/attestation v1.1.0"
	"github.com/in-toto/attestation v1.1.0/go.mod"
	"github.com/in-toto/in-toto-golang v0.9.0"
	"github.com/in-toto/in-toto-golang v0.9.0/go.mod"
	"github.com/inconshreveable/mousetrap v1.1.0"
	"github.com/inconshreveable/mousetrap v1.1.0/go.mod"
	"github.com/itchyny/gojq v0.12.15"
	"github.com/itchyny/gojq v0.12.15/go.mod"
	"github.com/itchyny/timefmt-go v0.1.5"
	"github.com/itchyny/timefmt-go v0.1.5/go.mod"
	"github.com/jedisct1/go-minisign v0.0.0-20211028175153-1c139d1cc84b"
	"github.com/jedisct1/go-minisign v0.0.0-20211028175153-1c139d1cc84b/go.mod"
	"github.com/jellydator/ttlcache/v3 v3.2.0"
	"github.com/jellydator/ttlcache/v3 v3.2.0/go.mod"
	"github.com/jmespath/go-jmespath v0.4.0"
	"github.com/jmespath/go-jmespath v0.4.0/go.mod"
	"github.com/jmhodges/clock v1.2.0"
	"github.com/jmhodges/clock v1.2.0/go.mod"
	"github.com/joho/godotenv v1.5.1"
	"github.com/joho/godotenv v1.5.1/go.mod"
	"github.com/josharian/intern v1.0.0"
	"github.com/josharian/intern v1.0.0/go.mod"
	"github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51"
	"github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51/go.mod"
	"github.com/klauspost/compress v1.17.4"
	"github.com/klauspost/compress v1.17.4/go.mod"
	"github.com/kr/pretty v0.3.1"
	"github.com/kr/pretty v0.3.1/go.mod"
	"github.com/kr/text v0.2.0"
	"github.com/kr/text v0.2.0/go.mod"
	"github.com/kylelemons/godebug v1.1.0"
	"github.com/kylelemons/godebug v1.1.0/go.mod"
	"github.com/letsencrypt/boulder v0.0.0-20240620165639-de9c06129bec"
	"github.com/letsencrypt/boulder v0.0.0-20240620165639-de9c06129bec/go.mod"
	"github.com/lucasb-eyer/go-colorful v1.2.0"
	"github.com/lucasb-eyer/go-colorful v1.2.0/go.mod"
	"github.com/magiconair/properties v1.8.7"
	"github.com/magiconair/properties v1.8.7/go.mod"
	"github.com/mailru/easyjson v0.7.7"
	"github.com/mailru/easyjson v0.7.7/go.mod"
	"github.com/mattn/go-colorable v0.1.2/go.mod"
	"github.com/mattn/go-colorable v0.1.13"
	"github.com/mattn/go-colorable v0.1.13/go.mod"
	"github.com/mattn/go-isatty v0.0.8/go.mod"
	"github.com/mattn/go-isatty v0.0.16/go.mod"
	"github.com/mattn/go-isatty v0.0.20"
	"github.com/mattn/go-isatty v0.0.20/go.mod"
	"github.com/mattn/go-runewidth v0.0.9/go.mod"
	"github.com/mattn/go-runewidth v0.0.12/go.mod"
	"github.com/mattn/go-runewidth v0.0.14/go.mod"
	"github.com/mattn/go-runewidth v0.0.15"
	"github.com/mattn/go-runewidth v0.0.15/go.mod"
	"github.com/mgutz/ansi v0.0.0-20170206155736-9520e82c474b/go.mod"
	"github.com/mgutz/ansi v0.0.0-20200706080929-d51e80ef957d"
	"github.com/mgutz/ansi v0.0.0-20200706080929-d51e80ef957d/go.mod"
	"github.com/microcosm-cc/bluemonday v1.0.26"
	"github.com/microcosm-cc/bluemonday v1.0.26/go.mod"
	"github.com/microsoft/dev-tunnels v0.0.25"
	"github.com/microsoft/dev-tunnels v0.0.25/go.mod"
	"github.com/mitchellh/go-homedir v1.1.0"
	"github.com/mitchellh/go-homedir v1.1.0/go.mod"
	"github.com/mitchellh/mapstructure v1.5.0"
	"github.com/mitchellh/mapstructure v1.5.0/go.mod"
	"github.com/muesli/reflow v0.3.0"
	"github.com/muesli/reflow v0.3.0/go.mod"
	"github.com/muesli/termenv v0.15.2"
	"github.com/muesli/termenv v0.15.2/go.mod"
	"github.com/muhammadmuzzammil1998/jsonc v0.0.0-20201229145248-615b0916ca38"
	"github.com/muhammadmuzzammil1998/jsonc v0.0.0-20201229145248-615b0916ca38/go.mod"
	"github.com/nbio/st v0.0.0-20140626010706-e9e8d9816f32"
	"github.com/nbio/st v0.0.0-20140626010706-e9e8d9816f32/go.mod"
	"github.com/oklog/ulid v1.3.1"
	"github.com/oklog/ulid v1.3.1/go.mod"
	"github.com/olekukonko/tablewriter v0.0.5"
	"github.com/olekukonko/tablewriter v0.0.5/go.mod"
	"github.com/opencontainers/go-digest v1.0.0"
	"github.com/opencontainers/go-digest v1.0.0/go.mod"
	"github.com/opencontainers/image-spec v1.1.0-rc5"
	"github.com/opencontainers/image-spec v1.1.0-rc5/go.mod"
	"github.com/opentracing/opentracing-go v1.2.0"
	"github.com/opentracing/opentracing-go v1.2.0/go.mod"
	"github.com/pelletier/go-toml/v2 v2.1.0"
	"github.com/pelletier/go-toml/v2 v2.1.0/go.mod"
	"github.com/pkg/browser v0.0.0-20240102092130-5ac0b6a4141c"
	"github.com/pkg/browser v0.0.0-20240102092130-5ac0b6a4141c/go.mod"
	"github.com/pkg/errors v0.9.1"
	"github.com/pkg/errors v0.9.1/go.mod"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2"
	"github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2/go.mod"
	"github.com/prometheus/client_golang v1.19.1"
	"github.com/prometheus/client_golang v1.19.1/go.mod"
	"github.com/prometheus/client_model v0.5.0"
	"github.com/prometheus/client_model v0.5.0/go.mod"
	"github.com/prometheus/common v0.48.0"
	"github.com/prometheus/common v0.48.0/go.mod"
	"github.com/prometheus/procfs v0.12.0"
	"github.com/prometheus/procfs v0.12.0/go.mod"
	"github.com/rivo/tview v0.0.0-20221029100920-c4a7e501810d"
	"github.com/rivo/tview v0.0.0-20221029100920-c4a7e501810d/go.mod"
	"github.com/rivo/uniseg v0.1.0/go.mod"
	"github.com/rivo/uniseg v0.2.0/go.mod"
	"github.com/rivo/uniseg v0.4.7"
	"github.com/rivo/uniseg v0.4.7/go.mod"
	"github.com/rodaine/table v1.0.1"
	"github.com/rodaine/table v1.0.1/go.mod"
	"github.com/rogpeppe/go-internal v1.11.0"
	"github.com/rogpeppe/go-internal v1.11.0/go.mod"
	"github.com/russross/blackfriday/v2 v2.1.0"
	"github.com/russross/blackfriday/v2 v2.1.0/go.mod"
	"github.com/ryanuber/go-glob v1.0.0"
	"github.com/ryanuber/go-glob v1.0.0/go.mod"
	"github.com/sagikazarmark/locafero v0.4.0"
	"github.com/sagikazarmark/locafero v0.4.0/go.mod"
	"github.com/sagikazarmark/slog-shim v0.1.0"
	"github.com/sagikazarmark/slog-shim v0.1.0/go.mod"
	"github.com/sassoftware/relic v7.2.1+incompatible"
	"github.com/sassoftware/relic v7.2.1+incompatible/go.mod"
	"github.com/sassoftware/relic/v7 v7.6.2"
	"github.com/sassoftware/relic/v7 v7.6.2/go.mod"
	"github.com/secure-systems-lab/go-securesystemslib v0.8.0"
	"github.com/secure-systems-lab/go-securesystemslib v0.8.0/go.mod"
	"github.com/sergi/go-diff v1.3.1"
	"github.com/sergi/go-diff v1.3.1/go.mod"
	"github.com/shibumi/go-pathspec v1.3.0"
	"github.com/shibumi/go-pathspec v1.3.0/go.mod"
	"github.com/shurcoo!l/githubv4 v0.0.0-20240120211514-18a1ae0e79dc"
	"github.com/shurcoo!l/githubv4 v0.0.0-20240120211514-18a1ae0e79dc/go.mod"
	"github.com/shurcoo!l/graphql v0.0.0-20230722043721-ed46e5a46466"
	"github.com/shurcoo!l/graphql v0.0.0-20230722043721-ed46e5a46466/go.mod"
	"github.com/sigstore/protobuf-specs v0.3.2"
	"github.com/sigstore/protobuf-specs v0.3.2/go.mod"
	"github.com/sigstore/rekor v1.3.6"
	"github.com/sigstore/rekor v1.3.6/go.mod"
	"github.com/sigstore/sigstore v1.8.9"
	"github.com/sigstore/sigstore v1.8.9/go.mod"
	"github.com/sigstore/sigstore-go v0.6.1"
	"github.com/sigstore/sigstore-go v0.6.1/go.mod"
	"github.com/sigstore/sigstore/pkg/signature/kms/aws v1.8.3"
	"github.com/sigstore/sigstore/pkg/signature/kms/aws v1.8.3/go.mod"
	"github.com/sigstore/sigstore/pkg/signature/kms/azure v1.8.3"
	"github.com/sigstore/sigstore/pkg/signature/kms/azure v1.8.3/go.mod"
	"github.com/sigstore/sigstore/pkg/signature/kms/gcp v1.8.3"
	"github.com/sigstore/sigstore/pkg/signature/kms/gcp v1.8.3/go.mod"
	"github.com/sigstore/sigstore/pkg/signature/kms/hashivault v1.8.3"
	"github.com/sigstore/sigstore/pkg/signature/kms/hashivault v1.8.3/go.mod"
	"github.com/sigstore/timestamp-authority v1.2.2"
	"github.com/sigstore/timestamp-authority v1.2.2/go.mod"
	"github.com/sirupsen/logrus v1.9.0/go.mod"
	"github.com/sirupsen/logrus v1.9.3"
	"github.com/sirupsen/logrus v1.9.3/go.mod"
	"github.com/sourcegraph/conc v0.3.0"
	"github.com/sourcegraph/conc v0.3.0/go.mod"
	"github.com/spf13/afero v1.11.0"
	"github.com/spf13/afero v1.11.0/go.mod"
	"github.com/spf13/cast v1.6.0"
	"github.com/spf13/cast v1.6.0/go.mod"
	"github.com/spf13/cobra v1.8.1"
	"github.com/spf13/cobra v1.8.1/go.mod"
	"github.com/spf13/pflag v1.0.5"
	"github.com/spf13/pflag v1.0.5/go.mod"
	"github.com/spf13/viper v1.18.2"
	"github.com/spf13/viper v1.18.2/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/objx v0.4.0/go.mod"
	"github.com/stretchr/objx v0.5.0/go.mod"
	"github.com/stretchr/objx v0.5.2"
	"github.com/stretchr/objx v0.5.2/go.mod"
	"github.com/stretchr/testify v1.3.0/go.mod"
	"github.com/stretchr/testify v1.6.1/go.mod"
	"github.com/stretchr/testify v1.7.0/go.mod"
	"github.com/stretchr/testify v1.7.1/go.mod"
	"github.com/stretchr/testify v1.8.0/go.mod"
	"github.com/stretchr/testify v1.8.1/go.mod"
	"github.com/stretchr/testify v1.8.4/go.mod"
	"github.com/stretchr/testify v1.9.0"
	"github.com/stretchr/testify v1.9.0/go.mod"
	"github.com/subosito/gotenv v1.6.0"
	"github.com/subosito/gotenv v1.6.0/go.mod"
	"github.com/theupdateframework/go-tuf v0.7.0"
	"github.com/theupdateframework/go-tuf v0.7.0/go.mod"
	"github.com/theupdateframework/go-tuf/v2 v2.0.0"
	"github.com/theupdateframework/go-tuf/v2 v2.0.0/go.mod"
	"github.com/thlib/go-timezone-local v0.0.0-20210907160436-ef149e42d28e"
	"github.com/thlib/go-timezone-local v0.0.0-20210907160436-ef149e42d28e/go.mod"
	"github.com/titanous/rocacheck v0.0.0-20171023193734-afe73141d399"
	"github.com/titanous/rocacheck v0.0.0-20171023193734-afe73141d399/go.mod"
	"github.com/transparency-dev/merkle v0.0.2"
	"github.com/transparency-dev/merkle v0.0.2/go.mod"
	"github.com/urfave/cli v1.22.12/go.mod"
	"github.com/vbatts/tar-split v0.11.3"
	"github.com/vbatts/tar-split v0.11.3/go.mod"
	"github.com/yuin/goldmark v1.3.7/go.mod"
	"github.com/yuin/goldmark v1.4.13/go.mod"
	"github.com/yuin/goldmark v1.5.4"
	"github.com/yuin/goldmark v1.5.4/go.mod"
	"github.com/yuin/goldmark-emoji v1.0.2"
	"github.com/yuin/goldmark-emoji v1.0.2/go.mod"
	"github.com/zalando/go-keyring v0.2.5"
	"github.com/zalando/go-keyring v0.2.5/go.mod"
	"go.mongodb.org/mongo-driver v1.14.0"
	"go.mongodb.org/mongo-driver v1.14.0/go.mod"
	"go.opencensus.io v0.24.0"
	"go.opencensus.io v0.24.0/go.mod"
	"go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.52.0"
	"go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.52.0/go.mod"
	"go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.52.0"
	"go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.52.0/go.mod"
	"go.opentelemetry.io/otel v1.27.0"
	"go.opentelemetry.io/otel v1.27.0/go.mod"
	"go.opentelemetry.io/otel/metric v1.27.0"
	"go.opentelemetry.io/otel/metric v1.27.0/go.mod"
	"go.opentelemetry.io/otel/sdk v1.27.0"
	"go.opentelemetry.io/otel/sdk v1.27.0/go.mod"
	"go.opentelemetry.io/otel/trace v1.27.0"
	"go.opentelemetry.io/otel/trace v1.27.0/go.mod"
	"go.step.sm/crypto v0.44.2"
	"go.step.sm/crypto v0.44.2/go.mod"
	"go.uber.org/goleak v1.3.0"
	"go.uber.org/goleak v1.3.0/go.mod"
	"go.uber.org/multierr v1.11.0"
	"go.uber.org/multierr v1.11.0/go.mod"
	"go.uber.org/zap v1.27.0"
	"go.uber.org/zap v1.27.0/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20210921155107-089bfa567519/go.mod"
	"golang.org/x/crypto v0.26.0"
	"golang.org/x/crypto v0.26.0/go.mod"
	"golang.org/x/exp v0.0.0-20240112132812-db7319d0e0e3"
	"golang.org/x/exp v0.0.0-20240112132812-db7319d0e0e3/go.mod"
	"golang.org/x/mod v0.6.0-dev.0.20220419223038-86c51ed26bb4/go.mod"
	"golang.org/x/mod v0.20.0"
	"golang.org/x/mod v0.20.0/go.mod"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
	"golang.org/x/net v0.0.0-20210226172049-e18ecbb05110/go.mod"
	"golang.org/x/net v0.0.0-20220722155237-a158d28d115b/go.mod"
	"golang.org/x/net v0.27.0"
	"golang.org/x/net v0.27.0/go.mod"
	"golang.org/x/oauth2 v0.22.0"
	"golang.org/x/oauth2 v0.22.0/go.mod"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
	"golang.org/x/sync v0.0.0-20220722155255-886fb9371eb4/go.mod"
	"golang.org/x/sync v0.8.0"
	"golang.org/x/sync v0.8.0/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190222072716-a9d3bda3a223/go.mod"
	"golang.org/x/sys v0.0.0-20201119102817-f84b799fce68/go.mod"
	"golang.org/x/sys v0.0.0-20210615035016-665e8c7367d1/go.mod"
	"golang.org/x/sys v0.0.0-20210831042530-f4d43177bf5e/go.mod"
	"golang.org/x/sys v0.0.0-20220520151302-bc2c85ada10a/go.mod"
	"golang.org/x/sys v0.0.0-20220715151400-c0bba94af5f8/go.mod"
	"golang.org/x/sys v0.0.0-20220722155257-8c9f86f7a55f/go.mod"
	"golang.org/x/sys v0.0.0-20220811171246-fbc7d0a398ab/go.mod"
	"golang.org/x/sys v0.0.0-20220906165534-d0df966e6959/go.mod"
	"golang.org/x/sys v0.6.0/go.mod"
	"golang.org/x/sys v0.23.0"
	"golang.org/x/sys v0.23.0/go.mod"
	"golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1/go.mod"
	"golang.org/x/term v0.0.0-20210927222741-03fcf44c2211/go.mod"
	"golang.org/x/term v0.23.0"
	"golang.org/x/term v0.23.0/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.3/go.mod"
	"golang.org/x/text v0.3.7/go.mod"
	"golang.org/x/text v0.4.0/go.mod"
	"golang.org/x/text v0.5.0/go.mod"
	"golang.org/x/text v0.17.0"
	"golang.org/x/text v0.17.0/go.mod"
	"golang.org/x/time v0.5.0"
	"golang.org/x/time v0.5.0/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"golang.org/x/tools v0.0.0-20191119224855-298f0cb1881e/go.mod"
	"golang.org/x/tools v0.1.12/go.mod"
	"golang.org/x/tools v0.21.1-0.20240508182429-e35e4ccd0d2d"
	"golang.org/x/tools v0.21.1-0.20240508182429-e35e4ccd0d2d/go.mod"
	"golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod"
	"google.golang.org/api v0.172.0"
	"google.golang.org/api v0.172.0/go.mod"
	"google.golang.org/genproto v0.0.0-20240311173647-c811ad7063a7"
	"google.golang.org/genproto v0.0.0-20240311173647-c811ad7063a7/go.mod"
	"google.golang.org/genproto/googleapis/api v0.0.0-20240520151616-dc85e6b867a5"
	"google.golang.org/genproto/googleapis/api v0.0.0-20240520151616-dc85e6b867a5/go.mod"
	"google.golang.org/genproto/googleapis/rpc v0.0.0-20240520151616-dc85e6b867a5"
	"google.golang.org/genproto/googleapis/rpc v0.0.0-20240520151616-dc85e6b867a5/go.mod"
	"google.golang.org/grpc v1.64.1"
	"google.golang.org/grpc v1.64.1/go.mod"
	"google.golang.org/protobuf v1.34.2"
	"google.golang.org/protobuf v1.34.2/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c"
	"gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c/go.mod"
	"gopkg.in/h2non/gock.v1 v1.1.2"
	"gopkg.in/h2non/gock.v1 v1.1.2/go.mod"
	"gopkg.in/ini.v1 v1.67.0"
	"gopkg.in/ini.v1 v1.67.0/go.mod"
	"gopkg.in/yaml.v2 v2.4.0/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod"
	"gopkg.in/yaml.v3 v3.0.1"
	"gopkg.in/yaml.v3 v3.0.1/go.mod"
	"gotest.tools/v3 v3.0.3"
	"gotest.tools/v3 v3.0.3/go.mod"
	"k8s.io/klog/v2 v2.120.1"
	"k8s.io/klog/v2 v2.120.1/go.mod"
	"sigs.k8s.io/yaml v1.4.0"
	"sigs.k8s.io/yaml v1.4.0/go.mod"
	"software.sslmate.com/src/go-pkcs12 v0.4.0"
	"software.sslmate.com/src/go-pkcs12 v0.4.0/go.mod"
)

go-module_set_globals

DESCRIPTION="GitHub CLI"
HOMEPAGE="https://github.com/cli/cli"
SRC_URI="https://github.com/cli/cli/tarball/a3f9d85fc3d474ee0b62535508a71fc723469481 -> cli-2.56.0-a3f9d85.tar.gz
https://regen.mordor/5e/f7/39/5ef73911990ccf1cfc148863c25a0f9c8540fc8affdab9c43fc070774a88061ca1faf2fdf89d70fac81c47905b13943caeaa73e8a2fd84a41ba55efc459b1794 -> github-cli-2.56.0-funtoo-go-bundle-d24a1be1aa58c7bb91cbbc6cd5d99c223dd02294c0215d0cba0dc5267ea980570f1706e932f9f49f262590cb38921385f06ddbfd7765544da00fa9a5cb77b886.tar.gz"
KEYWORDS="*"
LICENSE="MIT Apache-2.0 BSD BSD-2 MPL-2.0"
SLOT="0"
RDEPEND=">=dev-vcs/git-1.7.3"
RESTRICT+=" test "

post_src_unpack() {
	mv ${WORKDIR}/cli-cli-* ${S} || die
}

src_compile() {
	export GH_VERSION="v2.56.0"
	# Go LDFLAGS are not the same as GCC/Binutils LDFLAGS
	unset LDFLAGS
	# Once we set up cross compiling, this line will need to be adjusted
	# to compile for the target.
	# Everything else in this function happens on the host.
	emake

	einfo "Building man pages"
	emake manpages

	einfo "Building completions"
	go run ./cmd/gh completion -s bash > gh.bash-completion || die
	go run ./cmd/gh completion -s zsh > gh.zsh-completion || die
}

src_install() {
	dobin bin/gh
	dodoc README.md

	doman share/man/man?/gh*.?

	newbashcomp gh.bash-completion gh
	insinto /usr/share/zsh/site-functions
	newins gh.zsh-completion _gh
}
