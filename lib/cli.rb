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