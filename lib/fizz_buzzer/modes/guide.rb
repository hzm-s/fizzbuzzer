module FizzBuzzer::Modes
  class Guide

    def execute(app)
      app.output <<-EOD
メニューを選択してください
1: FizzBuzzをスタート
0: 終了
      EOD
      app.transit_to!(:prompt)
    end
  end
end
