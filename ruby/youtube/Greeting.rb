class  Student
    def initialize(name)
        # インスタンス変数を定義
        @name = name 
    end

    #平均点を計算するメソッド
    def cal_avg(data)
        sum = 0
        for score in data do
            sum += score
        end
        avg = sum / data.lengh
        return avg
    end
    #テスト結果を判定するjedgeメソッド
    def jedge(avg)
        result = ''
        if 60 <= ave
            result = "passed"
        else
            result = "failed"
        end
        return result
    end
    
    attr_accessor :name
end

a001 = Student.new("sato")
data = [70,65,50,90,30]
avg = a001.cal_avg(data)
result = a001.jedge(avg)
p a001.name
p avg
p result
    