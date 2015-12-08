def fizzbuzz

for i in 1..100

  if i%3==0 || i%5==0
    if i%3==0 && i%5!=0
      puts "fizz"
    end
    if i%5==0 && i%3!=0
      puts "buzz"
    end
    if i%15==0
      puts "fizzbuzz"
    end
  else
    puts i
  end

end ### end of for 
end ###end of fizzbuzz

fizzbuzz
