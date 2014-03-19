class Sushu
  def is_prime?(number) #定义方法 判断一个数是否是素数
  j=0 #数组下标
  while $arr[j] * $arr[j] <=number
    return false if number % $arr[j] ==0
    j +=1
  end
  return true
  end

  def is_true?
    true
  end

  def self.is_false?
    false
  end

  def check
    self.checked = true
  end
#  attr_accessor :checked
  attr_reader :checked
  attr_writer :checked
  def checked?
    checked
  end
end