# Fast-Actions plugin

Personal CLI support for common actions

## Description

This plugin provides a personalised experience of those command that I find useful and they are not provided out of the box through other zsh plugin. 

## Usage

This plugin supplies one command, `fa`, through which all its features are exposed. 

```bash
fa              # doesn't perform any action.

fa jira         # detects a jira issue given a `$JIRA_PROJECT_PREFIX` value and opens the ticket in the browser using the `jira` zsh plugin.
fa github       # detects the current remote repository and opens the https url of it in the browser.
```

## Setup

First we have to configure the [jira plugin](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/jira) of zsh that it's what will give us integration with our JIRA project.

Then we have to set an environment variable `$JIRA_PROJECT_PREFIX` that matches the project
prefix we want to use this plugin for. The project prefix is the text that appear in front of the ticket numbers. For example `ABC-`.

### Browser

Your default web browser, as determined by how `open_command` handles `https://` URLs, is used for interacting with the JIRA instance or open git remote urls.
