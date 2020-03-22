pandoc=pandoc -f markdown+hard_line_breaks
source=$(shell pwd)/source
output=$(shell pwd)/output
name_link=link
name_hebergement=hebergement
DEPS_LINK=$(source)/$(name_link).md


link: $(DEPS_LINK)
	$(pandoc) $(source)/$(name_link).md -o $(output)/$(name_link).odt
	$(pandoc) $(source)/$(name_link).md -o $(output)/$(name_link).pdf

