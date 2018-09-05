class CLI
    def initialize
        
    end

    def start(url)
        create_cats(Scraper.scrape_cats(url))
        list_cats(url)
        
    end

    def create_cats(scraped_cats)
        scraped_cats = Scraper.scrape_cats #hash of cats and urls 
        scraped_cats.each do |cat|
            url = cat[:url]  #the URL for a cat's details page
            cat_details = Scraper.scrape_cat_details(url)
            Cat.new(cat_details)
        end
    end

    def list_cats(url)
        puts 'Here are various cat breeds:'
        Cat.all.each.with_index do |index, cat| 
            puts "#{index + 1}. #{cat.name}"
        end
        puts 'Which breed do you want to learn more about?'
    end

    def get_input 
        input = gets
        case input
        when 'exit'
            puts 'Exiting...Bye!'
            exit
        end
    end

    def show(cat)

    end

    def quit

    end
end

# Here are various cat breeds:
# 1
# 2
# 3

# Which breed do you want to learn more about?


# Surmese:
# Bered: wefwef
# Fefwe: wefawefb
# Bwefwe: vawevwab

# Type ‘cats’ and ENTER to see list of the cats again.
# ‘exit’ to exit
