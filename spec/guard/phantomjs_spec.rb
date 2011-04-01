require 'spec_helper'

module Guard
  describe PhantomJS do

    describe "#run_on_change" do
      it "executes phantomjs" do
        pending

        subject.run_on_change(['foo'])
      end
    end

  end
end
