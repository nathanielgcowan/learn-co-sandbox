class EdenEvents::CLI
  def call
    puts 'Welcome to Eden!'
    get_months
    list_months
    get_user_month
  end
  
  def get_months
    @months = ['J','A','S','D']
  end
  
  def list_months
    @months.each.with_index(1) do |month, index|
      puts "#{index +1}. #{month}" end
  end
  
  def get_user_month
    chosen_month = gets.strip
    binding.pry
  end
end