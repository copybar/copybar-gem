# Copybar

Copybar is a Content Management as a service platform that provides the easiest way to edit/manage your content within any Ruby or Rails web app.

No account is needed to start. Just pick a unique username and start using it immediately.

**<http://copybar.io>**

## Features

* inline editor
* pick up and go. no account or setup needed. just start using it.
* create dynamic elements on the fly when you need them (just by using the path)
* full REST api for managing content
* fast, cdn backed
* collaboration tools

## Compatibility

* Rails 3.x
* Padrino
* Sinatra
* Any Ruby

## Installing on Rails 3

Add this to your `Gemfile`:

```ruby
gem "copybar"
```

## Installing on Sinatra/Padrino

Add this to your `Gemfile`:

```ruby
gem "copybar"
```

in your app.rb, you'll also need to register RailsConfig

```ruby
register Copybar
```

## Direct access to your Copybar data

After installing this plugin, the `Copybar` object will be available globally that you use to pull data from your server.


```ruby
Copybar("account-name", "path/to/element")
```

## View Helper

```erb
<%= Copybar("account-name", "path/to/element") %>
```

## Options for helper

You can also manually include the editor tools when pulling your element.

```ruby
Copybar("account-name", "path/to/element", :edit => true)
```

## Authors

* [Copybar](http://github.com/copybar)
