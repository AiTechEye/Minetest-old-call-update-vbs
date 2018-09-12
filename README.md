# Minetest old lua call update V3<br>
## This is not a minetest mod<br>
**1: USE OF YOUR OWN RISK**<br>
**2: THE SCRIPT/APPLICATION IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.**<br>
**3: I (AiTechEye) DO NOT TAKE ANY RESPONSIBILITY FOR ANY DAMAGES AND ARE NOT LIABLE FOR ANY KINDS OF DAMAGES.**<br>
**4 the code are CC0**<br>
<br>
**This script/application should work fine with windows 7 and newer, unsure about older os.**<br>

**Only use this app if you know what you are doing, some calls eg "get_2d_map_flat" isn't supported in mt 0.4.16 and older.**<br>
<br>
This script will simply replace all of this old calls in lua-files, in all sub folders and creating a log about what it finds.
Only use this with copyes of your stuff, if something goes wrong there are no going back.
<br>
<br>
Put your files or whole mod/modpack/game in the "Minetest old call update" folder (created in first run).
As standard you will get a warning about using unknown vbs script, but just ignore it and run.
<br>

|REPLACE|		WITH|
|-------|-------|
|.env:|		minetest.
|getpos|		get_pos
|setpos|		set_pos
|moveto|	move_to
|setvelocity|	set_velocity
|getvelocity|	get_velocity
|setacceleration|	set_acceleration
|getacceleration|	get_acceleration
|setyaw|		set_yaw
|getyaw|		get_yaw
|settexturemod|	set_texture_mod
|setsprite|	set_sprite
|setting_setbool|	settings:set_bool
|setting_getbool|	settings:get_bool
|setting_get|	settings:get
|setting_set|	settings:set
|setting_save|	settings:write
|setting_get_pos|	settings:get_pos
|setting_set_pos|	settings:set_pos
|get2dMap|	get_2d_map
|get3dMap|	get_3d_map
|get2dMap_flat|	get_2d_map_flat
|get3dMap_flat|	get_3d_map_flat
|calc2dMap|	calc_2d_map
|calc3dMap|	calc_3d_map
|get2d|		get_2d
|get3d|		get_3d
|getMapSlice|	get_map_slice



