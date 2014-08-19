  def break!(packet,direction)
      packet[:break] ||= []
      packet[:break] << {:type => direction}
  end
