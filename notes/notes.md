&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

# Git
============================================
> ### SHH i kullanmak

```console
$ ssh-keygen 
```
> ile .ssh klasoru altina id_rsa ve id_rsa.pub dosyalari olusturacak. id_rsa.pub in icerigi git e yuklenecek
> Git klasorunun icerisindeki .git klasorunun icerisinde url= ile baslayan kisim ssh icin ayarlanacak (git ssh adresi buraya eklenecek, eklenmezse http ile baslayan adres zaten ssh e hic ihtiyac duymuyor)

```console
$ git remote -v 
```

> o klasorun icerisinde ki url ile veya http ile baslayan (fetch pull) adreslerini gosterecek. ciktisi.

```console
origin  git@github.com:hakantokel/sample_website.git (fetch)
origin  git@github.com:hakantokel/sample_website.git (push)
```

> gibi. Gerci bu ssh icin ayarli olan url adresi. ``.git/config`` icerisinde bunu gorebilirsin. 

> Bunu console dan eklemek istersen

```console
git remote add origin git@github.com:hakantokel/sample_website.git
```

> seklinde olmali.

============================================
> ### Configrasyon icerigini gormek

```console
$ got config --list
```
bu soyle bir cikti verir. (Tabi komut proje icerisinde yazilmali)

```console
user.name=htokel
user.email=hakantokel@gmail.com
core.repositoryformatversion=0
core.filemode=true
core.bare=false
core.logallrefupdates=true
remote.origin.url=git@github.com:hakantokel/sample_website.git
remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
branch.master.remote=origin
branch.master.merge=refs/heads/master
branch.gh-pages.remote=origin
branch.gh-pages.merge=refs/heads/gh-pages
```

# Git

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

# Linux
============================================
> ### Acilista root haklari ile komut satiri 

Normalde Ubuntu’da ``Startup Applications`` uygulaması ile ekleyerek veya ``.bashrc`` betiğine ekleyerek bir komutun başlangıçta çalışmasını sağlamak mümkün. Ancak çalışmasını istediğimiz komut sudo yetkisi istiyorsa iş değişik.

`` /etc/rc.local``

> icinde yapilan degisiklikler baslangicta calisir. Basina sudo yazma. Ornegin hdd nin baslangicta mount edilmesi icin

```console
ntfsfix /dev/sdXY
```

> eklemistim baslangicta calisti ve hhd yi mount etti

============================================

> ### Bazi pdf dosyalarini parcalamak icin

https://linuxcommando.blogspot.com.tr/2013/02/splitting-up-is-easy-for-pdf-file.html

> pdfk kurulacak

```console
$ sudo apt-get update
$ sudo apt-get install pdftk
```

> ornegin bir pdf dosyasini tek tek sayfalara ayirmak icin

```console
$ pdftk myoldfile.pdf burst
```

> Ayrilmis sayfalari birlestirmek icin

https://www.maketecheasier.com/combine-multiple-pdf-files-with-pdftk/

```console
$ pdftk file1.pdf file2.pdf file3.pdf cat output newfile.pdf
```

> ya da

```console
$ pdftk *.pdf cat output newfile.pdf
```

============================================

# Linux

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

# RVM 

============================================
> ### Bu sayfa RVM in nasil kurulacagini anlatiyor
https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-on-ubuntu-14-04-using-rvm


> **_rvm yuklendikten sonra_** 

> `` /etc/groups `` 

>_icinde rvm in yanina kullanici adi yazilmasi gerekiyor_

`` rvm:x:1003:vagrant:hakan ``
>_gibi._

============================================

> ### Bazi RVM komutlari


```console
#rvm install 2.3.1 

$rvm list

$rvm use 2.4.1
```

================================================


# RVM

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
