def badge_maker name
    "Hello, my name is #{name}."
end


def batch_badge_creator name_array
    name_array.map{|name| badge_maker(name)}
end 

def assign_rooms name_array
    name_array.map.with_index{|name, index| "Hello, #{name}! You'll be assigned to room #{index+1}!"}
end

def printer names
    batch_badge_creator(names).each{|output| puts output}
    assign_rooms(names).each{|output| puts output}
end