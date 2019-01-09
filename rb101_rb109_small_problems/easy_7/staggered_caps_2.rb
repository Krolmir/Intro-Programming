# Modify the method from the previous exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each
# letter. The non-alphabetic characters should still be included in the return
# value; they just don't count when toggling the desired case.

IS_CHARACTER = /[a-zA-Z]/

def staggered_case(str)
  new_str = ''
  count = 0
  is_caps = true

  loop do
    break if count == str.length
    
    if str[count] =~ IS_CHARACTER
      if is_caps
        new_str += str[count].upcase
      elsif !is_caps
        new_str += str[count].downcase  
      end
      
      is_caps = !is_caps
    else
      new_str += str[count]
    end
    
    count += 1
  end

  p new_str
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
