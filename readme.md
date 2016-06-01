# Test Application with no datastore backing (Ruby)

**PURPOSE**

Provide a simple application you can fire up and serve over http/s to validate that your deployment process, pipeline, environment, or other such system works as desired.

## How to launch (in dev mode on your laptop/local machine)

Make sure runtime dependencies are installed, then `bundle exec puma`.

### Runtime Dependencies

You need:

+ A valid GCC build environment
+ Ruby + Rubygems
+ Bundler

And that's it. No external dependencies.

Quick walkthrough on OS X to get started:

```sh
xcode-select --install # os build tools
gem install bundler
cd /path/to/this/app
bundle
bundle exec puma
```

### In production...

This is going to differ based on your distribution and how you deploy in production, but in a nutshell just make sure you have the equivalent of Ubuntu's `build-essential` package installed, your Ruby interpreter of choice, and a valid Rubygems installation.

```sh
sudo apt-get install build-essential
# install ruby via your preferred method; maybe the ruby-build project?
cd /path/to/this/app
bundle
bundle exec puma
```

