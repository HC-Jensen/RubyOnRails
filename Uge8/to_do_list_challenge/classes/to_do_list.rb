# frozen_string_literal: true

class ToDoList
  include Enumerable

  def initialize (array = [])
    @items = array
  end

  def each
    @items.each { |item| yield(item) }
  end

  def << (elem)
    @items.unshift(elem)
  end
end
