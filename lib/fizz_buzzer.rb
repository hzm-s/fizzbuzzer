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
0: 終了
    EOU
  end
end
