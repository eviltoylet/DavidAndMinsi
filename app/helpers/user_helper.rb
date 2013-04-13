module UserHelper
  def getsentence(hash)
    count = 1
    "On August 16, Minsi and David will #{hash['1']} down the aisle. #{ count > 1 ? 'We are' : 'I am'} so #{hash['2']}
     for Minsi and David! #{ count > 1 ? 'We' : 'I' } wish them #{hash['3']} years of happiness with each other.
     #{ count > 1 ? 'Our' : 'My' } best advice for the wedding? Please don't forget to #{hash['4']} before the wedding
     day! And oh yeah, please play #{hash['5']} so #{ count > 1 ? 'We' : 'I'} can get #{ count > 1 ? 'our' : 'my'}
     #{hash['6']} on the dance floor."
  end

  def getmapping
    {'1'  => 'verb',
     '2'  => 'adjective',
     '3'  => 'number',
     '4'  => 'advice',
     '5'  => 'name of a favorite song',
     '6'  => 'adjective'}
  end

  def is_complete?(hash)
    if hash.nil?
      false
    else
      complete = true
      getmapping.each do |key, value|
        complete = false if hash[key].blank?
        break
      end
      complete
    end
  end
end
