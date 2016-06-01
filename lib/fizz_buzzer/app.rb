module FizzBuzzer
  class App

    def initialize(ui, history: History.new, store: FileStore.new)
      @ui = ui
      @command_factory = CommandFactory.new(history, store)
    end

    def start
      @ui.output(Messages.usage)
      interact
    end

    def interact
      return unless command = create_command
      run_command(command)
      interact
    end

    private

      def run_command(command)
        input = command.receive_input(@ui)
        result = command.run(input)
        @ui.output(result)
      end

      def create_command
        input = @ui.receive_input
        @command_factory.create(input)
      end
  end
end
