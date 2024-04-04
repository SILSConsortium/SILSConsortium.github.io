# SaskLibraries.ca Jekyll

## Getting Started Locally

To see the site locally, you need to have jekyll and bundler. To do this run the following command in terminal (if on macos):

`gem install jekyll bundler`

Once this is done, run the following:

`bundle install`

and finally, to see the site run the following command:

`bundle exec jekyll serve --livereload`

Now that this is done, you can see the site by navigating to: http://localhost:4000

While this is running, any changes you make to any file in the project will update and automatically refresh the site.

If this guide isn't comprehensive enough see more here: https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll

## Production

Defer to the Github Pages documentation on how to setup Jekyll for github pages: https://docs.github.com/en/pages/quickstart

## Site Anatomy

Generally for managing content on the site you should _only_ need to modify markdown files (files ending in `.md`). 

Most pages are found in the `_pages/` folder, with some sections being being compiled of values from a subset of folders (such as statistics and library regions).

### Pages (with layout default)

The most important information about pages is related to the first bit of the page called the [front matter](https://jekyllrb.com/docs/front-matter/). This defines the title of the page, the permalink (url to get to it), and the layout the page is using. 

Additionally, for the `default` layout, there are optional parameters called: 
- `hide_header` which you can use to hide the header. (similar to members page)
- `banner` which you can use to specify an image. 

Images for the banner are loaded from the `assets` folder, so just put the image you want there, and set it to the name with extension and it will load. Example: `banner: image.jpg` will look for an image in `assets/banner.jpg`.

### Statistics

Statistics pages are made up of a few things:
1. General page (e.g. `_pages/statistics2023.md`) which houses the first paragraph text of the page and some data used to compile the page.
2. A year folder in `_statistics` (e.g. `_statistics/2023`) which houses the sections of the page, as well as highlights.
3. A highlight folder in `_statistics/YEAR/highlights` which contains the value for the highlight.

**Important:** If you clone a folder to add a new year, ensure you update the **Year** in the top portion of the data for each section/highlight otherwise it will _not_ appear on the page.

The general statistics pages (e.g. `_pages/statistics2023.md`) uses the `statistics` layout, and has a required parameter in the front matter called: year. This is very important as it is what is used to link up all the data defined in the year folders back to it.

### Library Regions

Members page is another special layout page. However it is simpler in that the content of the page is largely defined in the `_library-regions` folder.

Each library region is defined in this folder, and is fairly straight forward in what the front matter has defined. This is outlined below:

- **name:** Name of the library
- **website:** URL to library website
- **logo:** Optional Logo for the library, found in /assets/NAME-OF-LIBRARY 
- **address_line_1:** Address line 1 for the main region library
- **address_line_2:** Address line 2 for the main region library, usually Town/City, Province
- **region:** Which region its part of. Possible options: Municipal Libraries, Regional Library Systems, Northern Library System, Provincial Library
- **searchable:** Whether this library should appear in the top to be able to link to. Can be True or False. Only provincial library is false.