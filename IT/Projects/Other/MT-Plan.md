# General ideas

- graphics - [image to pdf](https://www.ilovepdf.com/jpg_to_pdf) + text insertion in certain places + image area
- text - word api [maybe](https://www.devexpress.com/products/net/office-file-api/word/)
- lookup [pdf docs](https://en.wikipedia.org/wiki/PDF)
- how [ILovePDF](https://www.ilovepdf.com/) works?
- interface:
    - md editor (vs code integration look how [compiler explorer](https://godbolt.org/) does it)
    - settings page (student preset)
- margins:

| side   | value |
| ------ | ----- |
| left   | 2.5   |
| right  | 1.5   |
| bottom | 2     |
| top    | 2     |

- general rules
    - `Table of contents` start at Intro, end ar Outro
    - `Headings #` new page, center aligned, bold, \n below
    - `Headings ##` left aligned, bold, follow the `Text` rules, end with number of `Headings #`.order of appearance
    - `Headings ###` follow `Headings ##` rules, end with number of `Headings ##`.order of appearance
    - `Text` every paragraph starts from 1.25 tab, 1.5 line spacing, justified alignment, no space after paragraphs
    - `Image` center aligned, contains `Caption`, width must be less than `page_width - left_margin - right_margin`
    - `Caption` center aligned, italics, MUST BE MENTIONED ABOVE, space before and after paragraph 6 pt, numbering references `Headings #` number, and appearance number
    - `Tables` center aligned, contains `Table caption`
    - `Table caption` contains `Table identifier`, `Table name`
    - `Table identifier` right aligned numbering references `Headings #` number, and appearance number
    - `Table name` center aligned, follow `Text` rules
    - `Reference to literature` appears after targeted sentence (use md reference and generate after)
    - `References` must follow "ДСТУ 8302:2015
    - `Page numbering` start at intro end at additions
    - `Last Heading ##` Must not have a number, follow `Headings ##` rules

- Order of appearance
    - Header (1)
    - Tasks (2)
    - Abstract uk_UA (1+)
    - Abstract en_US / en_UK (1+)
    - Table of contents (1+)
    - Shortenings (1+)
    - Intro (2+) # start of numbering
    ...
    - Part 1
    - Part 2
    - Part 3
    ...
    - Outro (2+) # start of numbering
    - References (1+)
    - Additions
    - Additions A Code
    - Additions B Images