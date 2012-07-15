class PalindromesController < ApplicationController
  # GET /palindromes
  # GET /palindromes.json

  helper_method :isPalindrome
  def isPalindrome(inputString)
    string = inputString.gsub(/\W/,"")
    if (string == "" )
      return false
    end
    string = string.downcase
    revString = string.reverse
    if (string == revString)
      return true
    else
      return false
    end 
  end
  
  def validate
    @isPalindrome = isPalindrome(params[:input])
    
    #render @isPalindrome
  end

end