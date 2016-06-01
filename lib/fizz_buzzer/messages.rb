module FizzBuzzer::Messages
  module_function

  def usage
    <<-EOU
メニューを選択してください
1: FizzBuzzをスタート
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
