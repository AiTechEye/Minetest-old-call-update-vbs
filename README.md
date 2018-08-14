# Minetest old call update
## This is not a minetest mod
### This script/application should work fine with windows 7 and newer, unsure about older os.
### Version 2


### 1: USE OF YOUR OWN RISK
### 2: THE SCRIPT/APPLICATION IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
### 3: I (AiTechEye) DO NOT TAKE ANY RESPONSIBILITY FOR ANY DAMAGES AND ARE NOT LIABLE FOR ANY KIND OF DAMAGES.
### 4 the code are CC0


This script will simply replace all of this old calls in lua-files, in all sub folders and creating a log about what it finds.
Only use this with copyes of your stuff, if something goes wrong there are no going back.


Put your files or whole mod/modpack/game in the "Minetest old call update" folder (created in first run).


REPLACE		WITH
.env:		minetest.
getpos		get_pos
setpos		set_pos
moveto		move_to
setvelocity	set_velocity
getvelocity	get_velocity
setacceleration	set_acceleration
getacceleration	get_acceleration
setyaw		set_yaw
getyaw		get_yaw
settexturemod	set_texture_mod
setsprite		set_sprite
minetest.setting_	minetest.settings:
