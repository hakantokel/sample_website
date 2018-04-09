#Bazi Semboller
:a
:defter
:"Bu bir sembol olacak sanirim"

#Donusturelim
"a".to_sym
#"a".intern
#=> :a
"Bu bir sembol olacak sanirim".to_sym
#=> :"Bu bir sembol olacak sanirim"

#to_s 
:a.to_s
#=> "a"
:"Bu bir sembol olacak sanirim".to_s
#=> "Bu bir sembol olacak sanirim"

#semboller integer e cok benzerler 
#bir sembole karakter eklenemez -orn- :a << :b 


#object_id
"abc".object_id #=> 25475000
"abc".object_id #=> 25501980 

2345.object_id #=> 2491 
2345.object_id #=> 2491
6.3.object_id  #=> 56745355304868250
6.3.object_id  #=> 56745355304868250

:a.object_id #=> 728348
:a.object_id #=> 728348
:"Bu bir sembol olacak sanirim".object_id #=> 2039028
:"Bu bir sembol olacak sanirim".object_id #=> 2039028
#...

#hatta oyleki
a = :"Bu bir sembol olacak sanirim".to_s
a = a.to_sym
a.object_id #=> 2039028


#Hashlerde kullanimi 
sozluk = { 'array' => 'dizi', 'string' => 'dizgi' }
#=> {"array"=>"dizi", "string"=>"dizgi"}

sozluk2 = { :array => 'dizi', :string => 'dizgi' }
#=> => {:array=>"dizi", :string=>"dizgi"}

sozluk2 = { array: 'dizi', string: 'dizgi' }
#=> {:array=>"dizi", :string=>"dizgi"}
#dikkat >> sozluk == sozluk2 #=> false

#Ruby sembollerle daha hizli calisir.
#Sembol hafizada az yer kaplar
#ogrenci kayit orneginde :k yerine "kız", :e yerine "erkek" yazarsak?
#Sembol.new diyerek sembol uretemezsiniz

#Bazi yonleriyle stringlere benzerler
:a.object_id #=> 728348
:a.upcase #=> :A
:a.upcase.object_id #=> 24924860

#fakat 
:a.upcase! #=> NoMethodError: undefined method `upcase!' for :a:Symbol


#ornegin 
"bir kalem bir defter var"
"iki kalem uc defter var"
"bir defter bes kalem var"
#ve yuzlerce bune benzer cumle
#"kalem", "defter", "var", "bir" gibi kelimeler yuzlerce kez tekrar edecek

[:bir, :kalem, :bir, :defter, :var]
[:iki, :kalem, :uc, :defter, :var]
[:bir, :defter, :bes, :kalem, :var]
#seklinde yazilabilse idik. ne kazancimiz olurdu?

#############################

#1..100 arasi sayilarin 3, 5 ve 15'e bolunmeleri
def bolunme(n)
  if (n % 3 == 0) && (n % 5 != 0)
    :"3'e bolunur"
  elsif (n % 3 != 0) && (n % 5 == 0)
    :"5'e bolunur"
  elsif (n % 3 == 0) && (n % 5 == 0)
    :"15'e bolunur"
  else n
  end
end

(1..100).each {|n| puts bolunme(n)}

#hash kullanarak yapabilir miyiz?
def bolunme(n)
  h = {
    :"3'e bolunur" => (n % 3 == 0) && (n % 5 != 0),
    :"5'e bolunur" => (n % 3 != 0) && (n % 5 == 0),
    :"15'e bolunur" => (n % 3 == 0) && (n % 5 == 0),
    n => (n % 3 != 0) && (n % 5 != 0)
  }
  h.key(true)
end

(1..100).each {|n| puts bolunme(n)}

#############################