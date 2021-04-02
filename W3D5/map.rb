class Map
    def initialize
        @map = []
    end

    def set(key, value)
        if get(key).nil?
            @map << [key, value]
            return [key, value]
        else
            @map.each_with_index do |pair, i|
                if pair[0] == key
                    @map[i] << value
                    return @map[i]
                end
            end
        end
        nil
    end

    def get(key)
        @map.each do |pair|
            return pair[1] if pair[0] == key
        end
        nil
    end

    def delete(key)
        @map.each_with_index do |pair, i|
            if pair[0] == key
                value = pair[1]
                @map.delete_at(i)
                return value
            end
        end
        nil
    end

    def show
        puts "{"
        @map.each { |pair| puts "  #{pair[0]} => #{pair[1]},"}
        puts "}"
    end
end