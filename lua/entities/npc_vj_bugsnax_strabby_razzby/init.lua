AddCSLuaFile("shared.lua")
include("vj_base/ai/core.lua")
include("vj_base/ai/schedules.lua")
include("vj_base/ai/move_aa.lua")
include("shared.lua")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_CustomOnPreInitialize()
	self.Model = {"models/vj_bugsnax/razzby.mdl"}
	self.StartHealth = 15
	self.HullType = HULL_TINY
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_NomCloud()

	local CloudCol = Color(255,50,85) -- change depending on color of snak
	
	-- leave this stuff as-is, maybe make the cloud bigger if needed but that's it
	local effectBlood = EffectData()
	effectBlood:SetOrigin(self:GetPos() + self:OBBCenter())
	effectBlood:SetColor(VJ_Color2Byte(CloudCol))
	effectBlood:SetScale(60)
	util.Effect("VJ_Blood1",effectBlood)

end