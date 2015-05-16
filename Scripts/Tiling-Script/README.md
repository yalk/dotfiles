Ruby script for tiling and window placement.

##Demo using Openbox

![Demo](http://i.imgur.com/4VgLJBn.gif)

##Modes

###xh_tile.rb --all

tile all windows on screen

###xh_tile.rb (t|b|l|r|tl|tr|bl|br)

move active window to edges (left, top-left, top, top-right, etc.)

###xh_tile.rb --split-(up|down|left|right)

split active window (either in half or using all windows occupying the same space)

###xh_tile.rb --grow-(up|down|left|right)

grow active window to the nearest edge (window or screen) of a direction

###xh_tile.rb --version

show version

##Features

-gaps between windows in all operating modes

-settings per workspace (median, window placement direction)

-fake windows that keep certain windows from covering more space than wanted

-setting for which windows to ignore when auto-tiling


##Dependencies

-xprop

-wmctrl

-xwininfo

-xrandr


##Tile automatically when a new window is opened

```xprop -spy -root _NET_CLIENT_LIST | while read windows ; do if [ "$old_windows" != "$windows" ] ; then old_windows=$windows && xh_tile.rb --all ; fi ; done```


##Example keybindings for Openbox using the keypad

```
<keybind key="C-W-KP_8">
	<action name="Execute">
		<command>xh_tile.rb --split-up</command>
	</action>
</keybind>
<keybind key="C-W-KP_2">
	<action name="Execute">
		<command>xh_tile.rb --split-down</command>
	</action>
</keybind>
<keybind key="C-W-KP_4">
	<action name="Execute">
		<command>xh_tile.rb --split-left</command>
	</action>
</keybind>
<keybind key="C-W-KP_6">
	<action name="Execute">
		<command>xh_tile.rb --split-right</command>
	</action>
</keybind>

<keybind key="S-W-KP_8">
	<action name="Execute">
		<command>xh_tile.rb --grow-up</command>
	</action>
</keybind>
<keybind key="S-W-KP_2">
	<action name="Execute">
		<command>xh_tile.rb --grow-down</command>
	</action>
</keybind>
<keybind key="S-W-KP_4">
	<action name="Execute">
		<command>xh_tile.rb --grow-left</command>
	</action>
</keybind>
<keybind key="S-W-KP_6">
	<action name="Execute">
		<command>xh_tile.rb --grow-right</command>
	</action>
</keybind>

<keybind key="W-KP_8">
	<action name="Execute">
		<command>xh_tile.rb t</command>
	</action>
</keybind>
<keybind key="W-KP_5">
	<action name="Execute">
		<command>xh_tile.rb</command>
	</action>
</keybind>
<keybind key="W-KP_2">
	<action name="Execute">
		<command>xh_tile.rb b</command>
	</action>
</keybind>
<keybind key="W-KP_7">
	<action name="Execute">
		<command>xh_tile.rb tl</command>
	</action>
</keybind>
<keybind key="W-KP_4">
	<action name="Execute">
		<command>xh_tile.rb l</command>
	</action>
</keybind>
<keybind key="W-KP_1">
	<action name="Execute">
		<command>xh_tile.rb bl</command>
	</action>
</keybind>
<keybind key="W-KP_9">
	<action name="Execute">
		<command>xh_tile.rb tr</command>
	</action>
</keybind>
<keybind key="W-KP_6"><action name="Execute">
		<command>xh_tile.rb r</command>
	</action>
</keybind>
<keybind key="W-KP_3">
	<action name="Execute">
		<command>xh_tile.rb br</command>
	</action>
</keybind>
```
