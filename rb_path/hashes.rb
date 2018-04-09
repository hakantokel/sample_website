# #names bir dizidir.
# names = ['yusuf','kemal', 'bekir','ahmet']
# #'kemal'i degistirelim.
# names['kemal'] = 'mehmet'

# #Hata?

# #Cozum 
# names[1] = 'mehmet'

# #Cozum 
# names[names.index('kemal')] = 'mehmet'

# ########################################

# sozluk_dizi = []
# sozluk_hash = {}
# sozluk_dizi[0] = 'dizi'
# sozluk_dizi[1] = 'dizgi'
# sozluk_dizi[2] = 'metot'
# sozluk_dizi[3] = 'nesne'
# sozluk_hash['array'] = 'dizi'
# sozluk_hash['string' ] = 'dizgi'
# sozluk_hash['def'] = 'metot'
# sozluk_hash['object'] = 'nesne'

# sozluk_dizi.each do |kelime|
#   puts kelime
# end

# sozluk_hash.each do |anahtar, deger|
#   puts "#{anahtar}: #{deger}"
# end




# sozluk = { 'array' => 'dizi', 'string' => 'dizgi' }

# puts sozluk.size  
# #=> 2
# #length?

# puts sozluk['array']
# #=> dizi

# sozluk['string'] = 'katar'
# #sozluk = { 'array' => 'dizi', 'string' => 'katar' }

# sozluk['def'] = 'metot'
# #{"array"=>"dizi", "string"=>"katar", "def"=>"metot"}

# sozluk[0] = 'saymaya 0\'dan basliyoruz'
# #{"array"=>"dizi", "string"=>"katar", "def"=>"metot", 
# #	0=>"saymaya 0'dan basliyoruz"}

# sozluk.delete('array') #<--Parantez'e dikkat
# #{"string"=>"katar", "def"=>"metot", 0=>"saymaya 0'dan basliyoruz"}

# sozluk.each {|key,value| puts "#{key}-#{value}"}
# #string-dizgi
# #def-metot
# #0-saymaya 0'dan basliyoruz

# sozluk.each_key {|key| print key.to_s + ", "} #key, ", "

# #each_value deneyin

# p sozluk.has_key?('string')
# #=> true

# #{'string' => nil} olsaydi? has_key?

# #default value 
# dersnot = {}
# dersnot.default = 0
# #dersnot = Hash.new(0)

# dersnot['Matematik'] = 50
# dersnot['Tarih'] = 70
# dersnot['Fizik'] = 75
# print "Lutfen Ders seciniz:"
# ders = gets.chomp
# puts " #{ders} notu: #{dersnot[ders]}"


# ########################################

# ogrenciler = {
#   'aekinci' => {
#     'isim' => 'Ahmet Ekinci',
#     'yas' => 23,
#     'cinsiyet' => 'erkek',
#     'aldigi dersler' => ['Matematik','Tarih','Fizik']
#   },
#   'yhas' => {
#     'isim' => 'Yusuf Has',
#     'yas' => 26,
#     'cinsiyet' => 'erkek',
#     'aldigi dersler' => ['Coğrafya','Türkçe','Matematik']
#   }

# }

# #aekinci'nin yasina ulasmak istersem
# puts ogrenciler['aekinci']['yas']
# #=> 23

# p ogrenciler['aekinci']
# #{"isim"=>"Ahmet Ekinci", "yas"=>23, "cinsiyet"=>"erkek",
# # "aldigi dersler"=>["Matematik", "Tarih", "Fizik"]}

# puts ogrenciler['yhas']['aldigi dersler'].length
# #=> 3
# puts ogrenciler['yhas']['aldigi dersler'].join(', ')
# #=> Coğrafya, Türkçe, Matematik

# ########################################

# hash = {"kalem" => 4, "silgi" => 1 , "defter" => 3}
# p hash.sort
# # =>[["defter", 3], ["kalem", 4], ["silgi", 1]]
# p hash.sort.to_h
# # Hash[hash.sort]
# # =>{"defter"=>3, "kalem"=>4, "silgi"=>1}

