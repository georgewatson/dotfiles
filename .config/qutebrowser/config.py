# Autogenerated config.py
#
# NOTE: config.py is intended for advanced users who are comfortable
# with manually migrating the config file on qutebrowser upgrades. If
# you prefer, you can also configure qutebrowser using the
# :set/:bind/:config-* commands without having to write a config.py
# file.
#
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Change the argument to True to still load settings configured via autoconfig.yml
config.load_autoconfig(False)

# Aliases for commands. The keys of the given dictionary are the
# aliases, while the values are the commands they map to.
# Type: Dict
c.aliases = {'w': 'session-save', 'q': 'quit', 'wq': 'quit --save'}

# Backend to use to display websites. qutebrowser supports two different
# web rendering engines / backends, QtWebEngine and QtWebKit (not
# recommended). QtWebEngine is Qt's official successor to QtWebKit, and
# both the default/recommended backend. It's based on a stripped-down
# Chromium and regularly updated with security fixes and new features by
# the Qt project: https://wiki.qt.io/QtWebEngine QtWebKit was
# qutebrowser's original backend when the project was started. However,
# support for QtWebKit was discontinued by the Qt project with Qt 5.6 in
# 2016. The development of QtWebKit was picked up in an official fork:
# https://github.com/qtwebkit/qtwebkit - however, the project seems to
# have stalled again. The latest release (5.212.0 Alpha 4) from March
# 2020 is based on a WebKit version from 2016, with many known security
# vulnerabilities. Additionally, there is no process isolation and
# sandboxing. Due to all those issues, while support for QtWebKit is
# still available in qutebrowser for now, using it is strongly
# discouraged.
# Type: String
# Valid values:
#   - webengine: Use QtWebEngine (based on Chromium - recommended).
#   - webkit: Use QtWebKit (based on WebKit, similar to Safari - many known security issues!).
c.backend = 'webengine'

# Always restore open sites when qutebrowser is reopened. Without this
# option set, `:wq` (`:quit --save`) needs to be used to save open tabs
# (and restore them), while quitting qutebrowser in any other way will
# not save/restore the session. By default, this will save to the
# session which was last loaded. This behavior can be customized via the
# `session.default_name` setting.
# Type: Bool
c.auto_save.session = True

# Which cookies to accept. With QtWebEngine, this setting also controls
# other features with tracking capabilities similar to those of cookies;
# including IndexedDB, DOM storage, filesystem API, service workers, and
# AppCache. Note that with QtWebKit, only `all` and `never` are
# supported as per-domain values. Setting `no-3rdparty` or `no-
# unknown-3rdparty` per-domain on QtWebKit will have the same effect as
# `all`. If this setting is used with URL patterns, the pattern gets
# applied to the origin/first party URL of the page making the request,
# not the request URL.
# Type: String
# Valid values:
#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.
config.set('content.cookies.accept', 'all', 'chrome-devtools://*')

# Which cookies to accept. With QtWebEngine, this setting also controls
# other features with tracking capabilities similar to those of cookies;
# including IndexedDB, DOM storage, filesystem API, service workers, and
# AppCache. Note that with QtWebKit, only `all` and `never` are
# supported as per-domain values. Setting `no-3rdparty` or `no-
# unknown-3rdparty` per-domain on QtWebKit will have the same effect as
# `all`. If this setting is used with URL patterns, the pattern gets
# applied to the origin/first party URL of the page making the request,
# not the request URL.
# Type: String
# Valid values:
#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.
config.set('content.cookies.accept', 'all', 'devtools://*')

# Default encoding to use for websites. The encoding must be a string
# describing an encoding such as _utf-8_, _iso-8859-1_, etc.
# Type: String
c.content.default_encoding = 'utf-8'

# Allow websites to share screen content.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
c.content.desktop_capture = 'ask'

# Value to send in the `Accept-Language` header. Note that the value
# read from JavaScript is always the global value.
# Type: String
c.content.headers.accept_language = 'en-GB,en'

