module FizzBuzzer
  class App

    def prompt
      OutputResponse.new('メニューを選択してください> ')
    end

    def quit
      QuitResponse
    end

    def call(input)
      input ||= "\n"
      return prompt if input.chomp.empty?
      return quit if input.chomp == "0"
    end
  end
end
