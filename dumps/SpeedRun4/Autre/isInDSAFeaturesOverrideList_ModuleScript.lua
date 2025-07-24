-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:45
-- Luau version 6, Types version 3
-- Time taken: 0.001687 seconds

game:DefineFastString("DSAReportingAndTransparencyOverrideUserIds", "")
local Players_upvr = game:GetService("Players")
function isInDSAFeaturesOverrideList(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local var6
	if arg1 ~= nil then
		-- KONSTANTWARNING: GOTO [24] #19
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 17 start (CF ANALYSIS FAILED)
	var6 = Players_upvr.LocalPlayer
	while not var6 do
		Players_upvr:GetPropertyChangedSignal("LocalPlayer"):Wait()
		var6 = Players_upvr.LocalPlayer
	end
	if var6 then
	end
	var6 = game:GetFastString("DSAReportingAndTransparencyOverrideUserIds")
	for i in var6:gmatch("%d+") do
		if tonumber(i) == var6.UserId then
			return true
		end
	end
	do
		return false
	end
	-- KONSTANTERROR: [5] 5. Error Block 17 end (CF ANALYSIS FAILED)
end
return isInDSAFeaturesOverrideList