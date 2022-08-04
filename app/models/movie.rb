class Movie < ActiveRecord::Base

    def self.create_with_title(title)
        #Moive.create to initialize a movie + save to database
        Movie.create(title: title)
    end

    def self.first_movie
        self.first
        #self is the class - refers to Movie class as a whole
    end

    def self.last_movie
        self.last
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id(id)
        self.find_by(id: id)
    end

    def self.find_movie_with_attributes(attr)
        self.find_by(attr)
    end

    def self.find_movies_after_2002
        self.where("release_date > 2002")
    end

    def update_with_attributes(attr) #called on an INSTANCE of a movie 
        self.update(attr)
    end

    def self.update_all_titles(title)
        self.update_all(title: title)
    end

    def self.delete_by_id(id)
        self.delete(id)
    end

    def self.delete_all_movies
        self.destroy_all
    end
end