require 'singleton'

class Logger
  include Singleton

  def initialize
    @file = File.open('log.txt', 'a')
  end

  def log_something(wat)
    @file.puts wat
    @file.flush
  end
end
