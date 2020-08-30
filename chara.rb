#勇者クラス
class Chara
  
  
  attr_accessor :name, :offence,:hp
  
  def initialize(name,offence,hp)
    @name= name
    @offence = offence
    #@defence = defence
    @hp = hp
  end
  
  def put_name
   @name
  end

  def put_offence
    @offence
  end


  def cara
    puts "NAME: #{@name}"
    puts "------------------"
    puts "攻撃力: #{@offence}"
    puts "体力: #{@hp}"
    puts "------------------"
    puts ""
  end

  def put_hp
    @hp
  end

end