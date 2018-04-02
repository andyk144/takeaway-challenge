class Menu

  attr_reader :dishes

  def initialize
    @dishes = {
      "Margherita"=> 7.00, "Pepperoni"=> 7.50,
      "Ham & Pineapple"=> 7.50, "Vegetarian"=> 7.00,
      "Meat Feast"=> 8.00
    }
  end

  def readable_menu
    @dishes.map {|item, price| "#{item} pizza : £#{'%.2f' % price}"}.join(", ")
  end

  def item_on_menu?(item)
    @dishes.include?(item)
  end

end
