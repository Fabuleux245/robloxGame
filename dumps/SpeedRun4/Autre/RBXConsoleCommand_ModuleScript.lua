-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:03
-- Luau version 6, Types version 3
-- Time taken: 0.000672 seconds

local module = {
	name = script.Name;
	alias = {"/console"};
}
local StarterGui_upvr = game:GetService("StarterGui")
function module.clientRun() -- Line 7
	--[[ Upvalues[1]:
		[1]: StarterGui_upvr (readonly)
	]]
	local pcall_result1, pcall_result2_upvr = pcall(function() -- Line 8
		--[[ Upvalues[1]:
			[1]: StarterGui_upvr (copied, readonly)
		]]
		return StarterGui_upvr:GetCore("DevConsoleVisible")
	end)
	if pcall_result1 then
		pcall(function() -- Line 12
			--[[ Upvalues[2]:
				[1]: StarterGui_upvr (copied, readonly)
				[2]: pcall_result2_upvr (readonly)
			]]
			StarterGui_upvr:SetCore("DevConsoleVisible", not pcall_result2_upvr)
		end)
	end
	return nil
end
return module