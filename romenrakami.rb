#encoding:utf-8
def romen_karsiligi(sayi)


  birler_bas = sayi % 10
  onlar_bas = (sayi % 10 ) /10
  yuzler_bas = (sayi % 100) /10
  binler_bas = sayi /1000

romen_rakami=""

if binler_bas > 0
  romen_rakami += "M"*binler_bas
end

if yuzler_bas == 9
  romen_rakami += "CM"9
elsif yuzler_bas == 4
  romen_rakami += "CD"
elsif yuzler_bas > 4
  romen_rakami += "D"
  romen_rakami += "C" * (yuzler_bas - 5).to_i
elsif yuzler_bas > 0
  romen_rakami += "C" * yuzler_bas
end

if onlar_bas == 9
  romen_rakami += "XC"
elsif onlar_bas == 4
  romen_rakami += "XL"
elsif onlar_bas > 4
  romen_rakami += "L"
  romen_rakami += "X" * (onlar_bas - 5).to_i
elsif yuzler_bas > 0
  romen_rakami += "X" * onlar_bas
end


if birler_bas == 9
  romen_rakami += "XI"
elsif birler_bas == 4
  romen_rakami += "IV"
elsif birler_bas > 4
  romen_rakami += "V"
  romen_rakami += "I" * (birler_bas - 5).to_i
elsif yuzler_bas > 0
  romen_rakami += "I" * birler_bas
end

romen_rakami
end


print "1-9999 arasinda sayi giriniz: "
sayi= gets.chomp.to_i
puts "romen_rakami karsiligi =  #{romen_karsiligi(sayi)}"
