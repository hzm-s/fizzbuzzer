module Actions
  class SaveHistory

    def run(ui, history)
      history.save
      ui.output("FizzBuzzの履歴を保存しました\n")
    end
  end
end