# Custom headers for qutebrowser HTTP requests.
# Type: Dict
c.content.headers.custom = {}

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0', 'https://docs.google.com/*')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0', 'https://drive.google.com/*')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version} Edg/{upstream_browser_version}', 'https://accounts.google.com/*')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'chrome-devtools://*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'file://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome-devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# Allow websites to show notifications.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
config.set('content.notifications', True, 'https://calendar.google.com')

# Allow websites to show notifications.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
config.set('content.notifications', True, 'https://www.duolingo.com')

# Enable plugins in Web pages.
# Type: Bool
c.content.plugins = True

# Allow websites to register protocol handlers via
# `navigator.registerProtocolHandler`.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
config.set('content.register_protocol_handler', True, 'https://mail.google.com/*')

# Allow websites to register protocol handlers via
# `navigator.registerProtocolHandler`.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
config.set('content.register_protocol_handler', True, 'https://calendar.google.com/*')

# Validate SSL handshakes.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
c.content.ssl_strict = 'ask'

# List of user stylesheet filenames to use.
# Type: List of File, or File
c.content.user_stylesheets = []

# Enable WebGL.
# Type: Bool
c.content.webgl = True

# Number of commands to save in the command history. 0: no history / -1:
# unlimited
# Type: Int
c.completion.cmd_history_max_items = 100

# Remember the last used download directory.
# Type: Bool
c.downloads.location.remember = False

# Where to show the downloaded files.
# Type: VerticalPosition
# Valid values:
#   - top
#   - bottom
c.downloads.position = 'bottom'

# Duration (in milliseconds) to wait before removing finished downloads.
# If set to -1, downloads are never removed.
# Type: Int
c.downloads.remove_finished = 5000

# Editor (and arguments) to use for the `edit-*` commands. The following
# placeholders are defined:  * `{file}`: Filename of the file to be
# edited. * `{line}`: Line in which the caret is found in the text. *
# `{column}`: Column in which the caret is found in the text. *
# `{line0}`: Same as `{line}`, but starting from index 0. * `{column0}`:
# Same as `{column}`, but starting from index 0.
# Type: ShellCommand
c.editor.command = ['konsole', '-e', 'vim', '-f', '{}']

# CSS border value for hints.
# Type: String
c.hints.border = '1px solid #333333'

# Characters used for hint strings.
# Type: UniqueCharString
c.hints.chars = 'asdfjkleruivn'

# Hide unmatched hints in rapid mode.
# Type: Bool
c.hints.hide_unmatched_rapid_hints = True

# Minimum number of characters used for hint strings.
# Type: Int
c.hints.min_chars = 1

# Mode to use for hints.
# Type: String
# Valid values:
#   - number: Use numeric hints. (In this mode you can also type letters from the hinted element to filter and reduce the number of elements that are hinted.)
#   - letter: Use the characters in the `hints.chars` setting.
#   - word: Use hints words based on the html elements and the extra words.
c.hints.mode = 'letter'

# Make characters in hint strings uppercase.
# Type: Bool
c.hints.uppercase = True

# Automatically enter insert mode if an editable element is focused
# after loading the page.
# Type: Bool
c.input.insert_mode.auto_load = True

# Leave insert mode if a non-editable element is clicked.
# Type: Bool
c.input.insert_mode.auto_leave = True

# Switch to insert mode when clicking flash and other plugins.
# Type: Bool
c.input.insert_mode.plugins = False

# Padding (in pixels) for the statusbar.
# Type: Padding
c.statusbar.padding = {'top': 1, 'bottom': 1, 'left': 0, 'right': 0}

# Position of the status bar.
# Type: VerticalPosition
# Valid values:
#   - top
#   - bottom
c.statusbar.position = 'bottom'

