/*--------------------------------------------------
	=============== Autorun File ===============
	*** Copyright (c) 2012-2019 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
------------------ Addon Information ------------------
local PublicAddonName = "Bugsnax NPCs"
local AddonName = "Bugsnax NPCs"
local AddonType = "SNPC"
local AutorunFile = "autorun/vj_bugsnax_autorun.lua"
-------------------------------------------------------
local VJExists = file.Exists("lua/autorun/vj_base_autorun.lua","GAME")

if VJExists == true then

	include('autorun/vj_controls.lua')

	local vCat = "Bugsnax"
	VJ.AddCategoryInfo(vCat,{Icon = "icons/vj_bugsnax_strabbyicon.png"})
	
	VJ.AddNPC("Base Snak","npc_vj_bugsnax_base",vCat)


	-- Flavor Falls
		-- VJ.AddNPC("Twisty Snakpod","npc_vj_bugsnax_snakpod_twisty",vCat)
		VJ.AddNPC("Strabby","npc_vj_bugsnax_strabby",vCat)
		-- VJ.AddNPC("Ruby Peelbug","npc_vj_bugsnax_peelbug_ruby",vCat)
		-- VJ.AddNPC("Rootle","npc_vj_bugsnax_rootle",vCat)
		-- VJ.AddNPC("White Rootle","npc_vj_bugsnax_rootle_white",vCat)
		-- VJ.AddNPC("Sandopede","npc_vj_bugsnax_sandopede",vCat)
		-- VJ.AddNPC("Sub Sandopede","npc_vj_bugsnax_sandopede_sub",vCat)
		-- VJ.AddNPC("Inchwrap","npc_vj_bugsnax_inch",vCat)

	-- Garden Grove
		-- VJ.AddNPC("Crispy Snakpod","npc_vj_bugsnax_snakpod",vCat)
		VJ.AddNPC("White Strabby","npc_vj_bugsnax_strabby_white",vCat)
		-- VJ.AddNPC("Weenyworm","npc_vj_bugsnax_weenyworm",vCat)
		-- VJ.AddNPC("Shiskabug","npc_vj_bugsnax_shiskabug",vCat)
		-- VJ.AddNPC("Fryder","npc_vj_bugsnax_fryder",vCat)
		-- VJ.AddNPC("Bunger","npc_vj_bugsnax_bunger",vCat)
		-- VJ.AddNPC("Dr Sodie","npc_vj_bugsnax_sodie_dr",vCat)

	-- Simmering Springs
		-- VJ.AddNPC("Grumpy Snakpod","npc_vj_bugsnax_snakpod_grumpy",vCat)
		VJ.AddNPC("Razzby","npc_vj_bugsnax_strabby_razzby",vCat)
		VJ.AddNPC("Sprout","npc_vj_bugsnax_strabby_sprout",vCat)
		-- VJ.AddNPC("Kweeble","npc_vj_bugsnax_kweeble",vCat)
		-- VJ.AddNPC("Baja Tacroach","npc_vj_bugsnax_tacroach_baja",vCat)
		-- VJ.AddNPC("Orange Peelbug","npc_vj_bugsnax_peelbug_green",vCat)
		-- VJ.AddNPC("Crapple","npc_vj_bugsnax_crapple",vCat)
		-- VJ.AddNPC("Pineantula","npc_vj_bugsnax_pineantula",vCat)
		-- VJ.AddNPC("Waffstackarak","npc_vj_bugsnax_flapjackarak_waffle",vCat)

	-- Scorched Gorge
		-- VJ.AddNPC("Puffy Snakpod","npc_vj_bugsnax_snakpod_puffy",vCat)
		-- VJ.AddNPC("Shy Weenyworm","npc_vj_bugsnax_weenyworm_shy",vCat)
		-- VJ.AddNPC("Sweet Fryder","npc_vj_bugsnax_fryder_sweet",vCat)
		-- VJ.AddNPC("Green Peelbug","npc_vj_bugsnax_peelbug",vCat)
		-- VJ.AddNPC("BBQ Bunger","npc_vj_bugsnax_bunger_bbq",vCat)
		-- VJ.AddNPC("Cheepoof","npc_vj_bugsnax_cheepoof",vCat)
		-- VJ.AddNPC("White Cheepoof","npc_vj_bugsnax_cheepoof_white",vCat)

	-- Sugarpine Woods
		-- VJ.AddNPC("Nutty Snakpod","npc_vj_bugsnax_snakpod_nutty",vCat)
		-- VJ.AddNPC("Cinnasnail","npc_vj_bugsnax_cinnasnail",vCat)
		-- VJ.AddNPC("Yellow Peelbug","npc_vj_bugsnax_peelbug_yellow",vCat)
		-- VJ.AddNPC("Charmallow","npc_vj_bugsnax_charmallow",vCat)
		-- VJ.AddNPC("Hunnabee","npc_vj_bugsnax_hunnabee",vCat)

	-- Boiling Bay
		-- VJ.AddNPC("Fruity Snakpod","npc_vj_bugsnax_snakpod_fruity",vCat)
		-- VJ.AddNPC("Golden Kweeble","npc_vj_bugsnax_kweeble_golden",vCat)
		-- VJ.AddNPC("Green Crapple","npc_vj_bugsnax_crapple_green",vCat)
		-- VJ.AddNPC("Greater Cocomite","npc_vj_bugsnax_cocomite",vCat)
		-- VJ.AddNPC("Lesser Cocomite","npc_vj_bugsnax_cocomite_lesser",vCat)
		-- VJ.AddNPC("La Sodieux","npc_vj_bugsnax_sodie_sodieux",vCat)
		-- VJ.AddNPC("Sherbie","npc_vj_bugsnax_sherbie",vCat)
		-- VJ.AddNPC("Flamin' Cheepoof","npc_vj_bugsnax_cheepoof_flaming",vCat)

	-- Sizzlin' Sands
		-- VJ.AddNPC("Meaty Snakpod","npc_vj_bugsnax_snakpod_meaty",vCat)
		VJ.AddNPC("Black Razzby","npc_vj_bugsnax_strabby_razzby_black",vCat)
		-- VJ.AddNPC("Tacroach","npc_vj_bugsnax_tacroach",vCat)
		-- VJ.AddNPC("Sodie D","npc_vj_bugsnax_sodie",vCat)
		-- VJ.AddNPC("Incherrito","npc_vj_bugsnax_inch_burrito",vCat)
		-- VJ.AddNPC("Flapjackarak","npc_vj_bugsnax_flapjackarak",vCat)

	-- Frosted Peak
		-- VJ.AddNPC("Melty Snakpod","npc_vj_bugsnax_snakpod_melty",vCat)
		-- VJ.AddNPC("Cheery","npc_vj_bugsnax_cheery",vCat)
		-- VJ.AddNPC("Chippie","npc_vj_bugsnax_chippie",vCat)
		-- VJ.AddNPC("Mt Sodie","npc_vj_bugsnax_sodie_mt",vCat)
		-- VJ.AddNPC("Flutterjam","npc_vj_bugsnax_flutterjam",vCat)
		-- VJ.AddNPC("Chillynilly","npc_vj_bugsnax_charmallow_cold",vCat)

	-- Broken Tooth
		-- VJ.AddNPC("Bunger Royale","npc_vj_bugsnax_bunger_royale",vCat)
		/*
		//won't do these until i get their sounds
		VJ.AddNPC("Cellystix","npc_vj_bugsnax_cellystix",vCat)
		VJ.AddNPC("Cheddorb","npc_vj_bugsnax_cheddorb",vCat)
		VJ.AddNPC("Chocolant","npc_vj_bugsnax_chocolant",vCat)
		VJ.AddNPC("Clawbsteroni","npc_vj_bugsnax_clawbsteroni",vCat)
		VJ.AddNPC("Pielobite","npc_vj_bugsnax_pielobite",vCat)
		VJ.AddNPC("Spaghider","npc_vj_bugsnax_spaghider",vCat)
		VJ.AddNPC("Tikkada Masala","npc_vj_bugsnax_tikkada",vCat)
		*/

	
	local AddConvars = {}

	AddConvars["VJ_Bugsnax_Targetable"] = 1
	AddConvars["VJ_Bugsnax_Evil"] = 0
	
	for k, v in pairs(AddConvars) do
		if !ConVarExists( k ) then CreateConVar( k, v, {FCVAR_ARCHIVE} ) end
	end
	
	if (CLIENT) then
		local function VJ_Bugsnax(Panel)
			if !game.SinglePlayer() then
				if !LocalPlayer():IsAdmin() or !LocalPlayer():IsSuperAdmin() then
					Panel:AddControl( "Label", {Text = "You are not an admin!"})
					Panel:ControlHelp("Note: Only admins can change these settings!")
					return
				end
			end
			Panel:AddControl( "Label", {Text = "Note: Only admins can change these settings!"})
			local vj_resetbutton = {Options = {}, CVars = {}, Label = "Reset Everything:", MenuButton = "0"}
			vj_resetbutton.Options["#vjbase.menugeneral.default"] = {
				VJ_Bugsnax_Targetable = "1",
				VJ_Bugsnax_Evil = "0",
			}
	
			/*
			examples
			
			Panel:AddControl("Checkbox", {Label = "", Command = ""})
			
			Panel:AddControl("Slider", {Label = "", Command = "", Min = 1, Max = 10000})

			local example_combobox = {Options = {}, CVars = {}, Label = "", MenuButton = "0"}
			example_combobox.Options["Default"] = {convar_name = 1}
			example_combobox.Options["Option 1"] = {convar_name = 2}
			example_combobox.Options["Option 2"] = {convar_name = 3}
			Panel:AddControl("ComboBox", example_combobox)
			
			Panel:ControlHelp("")
			
			Panel:AddControl( "Label", {Text = "Note: Only admins can change these settings!"})
			*/
			
			Panel:AddControl("ComboBox", vj_resetbutton)

			Panel:AddControl("Checkbox", {Label ="Targetale Bugsnax?", Command ="VJ_Bugsnax_Targetable"})
			Panel:ControlHelp("If enabled, other npcs can target and attack Bugsnax.")

			Panel:AddControl("Checkbox", {Label ="Evil Bugsnax?", Command ="VJ_Bugsnax_Targetable"})
			Panel:ControlHelp("If enabled, all Bugsnax are evil and will actively attack everything.")

		end

		function VJ_AddToMenu_Bugsnax(Panel)
			spawnmenu.AddToolMenuOption("DrVrej","SNPC Configures","Bugsnax","Bugsnax","","", VJ_Bugsnax, {} )
		end

		hook.Add("PopulateToolMenu","VJ_AddToMenu_Bugsnax", VJ_AddToMenu_Bugsnax )

	end

