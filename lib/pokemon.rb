class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:, name:, type:, db:)
    @id, @name, @type, @db = id, name, type, db
  end
  
  def self.save
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
end