# List of widgets displayed in the statusbar.
# Type: List of String
# Valid values:
#   - url: Current page URL.
#   - scroll: Percentage of the current page position like `10%`.
#   - scroll_raw: Raw percentage of the current page position like `10`.
#   - history: Display an arrow when possible to go back/forward in history.
#   - tabs: Current active tab, e.g. `2`.
#   - keypress: Display pressed keys when composing a vi command.
#   - progress: Progress bar for the current page loading.
c.statusbar.widgets = ['keypress', 'url', 'scroll', 'history', 'progress']

# Open new tabs (middleclick/ctrl+click) in the background.
# Type: Bool
c.tabs.background = True

# Mouse button with which to close tabs.
# Type: String
# Valid values:
#   - right: Close tabs on right-click.
#   - middle: Close tabs on middle-click.
#   - none: Don't close tabs using the mouse.
c.tabs.close_mouse_button = 'middle'

# Scaling factor for favicons in the tab bar. The tab size is unchanged,
# so big favicons also require extra `tabs.padding`.
# Type: Float
c.tabs.favicons.scale = 1.0

# When to show favicons in the tab bar. When switching this from never
# to always/pinned, note that favicons might not be loaded yet, thus
# tabs might require a reload to display them.
# Type: String
# Valid values:
#   - always: Always show favicons.
#   - never: Always hide favicons.
#   - pinned: Show favicons only on pinned tabs.
c.tabs.favicons.show = 'always'

# How to behave when the last tab is closed. If the
# `tabs.tabs_are_windows` setting is set, this is ignored and the
# behavior is always identical to the `close` value.
# Type: String
# Valid values:
#   - ignore: Don't do anything.
#   - blank: Load a blank page.
#   - startpage: Load the start page.
#   - default-page: Load the default page.
#   - close: Close the window.
c.tabs.last_close = 'close'

# Switch between tabs using the mouse wheel.
# Type: Bool
c.tabs.mousewheel_switching = True

# Position of new tabs opened from another tab. See
# `tabs.new_position.stacking` for controlling stacking behavior.
# Type: NewTabPosition
# Valid values:
#   - prev: Before the current tab.
#   - next: After the current tab.
#   - first: At the beginning.
#   - last: At the end.
c.tabs.new_position.related = 'next'

# Stack related tabs on top of each other when opened consecutively.
# Only applies for `next` and `prev` values of
# `tabs.new_position.related` and `tabs.new_position.unrelated`.
# Type: Bool
c.tabs.new_position.stacking = True

# Padding (in pixels) around text for tabs.
# Type: Padding
c.tabs.padding = {'bottom': 3, 'left': 9, 'right': 5, 'top': 3}

# When switching tabs, what input mode is applied.
# Type: String
# Valid values:
#   - persist: Retain the current mode.
#   - restore: Restore previously saved mode.
#   - normal: Always revert to normal mode.
c.tabs.mode_on_change = 'persist'

# Alignment of the text inside of tabs.
# Type: TextAlignment
# Valid values:
#   - left
#   - right
#   - center
c.tabs.title.alignment = 'left'

# Format to use for the tab title. The following placeholders are
# defined:  * `{perc}`: Percentage as a string like `[10%]`. *
# `{perc_raw}`: Raw percentage, e.g. `10`. * `{current_title}`: Title of
# the current web page. * `{title_sep}`: The string `" - "` if a title
# is set, empty otherwise. * `{index}`: Index of this tab. *
# `{aligned_index}`: Index of this tab padded with spaces to have the
# same   width. * `{id}`: Internal tab ID of this tab. * `{scroll_pos}`:
# Page scroll position. * `{host}`: Host of the current web page. *
# `{backend}`: Either `webkit` or `webengine` * `{private}`: Indicates
# when private mode is enabled. * `{current_url}`: URL of the current
# web page. * `{protocol}`: Protocol (http/https/...) of the current web
# page. * `{audio}`: Indicator for audio/mute status.
# Type: FormatString
c.tabs.title.format = '{index} · {audio}{perc}{current_title}'

