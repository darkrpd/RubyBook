########################################################
#                                                      #
#   created by: darkrpd..                              #
#   ruby book (by sitki bagdat) chapter 4 duel part    #
#                                                      #
########################################################



class Robot
attr_accessor :isim,:sahip,:adim_boyu,:yon,:pozisyon,:gunluk

def initialize(isim,sahip,adim_boyu)
@isim = isim
@sahip = sahip
@adim_boyu = adim_boyu
@yon = :sol
@pozisyon = 0.0
@gunluk = nil
end

def merhaba
  print "merhaba ben ", self.isim.chomp ," beni senin ", self.sahip , " oluşturdu \n"
end


def don yon
  if @yon !=yon
    self.pozisyon=0 ############# set position zero again if direction changed
  end
  @yon = yon
end

def ilerle adim_sayisi
  @pozisyon = @pozisyon +  (@adim_boyu.to_f * adim_sayisi.to_f)
end

def konum_bildir
 puts "baslangıctan " , self.yon ,  " e dogru ", self.pozisyon , "uzaktayim "
end


end

robot=  Robot.new("robocop","düşmanın","12")
robot.merhaba
robot.don :sag
robot.ilerle 10
puts robot.konum_bildir


robot.ilerle 5
puts robot.konum_bildir


robot.don :sol
robot.ilerle 5
puts robot.konum_bildir
