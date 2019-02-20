
#names bir dizidir. evet
names = ['yusuf','kemal', 'bekir','ayşe']
#'kemal'i degistirelim.
names['kemal'] = 'mehmet'


# Hata var midir? Var ise Dogrusu?

#Cozum 
names[1] = 'mehmet'

#Cozum 
names[names.index('kemal')] = 'mehmet'

##################################

sozluk = { 'array' => 'dizi', 'string' => 'dizgi' }

puts sozluk.size  
#=> 2
#size, Array'den hatirliyorum. length calisir mi?


puts dictionary['array']
#=> dizi

sozluk['string'] = 'katar'
#sozluk = { 'array' => 'dizi', 'string' => 'katar' }

########################################







########################################

#kullanisli gelmedi mi?  

ogrenciler = {
  'aekinci' => {
    'isim' => 'Ahmet Ekinci',
    'yas' => 23,
    'cinsiyet' => 'erkek',
    'aldigi dersler' => ['Matematik','Tarih','Fizik']
  },
  'yhas' => {
    'isim' => 'Yusuf Has',
    'yas' => 26,
    'cinsiyet' => 'erkek',
    'aldigi dersler' => ['Coğrafya','Türkçe','Matematik']
  }

}

#aekinci'nin yasina ulasmak istersem

puts ogrenciler['aekinci']['yas']
#=> 23

p ogrenciler['aekinci']
#{"isim"=>"Ahmet Ekinci", "yas"=>23, "cinsiyet"=>"erkek",
# "aldigi dersler"=>["Matematik", "Tarih", "Fizik"]}

puts ogrenciler['yhas']['aldigi dersler'].length
#=> 3
puts ogrenciler['yhas']['aldigi dersler'].join(', ')
#=> Coğrafya, Türkçe, Matematik


########################################










sozluk = { 'array' => 'dizi', 'string' => 'dizgi' }

sozluk['def'] = 'metot'
#{"array"=>"dizi", "string"=>"dizgi", "def"=>"metot"}

sozluk[0] = 'saymaya 0\'dan basliyoruz'
#{"array"=>"dizi", "string"=>"dizgi", "def"=>"metot", 
# 0=>""saymaya 0'dan basliyoruz""}


sozluk.delete('array') #<--Parantez'e dikkat
#{"string"=>"dizgi", "def"=>"metot", 0=>"ilk dizi elemani"}

sozluk.each {|key,value| puts "#{key}-#{value}"}
#string-dizgi
#def-metot
#0-saymaya 0'dan basliyoruz

sozluk.each_key {|key| print key.to_s + ", "}

#each_value ?



########################################

#Bir dizide verilen kelimelerin frekansı

dizi = ['kedi','Matematik','masa','elma',
  'bahce','kedi','bahce','kedi', 'masa'
]

# say = {}

dizi.each do |kelime|
  if say.has_key?(kelime)
    say[kelime] += 1
  else
    say[kelime] = 1
  end
end

p say
#{"kedi"=>3, "Matematik"=>1, "masa"=>2, "elma"=>1, "bahce"=>2}

#Alistirma: Siralayabilir misiniz?


siralanmis = say.sort_by {|kelime , adet| adet}.reverse 
p siralanmis
#[["kedi", 3], ["bahce", 2], ["masa", 2], ["elma", 1], ["Matematik", 1]]
  
#ekrana yazalim
siralanmis.each do |dizi, deger| 
  puts "#{dizi}:  #{deger}"
end


#Alistirma: kelime frekansi bir metot ile 

def frekans(arr)
  say = {}
  arr.each {|kel| say.has_key?(kel)? say[kel] +=1 : say[kel] = 1 }
  say #olmasaydi? puts ne doner?
end

puts frekans dizi
#=> {"kedi"=>3, "Matematik"=>1, "masa"=>2, "elma"=>1, "bahce"=>2}

#Alistirma: dizi yerine bir string olsaydi? 

str = dizi.join(" ")
# "kedi Matematik masa elma bahce kedi bahce kedi masa"

dizi2 = str.downcase.scan(/[\w']+/)
#["kedi", "matematik", "masa", "elma", "bahce",
# "kedi", "bahce", "kedi", "masa"]

puts frekans dizi2
#{"kedi"=>3, "matematik"=>1, "masa"=>2, "elma"=>1, "bahce"=>2}

########################################




#bazi hashler

# {"yukseklik" => "6 metre"}         # string as key

# {["yukseklik"] => "6 metre"}       # array as key

# {1 => "one"}                       # integer as key

# {45.324 => "kırkbeş...."}          # float as key

# {{key: "key"} => "hash as a key"}  # hash as key


########################################

#eskiden yeniye
sozluk = { 'array' => 'dizi', 'string' => 'dizgi' }
sozluk = { :array => 'dizi', :string => 'dizgi' }
sozluk = { array: 'dizi', string: 'dizgi' }


########################################

#bazı metodlar
keys
values
each
each_key
each_value
has_key?
select
reject
fetch
to_a
all?
any?
count
map



#Sonuclari tahmin ediniz
#burada bir hash verilecek
#burada hashte olmayan bir key sorgulanacak


#metot a parametre olarak eklenmis hash olmali mi






########################################


#Anagram kelimeler
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']


result = {}

words.each do |word|
  key = word.split('').sort.join 
  if result.has_key?(key)
    result[key].push(word) #?
  else
    result[key] = [word] # key => [word1,word2]
  end
end

result.each do |k, v|
  # puts "------"
  p v
end
#=> ["demo", "dome", "mode"]
#=> ["none", "neon"]
#=> ["tied", "diet", "edit", "tide"]
#=> ["evil", "live", "veil", "vile"]
#=> ["fowl", "wolf", "flow"]



########################################























#hashlerin farki nedir


x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}


#=> NoMethodError: undefined method `keys' for Array
#bu hata ne anlama gelmektedir?
