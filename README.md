# Tremor Bot

This repository contains the configuration of tremor's discord bot.

While this is a somewhat unusual use case it also nicely showcases how flexible tremor is.

The bot has a few features:

## Setup

To set up the bot copy `config/00_source.yaml.example` to `config/00_source.yaml` and add the `token` from the [discord app developer page](https://discord.com/developers/applications).

## Configuration

You can configure which plugins to use in the `config/01_discord.yaml`.

1. run `make init`
2. Get the id's for groups right you can use `\@groupname` to get ids for groups and fill out the config `config/plugins/setup.trickle`
3. (Optional) If you want to use the `tr!setup` command to create a inlined set of rules look at `lib/setup.trickle` then adjust the rules and notes about rules.
4. Find the message ID you want the roles to be configured to. You can do that by selecting `copy message link` in the app, then you have a link like this: `https://discord.com/channels/<...>/<...>/<MESSAGE ID>` and pick the message ID from it. Add this to the `lib/config.tremor`.
5. Select the plugins you want 

## Plugins
### Role selection

Given a post and a set of emojies the bot will automatically let members pick roles they wish to have.

### Inclusivity

We try our best to make tremor an inclusive community, something we saw on the CNCF slack was a bot that suggested alternatives to `guys`. It's not much, but it's a start, so we copied that idea.

### Code of Conduct

The bot will ask people to accept the code of conduct before allowing them to take part in discussions. This will require users to be set into two roles, to verify or unverify them.

To use this the `@everyone` role needs to have no permissions, `@non verified` should have enough permissions to acknowledge the code of conduct, and finally `@verified` (or whatever you call it) needs the normal permissions.

### Jokes

No it doesn't tell joke but you can ask it to. 

### Setup

One off setup tool that will create a welcome message with emojies and possibly code of conducts.


