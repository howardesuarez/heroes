class Hero

    attr_accessor :name
    attr_writer :biography, :appearance, :connections

    @@all = []

    def initialize(name, biography, appearance, connections)
        self.name = name
        self.biography = biography
        self.appearance = appearance
        self.connections = connections
        self.class.all << self
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
