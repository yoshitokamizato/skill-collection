class ImportCsv2 < ApplicationRecord
  def self.import(path)
    CSV.foreach(path, headers: true) do |row|
      Command.create(
        title: row["title"],
        content: row["content"]
      )
    end
  end
end
