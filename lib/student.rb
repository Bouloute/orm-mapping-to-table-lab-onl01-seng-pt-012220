class Student

  attr_accessor :name, :grade
  attr_reader :id
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  def initialize(name, grade, id = nil)
    @name = name
    @grade = grade
    @id = id
  end

  def self.create_table
    sql = <<-SQL
      INSERT INTO songs (name, grade) 
      VALUES (?, ?)
      SQL
   
  DB[:conn].execute(sql, @name, @grade)
    
  end

end
