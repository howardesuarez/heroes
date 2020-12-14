class Hero

    attr_accessor :name, :biography, :appearance, :connections

    @@all = []

    def initialize(name, biography, appearance, connections)
        @name = name
        @biography = biography
        @appearance = appearance
        @connections = connections
        @@all << self
    end

    def self.all
        @@all
    end

    def biography
        @biography.collect {|key,value| "#{key}: #{value}"}

    end

    def appearance
        @appearance.collect {|key,value| "#{key}: #{value}"}

    end

    def connections
        @connections.collect {|key,value| "#{key}: #{value}"}
    end





end
