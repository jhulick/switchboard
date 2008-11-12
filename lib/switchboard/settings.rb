module Switchboard
  class Settings
    DEFAULT_PATH = File.join(ENV["HOME"], ".switchboardrc")

    def initialize(path = DEFAULT_PATH)
      @path = path

      if File.exists?(path)
        @config = YAML.load(File.read(path))
      end

      @config ||= {}
    end

    def get(key)
      @config[key]
    end

    def set!(key, value)
      @config[key] = value
      write
    end

    def write
      open(@path, "w") do |f|
        f << @config.to_yaml
      end
    end
  end
end