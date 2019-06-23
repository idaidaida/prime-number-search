require 'complex'

class Eratos

    def self.print_prime_numbers(input)

        # 入力チェク
        return puts "[ERROR] Invalid Inputs" if input.length != 1
        return puts "[ERROR] Invalid Inputs"if !(input[0] =~ /^[0-9]+$/)
        
        # 2より小さい数字は素数の探索を行わない
        return puts "" if input[0].to_i < 2

        # 素数リストと探索リストを用意
        prime_numbers = []
        search_numbers = [*2..input[0].to_i]

        # 探索リストの先頭の数字が指定された数字の平方根に達するまで探索を実施
        while search_numbers[0] <= Math.sqrt(input[0].to_i) do

            # 探索リストから先頭の数字を取り出して、素数リストに移動
            first_number = search_numbers.shift
            prime_numbers.push(first_number)

            # 移動した数字の倍数を探索リストから削除
            search_numbers.map do |number|
                if number % first_number == 0
                    search_numbers.delete(number)
                end
            end
        end

        # 探索リストの内容を素数リストに移動
        prime_numbers = prime_numbers | search_numbers

        # 出力
        puts prime_numbers.join(", ")
    end

    # 直接呼び出し用
    if __FILE__ == $0
        print_prime_numbers(ARGV)
    end

end