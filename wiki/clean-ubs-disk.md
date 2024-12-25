Clean USB Disk
==============

## Run cmd on win7 run dialog

```
> cmd
> diskpart
> list disk
> select disk 1  => for usb disk
> detail disk
> clean

> create partition primary size=30720   => 30G
> active
> format quick

> create paritition extended
> list parition
> create paritition logical size=20480  => 20G
> delete parition                       => for current select paritio
```

## Caution point

```
1) notice current * position
2) primary must be actived
3) logical must be create in extend partition
4) use ? for help any time
5) be care when operation
```
