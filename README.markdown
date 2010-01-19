[Titles](http://github.com/jaymendoza/spree-titles)
---------------------------------------------------

This extension replaces the general Spree title with accurate titles.

### Installation

    ./script/extension install git://github.com/jaymendoza/spree-titles.git
   
### Notes

This extension relies on using the title and default_title methods introduced in Edge Spree in mid-July 2009.  If you want to take advantage of this extension ensure you have a version of Spree that contains these methods.

Your application layout template (application.html.erb) will need to use the following code:

    <title><%= title %></title>

Feedback and contributions welcome, [Eliot Sykes](http://github.com/eliotsykes)
