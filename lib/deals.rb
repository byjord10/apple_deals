class AppleDeals::Deals
  attr_accessor :name, :price, :availability, :url

  def self.today
    self.scrape_deals
  end

  def self.scrape_deals

    deal_1 = self.new
    deal_1.name = "New Apple MacBook Air (13-inch, 1.6GHz dual-core Intel Core i5, 8GB RAM, 128GB) - Space Gray"
    deal_1.price = "$999.00"
    deal_1.availability = true
    deal_1.url = "https://www.amazon.com/dp/B07V1PHKPM/ref=fs_a_mb_1 "

    deal_2 = self.new
    deal_2.name = "Apple Watch Series 3 (GPS, 38mm) - Space Gray Aluminium Case with Black Sport Band"
    deal_2.price = "	$1,599.00 "
    deal_2.availability = true
    deal_2.url = "https://www.amazon.com/dp/B07S1YPSGT/ref=fs_a_mb_2"

    deal_3 = self.new
    deal_3.name = "New Apple MacBook Pro (15-inch, 16GB RAM, 256GB Storage) - Space Gray"
    deal_3.price = "$2,099.99"
    deal_3.availability = true
    deal_3.url = "https://www.amazon.com/dp/B07RZWHHHP/ref=fs_a_mb_3"

    deal_4 = self.new
    deal_4.name = "Apple Magic Mouse 2 (Wireless, Rechargable) - Space Gray"
    deal_4.price = "$86.00 "
    deal_4.availability = true
    deal_4.url = "https://www.amazon.com/Apple-Magic-Mouse-Wireless-Rechargable/dp/B07BR94PPD?ref_=ast_sto_dp&th=1&psc=1"

    [deal_1, deal_2, deal_3, deal_4]
  end
end
