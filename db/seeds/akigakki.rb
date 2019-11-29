# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'yaml'

Course = Struct.new(:code,:title,:theme,:instructor,:schedule,:credit,:num,:lang,:notes,:objective,:contents,:plan,:outside,:evaluation,:textbook,:readings,:others,:notice)
data = open(Rails.root.join('db/seeds/yaml','akigakki.yml'),'r:utf-8') { |f| YAML.load(f) }

require Rails.root.join('vendor', 'schedule_converter')

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
        Textbook.create(
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
