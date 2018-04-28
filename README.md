# Ryspec

## Development

##### By path (default)

Into gem file

    gem 'ryspec', path: PLUGIN_PATH


##### By git

Into gem file

    gem 'ryspec', git: 'git@git.cz:plugins/ryspec.git'

Into shell

    bundle config local.ryspec PLUGIN_PATH


##### By redmine plugin

Ensure you have redmine plugin for rys plugins

    rails generate rys:redmine:plugin REDMINE_PLUGIN

Move plugin

    mv PLUGIN_PATH REDMINE_PLUGIN/local
