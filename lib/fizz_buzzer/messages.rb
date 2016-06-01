module FizzBuzzer::Messages
  module_function

  def usage
    <<-EOU
メニューを選択してください
1: FizzBuzzをスタート
2: FizzBuzzの結果の履歴を表示
3: FizzBuzzの結果の履歴を保存
4: 保存されているFizzBuzzの結果の履歴を表示
0: 終了
    EOU
  end

  def fizz_buzz
    "整数を入力してください\n"
  end

  def saved
    "履歴を保存しました\n"
  end
end
