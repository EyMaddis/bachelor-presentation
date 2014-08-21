  def break!(packet,argument)
      packet[:break] ||= []
      packet[:break] << {:type => argument}
  end
