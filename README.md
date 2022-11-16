# Recipe Meal Planner

I love cooking and baking so I made a recipe meal planner app. This way I can keep all my recipes in one place whilst also keeping track of which items I have in my pantry. It takes a way the stress of finding recipes and allows me to not have to exhast all my creativity on planning my weakly meals.

I used ruby "3.1.2" and gem "rails", "~> 7.0.4".
I also implemented a recipe finder API from edemam [edemam API](https://www.edamam.com)

![screenshot](screenshot.png)

## Installation

```bash
bundle install
rails db:create db:migrate db:seed
```

## Usage

```bash
rails server
```

You can test web requests as documented in the `requests.http` file.

## Roadmap

I would like to implement a calnedar scheduler API so that I would be able to add recipes to different days of the week.
