### Container for steamcmd with additional packages

https://github.com/steamcmd/docker

Creates `steam` user with uid 1000

Tag latest by date

```bash
TAG=v$(date -u +'%Y%m%d').1
git tag -a $TAG
git push origin $TAG
```