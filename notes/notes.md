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
$ git remote add origin git@github.com:hakantokel/sample_website.git
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

============================================
> ### Promt ta git gosterimi

n this section, we’ll add two final advanced customizations. First, we’ll arrange for the command-line prompt to include the name of the current branch. Second, we’ll add the ability to fill in Git branch names using tab completion, which is especially convenient when dealing with longer branch names. Both of these features come as shell scripts with the Git source code distribution, which can be downloaded as shown in Listing 31.
Listing 31: Downloading scripts for branch display and tab completion.
```console
$ curl -o ~/.git-prompt.sh       -OL cdn.learnenough.com/git-prompt.sh
$ curl -o ~/.git-completion.bash -OL cdn.learnenough.com/git-completion.bash
```

Here the -o flag arranges to save the files locally under slightly different names from the ones on the server, prepending a dot . so that the files are hidden and saving them in the home directory ~.
After downloading the scripts as in Listing 31, on some systems we need to make them executable, which we can do with the chmod command (mentioned before in Learn Enough Text Editor to Be Dangerous):
```console
$ chmod +x ~/.git-prompt.sh
$ chmod +x ~/.git-completion.bash
```

Next, we need to tell the shell about the new commands, so open up the Bash profile file in your favorite editor (which for simplicity I’ll assume is Atom):
```console
$ vim ~/.bashrc
```

Then add the configuration shown in Listing 32 to the bottom of the file. Also, make sure to delete any other lines starting with PS1 (which you’ll have to do if you modified .bash_profile as shown in Learn Enough Text Editor to Be Dangerous).
Listing 32: Git configuration in the .bash_profile file. ~/.bash_profile
.
.
.

```bash
# Git configuration
# Branch name in prompt
source ~/.git-prompt.sh
PS1='[\[\e[0;36m\]\W\[\e[m\]$(__git_ps1 " (\[\e[0;34m\]%s\[\e[m\])")]\[\e[1;36m\]\$\[\e[m\] '
#PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
# Tab completion for branch names
source ~/.git-completion.bash
```

============================================


# Git

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

# Heroku

============================================
> ### Bazi Heroku komutlari ve yardim

Heroku Yardim sitesi

https://devcenter.heroku.com/articles/getting-started-with-ruby#introduction


```console
$ heroku create #bulunulan dizinde herokuya uygulama acar 

$ heroku open  #bulunulan dizindeki uygulamanin web sayfasini acar

$ heroku ps   #bulunulan dizindeki herokunun ne kadar suredir calistigi gibi bilgiler tutar. yni zamanda kac dynonun valistigi bilgisinide tutar

$ heroku ps:scale web=0 # calisan  dyno sayisini sifir yapar, acmak icin 1 yap


$ heroku run bash #dyno icindeki bash i calistirir.
```




============================================

# Heroku

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

# Linux
============================================
> ### Acilista root haklari ile komut calistirma 

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
> ###  install_monaco_font

```console
cd /usr/share/fonts/truetype/

#TODO: put validation if folder already exists
sudo mkdir ttf-monaco

cd ttf-monaco/

sudo wget http://www.gringod.com/wp-upload/software/Fonts/Monaco_Linux.ttf

#then update your font cache.

sudo fc-cache -fv

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
