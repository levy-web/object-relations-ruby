class Author

    attr_reader :name
      
    def initialize(name)
    @name = String.new(name)
    end

    def articles
        artics = Article.all
        artics.filter do |author|
            if self.name == author.author.name
            author
            end
        end
    end
        
    def magazines
    author_magazines =[]
    magazin = Article.all
        magazin.filter do |author|
            if self.name == author.author.name
            author_magazines << author.magazine
            end
            
        end
        author_magazines 
    end
        
    def add_article(magazine, title)
        title = String.new(title)
        name = Author.new(self.name)
        
        Article.new(name, magazine, title)
    end
        
    def topic_areas
    topics = []
    magazin = Article.all
        magazin.filter do |author|
        # magazine
            if self.name == author.author.name
            topics << author.magazine.category
            end
        end
        topics.uniq
    end
        
    
end