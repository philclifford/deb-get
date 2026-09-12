## Supported Software

The software below can be installed, updated and removed using  the 83-ppas repository on philclifford's extras branch of `deb-get`:

<!-- [[[cog
import subprocess
import cog

pretty_list = subprocess.check_output(["../deb-get", "prettylist", "83-ppas", "--include-unsupported" ], encoding="utf-8")
cog.out(pretty_list)
]]] -->
| Source   | Package Name   | Description   |
| :------: | :------------- | :------------ |
<!-- [[[end]]] -->


**Legend**

The icons above denote how `deb-get` installs/updates the packages.

- <img src="../.github/debian.png" align="top" width="20" /> apt repository
- <img src="../.github/github.png" align="top" width="20" /> GitHub releases
- <img src="../.github/launchpad.png" align="top" width="20" /> Launchpad PPA
- <img src="../.github/direct.png" align="top" width="20" /> Website/Direct