# Format to use for the tab title for pinned tabs. The same placeholders
# like for `tabs.title.format` are defined.
# Type: FormatString
c.tabs.title.format_pinned = None

# Width (in pixels or as percentage of the window) of the tab bar if
# it's vertical.
# Type: PercOrInt
c.tabs.width = '20%'

# Minimum width (in pixels) of tabs (-1 for the default minimum size
# behavior). This setting only applies when tabs are horizontal. This
# setting does not apply to pinned tabs, unless `tabs.pinned.shrink` is
# False.
# Type: Int
c.tabs.min_width = -1

# Maximum width (in pixels) of tabs (-1 for no maximum). This setting
# only applies when tabs are horizontal. This setting does not apply to
# pinned tabs, unless `tabs.pinned.shrink` is False. This setting may
# not apply properly if max_width is smaller than the minimum size of
# tab contents, or smaller than tabs.min_width.
# Type: Int
c.tabs.max_width = 300

# Width (in pixels) of the progress indicator (0 to disable).
# Type: Int
c.tabs.indicator.width = 0

# Padding (in pixels) for tab indicators.
# Type: Padding
c.tabs.indicator.padding = {'top': 2, 'bottom': 2, 'left': 0, 'right': 4}

# Shrink pinned tabs down to their contents.
# Type: Bool
c.tabs.pinned.shrink = True

# Force pinned tabs to stay at fixed URL.
# Type: Bool
c.tabs.pinned.frozen = True

# Show tooltips on tabs. Note this setting only affects windows opened
# after it has been set.
# Type: Bool
c.tabs.tooltips = True

# Page to open if :open -t/-b/-w is used without URL. Use `about:blank`
# for a blank page.
# Type: FuzzyUrl
c.url.default_page = 'file:///home/george/startpage/index.html'

# Search engines which can be used via the address bar.  Maps a search
# engine name (such as `DEFAULT`, or `ddg`) to a URL with a `{}`
# placeholder. The placeholder will be replaced by the search term, use
# `{{` and `}}` for literal `{`/`}` braces.  The following further
# placeholds are defined to configure how special characters in the
# search terms are replaced by safe characters (called 'quoting'):  *
# `{}` and `{semiquoted}` quote everything except slashes; this is the
# most   sensible choice for almost all search engines (for the search
# term   `slash/and&amp` this placeholder expands to `slash/and%26amp`).
# * `{quoted}` quotes all characters (for `slash/and&amp` this
# placeholder   expands to `slash%2Fand%26amp`). * `{unquoted}` quotes
# nothing (for `slash/and&amp` this placeholder   expands to
# `slash/and&amp`). * `{0}` means the same as `{}`, but can be used
# multiple times.  The search engine named `DEFAULT` is used when
# `url.auto_search` is turned on and something else than a URL was
# entered to be opened. Other search engines can be used by prepending
# the search engine name to the search term, e.g. `:open google
# qutebrowser`.
# Type: Dict
c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}'}

# Text color of the completion widget. May be a single color to use for
# all columns or a list of three colors, one for each column.
# Type: List of QtColor, or QtColor
c.colors.completion.fg = '#333333'

# Background color of the completion widget for odd rows.
# Type: QssColor
c.colors.completion.odd.bg = '#ffffff'

# Background color of the completion widget for even rows.
# Type: QssColor
c.colors.completion.even.bg = '#ffffff'

# Foreground color of completion widget category headers.
# Type: QtColor
c.colors.completion.category.fg = '#333333'

# Background color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.bg = '#f3df30'

# Top border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.top = '#f3df30'

# Bottom border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.bottom = '#f3df30'

# Foreground color of the selected completion item.
# Type: QtColor
c.colors.completion.item.selected.fg = '#333333'

# Background color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.bg = '#30b7f3'

# Top border color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.border.top = '#30b7f3'

