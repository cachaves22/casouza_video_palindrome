require_relative "casouza_video_palindrome/version"

module CasouzaVideoPalindrome
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

private

  # Returns content for palindrome testing.
  def processed_content
    to_s.scan(/[a-z\d]/i).join.downcase
  end
end

  class String
    include CasouzaVideoPalindrome
    
  end

  class Integer
    include CasouzaVideoPalindrome
    
  end
