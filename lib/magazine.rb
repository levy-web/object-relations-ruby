class Magazine
    attr_reader :name, :category

    @@all = []

    def initialize(name, category)
        @name = String.new(name)
        @category = String.new(category)
        @@all << self
    end

    def self.all
        @@all
    end

    def name=(name)
        @name = String.new(name)
    end
    def category=(category)
        @category = String.new(category)
    end

end