# Bottom border color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.border.bottom = '#30b7f3'

# Foreground color of the matched text in the selected completion item.
# Type: QtColor
c.colors.completion.item.selected.match.fg = '#ff4444'

# Foreground color of the matched text in the completion.
# Type: QtColor
c.colors.completion.match.fg = '#63f330'

# Color of the scrollbar handle in the completion view.
# Type: QssColor
c.colors.completion.scrollbar.fg = '#cccccc'

# Color of the scrollbar in the completion view.
# Type: QssColor
c.colors.completion.scrollbar.bg = '#333333'

# Background color of the context menu. If set to null, the Qt default
# is used.
# Type: QssColor
c.colors.contextmenu.menu.bg = None

# Background color of disabled items in the context menu. If set to
# null, the Qt default is used.
# Type: QssColor
c.colors.contextmenu.disabled.bg = None

# Foreground color of disabled items in the context menu. If set to
# null, the Qt default is used.
# Type: QssColor
c.colors.contextmenu.disabled.fg = None

# Background color for the download bar.
# Type: QssColor
c.colors.downloads.bar.bg = '#ffffff'

# Color gradient start for download text.
# Type: QtColor
c.colors.downloads.start.fg = '#333333'

# Color gradient start for download backgrounds.
# Type: QtColor
c.colors.downloads.start.bg = '#ffffff'

# Color gradient end for download text.
# Type: QtColor
c.colors.downloads.stop.fg = '#30b7f3'

# Color gradient stop for download backgrounds.
# Type: QtColor
c.colors.downloads.stop.bg = '#ffffff'

# Color gradient interpolation system for download text.
# Type: ColorSystem
# Valid values:
#   - rgb: Interpolate in the RGB color system.
#   - hsv: Interpolate in the HSV color system.
#   - hsl: Interpolate in the HSL color system.
#   - none: Don't show a gradient.
c.colors.downloads.system.fg = 'rgb'

# Color gradient interpolation system for download backgrounds.
# Type: ColorSystem
# Valid values:
#   - rgb: Interpolate in the RGB color system.
#   - hsv: Interpolate in the HSV color system.
#   - hsl: Interpolate in the HSL color system.
#   - none: Don't show a gradient.
c.colors.downloads.system.bg = 'rgb'

# Foreground color for downloads with errors.
# Type: QtColor
c.colors.downloads.error.fg = '#F33051'

# Background color for downloads with errors.
# Type: QtColor
c.colors.downloads.error.bg = '#ffffff'

# Font color for hints.
# Type: QssColor
c.colors.hints.fg = 'white'

# Background color for hints. Note that you can use a `rgba(...)` value
# for transparency.
# Type: QssColor
c.colors.hints.bg = '#30b7f3'

# Font color for the matched part of hints.
# Type: QtColor
c.colors.hints.match.fg = '#333333'

# Text color for the keyhint widget.
# Type: QssColor
c.colors.keyhint.fg = '#cccccc'

# Highlight color for keys to complete the current keychain.
# Type: QssColor
c.colors.keyhint.suffix.fg = '#30b7f3'

# Background color of the keyhint widget.
# Type: QssColor
c.colors.keyhint.bg = '#333333'

# Foreground color of an error message.
# Type: QssColor
c.colors.messages.error.fg = '#f33051'

# Background color of an error message.
# Type: QssColor
c.colors.messages.error.bg = '#ffffff'

# Border color of an error message.
# Type: QssColor
c.colors.messages.error.border = '#f33051'

# Foreground color of a warning message.
# Type: QssColor
c.colors.messages.warning.fg = '#F38630'

# Background color of a warning message.
# Type: QssColor
c.colors.messages.warning.bg = '#ffffff'

# Border color of a warning message.
# Type: QssColor
c.colors.messages.warning.border = '#F38630'

# Foreground color of an info message.
# Type: QssColor
c.colors.messages.info.fg = '#333333'

