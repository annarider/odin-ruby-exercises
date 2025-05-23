#!/usr/bin/ruby

module Forest

  class Rock ; end
  class Tree ; end
  class Animal ; end

end

module Town

 class Pool ; end
 class Cinema ; end
 class Square ; end
 class Animal ; end

end


p Forest::Tree.new
p Forest::Rock.new
p Town::Cinema.new

# Animals can be in a forest and in a town too. 
# In a single script, we cannot define two animal classes. They would clash. 
# Putting them in different modules we solve the issue.
p Forest::Animal.new
p Town::Animal.new
