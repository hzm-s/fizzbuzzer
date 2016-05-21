require 'delegate'

require 'cli'
require 'app'
require 'menu'
require 'history'
require 'actions'

module Messages
  module_function

  def usage
    <<-EOU
メニューを選択してください
1: FizzBuzzをスタート
2: これまでのFizzBuzzの履歴を見る
3: これまでのFizzBuzzの履歴を保存する
0: 終了
    EOU
  end
end
