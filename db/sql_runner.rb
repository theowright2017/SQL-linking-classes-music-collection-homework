require('pg')

class SqlRunner

  def SqlRunner.run(sql, values = [])
    begin
      db = PG.connect({host: 'localhost', dbname: 'music_collection'})
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
    db.close()
    end
    return result
  end
end
