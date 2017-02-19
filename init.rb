require 'redmine'

require_dependency 'redmine_telegram_global/listener'

Redmine::Plugin.register :redmine_telegram_global do
  name 'Redmine Telegram Global'
  author 'Andry Kondratiev'
  url 'https://github.com/massdest/redmine_telegram_global'
  author_url 'https://github.com/massdest/'
  description 'Redmine Telegram integration'
  version '0.1'

  requires_redmine :version_or_higher => '0.8.0'

  settings \
		:default => {
      'callback_url' => 'https://api.telegram.org/bot',
      'channel' => nil,
      'username' => 'redmine',
      'display_watchers' => 'no',
      'auto_mentions' => 'yes',
      'new_include_description' => 1,
      'updated_include_description' => 1,
      'use_proxy' => 0,
      'proxyurl' => nil
  },
    :partial => 'settings/telegram_global_settings'
end


