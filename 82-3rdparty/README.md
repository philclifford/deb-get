## Supported Software

The software below can be installed, updated and removed using  the 82-3rdparty repository on philclifford's extras branch of `deb-get`:

<!-- [[[cog
import subprocess
import cog

pretty_list = subprocess.check_output(["../deb-get", "prettylist", "82-3rdparty", "--include-unsupported" ], encoding="utf-8")
cog.out(pretty_list)
]]] -->
| Source   | Package Name   | Description   |
| :------: | :------------- | :------------ |
| [<img src="../.github/debian.png" align="top" width="20" />](https://dystroy.org/broot/) | `broot` | <i>A better way to navigate directories</i> |
| [<img src="../.github/debian.png" align="top" width="20" />](https://github.com/aristocratos/btop) | `btop` | <i>Resource monitor that shows usage and stats for processor, memory, disks, network and processes.</i> |
| [<img src="../.github/direct.png" align="top" width="20" />](https://sfz.tools/sfizz/) | `sfizz` | <i>a sample-based musical synthesizer.</i> |
<!-- [[[end]]] -->


**Legend**

The icons above denote how `deb-get` installs/updates the packages.

- <img src="../.github/debian.png" align="top" width="20" /> apt repository
- <img src="../.github/github.png" align="top" width="20" /> GitHub releases
- <img src="../.github/launchpad.png" align="top" width="20" /> Launchpad PPA
- <img src="../.github/direct.png" align="top" width="20" /> Website/Direct
