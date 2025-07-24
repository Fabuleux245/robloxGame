-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:22
-- Luau version 6, Types version 3
-- Time taken: 0.000478 seconds

local module = {}
local any_IsStudio_result1_upvr = game:GetService("RunService"):IsStudio()
local HotReload_upvr = require(script.Parent.HotReload)
function module.Load(arg1, arg2, arg3) -- Line 9
	--[[ Upvalues[2]:
		[1]: any_IsStudio_result1_upvr (readonly)
		[2]: HotReload_upvr (readonly)
	]]
	local arg1_result1 = arg1(arg3)
	arg1_result1.Parent = arg2
	if any_IsStudio_result1_upvr then
		local tbl = {
			Gui = arg1_result1;
		}
		tbl.Props = arg3
		tbl.Parent = arg2
		tbl.Function = arg1
		table.insert(HotReload_upvr.MakeGuiData, tbl)
	end
	return arg1_result1
end
return module