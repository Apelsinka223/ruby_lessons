require 'rubygems'
require 'daemons'
require 'logger'

headers = `ps aux`.split(/$/).first.split(' ').map{ |name| name.downcase.tr('%', '')}

Struct.new('PInfo', *headers) do

  def log
    Struct::PInfo.logger.info{command}
  end

  def each
    new.each { |process| yield process }
  end

  class << self
    include Enumerable

    def logger
      if @logger.nil?
        @logger = Logger.new('processes.log')
        @logger.level = Logger::DEBUG
        @logger.datetime_format = '%Y-%m-%d %H:%M:%S '
      end
      @logger
    end

    def latest
      all.select{ |pr| pr.start == Time.new.strftime("%H:%M") }
    end

    def all
      `ps aux k -start`.split(/$/)[1 ... -2].map{ |row| self.new(*row.split(' ', 11))}
    end
  end
end


loop do
  Struct::PInfo.latest.each(&:log)
  sleep(60 - Time.new.strftime("%S").to_i)
end