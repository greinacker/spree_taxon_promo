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

## Contributors

- Scott Wagner

## License

```
Copyright (c) 2012, Greg Reinacker
Copyright (c) 2014, Acid Labs

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```