# Background color of an info message.
# Type: QssColor
c.colors.messages.info.bg = '#ffffff'

# Border color of an info message.
# Type: QssColor
c.colors.messages.info.border = '#333333'

# Foreground color for prompts.
# Type: QssColor
c.colors.prompts.fg = '#333333'

# Border used around UI elements in prompts.
# Type: String
c.colors.prompts.border = '0px solid #30b7f3'

# Background color for prompts.
# Type: QssColor
c.colors.prompts.bg = '#ffffff'

# Background color for the selected item in filename prompts.
# Type: QssColor
c.colors.prompts.selected.bg = '#30b7f3'

# Foreground color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.fg = '#333333'

# Background color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.bg = '#ffffff'

# Foreground color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.fg = '#30b7f3'

# Background color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.bg = '#ffffff'

# Foreground color of the statusbar in passthrough mode.
# Type: QssColor
c.colors.statusbar.passthrough.fg = '#9e30f3'

# Background color of the statusbar in passthrough mode.
# Type: QssColor
c.colors.statusbar.passthrough.bg = '#ffffff'

# Foreground color of the statusbar in private browsing mode.
# Type: QssColor
c.colors.statusbar.private.fg = '#333333'

# Background color of the statusbar in private browsing mode.
# Type: QssColor
c.colors.statusbar.private.bg = '#cccccc'

# Foreground color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.fg = '#333333'

# Background color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.bg = '#ffffff'

# Foreground color of the statusbar in private browsing + command mode.
# Type: QssColor
c.colors.statusbar.command.private.fg = '#333333'

# Background color of the statusbar in private browsing + command mode.
# Type: QssColor
c.colors.statusbar.command.private.bg = '#cccccc'

# Foreground color of the statusbar in caret mode.
# Type: QssColor
c.colors.statusbar.caret.fg = 'white'

# Background color of the statusbar in caret mode.
# Type: QssColor
c.colors.statusbar.caret.bg = '#9e30f3'

# Foreground color of the statusbar in caret mode with a selection.
# Type: QssColor
c.colors.statusbar.caret.selection.fg = 'black'

# Background color of the statusbar in caret mode with a selection.
# Type: QssColor
c.colors.statusbar.caret.selection.bg = '#9e30f3'

# Background color of the progress bar.
# Type: QssColor
c.colors.statusbar.progress.bg = '#30b7f3'

# Default foreground color of the URL in the statusbar.
# Type: QssColor
c.colors.statusbar.url.fg = '#333333'

# Foreground color of the URL in the statusbar on error.
# Type: QssColor
c.colors.statusbar.url.error.fg = '#f33051'

# Foreground color of the URL in the statusbar for hovered links.
# Type: QssColor
c.colors.statusbar.url.hover.fg = '#30b7f3'

# Foreground color of the URL in the statusbar on successful load
# (http).
# Type: QssColor
c.colors.statusbar.url.success.http.fg = '#f38630'

# Foreground color of the URL in the statusbar on successful load
# (https).
# Type: QssColor
c.colors.statusbar.url.success.https.fg = '#333333'

# Foreground color of the URL in the statusbar when there's a warning.
# Type: QssColor
c.colors.statusbar.url.warn.fg = '#F38630'

# Background color of the tab bar.
# Type: QssColor
c.colors.tabs.bar.bg = '#ffffff'

# Color gradient start for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.start = '#ffffff'

# Color gradient end for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.stop = '#ffffff'

# Color for the tab indicator on errors.
# Type: QtColor
c.colors.tabs.indicator.error = '#f33051'

# Color gradient interpolation system for the tab indicator.
# Type: ColorSystem
# Valid values:
#   - rgb: Interpolate in the RGB color system.
#   - hsv: Interpolate in the HSV color system.
#   - hsl: Interpolate in the HSL color system.
#   - none: Don't show a gradient.
c.colors.tabs.indicator.system = 'rgb'

# Foreground color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.fg = '#333333'

