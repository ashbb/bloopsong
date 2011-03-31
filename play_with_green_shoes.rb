require 'green_shoes'

Shoes.app width: 500, height: 100, title: 'Bloopsaphone Play Lists'do
  background mediumspringgreen..hotpink, angle: 90
  nostroke
  style Shoes::Link, underline: false, weight: 'bold', stroke: '#A06'
  style Shoes::LinkHover, stroke: '#06E'

  plists = Dir.glob './sample/*.rb'

  i = 0
  plists.each do |list|
    y = 10 + 24 * i
    song, auther = File.basename(list, '.rb'), 'melborne (kyoendo)'
    rect width: 480, height: 20, left: 10, top: y, fill: rgb(75, 0, 130, 0.2), curve: 5
    pos = i.zero? ? {margin_left: 20, margin_top: 10} : {margin_left: 20}
    tab = "\t"
    tabs = song.length < 7 ? tab * 5 : tab * 4
    para link(song){load list}, tabs, fg(strong(auther), white), pos
    i += 1
  end
end
