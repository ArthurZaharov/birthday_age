require "spec_helper"

describe BirthdayAge::Helper do
  describe ".birthday_age" do
    subject(:birthday_age) { dummy_class.new.birthday_age(birthday) }

    let(:dummy_class) { Class.new { include BirthdayAge::Helper } }

    context "when birthday provided" do
      let(:birthday) { 5.years.ago }

      it "returns age" do
        expect(birthday_age).to eq("5 years old")
      end
    end

    context "when birthday not provided" do
      let(:birthday) { nil }

      it "returns nil value" do
        expect(birthday_age).to eq(nil)
      end
    end
  end
end