# Background color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.bg = '#ffffff'

# Foreground color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.fg = '#333333'

# Background color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.bg = '#ffffff'

# Foreground color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.fg = '#333333'

# Background color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.bg = '#30b7f3'

# Foreground color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.fg = '#333333'

# Background color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.bg = '#30b7f3'

# Foreground color of pinned unselected odd tabs.
# Type: QtColor
c.colors.tabs.pinned.odd.fg = '#333333'

# Background color of pinned unselected odd tabs.
# Type: QtColor
c.colors.tabs.pinned.odd.bg = '#ffffff'

# Foreground color of pinned unselected even tabs.
# Type: QtColor
c.colors.tabs.pinned.even.fg = '#333333'

# Background color of pinned unselected even tabs.
# Type: QtColor
c.colors.tabs.pinned.even.bg = '#ffffff'

# Foreground color of pinned selected odd tabs.
# Type: QtColor
c.colors.tabs.pinned.selected.odd.fg = '#333333'

# Background color of pinned selected odd tabs.
# Type: QtColor
c.colors.tabs.pinned.selected.odd.bg = '#30b7f3'

# Foreground color of pinned selected even tabs.
# Type: QtColor
c.colors.tabs.pinned.selected.even.fg = '#333333'

# Background color of pinned selected even tabs.
# Type: QtColor
c.colors.tabs.pinned.selected.even.bg = '#30b7f3'

# Background color for webpages if unset (or empty to use the theme's
# color).
# Type: QtColor
c.colors.webpage.bg = None

# Force `prefers-color-scheme: dark` colors for websites.
# Type: Bool
c.colors.webpage.prefers_color_scheme_dark = True

# Default font families to use. Whenever "default_family" is used in a
# font setting, it's replaced with the fonts listed here. If set to an
# empty value, a system-specific monospace default is used.
# Type: List of Font, or Font
c.fonts.default_family = 'Rec Mono Duotone'

# Default font size to use. Whenever "default_size" is used in a font
# setting, it's replaced with the size listed here. Valid values are
# either a float value with a "pt" suffix, or an integer value with a
# "px" suffix.
# Type: String
c.fonts.default_size = '11pt'

# Font used in the completion widget.
# Type: Font
c.fonts.completion.entry = '11pt default_family'

# Font used in the completion categories.
# Type: Font
c.fonts.completion.category = 'bold 11pt default_family'

# Font used for the debugging console.
# Type: Font
c.fonts.debug_console = '11pt default_family'

# Font used for the downloadbar.
# Type: Font
c.fonts.downloads = '11pt default_family'

# Font used for the hints.
# Type: Font
c.fonts.hints = '11pt default_family'

# Font used in the keyhint widget.
# Type: Font
c.fonts.keyhint = '11pt default_family'

# Font used for error messages.
# Type: Font
c.fonts.messages.error = '11pt default_family'

# Font used for info messages.
# Type: Font
c.fonts.messages.info = '11pt default_family'

# Font used for warning messages.
# Type: Font
c.fonts.messages.warning = '11pt default_family'

# Font used for prompts.
# Type: Font
c.fonts.prompts = '11pt default_family'

# Font used in the statusbar.
# Type: Font
c.fonts.statusbar = '11pt default_family'

# Font family for standard fonts.
# Type: FontFamily
c.fonts.web.family.standard = '"Arial", "Noto Sans", "Noto Color Emoji", sans-serif'

# Font family for fixed fonts.
# Type: FontFamily
c.fonts.web.family.fixed = '"CaskaydiaCove Nerd Font", "FuraCode Nerd Font", "Noto Sans Mono", "Noto Color Emoji", default_family'

# Font family for serif fonts.
# Type: FontFamily
c.fonts.web.family.serif = '"Linux Libertine O", "Linux Libertine", "Noto Serif", "Noto Color Emoji", serif'

