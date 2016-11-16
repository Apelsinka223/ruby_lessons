headers = `ps aux`.split(/$/).first.split(' ').map{ |name| name.downcase.tr('%', '')}

Struct.new('PInfo', *headers) do
  def freeze
    `kill -STOP #{pid}` if pid
  end

  class << self
    include Enumerable

    def each
      all.each { |process| yield process }
    end

    def all
      `ps aux`.split(/$/).first.split[1 ... -1].map{ |row| self.new(*row.split(' ', 11))}
    end
  end
end

Struct::PInfo.select{ pr.command.include? 'Slack' }.each(&:freeze)