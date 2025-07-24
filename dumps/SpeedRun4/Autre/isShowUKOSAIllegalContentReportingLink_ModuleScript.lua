-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:47
-- Luau version 6, Types version 3
-- Time taken: 0.001333 seconds

local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableOSAIllegalContentReporting", false)
local var2_upvw = false
if game_DefineFastFlag_result1_upvr then
	local Players_upvr = game:GetService("Players")
	local LocalizationService_upvr = game:GetService("LocalizationService")
	task.spawn(function() -- Line 16
		--[[ Upvalues[3]:
			[1]: Players_upvr (readonly)
			[2]: LocalizationService_upvr (readonly)
			[3]: var2_upvw (read and write)
		]]
		local var6
		while not var6 do
			Players_upvr:GetPropertyChangedSignal("LocalPlayer"):Wait()
			var6 = Players_upvr.LocalPlayer
		end
		local pcall_result1, pcall_result2 = pcall(LocalizationService_upvr.GetCountryRegionForPlayerAsync, LocalizationService_upvr, var6)
		if not pcall_result1 then
		elseif pcall_result2 == "GB" then
			var2_upvw = true
		end
	end)
end
return function() -- Line 36, Named "isShowUKOSAIllegalContentReportingLink"
	--[[ Upvalues[2]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: var2_upvw (read and write)
	]]
	local var9 = game_DefineFastFlag_result1_upvr
	if var9 then
		var9 = var2_upvw
	end
	return var9
end