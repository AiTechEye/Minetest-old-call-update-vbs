# Minetest old call update V2
## This is not a minetest mod
**1: USE OF YOUR OWN RISK**
**2: THE SCRIPT/APPLICATION IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.**
**3: I (AiTechEye) DO NOT TAKE ANY RESPONSIBILITY FOR ANY DAMAGES AND ARE NOT LIABLE FOR ANY KINDS OF DAMAGES.**
**4 the code are CC0**

**This script/application should work fine with windows 7 and newer, unsure about older os.**

This script will simply replace all of this old calls in lua-files, in all sub folders and creating a log about what it finds.
Only use this with copyes of your stuff, if something goes wrong there are no going back.


Put your files or whole mod/modpack/game in the "Minetest old call update" folder (created in first run).
As standard you will get a warning about using unknown vbs script, but just ignoe it and run.

REPLACE		WITH<br>
.env:		minetest.<br>
getpos		get_pos<br>
setpos		set_pos<br>
moveto		move_to<br>
setvelocity	set_velocity<br>
getvelocity	get_velocity<br>
setacceleration	set_acceleration<br>
getacceleration	get_acceleration<br>
setyaw		set_yaw<br>
getyaw		get_yaw<br>
settexturemod	set_texture_mod<br>
setsprite		set_sprite<br>
minetest.setting_	minetest.settings:<br>
