class Logger
  def initialize
    @f = File.open('log.txt', 'a')
  end

  @@x = nil
  
  def self.instance
    if @@x == nil
      @@x = Logger.new
    end

    return @@x
  end

  def self.say_something
    puts 'ha-ha'
  end

  def log_something(wat)
    #f = File.open('log.txt', 'a')
    @f.puts wat
    #f.close
  end
end

Logger.say_something
Logger.instance.log_something('blabla')
Logger.instance.log_something('blabla22')

logger = Logger.new
logger.log_something('hey')