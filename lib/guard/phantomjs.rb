require 'guard'
require 'guard/guard'

module Guard
  class PhantomJS < Guard

    def initialize(watchers = [], options = {})
      super

      # @options[:runner] ||= 'run-jasmine.js'
      @options[:server] ||= 'http://127.0.0.1:8888/'
      @options = options
    end

    def start
      UI.info 'Guard::PhantomJS is running!'
    end

    def run_on_change(paths)
      return if paths.empty?

      cmd = "phantomjs #{@options[:runner]} #{@options[:server]}"
      result = %x[#{cmd}]

      notify(result, result =~ /0 failures/ ? :success : :failed)
    end


    private

    def notify(message, image)
      Notifier.notify(message, :title => 'Jasmine results', :image => image)
    end

  end
end
