-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:57
-- Luau version 6, Types version 3
-- Time taken: 0.000742 seconds

game:DefineFastString("SelectInSceneReportMenuOverrideUserIds", "")
local Players_upvr = game:GetService("Players")
function isInSelectInSceneReportMenuOverrideList() -- Line 5
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local var4
	while not var4 do
		Players_upvr:GetPropertyChangedSignal("LocalPlayer"):Wait()
		var4 = Players_upvr.LocalPlayer
	end
	for i in game:GetFastString("SelectInSceneReportMenuOverrideUserIds"):gmatch("%d+") do
		if var4 and tonumber(i) == var4.UserId then
			return true
		end
	end
	return false
end
return isInSelectInSceneReportMenuOverrideList