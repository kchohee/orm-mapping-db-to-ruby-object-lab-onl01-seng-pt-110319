class Student
  attr_accessor :id, :name, :grade
  def self.new_from_db(row)
    new_song = self.new  # self.new is the same as running Song.new
    new_song.id = row[0]
    new_song.name =  row[1]
    new_song.length = row[2]
    new_song 
  end
  def self.all
  end
  def self.find_by_name(name)
  end
  def self.all_students_in_grade_9
  end
  def self.students_below_12th_grade
  end
  def self.first_X_students_in_grade_10(x)
  end
  def self..first_student_in_grade_10
  end
  def self.all_students_in_grade_X(x)
  end

  def save
    sql = <<-SQL
      INSERT INTO students (name, grade) 
      VALUES (?, ?)
    SQL
    DB[:conn].execute(sql, self.name, self.grade)
  end
  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade TEXT
    )
    SQL
    DB[:conn].execute(sql)
  end
  def self.drop_table
    sql = "DROP TABLE IF EXISTS students"
    DB[:conn].execute(sql)
  end
end