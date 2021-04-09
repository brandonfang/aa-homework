tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(str, tiles_array)
    tiles_array.each_with_index do |ele, i|
        return i if ele == str
    end
    nil
end

tiles_hash = {"up"=>0, "right-up"=>1, "right"=>2, "right-down"=>3, "down"=>4, "left-down"=>5, "left"=>6,  "left-up"=>7}

def fast_dance(str, tiles_hash)
    tiles_hash[str]
end
