#encoding: utf-8
class SumGotcha < Gotcha::Base

  DEFAULT_MIN = 0
  DEFAULT_MAX = 20

  def initialize
    rand1 = self.class.random_number_in_range
    rand2 = self.class.random_number_in_range
    p I18n.t("sum.of.text", n1: rand1, n2: rand2)
    p I18n.t("sum.howmuch.text", n1: rand1, n2: rand2)
    @question = ["Qual a soma de #{rand1} e #{rand2}?", "Quanto é #{rand1} + #{rand2}?"][rand(2)]
    @answer = rand1 + rand2
  end

  private

  def self.max
    @@max ||= DEFAULT_MAX
  end

  def self.min
    @@min ||= DEFAULT_MIN
  end

  def self.random_number_in_range
    rand(self.max - self.min) + self.min
  end

end