# p hash.sort_by{|k,v| k}.to_h
# # =>{"defter"=>3, "kalem"=>4, "silgi"=>1}

# p hash.sort_by{|k,v| v}.to_h
# # =>{"kalem"=>4, "defter"=>3, "silgi"=>1}

# #reverse?

# ##########################################

# #Bir dizide verilen kelimelerin frekansı

# dizi = ['kedi','Matematik','masa','elma.',
#   'bahce','kedi','bahce','kedi', 'masa,'
# ]

# say = {}

# dizi.each do |kelime|
#   if say.has_key?(kelime) 
#     say[kelime] += 1
#   else
#     say[kelime] = 1
#   end
  
#   #say[kelime] = 0 unless say[kelime] 
#   #say[kelime] += 1

#   #say[kelime] ||= 0
#   #say[kelime] += 1
# end

# p say
# #{"kedi"=>3, "Matematik"=>1, "masa"=>2, "elma"=>1, "bahce"=>2}

# siralanmis = say.sort_by {|kelime , adet| adet}.reverse 
# p siralanmis
# #[["kedi", 3], ["bahce", 2], ["masa", 2], ["elma", 1], ["Matematik", 1]]
  
# siralanmis.each do |ilk, son| 
#   puts "#{ilk}:  #{son}"
# end


# #Frekans bir metot ile 

# def frekans(arr)
#   say = {}
#   arr.each {|kel| say.has_key?(kel)? say[kel] += 1 : say[kel] = 1 }
#   say #olmasaydi? 
# end

# puts frekans dizi
# #=> {"kedi"=>3, "Matematik"=>1, "masa"=>2, "elma"=>1, "bahce"=>2}

# #dizi yerine bir string olsaydi? 

# str = dizi.join(" ")
# # "kedi Matematik masa elma bahce kedi bahce kedi masa"

# dizi2 = str.split.each{|kelime| kelime.delete!'.,'} #! olmasa?
# # dizi2 = str.downcase.scan(/[\w']+/)
# #["kedi", "matematik", "masa", "elma", "bahce",
# # "kedi", "bahce", "kedi", "masa"]

# puts frekans dizi2
# #=> {"kedi"=>3, "matematik"=>1, "masa"=>2, "elma"=>1, "bahce"=>2}

# #######################################


# #bazi hashler

# # {"yukseklik" => "6 metre"}         # string as key

# # {["yukseklik"] => "6 metre"}       # array as key

# # {1 => "one"}                       # integer as key

# # {45.324 => "kırkbeş...."}          # float as key

# # {{key: "key"} => "hash as a key"}  # hash as key





# ########################################

# #eskiden yeniye
# sozluk = { 'array' => 'dizi', 'string' => 'dizgi' }
# sozluk = { :array => 'dizi', :string => 'dizgi' }
# sozluk = { array: 'dizi', string: 'dizgi' }


# ########################################

# #bazı metodlar

# keys
# values
# each
# each_key
# each_value
# has_key?
# has_value?
# select
# reject
# fetch
# to_a
# all?
# any?
# count
# map
# invert
# clear
# merge


# ########################################

# #Anagram kelimeler

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

#words.group_by { |word| word.chars.sort }.values

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
p result.keys.to_a
p result.values.to_a
# #=> ["demo", "dome", "mode"]
# #=> ["none", "neon"]
# #=> ["tied", "diet", "edit", "tide"]
# #=> ["evil", "live", "veil", "vile"]
# #=> ["fowl", "wolf", "flow"]

# ########################################



# #hashlerin farki nedir?
# x = "hi there"
# my_hash = {x: "some value"}
# my_hash2 = {x => "some value"}


# #bu hata ne anlama gelmektedir?
# #=> NoMethodError: undefined method `keys' for Array