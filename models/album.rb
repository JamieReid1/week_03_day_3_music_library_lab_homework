
require('pg')
require_relative('artist')
require_relative('../db/sql_runner')

class Album

  attr_accessor :title, :genre, :artist_id
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['title']
    @artist_id = options['artist_id'].to_i
  end

  def save()
    sql = "INSERT INTO albums (
             title,
             genre,
             artist_id
            ) VALUES (
               $1, $2, $3
              )
          RETURNING id"
    values = [@title, @genre, @artist_id]
    @id = SqlRunner.run(sql, values)
  end



end
