Mirroring gnu-efi from sourceforge to github.

Follow these instructions (https://help.github.com/articles/duplicating-a-repository/)
for duplicating a repository. Here are commands that worked for me:
```
$ mkdir /home/middleman/foss
$ cd /home/middleman/foss
$ git clone --mirror git://git.code.sf.net/p/gnu-efi/code gnu-efi.git
```
Copy config and copy-to-github.sh to the local mirror.
```
$ cp config copy-to-github.sh /home/middleman/foss/gnu-efi.git/
```
The mirror-gnu-efi.git.timer & .service will hourly execute
copy-to-github.sh to keep the mirror-gnu-efi upto date.
So copy them to /etc/systemd/system/ and enable and start:
```
$ sudo cp mirror-gnu-efi.git.* /etc/systemd/system/
$ sudo systemctl enable mirror-gnu-efi-git.timer
$ sudo systemctl enable mirror-gnu-efi-git.service
$ sudo systemctl start mirror-gnu-efi-git.timer
```
You can use "journalctl -xe" or other journalctl command to check that
logs for copy-to-github and mirror-gnu-efi-git.

