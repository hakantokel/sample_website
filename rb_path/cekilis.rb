# Merhaba arkadaşlar, twitter'da duyurduğum Ruby kitabı çekilişini yapacak ruby kodumuz
# ve sonuçları görmek için bu videoyu çekeyim dedim. Şimdi çekilişi yapacak kodumuzu
# sizler ile birlikte hazırlayalım. 
# İlk olarak kullanacak olduğumuz kütüphanelerimizi dahil edelim.
# rubyXL; Bu kütüphanemiz ile excel üzerinde ki verileri okuyabiliyor değiştirebiliyor
# veya yeni bir excel dosyası oluşturabiliyoruz. gem install rubyXL ile kuralım.
# Şimdi kütüphanemizi dahil edelim. require ile kütüphanelerimizi dahil ediyoruz.
require 'rubyXL'
# terminal-table; Bu kütüphanemiz ile terminal üzerinde tablo olarak çıktı verebiliyoruz.
# gem install terminal-table komutu ile kütüphanemizi kuralım ve require ile dahil edelim
require 'terminal-table'

# İlk olarak çekilişe katılan kişileri kayıt ettiğim excel dosyamı açacağım.
workbook = RubyXL::Parser.parse 'Kitap Çekilişi.xlsx'
# Excel dosyalarında birden fazla çalışma sayfanız olabilir bu yüzden sayfayı
# seçmemiz gerekli bunun için ilk anlamına gelen first'ü yazıyoruz.
worksheet = workbook.first

# Şimdi çekiliş için kaç kişiyi seçeceğimizi konsoldan alalım.
# gets metodu konsoldan gicrdi almamızı sağlar.
# alınan girdi \n karakteri ile bitirilir yani enter karakteri ile
# bu karakteri istemediğimiz için chomp metodu ile temizleyebiliriz.
# to_i metodu ile alınan veriyi sayıya dönüştürebiliriz.
print 'Çekilecek kişi sayısı: '
winners_count = gets.chomp.to_i

# Rastgele üretecek olduğumuz sayıları saklayacağımız random_numbers adında
# boş bir dizi oluşturuyoruz.
random_numbers = []

# Şimdi rastgele sayılarımızı üretelim ve bunları random_numbers dizisine ekleyelim.
# times metodu ile önünde bulunan sayı kadar bir döngü oluşturabiliriz.
winners_count.times do
  # Random sınıfımızı üretiyor ve rnd değişkenimize veriyoruz. 
  rnd = Random.new
  # 1 ile 62 dahil olmak üzere aralarında sayı üretiyoruz.
  random_number = rnd.rand(1...62)
  # random_number'da bulunan sayıyı şimdi random_numbers'a ekliyoruz.
  random_numbers.push random_number
end

# Şimdi kazananlarımızın sıra numarası, ad soyad ve twitter bilgilerini alalım
# Bunun için ilk olarak rastgele ürettiğimiz sayıların bulunduğu random_numbers dizimizi
# teker teker gezelim ve ilgili satırda bulunan verilere erişelim ve rows diye bir dizi
# içerisine atalım.
rows = []

# each metodumuz ile bir diziyi gezebiliriz.
# each_with_index ile sıra numarası ile birlikte gezebiliriz.
# index 0 dan başlar ve tek tek artar.
random_numbers.each_with_index do |winner_index, index|
  row = worksheet[winner_index]

  # Excel dosyamda 4 adet kolon var bunlar sırası ile;
  # index:    Kişinin başvuru sırası
  # name:     Kişinin adı ve soyadı
  # email:    Kişinin mail adresi
  # twitter:  Kişinin twitter adresi
  # row.cells diyerek satırın kolonlarına erişebilir ve değişkenlere aktarabiliriz.
  # map diyerek her bir kolona erişiyor ve value ile içeriklerini alıyoruz
  number, name, email, twitter = row.cells.map(&:value)

  # Şimdi aldığımız talihli kişileri rows dizisine atalım.
  rows.push [index+1, number, name, twitter]
end

# Şimdi son olarak kazananlarımızı ekrana yazdıralım. Bunun için ilk olarak tablomuzu
# oluşturalım.
table = Terminal::Table.new headings: ['#', 'Sıra Numarası', 'Ad Soyad', 'Twitter'], 
                            rows: rows

# Şimdi de hazırladığımız tabloyu yazdıralım.
puts table

# Şimdi talihlilerimizi görelim :) Talihlilerimize kitapları 13'ünde kargolayacağım. 
# Kitapların yanında 1 adet ruby, rails ve gitlab stickerı da olacak :)
# Umudum bu kitap kazananlara başlangıç olur ve bırakmazlar ve kitabı bitirince 
# Yeni arkadaşlara ulaştırırlar :) Çok uzatmadan çekilişimizi yapalım :)
# Kodumuzu ruby cekilis.rb diyerek çalıştırıyorum. Ruby çok güzel hata mesajlarıda öyle
# parser yazmışımım parse olacaktı :) Ruby'de parantez kullanma zorunluluğu yoktur :)
# 5 as 5 yedek olarak yaptığım için 10 yazıyorum :) Kişileri tebrik ediyorum :)
# Email üzerinden kendileri ile iletişime geçeceğim :) Teşekkürler!