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

    def contributors
        authors = Article.all
        authors.collect do |author|
            # author.author
            if self.name == author.magazine.name
                author.author
            end
        end
    end

    def self.find_by_name(name)
        magazines = Magazine.all
        magazines.find do |magazine|
            if name == magazine.name
                magazine
            end
            
        end
    end

end