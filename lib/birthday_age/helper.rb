module BirthdayAge
  module Helper
    def birthday_age(date)
      "#{age(date)} years old"
    end

    private

    def age(date)
      ((Time.current - date.to_time) / 1.year).round
    end
  end
end
