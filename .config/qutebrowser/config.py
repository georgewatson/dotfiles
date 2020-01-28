# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Uncomment this to still load settings configured via autoconfig.yml
# config.load_autoconfig()

# Aliases for commands. The keys of the given dictionary are the
# aliases, while the values are the commands they map to.
# Type: Dict
c.aliases = {'w': 'session-save', 'q': 'quit', 'wq': 'quit --save'}

# Always restore open sites when qutebrowser is reopened.
# Type: Bool
c.auto_save.session = True

# Backend to use to display websites. qutebrowser supports two different
# web rendering engines / backends, QtWebKit and QtWebEngine. QtWebKit
# was discontinued by the Qt project with Qt 5.6, but picked up as a
# well maintained fork: https://github.com/annulen/webkit/wiki -
# qutebrowser only supports the fork. QtWebEngine is Qt's official
# successor to QtWebKit. It's slightly more resource hungry than
# QtWebKit and has a couple of missing features in qutebrowser, but is
# generally the preferred choice.
# Type: String
# Valid values:
#   - webengine: Use QtWebEngine (based on Chromium).
#   - webkit: Use QtWebKit (based on WebKit, similar to Safari).
c.backend = 'webengine'

<<<<<<< HEAD
# Always restore open sites when qutebrowser is reopened.
# Type: Bool
c.auto_save.session = True

# Default encoding to use for websites. The encoding must be a string
# describing an encoding such as _utf-8_, _iso-8859-1_, etc.
# Type: String
c.content.default_encoding = 'utf-8'

# Allow websites to share screen content. On Qt < 5.10, a dialog box is
# always displayed, even if this is set to "true".
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
# c.content.desktop_capture = 'ask'

# Value to send in the `Accept-Language` header. Note that the value
# read from JavaScript is always the global value.
# Type: String
c.content.headers.accept_language = 'en-GB,en'

# Custom headers for qutebrowser HTTP requests.
# Type: Dict
c.content.headers.custom = {}

# Enable JavaScript.
# Type: Bool
# config.set('content.javascript.enabled', True, 'file://*')

# Enable JavaScript.
# Type: Bool
# config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
# config.set('content.javascript.enabled', True, 'qute://*/*')

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
# config.set('content.register_protocol_handler', True, 'https://mail.google.com/*')

# Allow websites to register protocol handlers via
# `navigator.registerProtocolHandler`.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
# config.set('content.register_protocol_handler', True, 'https://calendar.google.com/*')

# Validate SSL handshakes.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
c.content.ssl_strict = 'ask'

# List of user stylesheet filenames to use.
# Type: List of File, or File
c.content.user_stylesheets = 'ligatures.css'

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

# Editor (and arguments) to use for the `open-editor` command. The
# following placeholders are defined: * `{file}`: Filename of the file
# to be edited. * `{line}`: Line in which the caret is found in the
# text. * `{column}`: Column in which the caret is found in the text. *
# `{line0}`: Same as `{line}`, but starting from index 0. * `{column0}`:
# Same as `{column}`, but starting from index 0.
# Type: ShellCommand
c.editor.command = ['konsole', '-e', 'vim', '-f', '{}']

# CSS border value for hints.
# Type: String
c.hints.border = '1px solid #30b7f3'

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

# Hide the statusbar unless a message is shown.
# Type: Bool
c.statusbar.hide = False

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

# When to show favicons in the tab bar.
# Type: String
# Valid values:
#   - always: Always show favicons.
#   - never: Always hide favicons.
#   - pinned: Show favicons only on pinned tabs.
c.tabs.favicons.show = 'always'

# How to behave when the last tab is closed.
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
# the current web page. * `{title_sep}`: The string ` - ` if a title is
# set, empty otherwise. * `{index}`: Index of this tab. * `{id}`:
# Internal tab ID of this tab. * `{scroll_pos}`: Page scroll position. *
# `{host}`: Host of the current web page. * `{backend}`: Either
# ''webkit'' or ''webengine'' * `{private}`: Indicates when private mode
# is enabled. * `{current_url}`: URL of the current web page. *
# `{protocol}`: Protocol (http/https/...) of the current web page. *
# `{audio}`: Indicator for audio/mute status.
# Type: FormatString
c.tabs.title.format = '{audio}{perc}{index}: {current_title}'

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
=======
# Background color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.bg = '#333333'
>>>>>>> Update qutebrowser config

