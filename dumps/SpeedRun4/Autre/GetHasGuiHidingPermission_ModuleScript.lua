-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:37
-- Luau version 6, Types version 3
-- Time taken: 0.000758 seconds

local Promise_upvr = require(game:GetService("CorePackages").Packages.Promise)
local GetFIntCanHideGuiGroupId_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Flags.GetFIntCanHideGuiGroupId)
return function(arg1, arg2, arg3) -- Line 11
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: GetFIntCanHideGuiGroupId_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 12
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: GetFIntCanHideGuiGroupId_upvr (copied, readonly)
		]]
		if not game:GetEngineFeature("GuiHidingApiSupport") then
			arg1_2(false)
		else
			if not arg2 then
				arg2_2("Invalid local player")
				return
			end
			local var5_upvw = false
			local pcall_result1, pcall_result2 = pcall(function() -- Line 24
				--[[ Upvalues[3]:
					[1]: GetFIntCanHideGuiGroupId_upvr (copied, readonly)
					[2]: var5_upvw (read and write)
					[3]: arg2 (copied, readonly)
				]]
				var5_upvw = arg2:IsInGroup(GetFIntCanHideGuiGroupId_upvr())
			end)
			if pcall_result1 then
				arg1_2(var5_upvw)
			else
				arg2_2(pcall_result2)
			end
		end
	end)
end