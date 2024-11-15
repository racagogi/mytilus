---@class Scheme
---@field d0_black   string
---@field d0_white   string
---@field d1_black   string
---@field d1_white   string
---@field d2_black   string
---@field d2_white   string
---@field d3_black   string
---@field d3_white   string
---@field d3_red     string
---@field d3_orange  string
---@field d3_yellow  string
---@field d3_green   string
---@field d3_mint    string
---@field d3_cyan    string
---@field d3_blue    string
---@field d3_magenta string
---@field v0_black   string
---@field v0_white   string
---@field v1_black   string
---@field v1_white   string
---@field v2_black   string
---@field v2_white   string
---@field v3_black   string
---@field v3_white   string
---@field v3_red     string
---@field v3_orange  string
---@field v3_yellow  string
---@field v3_green   string
---@field v3_mint    string
---@field v3_cyan    string
---@field v3_blue    string
---@field v3_magenta string

---@class Palette
---@field tc TerminalColor
---@field di Diagnostic
---@field fg Foreground
---@field bg Background
---@field sy Syntax
---@field df Diff
---@field rb Rainbow
---@field at Attr
---@field ui UI

---@class TerminalColor
---@field black         Color
---@field red           Color
---@field orange        Color
---@field yellow        Color
---@field green         Color
---@field mint          Color
---@field cyan          Color
---@field blue          Color
---@field magenta       Color
---@field white         Color
---@field bright_black  Color
---@field bright_white  Color

---@class Diagnostic
---@field error         Color
---@field warn          Color
---@field ok            Color
---@field info          Color
---@field hint          Color

---@class Rainbow
---@field rb1           Color
---@field rb2           Color
---@field rb3           Color
---@field rb4           Color
---@field rb5           Color
---@field rb6           Color
---@field rb7           Color

---@class Diff
---@field delete        Color
---@field add           Color
---@field change        Color
---@field difftext      Color

---@class Attr
---@field clear         Color
---@field bold          Color
---@field strikethrough Color
---@field underline     Color
---@field undercurl     Color
---@field underdouble   Color
---@field underdotted   Color
---@field underdashed   Color
---@field italic        Color

---@class Foreground
---@field strong        Color
---@field text          Color
---@field comment       Color

---@class Background
---@field float         Color
---@field plain			Color
---@field visual        Color

---@class UI
---@field important  Color
---@field warning    Color
---@field info       Color
---@field hint       Color
---@field select     Color
---@field note       Color
---@field doc        Color
---@field sign       Color
---@field cursorline Color
---@field bar        Bar
---@field board      Board
---@field border     Color
---@field inactive   Color
---@field cursor     Color
---@field dir        Color
---@field fold       Color
---@field nontext    Color
---@field candidate  Color
---@field pmenu      Color
---@field pselect    Color

---@class Bar
---@field active     Color
---@field inactive   Color

---@class Board
---@field light      Color
---@field dark       Color

---@class Syntax
---@field keyword    Color
---@field constant   Color
---@field type       Color
---@field macro      Color
---@field functions  Color
---@field statement  Color
---@field modifier   Color
---@field operator   Color
---@field string     Color
---@field symbol	 Color
---@field struct     Color
---@field member     Color
---@field parameter  Color
---@field variable   Color
---@field construct  Color
---@field special    Color

---@class Config
---@field colors	Scheme
---@field options?  Options
---@field overides? HighlightGroups
---@field theme		string

---@class Options
---@field clear?         OptionTable
---@field bold?          OptionTable
---@field strikethrough? OptionTable
---@field underline?     OptionTable
---@field undercurl?     OptionTable
---@field underdouble?   OptionTable
---@field underdotted?   OptionTable
---@field underdashed?   OptionTable
---@field italic?        OptionTable

---@class UserConfig
---@field options?  Options
---@field overides? HighlightGroups
---@field theme?	string

---@alias OptionTable table<string,boolean>
---@alias HighlightGroups table<string,vim.api.keyset.highlight>
---@alias Color table<vim.api.keyset.highlight> | string
