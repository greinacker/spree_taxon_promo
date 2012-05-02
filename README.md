SpreeTaxonPromo
===============

This gem adds a Promotion to Spree that allows you to run a promo on products within a certain taxon. So for example, if you had a taxon that looked like

```
Meals
Desserts
  Cookies
  Cake
```

You could have a promo that said something like "if you buy over $100 in desserts, get 10% off of them".

There are two parts - the promotion, and the calculator. These can be used separately, or together. The calculator lets you create an adjustment for "10% off of desserts", as opposed to the regular flat percent calculator that will let you have "10% off".

To use, just add to your gemfile:

`gem 'spree_taxon_promo', :git => 'git://github.com/greinacker/spree_taxon_promo'`

Copyright (c) 2012 Greg Reinacker, released under the New BSD License
