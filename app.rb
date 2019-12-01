class Logger
  def initialize
    @f = File.open('log.txt', 'a')
  end

  @@x = nil
  
  def self.instance
    @@x = Logger.new if @@x.nil?

    @@x
  end

  def self.say_something
    puts 'ha-ha'
  end

  def log_something(wat)
    @f.puts wat
  end
end

Logger.say_something
Logger.instance.log_something('blabla')
Logger.instance.log_something('blabla22')

logger = Logger.new
logger.log_something('hey')