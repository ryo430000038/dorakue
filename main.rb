require_relative "./chara.rb"
#require_relative "./monster.rb"




#ゲーム開始
  def game_start
    p @yusha.cara
    p @monster.cara
    
    battle!
  end
  
  
  
  #戦い
  def battle!
    @count = 0
    loop do 
      #ループ回数
      @count += 1
      puts "ターン#{@count}"
      puts "--------------------------------------"
      if @monster.hp <= 0
        yusha_battle!
        break
      elsif @yusha.hp <= 0
        monster_battle!
        break
      else
        yusha_battle!
        monster_battle!
      end
    end
  end
      
      
      
      
def yusha_battle!
      #勇者攻撃
      puts "先行//#{@yusha.name}の攻撃"
      puts ""
      #必殺技(３の倍数のターンに発動)
  if @count % 3 == 0
    swaza = @yusha.offence * 2
         
    
    
      damage1 = @monster.hp - swaza
      #ループする毎に勇者の攻撃力分モンスターの体力が減る
      @monster.hp -= swaza
    
      if @monster.hp <= 0
        puts "必殺技！ギガスラッシュ発動！！（攻撃力二倍）"
        puts "#{@monster.name}は#{swaza}のダメージを受けた"
        puts "#{@monster.name}の残りHPは0！！！"
        puts ""
        puts ""
        puts "#{@yusha.name}は敵を倒した！"
      else
        puts "必殺技！ギガスラッシュ発動！！（攻撃力二倍）"
        puts "#{@monster.name}は#{swaza}のダメージを受けた"
        puts "#{@monster.name}の残りHPは#{damage1}だ"
        puts ""
        puts ""
      end
  else  
      damage1 = @monster.hp - @yusha.offence
      #ループする毎に勇者の攻撃力分モンスターの体力が減る
      @monster.hp -= @yusha.offence
    
      if @monster.hp <= 0
        puts "#{@monster.name}は#{@yusha.offence}のダメージを受けた"
        puts "#{@monster.name}の残りHPは0！！！"
        puts ""
        puts ""
        puts "#{@yusha.name}は敵を倒した！"
      else
        puts "#{@monster.name}は#{@yusha.offence}のダメージを受けた"
        puts "#{@monster.name}の残りHPは#{damage1}だ"
        puts ""
        puts ""
      end
  end
end
  
  
      #デスピサロ攻撃
    def monster_battle!
      
      puts"後攻//#{@monster.name}の攻撃"
      puts ""
      #ループする毎にモンスターの攻撃力分勇者の体力が減る
      damage2 = @yusha.hp - @monster.offence
      @yusha.hp -= @monster.offence
      if @yusha.hp <= 0
        puts "#{@yusha.name}は#{@monster.offence}のダメージを受けた"
        puts "#{@yusha.name}の残りHPは0になってしまった、、、"
        puts ""
        puts ""
        puts "#{@monster.name}に負けてしまった、、、"
      else
        puts "#{@yusha.name}は#{@monster.offence}のダメージを受けた"
        puts "#{@yusha.name}の残りHPは#{damage2}だ"
        puts ""
        puts ""
      end
      
    end
  





@yusha = Chara.new("リョウ(勇者)",200,1000)
@monster = Chara.new("デスピサロ(敵)",rand(100..170),rand(2000))


game_start
