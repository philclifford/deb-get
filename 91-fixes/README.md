## Supported Software

The software below can be installed, updated and removed using  the 91-fixes repository on philclifford's extras branch of `deb-get`:

<!-- [[[cog
import subprocess
import cog

pretty_list = subprocess.check_output(["../deb-get", "prettylist", "91-fixes", "--include-unsupported" ], encoding="utf-8")
cog.out(pretty_list)
]]] -->
| Source   | Package Name   | Description   |
| :------: | :------------- | :------------ |
| [<img src="../.github/direct.png" align="top" width="20" />](https://www.veracrypt.fr/en/Downloads.html) | `veracrypt` | <i>VeraCrypt is a free and open-source utility for on-the-fly encryption (OTFE).</i> |
<!-- [[[end]]] -->


**Legend**

The icons above denote how `deb-get` installs/updates the packages.

- <img src="../.github/debian.png" align="top" width="20" /> apt repository
- <img src="../.github/github.png" align="top" width="20" /> GitHub releases
- <img src="../.github/launchpad.png" align="top" width="20" /> Launchpad PPA
- <img src="../.github/direct.png" align="top" width="20" /> Website/Direct
