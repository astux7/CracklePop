class CracklePop
  def cracklepop(number)
    return 'CracklePop' if divisional_by_fifteen?(number)
    return 'Crackle' if divisional_by_three?(number)
    return 'Pop' if divisional_by_five?(number)
    return number
  end

  def divisional_by_five?(number)
    return number%5 == 0 ? true : false
  end

  def divisional_by_three?(number)
    return number%3 == 0 ? true : false
  end

  def divisional_by_fifteen?(number)
    return divisional_by_three?(number) && divisional_by_five?(number) ? true : false
  end

end