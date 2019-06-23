require File.expand_path(File.dirname(__FILE__) + "/../eratos")
require "spec_helper"

describe "Erastos" do
    describe "#prime_numbers" do
        describe "入力チェック" do
            context "不正な値が入力された場合" do
                it "入力の数が0この場合、エラー" do               
                    input = ""
                    expect(`ruby eratos.rb #{input}`).to eq("[ERROR] Invalid Inputs\n")            
                end
                it "入力の数が2個の場合、エラー" do
                    input = "120 1"
                    expect(`ruby eratos.rb #{input}`).to eq("[ERROR] Invalid Inputs\n")   
                end
                it "入力が半角数字じゃない場合、エラー" do
                    input = "１２０"
                    expect(`ruby eratos.rb #{input}`).to eq("[ERROR] Invalid Inputs\n")
                end
                it "入力が負の値の場合、エラー" do
                    input = "-120"
                    expect(`ruby eratos.rb #{input}`).to eq("[ERROR] Invalid Inputs\n")
                end
                it "入力が整数じゃない場合、エラー" do
                    input = "120.1"
                    expect(`ruby eratos.rb #{input}`).to eq("[ERROR] Invalid Inputs\n")
                end
            end
        end
        describe "出力された素数一覧の確認" do
            it "入力が0の場合、素数一覧に値が入らないこと" do
                input = "0"
                expect(`ruby eratos.rb #{input}`).to eq("\n")
            end
            it "入力が1の場合、素数一覧に値が入らないこと" do
                input = "1"
                expect(`ruby eratos.rb #{input}`).to eq("\n")
            end
            it "入力が2の場合、素数一覧は[2]になること" do
                input = "2"
                expect(`ruby eratos.rb #{input}`).to eq("2\n")
            end
            it "入力が4の場合、素数一覧は[2,3]になること" do
                input = "4"
                expect(`ruby eratos.rb #{input}`).to eq("2, 3\n")
            end
            it "入力が120の場合、素数一覧は[2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113]になること" do
                input = "120"
                expect(`ruby eratos.rb #{input}`).to eq("2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113\n")
            end

        end

    end
end