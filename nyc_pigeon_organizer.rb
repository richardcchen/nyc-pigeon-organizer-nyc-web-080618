require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  newhash = {}
  data.each do |att1, att2|
    att2.each do |att3symbol, birdarray|
      birdarray.each do |birdname|
        att3 = att3symbol.to_s
        #binding.pry
        if newhash[birdname].nil?
          newhash[birdname] = {att1 => [att3]}
          #binding.pry
        else
          if newhash[birdname][att1].nil? 
            newcategory = {att1 => att3}
            newhash[birdname].merge!(newcategory)
            #binding.pry
          else
            newhash[birdname][att1].push(att3)
          end
        end
      end
    end
  end
binding.pry  
newhash  
end




#att1 = :color
#att3 = :purplel