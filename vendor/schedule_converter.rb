def schedule_convert_semester_code(schedule)
  if /通年/ === schedule
    1
  elsif /春学期(?!１|２|A)/ === schedule
    2
  elsif /春学期１/ === schedule
    3
  elsif /春学期２/ === schedule
    4
  elsif /春学期他/ === schedule
    5
  elsif /春学期間外/ === schedule
    6
  elsif /秋学期(?!1|2|A)/ === schedule
    7
  elsif /秋学期１/ === schedule
    8
  elsif /秋学期２/ === schedule
    9
  elsif /秋学期他/ === schedule
    10
  elsif /秋期間外/ === schedule
    11
  elsif /通年他/ === schedule
    12
  elsif /春学期Ａ/ === schedule
    13
  elsif /春学期Ｂ/ === schedule
    14
  elsif /秋学期Ａ/ === schedule
    15
  elsif /秋学期Ｂ/ === schedule
    16
  elsif /未定/ === schedule
    17
  else
    raise NameError('未定義の学期です')
  end
end

def schedule_convert_day_of_the_week_code(schedule)
  if /Mon/ === schedule
    1
  elsif /Tue/  === schedule
    2
  elsif /Wed/  === schedule
    3
  elsif /Thu/  === schedule
    4
  elsif /Fri/  === schedule
    5
  elsif /Sat/  === schedule
    6
  elsif /Sun/  ===schedule
    7
  else
    8
  end
end

def schedule_convert_period_code(schedule)
  if /１時限/ === schedule
    1
  elsif /２時限/ === schedule
    2
  elsif /３時限/ === schedule
    3
  elsif /４時限/ === schedule
    4
  elsif /Ｇ５時限/ === schedule
    6
  elsif /５時限/ === schedule
    5
  elsif /Ｇ６時限/ === schedule
    8
  elsif /６時限/ === schedule
    7
  elsif /７時限/ === schedule
    9
  else
    10
  end
end
