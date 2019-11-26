# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'yaml'

Course = Struct.new(:code,:title,:theme,:instructor,:schedule,:credit,:num,:lang,:notes,:objective,:contents,:plan,:outside,:evaluation,:textbook,:readings,:others,:notice)
data = open(Rails.root.join('db/seeds/yaml','sample.yml'),'r:utf-8') { |f| YAML.load(f) }

require Rails.root.join('vendor', 'schedule_converter')


DayOfTheWeek.create!(name:"月" ,code:1)
DayOfTheWeek.create(name:"火" ,code:2)
DayOfTheWeek.create(name:"水" ,code:3)
DayOfTheWeek.create(name:"木" ,code:4)
DayOfTheWeek.create(name:"金" ,code:5)
DayOfTheWeek.create(name:"土" ,code:6)
DayOfTheWeek.create(name:"日" ,code:7)

Semester.create(name:"通年",code:1)
Semester.create(name:"春学期",code:2)
Semester.create(name:"春学期１",code:3)
Semester.create(name:"春学期２",code:4)
Semester.create(name:"春学期他",code:5)
Semester.create(name:"春期間外",code:6)
Semester.create(name:"秋学期",code:7)
Semester.create(name:"秋学期１",code:8)
Semester.create(name:"秋学期２",code:9)
Semester.create(name:"秋学期他",code:10)
Semester.create(name:"秋期間外",code:11)
Semester.create(name:"通年他",code:12)
Semester.create(name:"春学期A",code:13)
Semester.create(name:"春学期B",code:14)
Semester.create(name:"秋学期A",code:15)
Semester.create(name:"秋学期B",code:16)
Semester.create(name:"未定",code:17)

Period.create(name:"1",code:1)
Period.create(name:"2",code:2)
Period.create(name:"3",code:3)
Period.create(name:"4",code:4)
Period.create(name:"5",code:5)
Period.create(name:"G5",code:6)
Period.create(name:"6",code:7)
Period.create(name:"G6",code:8)
Period.create(name:"7",code:9)

Category.create(name:"語学")
Category.create(name:"旅行")
Category.create(name:"最近の話題")
Category.create(name:"趣味")
Category.create(name:"ゲーム")
Category.create(name:"サークル")
Category.create(name:"授業")
Category.create(name:"音楽")
Category.create(name:"悩み")
Category.create(name:"アニメ")
Category.create(name:"スポーツ")

# Faculty.create(name:"文学部",parent_id:1)
# Faculty.create(name:"経済学部",parent_id:2)
# Faculty.create(name:"理学部",parent_id:3)
# Faculty.create(name:"社会学部",parent_id:4)
# Faculty.create(name:"法学部",parent_id:5)
# Faculty.create(name:"経営学部",parent_id:6)
# Faculty.create(name:"異文化コミュニケーション学部",parent_id:7)
# Faculty.create(name:"観光学部",parent_id:8)
# Faculty.create(name:"コミュニティ福祉学部",parent_id:9)
# Faculty.create(name:"現代心理学部",parent_id:10)
# Faculty.create(name:"GLAP",parent_id:11)
#
# Course.create(name:"キリスト教文学科",parent_id:1)
# Course.create(name:"文学科 英米文学専修",parent_id:1)
# Course.create(name:"文学科 ドイツ文学専修",parent_id:1)
# Course.create(name:"文学科 フランス文学専修",parent_id:1)
# Course.create(name:"文学科 日本文学専修",parent_id:1)
# Course.create(name:"文学科 文芸・思想専修",parent_id:1)
# Course.create(name:"史学科",parent_id:1)
# Course.create(name:"教育学科",parent_id:1)
#
# Course.create(name:"経済学科",parent_id:2)
# Course.create(name:"経済政策学科",parent_id:2)
# Course.create(name:"会計ファイナンス学科",parent_id:2)
#
# Course.create(name:"数学科",parent_id:3)
# Course.create(name:"物理学科",parent_id:3)
# Course.create(name:"科学科",parent_id:3)
# Course.create(name:"生命理学科",parent_id:3)
#
# Course.create(name:"社会学科",parent_id:4)
# Course.create(name:"現代文学学科",parent_id:4)
# Course.create(name:"メディア社会学科",parent_id:4)
#
# Course.create(name:"法学科",parent_id:4)
# Course.create(name:"国際ビジネス法学科",parent_id:4)
# Course.create(name:"政治学科",parent_id:4)
#
# Course.create(name:"経営学科",parent_id:5)
# Course.create(name:"国際経営学科",parent_id:5)
#
# Course.create(name:"異文化コミュニケーション学科",parent_id:6)
#
# Course.create(name:"観光学科",parent_id:7)
# Course.create(name:"交流文化学科",parent_id:7)
#
# Course.create(name:"コミュニティ政策学科",parent_id:8)
# Course.create(name:"福祉学科",parent_id:8)
# Course.create(name:"スポーツウエルネス学科",parent_id:8)
#
# Course.create(name:"心理学科",parent_id:9)
# Course.create(name:"映像身体学科",parent_id:9)
#
# Course.create(name:"GLAP",parent_id:10)








