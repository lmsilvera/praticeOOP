require 'rubygems'
require 'highline/import'

# Create a color scheme, naming color patterns with symbol names.
ft = HighLine::ColorScheme.new do |cs|
        cs[:headline]        = [ :bold, :yellow, :on_black ]
        cs[:horizontal_line] = [ :bold, :white, :on_blue]
        cs[:even_row]        = [ :green ]
        cs[:odd_row]         = [ :magenta ]
     end

# Assign that color scheme to HighLine...
HighLine.color_scheme = ft

# ...and use it.
say("<%= color('Headline', :headline) %>")
say("<%= color('-'*80, :horizontal_line) %>")

# Setup a toggle for rows.
i = true
("A".."D").each do |row|
    row_color = i ? :even_row : :odd_row
    say("<%= color('#{row}', '#{row_color}') %>")
    i = !i
end