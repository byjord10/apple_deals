
class AppleDeals::CLI
  
  def call 
    deal_list
    deal_selection 
    goodbye 
  end 
  
  def deal_list 
    puts "Hello, here is a list of Apple products on sale this week."
    @deals = AppleDeals::Deals.today 
    @deals.each.with_index(1) do |deal, i|
      pts "#{i}.#{deal.name} - #{deal.price} - #{deal.availability}"
    end
  end 
  
  def deal_selection
    input = nil
    while input != "exit"
    puts "Enter the number of the deal for more info"
    input = gets.strip.downcase
    
    if input.to_i > 0
      puts @deals[input.to_i-1]
    elsif input == "Apple Deals"
        deal_list 
    else 
      puts "If you would like to skip this week, type exit."
    end
  end
end 
 
  def goodbye
    puts "Goodbye! "
    puts "We'll be back with weekly Apple Deals!"
  end 
  
end 

apple_deals::CLI.new.call 

class AppleDeals::CLI 
  
  def call 
    puts "Current Apple Brand Deals Available:"
    available_deals
  end 
  
  def available_deals 
    puts <<-DOC.gsub/^\s*/,''
    1. New Apple iPad (10.2-Inch, Wi-Fi, 128GB) - Silver (Latest Model)
    2. Apple Watch Series 3 (GPS, 38mm) - Space Gray Aluminium Case with Black Sport Band
    3. Apple AirPods with Charging Case (Latest Model)
    4. Beats by Dr. Dre - Beats Solo³ Wireless Headphones - Rose Gold
    5. Beats by Dr. Dre - urBeats³ Earphones with Lightning Connector - Black
    
    
    -DOC
  end 

