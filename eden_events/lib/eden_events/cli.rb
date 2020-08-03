class EdenEvents::CLI
  def call
    puts 'Welcome to Eden!'
  end
  
  def get_months
    @months = ['J','A','S','D']
  end
  
  def list_months
    @months.each.with_index(1) do |month, index|
      puts "#{index +1}. #{month}" end
  end
end