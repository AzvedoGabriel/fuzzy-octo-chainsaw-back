require 'csv'
class Movie < ApplicationRecord
  has_many :user_movies
  has_many :users, through: :user_movies

  def average_score
    user_movies.average(:score).to_f
  end

  def self.hash_from_csv(file)
    table = parse_csv(file)
    table.map!{|line| {title: line.first, director: line.last}}
  end

  def self.hash_from_score_csv
    table = parse_csv(file)
    table.map! { |line| {title: line.first, score: line.last}}
  end

  private

  def self.parse_csv(file)
    table = ::CSV.parse(file, headers: false)
  end

end