# Font family for sans-serif fonts.
# Type: FontFamily
c.fonts.web.family.sans_serif = '"Arial", "Noto Sans", "Noto Color Emoji", sans-serif'

# Font family for fantasy fonts.
# Type: FontFamily
c.fonts.web.family.fantasy = None

# Default font size (in pixels) for fixed-pitch text.
# Type: Int
c.fonts.web.size.default_fixed = 11

# Hard minimum font size (in pixels).
# Type: Int
c.fonts.web.size.minimum = 0

# This setting can be used to map keys to other keys. When the key used
# as dictionary-key is pressed, the binding for the key used as
# dictionary-value is invoked instead. This is useful for global
# remappings of keys, for example to map Ctrl-[ to Escape. Note that
# when a key is bound (via `bindings.default` or `bindings.commands`),
# the mapping is ignored.
# Type: Dict
c.bindings.key_mappings = {'<Ctrl+6>': '<Ctrl+^>', '<Ctrl+Enter>': '<Ctrl+Return>', '<Ctrl+j>': '<Return>', '<Ctrl+m>': '<Return>', '<Ctrl+[>': '<Escape>', '<Enter>': '<Return>', '<Shift+Enter>': '<Return>', '<Shift+Return>': '<Return>', '<Σ>': 's', '<Ε>': 'e', '<Ρ>': 'r', '<Τ>': 't', '<Υ>': 'y', '<Θ>': 'u', '<Ι>': 'i', '<Ο>': 'o', '<Π>': 'p', '<Α>': 'a', '<Δ>': 'd', '<Φ>': 'f', '<Γ>': 'g', '<Η>': 'h', '<Ξ>': 'j', '<Κ>': 'k', '<Λ>': 'l', '<Ζ>': 'z', '<Χ>': 'x', '<Ψ>': 'c', '<Ω>': 'v', '<Β>': 'b', '<Ν>': 'n', '<Μ>': 'm', '<Shift+Ε>': 'E', '<Shift+Ρ>': 'R', '<Shift+Τ>': 'T', '<Shift+Υ>': 'Y', '<Shift+Θ>': 'U', '<Shift+Ι>': 'I', '<Shift+Ο>': 'O', '<Shift+Π>': 'P', '<Shift+Α>': 'A', '<Shift+Σ>': 'S', '<Shift+Δ>': 'D', '<Shift+Φ>': 'F', '<Shift+Γ>': 'G', '<Shift+Η>': 'H', '<Shift+Ξ>': 'J', '<Shift+Κ>': 'K', '<Shift+Λ>': 'L', '<Shift+Ζ>': 'Z', '<Shift+Χ>': 'X', '<Shift+Ψ>': 'C', '<Shift+Ω>': 'V', '<Shift+Β>': 'B', '<Shift+Ν>': 'N', '<Shift+Μ>': 'M'}

# Bindings for normal mode
config.bind('<Alt+Left>', 'tab-prev')
config.bind('<Alt+Right>', 'tab-next')
config.bind('<Space><Space>', 'open -t https://getpocket.com/edit?url={url}')
config.bind('<Space>M', 'hint links spawn mpv {hint-url}')
config.bind('<Space>e', 'edit-url')
config.bind('<Space>m', 'spawn mpv {url}')
config.bind('<Space>p', 'spawn --userscript qute-pass --dmenu-invocation dmenu')
config.bind('<Space>r', 'spawn --userscript readability-js')
config.bind('<Space>x', 'tab-close')
config.bind('M', 'quickmark-save')
config.bind('`', 'mode-enter jump_mark')
config.bind('e', 'edit-text')
config.bind('gT', 'tab-prev')
config.bind('gt', 'tab-next')
config.bind('h', 'back')
config.bind('l', 'forward')
config.bind('m', 'mode-enter set_mark')
config.bind('t', 'set-cmd-text -s :tab-select')
config.bind('zp', 'hint links run open -t https://getpocket.com/edit?url={hint-url}')