# Bottom border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.bottom = '#f3df30'

# Top border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.top = '#f3df30'

# Foreground color of completion widget category headers.
# Type: QtColor
c.colors.completion.category.fg = '#f3df30'

# Background color of the completion widget for even rows.
# Type: QssColor
c.colors.completion.even.bg = '#333333'

# Text color of the completion widget. May be a single color to use for
# all columns or a list of three colors, one for each column.
# Type: List of QtColor, or QtColor
c.colors.completion.fg = '#cccccc'

# Background color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.bg = '#30b7f3'

# Bottom border color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.border.bottom = '#30b7f3'

# Top border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.item.selected.border.top = '#30b7f3'

# Foreground color of the selected completion item.
# Type: QtColor
c.colors.completion.item.selected.fg = '#333333'

# Foreground color of the matched text in the completion.
# Type: QssColor
c.colors.completion.match.fg = '#63f330'

<<<<<<< HEAD
# Top border color of the selected completion item.
=======
# Background color of the completion widget for odd rows.
>>>>>>> Update qutebrowser config
# Type: QssColor
c.colors.completion.odd.bg = '#333333'

# Color of the scrollbar in the completion view.
# Type: QssColor
c.colors.completion.scrollbar.bg = '#333333'

# Color of the scrollbar handle in the completion view.
# Type: QssColor
c.colors.completion.scrollbar.fg = '#cccccc'

# Background color for the download bar.
# Type: QssColor
c.colors.downloads.bar.bg = '#333333'

# Background color for downloads with errors.
# Type: QtColor
c.colors.downloads.error.bg = '#333333'

# Foreground color for downloads with errors.
# Type: QtColor
c.colors.downloads.error.fg = '#f33051'

# Color gradient start for download backgrounds.
# Type: QtColor
c.colors.downloads.start.bg = '#333333'

# Color gradient start for download text.
# Type: QtColor
c.colors.downloads.start.fg = '#30b7f3'

# Color gradient stop for download backgrounds.
# Type: QtColor
c.colors.downloads.stop.bg = '#333333'

# Color gradient end for download text.
# Type: QtColor
c.colors.downloads.stop.fg = '#30b7f3'

# Color gradient interpolation system for download backgrounds.
# Type: ColorSystem
# Valid values:
#   - rgb: Interpolate in the RGB color system.
#   - hsv: Interpolate in the HSV color system.
#   - hsl: Interpolate in the HSL color system.
#   - none: Don't show a gradient.
c.colors.downloads.system.bg = 'rgb'

# Color gradient interpolation system for download text.
# Type: ColorSystem
# Valid values:
#   - rgb: Interpolate in the RGB color system.
#   - hsv: Interpolate in the HSV color system.
#   - hsl: Interpolate in the HSL color system.
#   - none: Don't show a gradient.
c.colors.downloads.system.fg = 'rgb'

# Background color for hints. Note that you can use a `rgba(...)` value
# for transparency.
# Type: QssColor
c.colors.hints.bg = '#30b7f3'

# Font color for hints.
# Type: QssColor
c.colors.hints.fg = 'white'

# Font color for the matched part of hints.
# Type: QtColor
c.colors.hints.match.fg = '#333333'

# Background color of the keyhint widget.
# Type: QssColor
c.colors.keyhint.bg = '#333333'

# Text color for the keyhint widget.
# Type: QssColor
c.colors.keyhint.fg = '#cccccc'

# Highlight color for keys to complete the current keychain.
# Type: QssColor
c.colors.keyhint.suffix.fg = '#30b7f3'

# Background color of an error message.
# Type: QssColor
c.colors.messages.error.bg = '#333333'

# Border color of an error message.
# Type: QssColor
c.colors.messages.error.border = '#333333'

# Foreground color of an error message.
# Type: QssColor
c.colors.messages.error.fg = '#f33051'

# Background color of an info message.
# Type: QssColor
c.colors.messages.info.bg = '#333333'

