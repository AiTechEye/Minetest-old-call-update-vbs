'Version 2

set sf=CreateObject("Scripting.FileSystemObject")
pp=sf.GetAbsolutePathName("Minetest old call update")
cfolders=0
cfiles=0
text=""
rep = Array(".env:",	"minetest.",	":getpos(",":get_pos(",	":setpos(",":set_pos(",	":moveto(",":move_to(",	":setvelocity(",":set_velocity(",	":getvelocity(",":get_velocity(",	":setacceleration(",":set_acceleration(",		":getacceleration(",":get_acceleration(",	":setyaw(",":set_yaw(",	":getyaw(",":get_yaw(",	":settexturemod(",":set_texture_mod(",	":setsprite(",":set_sprite(",	"minetest.setting_","minetest.settings:")

sub folder(p)
	for each fo in sf.GetFolder(p).subfolders
		cfolders=cfolders+1
		folder(fo)
		for each fi1 in sf.GetFolder(fo).Files
			if instr(fi1.name,".lua")<>0 then
				file(fi1)
			end if
		next
	next
end sub
sub file(a)
	f=sf.OpenTextFile(a.path,1).readall
	cfiles=cfiles+1
	changes=""
	f2=f
	for i=0 to ubound(rep) step 2
		if InStr(f,rep(i))>0 then
			changes=changes & rep(i) & "  "
			f2=Replace(f2,rep(i),rep(i+1))
		end if
	next
	if changes <> "" then
		sf.CreateTextFile(a).writeline(f2)
		text=text & right(a,len(a)-len(pp)-1) & " " & changes & vbCrLf
	end if
end sub

if not sf.FolderExists("Minetest old call update") then
	sf.CreateFolder("Minetest old call update")
else
	if msgbox("This application will scan & replace old function-calls in lua-files in all sub folders, in the 'Minetest old call update' folder" & vbCrLf & "Put copyes of your mods in the folder" & vbCrLf & vbCrLf &"Continue?",52,"Minetest old call update")=6 then
		folder(pp)
		if text <> "" then
			text=Replace(text,"(","")
			text=Replace(text,":","")
			logtext=""
			if sf.FileExists("log.txt") then
				logtext=sf.OpenTextFile("log.txt",1).readall
			end if
			sf.CreateTextFile("log.txt").writeline(logtext & vbCrLf & text)
			msgbox "Done" & vbCrLf & "checked folders: " & cfolders & vbCrLf & " lua files: " & cfiles
		else
			msgbox "Nothing found" & vbCrLf & "checked folders: " & cfolders & vbCrLf & " lua files: " & cfiles
		end if
	end if
end if
