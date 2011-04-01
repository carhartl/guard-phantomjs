require 'spec_helper'

module Guard
  describe PhantomJS do

    describe "#run_on_change" do

      context "with modifications" do
        it "executes phantomjs" do
          Notifier.stub(:notify)
          guard = PhantomJS.new([], :runner => 'driver.js')
          guard.should_receive(:`).with('phantomjs driver.js http://127.0.0.1:8888/')
          guard.run_on_change(['foo'])
        end

        it "notifies" do
          subject.stub(:`).and_return('0 failures')
          Notifier.should_receive(:notify).with('0 failures',
            :title => 'Jasmine results', :image => :success)
          subject.run_on_change(['foo'])

          subject.stub(:`).and_return('1 failure')
          Notifier.should_receive(:notify).with('1 failure',
            :title => 'Jasmine results', :image => :failed)
          subject.run_on_change(['foo'])
        end
      end

      context "without modifications" do
        it "skips executing phantomjs" do
          subject.should_not_receive(:`)
          subject.run_on_change([])
        end
      end

    end

  end
end
