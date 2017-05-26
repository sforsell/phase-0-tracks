class TodoList
  def initialize(array)
    @array = array
  
  end

  def get_items
    puts @array
    @array  
  end

  def add_item(new_item)
    @array << new_item
  end

  def delete_item(item)
    @array.delete(item)
  end

  def get_item(item)
   @array[item]
  end

end