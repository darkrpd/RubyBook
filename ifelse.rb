########################################################
#                                                      #
#   created by: darkrpd..                              #
#   ruby book (by sitki bagdat) introduction parts     #
#                                                      #
########################################################

sayac=0

diller= ["html","css","ruby","js","rails","sinatra"]
i=0
while i < diller.length
puts  diller[i],"dilini biliyor musunuz"
flag=gets
flag= flag.chomp
  if flag=="evet"
    sayac=sayac+1;
  else

  end
i=i+1
end

if sayac >= 4
  puts "tebrikler işe alındınız"
else
  puts "biz sizi ararız(heralde...)"
end
