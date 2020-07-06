# Idolmaster

![Ruby](https://github.com/hikko624/idolmaster/workflows/Ruby/badge.svg)

A reference for Idolmaster all series.

This gem is inspired by [sue445/rubicure](https://github.com/sue445/rubicure) and [imas/rubimas](https://github.com/imas/rubimas/) strongly.

[Idolmaster Official Site](https://idolmaster.jp/about/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'idolmaster'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install idolmaster

## Usage

```ruby
Idolmaster.cinderella_girls[77]
=> {:id=>78, :name=>"佐藤心", :kana=>"さとうしん", :height=>"166cm", :weight=>"ﾀﾞｲｴｯﾄちゅう", :size=>"ぼんっ/きゅっ/ぼんっ♪", :birth=>"7月22日", :age=>"26歳", :blood=>"AB型", :type=>"passion", :from=>"長野", :cv=>"花守ゆみり"}

Idolmaster.cinderella_girls[77][:name]
=> "佐藤心"

Idolmaster.cinderella_girls[77][:size]
=> "ぼんっ/きゅっ/ぼんっ♪"

Idolmaster.original[0]
=> {:id=>1, :name=>"天海春香", :kana=>"あまみはるか", :height=>"158", :weight=>"45", :bust=>"83", :waist=>"56", :hip=>"80", :birth=>"4月3日", :age=>"16", :blood=>"O", :from=>"神奈川県", :cv=>"中村繪里子"}

Idolmaster.shiny_colors[0]
=> {:id=>1, :name=>"櫻木真乃", :kana=>"さくらぎまの", :height=>"155", :weight=>"48", :bust=>"86", :waist=>"58", :hip=>"88", :birth=>"4月25日", :age=>"16", :blood=>"A", :from=>"東京", :unit=>"イルミネーションスターズ", :cv=>"関根瞳"}

Idolmaster.side_m[0]
=> {:id=>1, :name=>"天ヶ瀬冬馬", :kana=>"あまがせとうま", :height=>"175", :wight=>"57", :bust=>"81", :waist=>"65", :hip=>"80", :birth=>"3月3日", :age=>"17", :type=>"フィジカル", :shoes_size=>"25.5", :blood=>"B", :from=>"神奈川", :unit=>"Jupiter", :cv=>"寺島拓篤"}

Idolmaster.million_live[0]
=> {:id=>"amami_haruka", :name=>"天海春香", :kana=>"あまみはるか", :height=>"158", :weight=>"46", :bust=>"83", :waist=>"56", :hip=>"82", :birth=>"4月3日", :age=>"17", :blood=>"O", :from=>"神奈川県", :type=>"Princess", :favorite=>["カラオケ", "長電話"], :cv=>"中村繪里子"}
```

```ruby
Rubimas::Idol.find(:cinderella_girls)[77]
=> {:id=>78, :name=>"佐藤心", :kana=>"さとうしん", :height=>"166cm", :weight=>"ﾀﾞｲｴｯﾄちゅう", :size=>"ぼんっ/きゅっ/ぼんっ♪", :birth=>"7月22日", :age=>"26歳", :blood=>"AB型", :type=>"passion", :from=>"長野", :cv=>"花守ゆみり"}

Rubimas::Idol.find(:original)[0]
=> {:id=>1, :name=>"天海春香", :kana=>"あまみはるか", :height=>"158", :weight=>"45", :bust=>"83", :waist=>"56", :hip=>"80", :birth=>"4月3日", :age=>"16", :blood=>"O", :from=>"神奈川県", :cv=>"中村繪里子"}

Rubimas::Idol.find(:shiny_colors)[0]
=> {:id=>1, :name=>"櫻木真乃", :kana=>"さくらぎまの", :height=>"155", :weight=>"48", :bust=>"86", :waist=>"58", :hip=>"88", :birth=>"4月25日", :age=>"16", :blood=>"A", :from=>"東京", :unit=>"イルミネーションスターズ", :cv=>"関根瞳"}

Rubimas::Idol.find(:side_m)[0]
=> {:id=>1, :name=>"天ヶ瀬冬馬", :kana=>"あまがせとうま", :height=>"175", :wight=>"57", :bust=>"81", :waist=>"65", :hip=>"80", :birth=>"3月3日", :age=>"17", :type=>"フィジカル", :shoes_size=>"25.5", :blood=>"B", :from=>"神奈川", :unit=>"Jupiter", :cv=>"寺島拓篤"}

Rubimas::Idol.find(:million_live)[0]
=> {:id=>"amami_haruka", :name=>"天海春香", :kana=>"あまみはるか", :height=>"158", :weight=>"46", :bust=>"83", :waist=>"56", :hip=>"82", :birth=>"4月3日", :age=>"17", :blood=>"O", :from=>"神奈川県", :type=>"Princess", :favorite=>["カラオケ", "長電話"], :cv=>"中村繪里子"}
```

## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Idolmaster project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hikko624/idolmaster/blob/master/CODE_OF_CONDUCT.md).
