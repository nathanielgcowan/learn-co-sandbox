class EdenEvents::CLI
    def call
      puts 'Welcome to Eden'
      get_advertised_months
      get_user_month
      # get_events for(month)
      #list_month
    end
    
    def get_advertised_months
      # to be scraped instead
      @months = ['"July 2019","Aug 2019", "Sep 2019", "Oct 2019"']
    end
    
    def get_user_month
      # list months
      @months.each.with_index do |month, index| #[index], #[month]
        binding.pry
        puts "#{index} #{month}"
      end
    end
  end