# Border color of an info message.
# Type: QssColor
c.colors.messages.info.border = '#333333'

# Foreground color of an info message.
# Type: QssColor
c.colors.messages.info.fg = '#cccccc'

# Background color of a warning message.
# Type: QssColor
c.colors.messages.warning.bg = '#333333'

# Border color of a warning message.
# Type: QssColor
c.colors.messages.warning.border = '#333333'

# Foreground color of a warning message.
# Type: QssColor
c.colors.messages.warning.fg = '#f3df30'

# Background color for prompts.
# Type: QssColor
c.colors.prompts.bg = '#333333'

# Border used around UI elements in prompts.
# Type: String
c.colors.prompts.border = '0px solid #30b7f3'

# Foreground color for prompts.
# Type: QssColor
c.colors.prompts.fg = '#cccccc'

# Background color for the selected item in filename prompts.
# Type: QssColor
c.colors.prompts.selected.bg = '#30b7f3'

# Background color of the statusbar in caret mode.
# Type: QssColor
c.colors.statusbar.caret.bg = '#9e30f3'

# Foreground color of the statusbar in caret mode.
# Type: QssColor
c.colors.statusbar.caret.fg = 'white'

# Background color of the statusbar in caret mode with a selection.
# Type: QssColor
c.colors.statusbar.caret.selection.bg = '#9e30f3'

# Foreground color of the statusbar in caret mode with a selection.
# Type: QssColor
c.colors.statusbar.caret.selection.fg = 'black'

# Background color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.bg = '#333333'

# Foreground color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.fg = '#cccccc'

# Background color of the statusbar in private browsing + command mode.
# Type: QssColor
c.colors.statusbar.command.private.bg = '#cccccc'

# Foreground color of the statusbar in private browsing + command mode.
# Type: QssColor
c.colors.statusbar.command.private.fg = '#333333'

# Background color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.bg = '#333333'

# Foreground color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.fg = '#30b7f3'

# Background color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.bg = '#333333'

# Foreground color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.fg = '#cccccc'

# Background color of the statusbar in passthrough mode.
# Type: QssColor
c.colors.statusbar.passthrough.bg = '#333333'

# Foreground color of the statusbar in passthrough mode.
# Type: QssColor
c.colors.statusbar.passthrough.fg = '#9e30f3'

# Background color of the statusbar in private browsing mode.
# Type: QssColor
c.colors.statusbar.private.bg = '#cccccc'

# Foreground color of the statusbar in private browsing mode.
# Type: QssColor
c.colors.statusbar.private.fg = '#333333'

# Background color of the progress bar.
# Type: QssColor
c.colors.statusbar.progress.bg = '#30b7f3'

# Foreground color of the URL in the statusbar on error.
# Type: QssColor
c.colors.statusbar.url.error.fg = '#f33051'

# Default foreground color of the URL in the statusbar.
# Type: QssColor
c.colors.statusbar.url.fg = '#cccccc'

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
c.colors.statusbar.url.success.https.fg = '#cccccc'

# Foreground color of the URL in the statusbar when there's a warning.
# Type: QssColor
c.colors.statusbar.url.warn.fg = '#f38630'

# Background color of the tab bar.
<<<<<<< HEAD
# Type: QssColor
c.colors.tabs.bar.bg = '#333333'
=======
# Type: QtColor
c.colors.tabs.bar.bg = '#333333'

# Background color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.bg = '#333333'

# Foreground color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.fg = '#cccccc'

# Color for the tab indicator on errors.
# Type: QtColor
c.colors.tabs.indicator.error = '#f33051'
>>>>>>> Update qutebrowser config

# Color gradient start for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.start = '#333333'

# Color gradient end for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.stop = '#333333'

# Color gradient interpolation system for the tab indicator.
# Type: ColorSystem
# Valid values:
#   - rgb: Interpolate in the RGB color system.
#   - hsv: Interpolate in the HSV color system.
#   - hsl: Interpolate in the HSL color system.
#   - none: Don't show a gradient.
c.colors.tabs.indicator.system = 'rgb'

# Background color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.bg = '#333333'

# Foreground color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.fg = '#cccccc'

