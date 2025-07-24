-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:03
-- Luau version 6, Types version 3
-- Time taken: 0.000578 seconds

local Promise_upvr = require(game:GetService("CorePackages").Packages.Promise)
local Players_upvr = game:GetService("Players")
return function() -- Line 6
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1, arg2) -- Line 7
		--[[ Upvalues[1]:
			[1]: Players_upvr (copied, readonly)
		]]
		local pcall_result1, pcall_result2 = pcall(function() -- Line 8
			--[[ Upvalues[1]:
				[1]: Players_upvr (copied, readonly)
			]]
			return Players_upvr:GetHumanoidDescriptionFromUserId(Players_upvr.LocalPlayer.UserId)
		end)
		if pcall_result1 then
			arg1(pcall_result2)
		else
			arg2()
		end
	end)
end