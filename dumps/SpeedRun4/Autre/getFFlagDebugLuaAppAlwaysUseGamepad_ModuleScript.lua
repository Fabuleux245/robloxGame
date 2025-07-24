-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:24:40
-- Luau version 6, Types version 3
-- Time taken: 0.000940 seconds

game:DefineFastFlag("DebugLuaAppAlwaysUseGamepad", false)
game:DefineFastInt("DebugLuaAppForceGamepad", 0)
local RunService_upvr = game:GetService("RunService")
local GuiService_upvr = game:GetService("GuiService")
return function() -- Line 9
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	local var4
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var4 = GuiService_upvr:IsTenFootInterface()
		return var4
	end
	if not game:GetFastFlag("DebugLuaAppAlwaysUseGamepad") or not RunService_upvr:IsStudio() or not INLINED() then
		if 0 >= game:GetFastInt("DebugLuaAppForceGamepad") then
			var4 = false
		else
			var4 = true
		end
	end
	return var4
end