# Background color of selected even tabs.
# Type: QtColor
<<<<<<< HEAD
c.colors.tabs.even.bg = '#333333'
=======
c.colors.tabs.selected.even.bg = '#30b7f3'
>>>>>>> Update qutebrowser config

# Foreground color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.fg = '#333333'

# Background color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.bg = '#30b7f3'

# Foreground color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.fg = '#333333'

# Foreground color of pinned unselected odd tabs.
# Type: QtColor
c.colors.tabs.pinned.odd.fg = '#cccccc'

# Background color of pinned unselected odd tabs.
# Type: QtColor
c.colors.tabs.pinned.odd.bg = '#333333'

# Foreground color of pinned unselected even tabs.
# Type: QtColor
c.colors.tabs.pinned.even.fg = '#cccccc'

# Background color of pinned unselected even tabs.
# Type: QtColor
c.colors.tabs.pinned.even.bg = '#333333'

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

# Number of commands to save in the command history. 0: no history / -1:
# unlimited
# Type: Int
c.completion.cmd_history_max_items = 100

# Default encoding to use for websites. The encoding must be a string
# describing an encoding such as _utf-8_, _iso-8859-1_, etc.
# Type: String
c.content.default_encoding = 'utf-8'

# Value to send in the `Accept-Language` header.
# Type: String
c.content.headers.accept_language = 'en-GB,en'

# Custom headers for qutebrowser HTTP requests.
# Type: Dict
c.content.headers.custom = {}

# Enable plugins in Web pages.
# Type: Bool
c.content.plugins = True

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

# Editor (and arguments) to use for the `open-editor` command. The
# following placeholders are defined: * `{file}`: Filename of the file
# to be edited. * `{line}`: Line in which the caret is found in the
# text. * `{column}`: Column in which the caret is found in the text. *
# `{line0}`: Same as `{line}`, but starting from index 0. * `{column0}`:
# Same as `{column}`, but starting from index 0.
# Type: ShellCommand
c.editor.command = ['konsole', '-e', 'vim', '-f', '{}']

# Font used in the completion categories.
# Type: Font
c.fonts.completion.category = 'bold 11pt monospace'

# Font used in the completion widget.
# Type: Font
c.fonts.completion.entry = '11pt monospace'

# Font used for the debugging console.
# Type: QtFont
c.fonts.debug_console = '11pt monospace'

# Font used for the downloadbar.
# Type: Font
c.fonts.downloads = '11pt monospace'

# Font used for the hints.
# Type: Font
c.fonts.hints = '11pt monospace'

# Font used in the keyhint widget.
# Type: Font
c.fonts.keyhint = '11pt monospace'

# Font used for error messages.
# Type: Font
c.fonts.messages.error = '11pt monospace'

# Font used for info messages.
# Type: Font
c.fonts.messages.info = '11pt monospace'

# Font used for warning messages.
# Type: Font
c.fonts.messages.warning = '11pt monospace'

# Default monospace fonts. Whenever "monospace" is used in a font
# setting, it's replaced with the fonts listed here.
# Type: Font
c.fonts.monospace = 'FuraCode Nerd Font'

# Font used for prompts.
# Type: Font
c.fonts.prompts = '11pt monospace'

# Font used in the statusbar.
# Type: Font
c.fonts.statusbar = '11pt monospace'

# Font used in the tab bar.
# Type: QtFont
c.fonts.tabs = '11pt monospace'

# Font family for fantasy fonts.
# Type: FontFamily
c.fonts.web.family.fantasy = None

# Font family for fixed fonts.
# Type: FontFamily
c.fonts.web.family.fixed = '"FuraCode Nerd Font", "Noto Sans Mono", "Noto Color Emoji", monospace'

# Font family for serif fonts.
# Type: FontFamily
c.fonts.web.family.serif = '"Linux Libertine O", "Linux Libertine", "Noto Serif", "Noto Color Emoji", serif'

# Font family for sans-serif fonts.
# Type: FontFamily
c.fonts.web.family.sans_serif = '"Arial", "Noto Sans", "Noto Color Emoji", sans-serif'

# Font family for serif fonts.
# Type: FontFamily
c.fonts.web.family.serif = '"Times New Roman", "Noto Serif", "Noto Color Emoji", serif'

