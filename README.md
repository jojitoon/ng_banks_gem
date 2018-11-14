# NgBanks
[![Build Status](https://www.travis-ci.org/JojiAndela/ng_banks_gem.svg?branch=master)](https://www.travis-ci.org/JojiAndela/ng_banks_gem)

Welcome to NG BANKS! Inspired by [ng_banks by Bolaji Olajide](https://github.com/BolajiOlajide/ng_banks)

Ruby Implementation of a Zero dependency gem to get list of banks in Nigeria (Recognized by CBN)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ng_banks'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install ng_banks
```
## Usage
#### To view all banks
```ruby
  NgBanks.getBanks()
```
to get
``` ruby
[{
  :name => "ACCESS BANK PLC",
  :code => "044",
  :slug => "ACC",
  :ussd => "*901#"
},
{
  :name => "CITIBANK NIGERIA PLC",
  :code =>"023",
  :slug => "CBN",
  :ussd => nil
},
...
]
```
#### To view all bank with slug or code
```ruby
  NgBanks.getBank("044")
  or
  NgBanks.getBank("ACC")
```
to get
``` ruby
{
  :name => "ACCESS BANK PLC",
  :code => "044",
  :slug => "ACC",
  :ussd => "*901#"
}
```
#### To view a bank by attributes
Allowed attributes:
```
:code, :slug, :ussd, :name
```
```ruby
  NgBanks.getBank_by(:code, "044")
  or
  NgBanks.getBank_by(:slug, "ACC")
  or
  NgBanks.getBank_by(:ussd, "*901#")
```
to get
``` ruby
{
  :name => "ACCESS BANK PLC",
  :code => "044",
  :slug => "ACC",
  :ussd => "*901#"
}
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jojiAndela/ng_banks. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the NgBanks project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/ng_banks/blob/master/CODE_OF_CONDUCT.md).
