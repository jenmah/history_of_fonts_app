# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Combination.delete_all
Font.delete_all
Combinations_font.delete_all


# Font Objects:
helvetica = Font.create(font_name: "Helvetica", year_released: 1957, classification: "sans-serif", history: "It is a neo-grotesque or realist design, one influenced by the famous 19th century typeface Akzidenz-Grotesk and other German and Swiss designs. Known as the invisible typeface due to the extent of its visibility and influence, it is among of the most popular typefaces of the 20th century, its use became a hallmark of the International Typographic Style that emerged from the work of Swiss designers in the 1950s and 60s.")

futura = Font.create(font_name: "Futura", year_released: 1927, classification: "sans-serif", history: "Futura is a geometric sans-serif typeface designed by Paul Renner. It was designed as a contribution on the New Frankfurt-project. It is based on geometric shapes that became representative of visual elements of the Bauhaus design style of 1919–33. Commissioned by the Bauer Type Foundry, in reaction to Ludwig & Mayer's seminal Erbar of 1922, Futura was commercially released in 1936.")

josefin_sans = Font.create(font_name: "Josefin Sans", year_released: 2014, classification: "sans-serif", history: "The idea for creating this typeface was to make it geometric, elegant and kind of vintage, especially for titling. It is inspired by Rudolf Koch's Kabel (1927), Rudolf Wolf's Memphis (1930), Paul Renner's Futura (1927).")

merriweather = Font.create(font_name: "Merriweather", year_released: 2013, classification: "serif", history: "Merriweather was designed to be a text face that is pleasant to read on screens. Merriweather is an evolving project and will be updated. As of now there are 4 styles: Regular, Light, Bold, and Black. There are now Italic styles in each of these weights, too.")

# Combination Objects:
c1 = Combination.create(name: 'JosefinSansAndMerriweather', description: "Josefun Sans works well as the header. Blah blah blah")

