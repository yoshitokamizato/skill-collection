namespace :import_csv do
  # rake import_csv:texts
  desc "Text CSVデータのインポート"

  task texts: :environment do
    ImportCsv.import('db/csv_data/csv_data.csv')
  end
end
