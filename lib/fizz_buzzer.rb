require 'delegate'

Dir[File.dirname(__FILE__) + '/fizz_buzzer/*.rb'].each { |f| require f }

module FizzBuzzer
  USAGE = <<-EOU
メニューを選択してください
1: FizzBuzzをスタート
0: 終了
  EOU
end
