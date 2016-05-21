module Actions
  class ShowHistory

    def run(ui, history)
      ui.output("#{history}\n")
    end
  end
end
