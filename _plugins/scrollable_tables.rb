module Jekyll
  module ScrollableTables
    def scrollable_tables(content)
      # Wrap every table with a div with class "table-wrapper"
      content.gsub(/<table(.*?)>(.*?)<\/table>/m, '<div class="table-wrapper"><table\1>\2</table></div>')
    end
  end
end

Liquid::Template.register_filter(Jekyll::ScrollableTables)