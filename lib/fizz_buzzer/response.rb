module FizzBuzzer
  class OutputResponse

    def initialize(content)
      @content = content
    end

    def apply(interface)
      interface.print(@content)
    end
  end

  module QuitResponse

    def self.apply(interface)
      interface.exit
    end
  end
end