-- !!!!!! DON'T TOUCH ANYTHING BELOW THIS !!!!!! -------------------------------------------------------------------------------------------------------------------------
	AddCSLuaFile(AutorunFile)
	VJ.AddAddonProperty(AddonName,AddonType)
else
	if (CLIENT) then
		chat.AddText(Color(0,200,200),PublicAddonName,
		Color(0,255,0)," was unable to install, you are missing ",
		Color(255,100,0),"VJ Base!")
	end
	timer.Simple(1,function()
		if not VJF then
			if (CLIENT) then
				VJF = vgui.Create("DFrame")
				VJF:SetTitle("ERROR!")
				VJF:SetSize(790,560)
				VJF:SetPos((ScrW()-VJF:GetWide())/2,(ScrH()-VJF:GetTall())/2)
				VJF:MakePopup()
				VJF.Paint = function()
					draw.RoundedBox(8,0,0,VJF:GetWide(),VJF:GetTall(),Color(200,0,0,150))
				end
				
				local VJURL = vgui.Create("DHTML",VJF)
				VJURL:SetPos(VJF:GetWide()*0.005, VJF:GetTall()*0.03)
				VJURL:Dock(FILL)
				VJURL:SetAllowLua(true)
				VJURL:OpenURL("https://sites.google.com/site/vrejgaming/vjbasemissing")
			elseif (SERVER) then
				timer.Create("VJBASEMissing",5,0,function() print("VJ Base is Missing! Download it from the workshop!") end)
			end
		end
	end)
end