module Modes
  class Guide

    def execute(app, ui, _ = nil)
      ui.output(Messages.usage)
      app.transit_to!(:prompt)
    end
  end
end
