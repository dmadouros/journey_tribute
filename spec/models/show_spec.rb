require "rails_helper"

describe Show, type: :model do
  describe ".next" do
    context "when today is day of show" do
      it "should show scheduled today" do
        Timecop.freeze(DateTime.new(2016, 2, 19, 12, 00)) do
          show = FactoryGirl.create(:show, starts_at: DateTime.new(2016, 2, 19, 19, 30))
          expect(Show.next).to eq show
        end
      end
    end

    context "when today is day after show" do
      it "should be nil" do
        Timecop.freeze(DateTime.new(2016, 2, 20, 12, 00)) do
          show = FactoryGirl.create(:show, starts_at: DateTime.new(2016, 2, 19, 19, 30))
          expect(Show.next).to be_nil
        end
      end
    end
  end

  describe ".past" do
    context "when today is day of show" do
      it "should not include show" do
        Timecop.freeze(DateTime.new(2016, 2, 19, 12, 00)) do
          show = FactoryGirl.create(:show, starts_at: DateTime.new(2016, 2, 19, 19, 30))
          expect(Show.past).to be_empty
        end
      end
    end

    context "when today is day after show" do
      it "should include show" do
        Timecop.freeze(DateTime.new(2016, 2, 20, 12, 00)) do
          show = FactoryGirl.create(:show, starts_at: DateTime.new(2016, 2, 19, 19, 30))
          expect(Show.past).to include show
        end
      end
    end
  end
end
