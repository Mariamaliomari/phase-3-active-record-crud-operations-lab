class Movie < ActiveRecord::Base
def self.create_with_title(title)
        movie = Movie.create(title: title)
    end

    def self.first_movie
        all = Movie.all
        all.first
    end

    def self.last_movie
        all = Movie.all
        all.last
    end

    def self.movie_count
        all = Movie.all
        all.count
    end

    def self.find_movie_with_id(id)
        movie = Movie.find_by(id: id)
    end

    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end

    def self.find_movies_after_2002
        Movie.where("release_date>2002")
    end

    def update_with_attributes(attributes)
        self.update(attributes)
    end

    def self.update_all_titles(title)
        Movie.update_all(title: title)
    end

    def self.delete_by_id(id)
        movie = Movie.find_by(id: id)
        movie.delete
    end

    def self.delete_all_movies
        Movie.destroy_all
    end
end