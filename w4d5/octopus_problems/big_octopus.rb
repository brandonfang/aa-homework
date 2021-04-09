#O(n^2)
def sluggish_octopus(arr)
    (0...arr.length).each do |i|
        longest = true
        (0...arr.length).each do |j|
            longest = false if arr[j].length > arr[i].length
        end
        return arr[i] if longest
    end
end

#O(n*log(n))
def dominant_octopus(arr)
    merge_sort(arr).last
end

def merge_sort(arr)
    return arr if arr.length < 2
    mid = arr.length / 2 
    left = arr.take(mid)
    right = arr.drop(mid)
    merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
    result = []
    until left.empty? || right.empty?
        result << ((left.first.length > right.length) ? left.shift : right.shift)
    end
    result + left + right
end

#O(n)
def clever_octopus(arr)
    longest = arr[0]
    arr.each do |ele|
        longest = ele if ele.length > longest.length
    end
    longest
end

fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

p sluggish_octopus(fish)
p dominant_octopus(fish)
p clever_octopus(fish)