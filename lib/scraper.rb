class Scraper  

    def scrape_cats(url)
        html = open(url)
        Nokogiri::HTML(html).css()
        #return hash of cats
    end

    def scrape_cat_details(url)
        html = open(url)
        Nokogiri::HTML(html).css()
        #return hash 
    end

end
