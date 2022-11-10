require ('launchy')

class School
  attr_accessor :name,
  :address,
  :number_of_students,
  :founding_years,
  :introduction_video_url,
  :introduction_video_statement
                
  def initialize(name,address,number_of_students,founding_years,
    introduction_video_url,introduction_video_statement)

    @name = name
    @address = address
    @number_of_students = number_of_students
    @founding_years = founding_years
    @introduction_video_url = introduction_video_url
    @introduction_video_statement = introduction_video_statement
  end

  def open_video_url
    Launchy.open(introduction_video_url)
  end
end

#A学校用のインスタンスを作成
a_school = School.new("A学校", "東京都渋谷区..", 300, 100, "https://hoge.com", "A学校は自然豊かな..")

a_school.open_video_url
  
b_school = School.new("B学校","江東区",678,1759,"https://ja.wikipedia.org/wiki/%E5%AD%A6%E6%A0%A1","B学校は都会の真ん中にあります")
  
b_school.open_video_url
