class ImportCsv < ApplicationRecord
    def self.import(path)
        Text.delete_all
        list = []

        CSV.foreach(path, headers: true) do |row|
            list << {
                title: row["title"],
                contents: row["contents"],
                genre: row["genre"]
            }
        end

        puts "インポート処理を開始"
        begin
            Text.create!(list)
            puts "インポート完了!"
        rescue ActiveModel::UnknownAttributeError => invalid
            puts "インポートに失敗 : UnknownAttributeError"
        end
    end
end
