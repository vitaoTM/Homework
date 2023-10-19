class Map
  def initialize
    @mapper = []
  end

  def set(key, value)
    pair_index = mapper.index { |pair| pair[0] == value }
    if pair_index
      mapper[pair_index][1] == value
    else
      mapper.push([key, value])
    end
    value
  end

  def get(key)
    mapper.each { |pair| return pair[1] if pair[0] == key }
    nil
  end

  def delete
    value = get(key)
    mapper.reject! { |pair| pair[0] == key }
    value
  end

  def show
    dup_arr(mapper)
  end

  private
  attr_reader :mapper

  def dup_arr(arr)
    arr.map { |el| el.is_a?(Array) ? dup_arr(el) : el }
  end
end