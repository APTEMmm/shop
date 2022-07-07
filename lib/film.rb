require_relative 'product'

class Film < Product
  attr_accessor :title, :director, :year

  def self.from_file(file_path)
    lines = File.readlines(file_path, chomp: true)
    Film.new(
      title: lines[0],
      director: lines[1],
      year: lines[2],
      price: lines[3],
      amount: lines[4]
    )
  end

  def initialize(params)
    super
    @title = params[:title]
    @year = params[:year]
    @director = params[:director]
  end

  def info
    "Фильм «#{@title}», #{@year}, реж. #{@director}"
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @year = params[:year] if params[:year]
    @director = params[:director] if params[:director]
  end
end
