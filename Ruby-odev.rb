
def ortak_harfler(kel1, kel2)
    kume1 = Set.new(kel1.chars)
    kume2 = Set.new(kel2.chars)
    
    ortaklar = kume1.intersection(kume2)
    
    tekrarlar = {}
    ortaklar.each do |harf|
        tekrarlar[harf] = [kel1.count(harf), kel2.count(harf)].min
    end
    
    return tekrarlar
end

def sirala_tekrarlar(tekrarlar)
    sirali_tekrarlar = tekrarlar.values.sort.reverse
    return sirali_tekrarlar
end

def yazdir(tekrarlar)
    tekrarlar.each do |tekrar|
        print tekrar
    end
end

girdi1 = gets.chomp
girdi2 = gets.chomp

tekrarlar = ortak_harfler(girdi1, girdi2)
sirali_tekrarlar = sirala_tekrarlar(tekrarlar)
yazdir(sirali_tekrarlar)
