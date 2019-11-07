class AppleDeals::Deals
  attr_accessor :name, :price, :availability, :url

  def self.today 
    puts <<-DOC
      1. New Apple iPad (10.2-Inch, Wi-Fi, 128GB) - Silver (Latest Model)
      2. Apple Watch Series 3 (GPS, 38mm) - Space Gray Aluminium Case with Black Sport Band
      3. Apple AirPods with Charging Case (Latest Model)
      4. Beats Studio3 Wireless Headphones - Porcelain Rose (Renewed)
     
    DOC
    deal_1 = Deals.new 
    deal_1.name = "New Apple iPad (10.2-Inch, Wi-Fi, 128GB) - Silver (Latest Model)"
    deal_1.price = "$399.98"
    deal_1.availability = true 
    deal_1.url = "https://www.amazon.com/Apple-iPad-10-2-Inch-Wi-Fi-128GB/dp/B07XR5B32Q/ref=sr_1_1?keywords=apple&qid=1572831790&refinements=p_n_condition-type%3A2224371011&s=electronics&sr=1-1 "
    
    deal_2 = Deals.new 
    deal_2.name = "Apple Watch Series 3 (GPS, 38mm) - Space Gray Aluminium Case with Black Sport Band"
    deal_2.price = "$189"
    deal_2.availability = true 
    deal_2.url = "https://www.amazon.com/Apple-Watch-GPS-38mm-Space-Aluminium/dp/B07K39FRSL/ref=sr_1_3?keywords=apple&qid=1573086108&refinements=p_n_condition-type%3A2224371011&s=electronics&sr=1-3 "
    
    deal_3 = Deals.new 
    deal_3.name = "Apple AirPods with Charging Case (Latest Model)"
    deal_3.price = "$144"
    deal_3.availability = true 
    deal_3.url = "https://www.amazon.com/Apple-AirPods-Charging-Latest-Model/dp/B07PXGQC1Q/ref=sr_1_4?keywords=apple&qid=1573086108&refinements=p_n_condition-type%3A2224371011&s=electronics&sr=1-4"
    
    deal_4 = Deals.new 
    deal_4.name = "Beats Studio3 Wireless Headphones - Porcelain Rose (Renewed)"
    deal_4.price = "$179.99"
    deal_4.availability = true 
    deal_4.url = "https://www.amazon.com/Beats-Studio3-Wireless-Headphones-Porcelain/dp/B07G2Q6G3R/ref=sr_1_6?keywords=Beats+by+Dr.+Dre+-+Beats+Solo%C2%B3+Wireless+Headphones+-+Rose+Gold&qid=1573086466&s=electronics&sr=1-6"
    
    [deal_1, deal_2, deal_3, deal_4]
  end
end 