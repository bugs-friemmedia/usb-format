# usb-format
A simple Bash Script to format an USB-Stick in FAT Fileformat on FreeBSD in da Shell Terminal

On the Shell you can run this Script as normal User but before the formatting of havve to enter the root-Password.

Here a successful Format of a 2GB USB-Stick.

$ bash ./workspace/shell/tools/usb-format_en.sh 
<General UDisk 5.00>               at scbus7 target 0 lun 0 (da0,pass6)
Which Device should be formatted?
da0
Which Filesystemshould be used (fat16 or fat32)?
Use fat16 for USB-Devices under 8GB of Size.
fat16
Give it a Name...
teststick
Password:
kern.geom.debugflags: 0 -> 16
da0 destroyed
1+0 records in
1+0 records out
8388608 bytes transferred in 1.768739 secs (4742704 bytes/sec)
Neuer Masterboot Record wird erstellt
da0 created
Eine neue Partition wird erstellt.
da0s1 added
Das neue Dateisystem wird formatiert.
/dev/da0s1: 3890624 sectors in 60791 FAT16 clusters (32768 bytes/cluster)
BytesPerSec=512 SecPerClust=64 ResSectors=1 FATs=2 RootDirEnts=512 Media=0xf0 FATsecs=238 SecPerTrack=63 Heads=255 HiddenSecs=0 HugeSectors=3891137
=>     63  3891137  da0  MBR  (1.9G)
       63  3891137    1  fat16  (1.9G)

kern.geom.debugflags: 16 -> 0
Finished!
$ 


