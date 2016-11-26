SITE= _site
RM= rm -rf

all: site

requirements:
	gem install bundler
	bundle install

site:
	jekyll build --destination $(SITE)

serve:
	jekyll serve --destination $(SITE)

clean :
	$(RM) $(SITE)

# publish: site gh-pages

# gh-pages:
# shell/publish gh-pages
