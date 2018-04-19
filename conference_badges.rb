# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
  badge_array = []
  name_array.each do |name|
    badge_array << badge_maker(name)
  end
  badge_array
end

def assign_rooms(speaker_list)
  room_array = (1..7).to_a
  assignment_list = []
  speaker_list.each_with_index { | speaker, index |
    assignment_list << "Hello, #{speaker}! You'll be assigned to room #{room_array[index]}!"
  }
  assignment_list
end

def printer(attendees)
  batch_badge_creator(attendees).each do | badge |
    puts badge
  end
  assign_rooms(attendees).each do | room_assignment |
    puts room_assignment
  end
end