data.each do |yaml|
  if yaml.title.nil?
    subject = Subject.create(
      name:'',
      subject_code:yaml.code,
      theme:yaml.theme,
      instructor:yaml.instructor,
      credit:yaml.credit,
      num:yaml.num,
      lang:yaml.lang,
      notes:yaml.notes,
      objective:yaml.objective,
      contents:yaml.contents,
      outside:yaml.outside,
      others:yaml.others,
      notice:yaml.notice
    )
  else
    subject = Subject.create(
      name:yaml.title.gsub(/[A-Z]+[0-9]+／/, ''),
      subject_code:yaml.code,
      theme:yaml.theme,
      instructor:yaml.instructor,
      credit:yaml.credit,
      num:yaml.num,
      lang:yaml.lang,
      notes:yaml.notes,
      objective:yaml.objective,
      contents:yaml.contents,
      outside:yaml.outside,
      others:yaml.others,
      notice:yaml.notice
    )
  end


  Evaluation.create(
    kind:yaml.evaluation["種類(Kind)"],
    portion:yaml.evaluation["割合(%)"],
    criteria:yaml.evaluation["基準(Criteria)"],
    subject:subject
  )

  author_reading = ""
  yaml.readings.each do |reading|
    begin
      if reading[:author] != nil
        Reading.create(
          author:reading[:author],
          title:reading[:book_title],
          publisher:reading[:publisher],
          year:reading[:date],
          isbn:reading[:isbn_issn],
          subject:subject
        )
          author_reading = reading[:author]
      elsif reading[:others] != nil
          readings = Reading.find_by(author:author_reading)
          readings.others = reading[:others]
          readings.save
      end
    rescue => ex
      p ex
      Reading.create(
        content:reading,
        subject:subject
      )
    end
  end

  author_textbooks = ""
  yaml.textbook.each do |textbooks|
    begin
      if textbooks[:author] != nil
        Textbok.create(
          author:textbooks[:author],
          title:textbooks[:book_title],
          publisher:textbooks[:publisher],
          year:textbooks[:date],
          isbn:textbooks[:isbn_issn],
          subject:subject
        )
          author_textbooks = textbooks[:author]
      elsif textbooks[:others] != nil
          textbook = Textbook.find_by(author:author_textbooks)
          textbook.others = textbooks[:others]
          textbook.save
      end
    rescue => ex
      p ex
      Textbook.create(
        content:textbooks,
        subject:subject
      )
    end
  end


  # p yaml.code
  # p yaml.schedule
  schedules = yaml.schedule.split("\n")
  schedules.each do |schedule|
    semester = Semester.find_by(code: schedule_convert_semester_code(schedule))
    day_of_the_week = DayOfTheWeek.find_by(code:schedule_convert_day_of_the_week_code(schedule))
    period = Period.find_by(code:schedule_convert_period_code(schedule))
    Schedule.create(
      subject: subject,
      semester: semester,
      day_of_the_week: day_of_the_week,
      period: period
    )
  end

  yaml.plan.each do |plan_key,plan_value|
      p plan_key
      p plan_value
      Plan.create(
        number:plan_key,
        content:plan_value,
        subject:subject
      )
  end

end
