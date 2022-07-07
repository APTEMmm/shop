require_relative 'product'

class Disk < Product
  attr_accessor :title, :singer, :genre, :year

  def initialize(params)
    super
    @title = params[:title]
    @singer = params[:singer]
    @genre = params[:genre]
    @year = params[:year]
  end

  def self.from_file(path)
    line = File.readlines("#{path}", chomp: true)
    Disk.new(
      title: line[0],
      singer: line[1],
      genre: line[2],
      year: line[3],
      price: line[4],
      amount: line[5]
    )
  end

  def info
    "Альбом #{@singer} — «#{@title}», #{@genre}, #{@year} год"
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @year = params[:year] if params[:year]
    @singer = params[:singer] if params[:singer]
    @year = params[:year] if params[:year]
  end
end
