-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:28
-- Luau version 6, Types version 3
-- Time taken: 0.000701 seconds

local GetFFlagXboxFixPrimaryNavABEvents_upvr = require(game:GetService("CoreGui"):FindFirstChild("RobloxGui"):FindFirstChild("Modules"):FindFirstChild("Shell").Flags.GetFFlagXboxFixPrimaryNavABEvents)
return (function() -- Line 12, Named "contentHistory"
	--[[ Upvalues[1]:
		[1]: GetFFlagXboxFixPrimaryNavABEvents_upvr (readonly)
	]]
	local module = {}
	local var3_upvw
	function module.setLastSelectedContent(arg1, arg2) -- Line 17
		--[[ Upvalues[1]:
			[1]: var3_upvw (read and write)
		]]
		var3_upvw = arg2
	end
	function module.getLastContentName(arg1) -- Line 21
		--[[ Upvalues[2]:
			[1]: GetFFlagXboxFixPrimaryNavABEvents_upvr (copied, readonly)
			[2]: var3_upvw (read and write)
		]]
		local pcall_result1, pcall_result2 = pcall(function() -- Line 22
			--[[ Upvalues[2]:
				[1]: GetFFlagXboxFixPrimaryNavABEvents_upvr (copied, readonly)
				[2]: var3_upvw (copied, read and write)
			]]
			if GetFFlagXboxFixPrimaryNavABEvents_upvr() then
				return var3_upvw:GetId()
			end
			return var3_upvw:GetName()
		end)
		if pcall_result1 then
			return pcall_result2
		end
	end
	return module
end)()