require 'rails_helper'

RSpec.describe ImportCsv, type: :model do
  describe "csvのダミーデータがインポートできているかどうか" do
    #共通処理
    before do
      ImportCsv.import('db/csv_data/csv_data_test.csv')
    end

    it "textのデータ件数が1と等しいことを確認" do
      expect(Text.count).to eq 1
    end

    let(:csv_test) { Text.find_by(title: "test") }
    it "titleの値が取得できているか？" do
      expect(csv_test.title).to eq "test"
    end

    it "contentsの値が取得できているか？" do
      expect(csv_test.contents).to eq "テストテストテスト"
    end

    it "genreの値が取得できているか？" do
      expect(csv_test.genre).to eq "てすと"
    end

  end
end
