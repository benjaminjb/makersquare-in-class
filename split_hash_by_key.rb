# split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, :c, :e )
# # returns [ {:a=>1, :b=>2}, {:c=>3, :d=>4}, {:e=>5, :f=>6} ]

# split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, :b, :f )
# #returns [ {:a=>1}, {:b=>2, :c=>3, :d=>4, :e=>5}, {:f=>6} ]

# split_hash_by_key( { 'a'=>1, 'b'=>2, 'c'=>3, 'd'=>4, 'e'=>5, 'f'=>6 }, 'd' )
# #returns [ {"a"=>1, "b"=>2, "c"=>3}, {"d"=>4, "e"=>5, "f"=>6} ]

# split_hash_by_key( {:a => 1, :b => 2}, :a )
# #returns [ {:a => 1, :b => 2} ]

# split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, 'b' )
# # raises an exception

class Hashsplit
  def self.split_hash_by_key(hash, *split)

    
    raise error if split.any? {|x| !x.is_a?(Symbol)}

    solution = Array.new(split.length + 1) { {} }

    counter = 0
    hash.each_key do |key|
      if split[counter].nil? || split[counter] != key
        solution[counter][key] = hash[key]
      elsif split[counter] == key
        counter += 1
        solution[counter][key] = hash[key]
      end
    end
    return solution
  end

#     raise error if split.any? {|x| !x.is_a?(Symbol)}
#     solution = Array.new(split.length + 1) { {} }

#     counter = 0
#     hash.each_key do |key|
#       if split[counter].nil? || split[counter] != key
#         solution[counter][key] = hash[key]
#       elsif split[counter] == key
#         counter += 1
#         solution[counter][key] = hash[key]
#       end
#     end
#     return solution
#   end
# end

  #   solution = Array.new(hash.length) { {} }
  #   counter = 0
  #   hash.each_key do |key|
  #     if split[counter].nil? || split[counter] != key
  #       solution[counter][key] = hash[key]
  #     elsif split[counter] == key
  #       counter += 1
  #       solution[counter][key] = hash[key]
  #     end
  #   end
  #   solution.delete_if {|x| x == {}}
  #   puts solution
  # end


  #   solution = []
  #   sub_hash = {}
  #   counter = 0
  #   hash.each_key do |key|
  #     if split[counter].nil? || split[counter] != key 
  #       sub_hash[key] = hash[key]
  #     elsif split[counter] == key
  #       solution << sub_hash
  #       sub_hash = {}
  #       sub_hash[key] = hash[key]
  #       counter += 1
  #     end
  #   end
  #   puts solution
  # end
end

# Hashsplit.split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, :c, :e )
x = Hashsplit.split_hash_by_key( {:a => 1, :b => 2}, :a )
puts x