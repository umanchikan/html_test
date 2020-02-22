

class School
    attr_accessor :name,
                  :address,
                  :number_of_students,
                  :founding_years,
                  :introduction_video_url,
                  :introduction_statement
    def initialize(name, address, number_of_students,founding_years,
                   introduction_video_url, introduction_statement)
      @name = name
      @address = address
      @number_of_students = number_of_students
      @founding_years = founding_years
      @introduction_video_url = introduction_video_url
      @introduction_statement = introduction_statement
    end

    def movie_start
      require "launchy"
      Launchy.open("#{@introduction_video_url}")
    end
  end
  # A学校用のインスタンスを作成
  a_school = School.new("A学校", "東京都渋谷区..", 300, 100, "https://docs.ruby-lang.org/ja/latest/method/String/i/chars.html", "A学校は自然豊かな...")
  puts(a_school.name)
  puts(a_school.address)
  puts(a_school.number_of_students)
  puts(a_school.founding_years)
  puts(a_school.introduction_video_url)
  puts(a_school.introduction_statement)
  puts(a_school.instance_variables)

  

  a_school.movie_start