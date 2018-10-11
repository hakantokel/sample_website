&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
# Atom
============================================
> ### Ruby eklentisi seeing_is_believing

> Displays the results of every line of code in your file

https://github.com/JoshCheek/atom-seeing-is-believing

> not: Gem file vs kurulacak ancak ayni bashte olmali, biri zsh digeri baska bash olamaz.

 > ###### keybindings --- Command+Option+B === (alt + window + B)


============================================

# Atom
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
$ git remote add origin git@github.com:hakantokel/sample_website.git  #Bitbucket ta github.com yerine bitbucket.org
```

> seklinde olmali.

============================================
> ### Configrasyon icerigini gormek

```console
$ git config --list
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

> Hartl Konfigrasyon
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
>Benim Konfigrasyon

```bash
# Git configuration
# Branch name in prompt
source ~/.git-prompt.sh
#PS1='[\W$(__git_ps1 " (%s)")]\$ '
PS1='[\[\e[1;32m\]\W\[\e[0m\]$(__git_ps1 " (\[\e[0;36m\]%s\[\e[0m\])")]\[\e[1;36m\]\$\[\e[0m\] '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
# Tab completion for branch names
source ~/.git-completion.bash
```
============================================
> ### Deleting untracked files
ornegin
```console
$ git status
On branch master
Untracked files:
  (use "git add <file>..." to include in what will be committed)

  bunusil.txt

nothing added to commit but untracked files present (use "git add" to track)
```
ise (burada yuzlerce doysa olabilir) - Remove untracked files from the working tree

```console
$ git clean -n  #hangi dosyalarin silinecegini gosterir
$ git clean -f  #gosterilen bu dosyalari siler
```

ek olarak

    To remove directories, run ```git clean -f -d or git clean -fd```
    To remove ignored files, run ```git clean -f -X or git clean -fX```
    To remove ignored and non-ignored files, run ```git clean -f -x or git clean -fx```

============================================
> ### Git icin uygun bir anlatim videosu
[Tom Preston-Werner - Mastering Git Basics](https://vimeo.com/17118008)
burada bahsedilen en iyi konu, degisikliklerin once stage e sonra commite gittigi.
stage ile calisan dizin arasindaki fark ``git diff`` ile , commit ile stage arasindaki fark
``git diff --staged`` ile gorulebilir.
``git add -p`` ile degisiklikleri gorup onaylayarak stage e ekleyebilirsiniz.


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

$ heroku ps   #bulunulan dizindeki herokunun ne kadar suredir calistigi gibi bilgiler tutar. yani zamanda kac dynonun calistigi bilgisinide tutar

$ heroku ps:scale web=0 # calisan  dyno sayisini sifir yapar, acmak icin 1 yap


$ heroku run bash #dyno icindeki bash i calistirir.


$ heroku run rails db:migrate #database migrate i server da calistirmak icin

$ heroku pg:reset DATABASE #database i siler yeniden olusturur
```

============================================

> ### Remote Heroku Adding - ~/.git/config dosyasina projeyi ekliyor

Bir proje bitbucketten clonelanmis ancak heroku eklenmemisse..

Bunu heroku sitesinde bulamadim ancak SSH ile calisiyor.
https://stackoverflow.com/questions/5129598/how-to-link-a-folder-with-an-existing-heroku-app

```console
$ git remote add heroku git@heroku.com:young-mountain-84570.git
```

> Heroku kendi sitesinde bu tip bir ekleme ile dosyalari direkt alabileceginden bahsetmis ancak, bitbucket ya da github remote olarak eklenmiyor daha sonra eklenecek

If you haven't already, log in to your Heroku account and follow the prompts to create a new SSH public key.
```console

$ heroku login
```
Clone the repository

Use Git to clone young-mountain-84570's source code to your local machine.
```console
$ heroku git:clone -a young-mountain-84570
$ cd young-mountain-84570
```
Deploy your changes

Make some changes to the code you just cloned and deploy them to Heroku using Git.
```console
$ git add .
$ git commit -am "make it better"
$ git push heroku master

```
> Eger istersen bitbucket i da origin olarak eklemek icin

```console
$ git remote add origin git@bitbucket.org:hakantokel/hello_app.git
```
>diyerek gitbucket taki proje .git/config icine eklenmis oluyor ve push etmek istenildiginde

```console
$ git push origin master
```
> denilebilir. ancak bunun sonunda klasor ismi young-mountain-84570 oluyor. en guzeli bitbucket tan clone layip herokuyu remote olarak eklemek.

============================================
> ### Heroku Config (.git/config)(home machine)

```Bash
[core]
  repositoryformatversion = 0
  filemode = true
  bare = false
  logallrefupdates = true
[remote "origin"]
  url = git@bitbucket.org:hakantokel/sample_app.git
  fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
  remote = origin
  merge = refs/heads/master
[remote "heroku"]
  url = https://git.heroku.com/agile-lowlands-35214.git
  fetch = +refs/heads/*:refs/remotes/heroku/*
[branch "static-pages"]
  remote = origin
  merge = refs/heads/static-pages
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

> pdftk kurulacak

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
$ cd /usr/share/fonts/truetype/

#TODO: put validation if folder already exists
sudo mkdir ttf-monaco

$ cd ttf-monaco/

$ sudo wget http://www.gringod.com/wp-upload/software/Fonts/Monaco_Linux.ttf

#then update your font cache.

$ sudo fc-cache -fv

```

============================================

# Linux

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

# Rails
============================================
### database islamleri

```
$ rails db:migrate #use when migrations changed

$ rails db:rollback #undo a single migration step

$ rails db:reset db:migrate #database i siler yeniden olusturur

$ rails db:migrate VERSION=0  #to go all the way back to the beginning

```




============================================
### Rails server degisikligi hemen fark etmiyorsa (vagrant)
[stackoverflow](https://stackoverflow.com/questions/41067064/rails-5-restart-server-every-time-controller-or-model-changes)

>Basicallly besides having:

```
config.cache_classes = false
```

>in the development.rb file it is also necessary to have:

```
config.reload_classes_only_on_change = false
```

============================================
# Rails

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
$ rvm install 2.3.1

$ rvm list

$ rvm use 2.4.1
```

================================================


# RVM

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

# SUBLIME

================================================
### Markdown dosyasinin renk ayari (sublime3)
> herhangi bir md dosyasi sublime da acik iken

Colorsublime adli eklenyiti kurulumali oncelikle. Sonro color sublime install den Wildlife-Night.tmTheme eklenmeli.

`Preferences > Settings-syntax spesific`

```JSON
// These settings override both User and Default settings for the Markdown syntax
{
  "color_scheme": "Packages/Colorsublime - Themes/Wildlife-Night.tmTheme"
}
```
> seklinde eklersen her md dosyasi acildiginda bu tema ile acilacaktir.

================================================
### Html in renk ayari
```JSON
// These settings override both User and Default settings for the HTML syntax
{
  "color_scheme": "Packages/Colorsublime - Themes/Darkside_light_selection.tmTheme",
}
```

================================================
### ``<% %>, <%= %>`` otomatik olarak erb dosayasina ekleme

https://github.com/eddorre/SublimeERB

`CTRL + SHIFT + .` <!-- erb dosyasinda calisirken yap -->

================================================

# SUBLIME

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
