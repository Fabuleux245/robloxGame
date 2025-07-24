-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:19:17
-- Luau version 6, Types version 3
-- Time taken: 0.000682 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local Signal_upvr = require(script:FindFirstAncestor("AppStartup").Parent.AppCommonLib).Signal
function module_upvr.new() -- Line 22
	--[[ Upvalues[2]:
		[1]: Signal_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local module = {
		changed = Signal_upvr.new();
		isInteractive = false;
	}
	setmetatable(module, module_upvr)
	return module
end
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("LuaAppCompression")
local ScriptContext_upvr = game:GetService("ScriptContext")
function module_upvr.setInteractive(arg1) -- Line 31
	--[[ Upvalues[2]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: ScriptContext_upvr (readonly)
	]]
	if arg1.isInteractive then
	else
		arg1.isInteractive = true
		if game_GetEngineFeature_result1_upvr then
			ScriptContext_upvr:CompressLuaApp()
		end
		arg1.changed:fire()
	end
end
module_upvr.default = module_upvr.new()
return module_upvr