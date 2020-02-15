@slot_entries = ["@","#","$","%","^","&","*","=","+","?","!","/","~"] #13 entries
@slot_return = Array.new
#puts @slot_entries

3.times do
   @slot_return << @slot_entries.sample
end

puts @slot_return.join(' ')