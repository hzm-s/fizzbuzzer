require 'delegate'

module FizzBuzzer
  class History < SimpleDelegator
    class << self

      def load_from_store(store)
        parse(store.load)
      end

      def parse(data)
        new(data.split("\n"))
      end
    end

    def initialize(entries = [])
      super(entries)
    end

    def record(input, result)
      self << format(input, result)
    end

    def to_s
      join("\n")
    end

    def save_to_store(store)
      store.save(to_s)
    end

    private

      def format(input, result)
        "#{input} => #{result}"
      end
  end
end
