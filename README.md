# Omniauth Onedrive

A OneDrive / Windows Live strategy for OmniAuth. Created according the OneDrive documentation. A Windows Live app needs to be created in the Developer Center - https://dev.onedrive.com/app-registration.htm.

More information about the OAuth authentication method can be found here:
https://dev.onedrive.com/auth/msa_oauth.htm

This gem is slighty based on the version of Plexinc (https://github.com/plexinc/omniauth-live-connect), but I found out after I completed and implemented the gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-onedrive'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-onedrive

## Usage

    # Add to OmniAuth::Builder do
    provider :onedrive, ENV['live_client_id'], ENV['live_secret_key'], 
      { :scope => 'wl.signin wl.basic' }

## Contributing

1. Fork it ( https://github.com/[my-github-username]/omniauth-onedrive/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
