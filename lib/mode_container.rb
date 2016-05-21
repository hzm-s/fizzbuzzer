class ModeContainer < SimpleDelegator
  class << self

    def setup(map = default)
      new(map)
    end

    private

      def default
        setup(
          prompt: Modes::Prompt.new,
          fizz_buzz: Modes::FizzBuzz.new,
        )
      end
  end

  attr_reader :current

  def initialize(map)
    super(map)
    @current = nil
  end

  def execute_current(io, history)
    @current.execute(self, io, history)
  end

  def transit_to!(mode_name)
    set_current(mode_name)
  end

  def terminate!
    set_current(nil)
  end

  def set_current(name)
    @current = fetch(name, nil)
  end
end
