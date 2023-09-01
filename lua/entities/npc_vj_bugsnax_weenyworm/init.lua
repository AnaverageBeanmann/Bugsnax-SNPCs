AddCSLuaFile("shared.lua")
/*
re-enable these for revamp update
include("vj_base/ai/core.lua")
include("vj_base/ai/schedules.lua")
include("vj_base/ai/move_aa.lua")
*/
include("shared.lua")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_CustomOnPreInitialize()
	if self:GetClass() == "npc_vj_bugsnax_weenyworm_shy" then
		self.Model = {"models/vj_bugsnax/weenyworm_shy.mdl"}
	else
		self.Model = {"models/vj_bugsnax/weenyworm.mdl"}
	end
	self.StartHealth = 50
	self.HullType = HULL_WIDE_SHORT
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_CustomOnInitialize()

	self:SetCollisionBounds(Vector(15,15,12),Vector(-15,-15,0))

	self.SoundTbl_Idle = {
		"vj_bugsnax/garden_grove/weenyworm/idle_1.wav",
		"vj_bugsnax/garden_grove/weenyworm/idle_2.wav",
		"vj_bugsnax/garden_grove/weenyworm/idle_3.wav",
	}

	self.SoundTbl_CombatIdle = {
		"vj_bugsnax/garden_grove/weenyworm/flee_1.wav",
		"vj_bugsnax/garden_grove/weenyworm/flee_2.wav",
		"vj_bugsnax/garden_grove/weenyworm/flee_3.wav",
	}
	self.SoundTbl_Alert = {
		"vj_bugsnax/garden_grove/weenyworm/alerted_1.wav",
		"vj_bugsnax/garden_grove/weenyworm/alerted_2.wav",
		"vj_bugsnax/garden_grove/weenyworm/alerted_3.wav",
	}
	self.SoundTbl_Pain = {
		"vj_bugsnax/garden_grove/weenyworm/alerted_1.wav",
		"vj_bugsnax/garden_grove/weenyworm/alerted_2.wav",
		"vj_bugsnax/garden_grove/weenyworm/alerted_3.wav",
	}
	self.SoundTbl_Impact = {
		"vj_bugsnax/garden_grove/weenyworm/pestered_1.wav",
		"vj_bugsnax/garden_grove/weenyworm/pestered_2.wav",
		"vj_bugsnax/garden_grove/weenyworm/pestered_3.wav",
	}
	self.SoundTbl_Death = {
		"vj_bugsnax/garden_grove/weenyworm/stunned_1.wav",
		"vj_bugsnax/garden_grove/weenyworm/stunned_2.wav",
		"vj_bugsnax/garden_grove/weenyworm/stunned_3.wav",
	}

	self.SoundTbl_Burning = {
		"vj_bugsnax/garden_grove/weenyworm/on_fire_1.wav",
		"vj_bugsnax/garden_grove/weenyworm/on_fire_2.wav",
		"vj_bugsnax/garden_grove/weenyworm/on_fire_3.wav",
	}

	self.SoundTbl_Stunned = {
		"vj_bugsnax/garden_grove/weenyworm/stunned_1.wav",
		"vj_bugsnax/garden_grove/weenyworm/stunned_2.wav",
		"vj_bugsnax/garden_grove/weenyworm/stunned_3.wav",
	}

	self.Bugsnax_Size = 1

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_Blink()

	self:SetBodygroup(1,2)
	self:SetBodygroup(2,2)
	self:SetBodygroup(3,2)
	self:SetBodygroup(4,2)

	timer.Simple(0.15,function() if IsValid(self) then
		self:SetBodygroup(1,1)
		self:SetBodygroup(2,1)
		self:SetBodygroup(3,1)
		self:SetBodygroup(4,1)
		timer.Simple(0.05,function() if IsValid(self) then
			self:SetBodygroup(1,0)
			self:SetBodygroup(2,0)
			self:SetBodygroup(3,0)
			self:SetBodygroup(4,0)
		end end)
	end end)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_NomCloud()

	local CloudCol = Color(255,206,150) -- change depending on color of snak
	
	-- leave this stuff as-is, maybe make the cloud bigger if needed but that's it
	local effectBlood = EffectData()
	effectBlood:SetOrigin(self:GetPos() + self:OBBCenter())
	effectBlood:SetColor(VJ_Color2Byte(CloudCol))
	effectBlood:SetScale(90)
	util.Effect("VJ_Blood1",effectBlood)

end