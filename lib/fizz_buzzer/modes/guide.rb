module FizzBuzzer::Modes
  class Guide

    def execute(app, ui, _ = nil)
      ui.output(FizzBuzzer::USAGE)
      app.transit_to!(:prompt)
    end
  end
end
