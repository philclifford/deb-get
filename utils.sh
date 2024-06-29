
function ppa_packages() { echo PPA packages;for repo in 0*-main; do echo $repo; grep -l PPA ${repo}/packages/* |wc -l; echo "-----------"; done; }
function github_packages() { echo Github packages;for repo in 0*-main; do echo $repo; grep -l get_github_rel ${repo}/packages/* |wc -l; echo "-----------"; done; }
function non_github_packages() { echo "non-Github packages"; for repo in 0*-main; do echo $repo; grep -L get_github_rel ${repo}/packages/* |wc -l; echo "-----------"; done; }

