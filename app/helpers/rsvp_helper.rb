module RsvpHelper
  def getsentence(hash)
    "On August 16, 2012, Minsi and David will #{hash["1"]} down the aisle. #{hash["2"]} #{hash["3"]} be there to
     #{hash["4"]} them. When we #{hash["5"]} the invitation, we were so #{hash["6"]} for Minsi and David!  They
     are the most #{hash["7"]} #{hash["8"]} and we wish them #{hash["9"]} years of happiness with each other.
     Our best advice for the wedding?  Don't forget to #{hash["10"]} before you #{hash["11"]} and #{hash["12"]} after the
     #{hash["13"]}!"
  end

  def getmapping
    {"1"  => "verb",
     "2"  => "your names",
     "3"  => "will/won't",
     "4"  => "verb",
     "5"  => "verb past tense",
     "6"  => "adjective",
     "7"  => "adjective",
     "8"  => "plural noun",
     "9"  => "number",
     "10" => "advice",
     "11" => "verb",
     "12" => "advice",
     "13" => "noun"}
  end

  def is_complete?(hash)
    getmapping.each do |key, value|
      return false if hash[key].blank?
    end
    return true
  end
end

