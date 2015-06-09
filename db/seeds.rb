# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Combination.delete_all
Font.delete_all
CombinationFont.delete_all


# Font Objects:
helvetica = Font.create(font_name: "Helvetica", year_released: 1957, classification: "sans-serif", history: "It is a neo-grotesque or realist design, one influenced by the famous 19th century typeface Akzidenz-Grotesk and other German and Swiss designs. Known as the invisible typeface due to the extent of its visibility and influence, it is among of the most popular typefaces of the 20th century, its use became a hallmark of the International Typographic Style that emerged from the work of Swiss designers in the 1950s and 60s.")

futura = Font.create(font_name: "Futura", year_released: 1927, classification: "sans-serif", history: "Futura is a geometric sans-serif typeface designed by Paul Renner. It was designed as a contribution on the New Frankfurt-project. It is based on geometric shapes that became representative of visual elements of the Bauhaus design style of 1919–33. Commissioned by the Bauer Type Foundry, in reaction to Ludwig & Mayer's seminal Erbar of 1922, Futura was commercially released in 1936.")

josefin_sans = Font.create(font_name: "Josefin Sans", year_released: 2014, classification: "sans-serif", history: "The idea for creating this typeface was to make it geometric, elegant and kind of vintage, especially for titling. It is inspired by Rudolf Koch's Kabel (1927), Rudolf Wolf's Memphis (1930), Paul Renner's Futura (1927).")

merriweather = Font.create(font_name: "Merriweather", year_released: 2013, classification: "serif", history: "Merriweather was designed to be a text face that is pleasant to read on screens. Merriweather is an evolving project and will be updated. As of now there are 4 styles: Regular, Light, Bold, and Black. There are now Italic styles in each of these weights, too.")

bodoni = Font.create(font_name: "Bodoni", year_released: 1798, classification: "serif", history: "Bodoni is a series of serif typefaces first designed by Giambattista Bodoni (1740–1813) in 1798. Bodoni followed the ideas of John Baskerville, as found in the printing type Baskerville: increased stroke contrast and a more vertical, slightly condensed, upper case; but took them to a more extreme conclusion. Bodoni had a long career and his designs evolved and varied, ending with a typeface of narrower underlying structure with flat, unbracketed serifs, extreme contrast between thick and thin strokes, and an overall geometric construction.")

playfair_display = Font.create(font_name: "Playfair Display", year_released: 1111, classification: "serif", history: "Playfair is a transitional design. From the time of enlightenment in the late 18th century, the broad nib quills were replaced by pointed steel pens. This influenced typographical letterforms to become increasingly detached from the written ones. Developments in printing technology, ink, and paper making, made it possible to print letterforms of high contrast and delicate hairlines.")


# Combination Objects:
c1 = Combination.create(name: 'JosefinSansAndMerriweather', description: "Josefin Sans works well as the header. Blah blah blah")

c2 = Combination.create(name: 'JosefinSansAndBodoni', description: "Use Bodoni as the header in bold, and a light version of Josefin as the body")


# Assign fonts to combinations
c1.fonts << merriweather
c1.fonts << josefin_sans

c2.fonts << josefin_sans
c2.fonts << bodoni



puts "seeded"