# Font family for standard fonts.
# Type: FontFamily
c.fonts.web.family.standard = '"Arial", "Noto Sans", "Noto Color Emoji", sans-serif'

# Default font size (in pixels) for fixed-pitch text.
# Type: Int
c.fonts.web.size.default_fixed = 11

# Hard minimum font size (in pixels).
# Type: Int
c.fonts.web.size.minimum = 0

# CSS border value for hints.
# Type: String
c.hints.border = '1px solid #30b7f3'

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

# Leave insert mode if a non-editable element is clicked.
# Type: Bool
c.input.insert_mode.auto_leave = True

# Automatically enter insert mode if an editable element is focused
# after loading the page.
# Type: Bool
c.input.insert_mode.auto_load = True

# Switch to insert mode when clicking flash and other plugins.
# Type: Bool
c.input.insert_mode.plugins = False

# Hide the statusbar unless a message is shown.
# Type: Bool
c.statusbar.hide = False

# Padding (in pixels) for the statusbar.
# Type: Padding
c.statusbar.padding = {'top': 1, 'bottom': 1, 'left': 0, 'right': 0}

# Position of the status bar.
# Type: VerticalPosition
# Valid values:
#   - top
#   - bottom
c.statusbar.position = 'bottom'

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

# Padding (in pixels) for tab indicators.
# Type: Padding
c.tabs.indicator.padding = {'top': 2, 'bottom': 2, 'left': 0, 'right': 4}

# Width (in pixels) of the progress indicator (0 to disable).
# Type: Int
c.tabs.indicator.width = 0

# How to behave when the last tab is closed.
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

# Position of new tabs opened from another tab.
# Type: NewTabPosition
# Valid values:
#   - prev: Before the current tab.
#   - next: After the current tab.
#   - first: At the beginning.
#   - last: At the end.
c.tabs.new_position.related = 'next'

# Padding (in pixels) around text for tabs.
# Type: Padding
c.tabs.padding = {'bottom': 3, 'left': 9, 'right': 5, 'top': 3}

# Stay in insert/passthrough mode when switching tabs.
# Type: Bool
c.tabs.persist_mode_on_change = True

# Shrink pinned tabs down to their contents.
# Type: Bool
c.tabs.pinned.shrink = True

# Position of the tab bar.
# Type: Position
# Valid values:
#   - top
#   - bottom
#   - left
#   - right
c.tabs.position = 'top'

# Alignment of the text inside of tabs.
# Type: TextAlignment
# Valid values:
#   - left
#   - right
#   - center
c.tabs.title.alignment = 'left'

# Format to use for the tab title for pinned tabs. The same placeholders
# like for `tabs.title.format` are defined.
# Type: FormatString
c.tabs.title.format_pinned = None

# Width (in pixels or as percentage of the window) of the tab bar if
# it's vertical.
# Type: PercOrInt
c.tabs.width = '20%'

# Search engines which can be used via the address bar. Maps a search
# engine name (such as `DEFAULT`, or `ddg`) to a URL with a `{}`
# placeholder. The placeholder will be replaced by the search term, use
# `{{` and `}}` for literal `{`/`}` signs. The search engine named
# `DEFAULT` is used when `url.auto_search` is turned on and something
# else than a URL was entered to be opened. Other search engines can be
# used by prepending the search engine name to the search term, e.g.
# `:open google qutebrowser`.
# Type: Dict
c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}'}

# Bindings for normal mode
config.bind('<Space>M', 'hint links spawn mpv {hint-url}')
config.bind('<Space>e', 'edit-url')
config.bind('<Space>m', 'spawn mpv {url}')
config.bind('<Space>x', 'tab-close')
config.bind('<alt+left>', 'tab-prev')
config.bind('<alt+right>', 'tab-next')
config.bind('M', 'quickmark-save')
config.bind('`', 'enter-mode jump_mark')
config.bind('e', 'open-editor')
config.bind('gT', 'tab-prev')
config.bind('gt', 'tab-next')
config.bind('h', 'back')
config.bind('l', 'forward')
config.bind('m', 'enter-mode set_mark')
config.bind('t', 'set-cmd-text -s :buffer')
