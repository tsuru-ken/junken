class School
  
  #nameというインスタンスメソッドを定義する
  def name
    @greeting = "Hello!"
  end

  def name1
    #インスタンス変数@greetingは、使用できる
    puts @greeting
  end
end

#学校用のインスタンスを作成
school = School.new

#greeting="Hello!"と定義する
school.name

#@greetingの中身を表示する
school.name1

