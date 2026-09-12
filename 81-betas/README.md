## Supported Software

The software below can be installed, updated and removed using  the 81-betas repository on philclifford's extras branch of `deb-get`:

<!-- [[[cog
import subprocess
import cog

pretty_list = subprocess.check_output(["../deb-get", "prettylist", "81-betas", "--include-unsupported" ], encoding="utf-8")
cog.out(pretty_list)
]]] -->
| Source   | Package Name   | Description   |
| :------: | :------------- | :------------ |
| [<img src="../.github/github.png" align="top" width="20" />](https://github.com/TheAssassin/AppImageLauncher) | `appimagelauncher` | <i>A free and open source MIT licensed app that makes your Linux desktop AppImage ready. Integrate AppImages to your application launcher with one click, and manage, update and remove them from there.</i> |
| [<img src="../.github/debian.png" align="top" width="20" />](https://code.visualstudio.com/) | `code-insiders` | <i>Code editing. Redefined. Insiders Edition</i> |
| [<img src="../.github/direct.png" align="top" width="20" />](https://i3wm.org/) | `i3` | <i>i3 window manager - Development release (automatically built a few minutes after every commit)</i> |
| [<img src="../.github/direct.png" align="top" width="20" />](https://openscad.org/) | `openscad-nightly` | <i>Development snapshot builds of the OpenSCAD 3D CAD modeler.</i> |
<!-- [[[end]]] -->


**Legend**

The icons above denote how `deb-get` installs/updates the packages.

- <img src="../.github/debian.png" align="top" width="20" /> apt repository
- <img src="../.github/github.png" align="top" width="20" /> GitHub releases
- <img src="../.github/launchpad.png" align="top" width="20" /> Launchpad PPA
- <img src="../.github/direct.png" align="top" width="20" /> Website/Direct
