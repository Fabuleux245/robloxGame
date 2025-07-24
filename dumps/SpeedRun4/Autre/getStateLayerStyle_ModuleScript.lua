-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:51
-- Luau version 6, Types version 3
-- Time taken: 0.001011 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local ControlState_upvr = require(Foundation.Enums.ControlState)
function guiStateToStateLayer(arg1) -- Line 13
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	if arg1 == ControlState_upvr.Pressed then
		return "Press"
	end
	if arg1 == ControlState_upvr.SelectedPressed then
		return "Press"
	end
	if arg1 == ControlState_upvr.Hover then
		return "Hover"
	end
	return "Idle"
end
local StateLayerMode_upvr = require(Foundation.Enums.StateLayerMode)
function stateLayerModeToTokenNamespace(arg1) -- Line 25
	--[[ Upvalues[1]:
		[1]: StateLayerMode_upvr (readonly)
	]]
	if arg1 == StateLayerMode_upvr.Default then
		return "Color"
	end
	if arg1 == StateLayerMode_upvr.Inverse then
		return "Inverse"
	end
	if arg1 == StateLayerMode_upvr.Light then
		return "LightMode"
	end
	if arg1 == StateLayerMode_upvr.Dark then
		return "DarkMode"
	end
	return "Color"
end
return function(arg1, arg2, arg3) -- Line 39, Named "getStateLayerStyle"
	local var4 = arg2
	if var4 then
		var4 = arg2.mode
	end
	return arg1[stateLayerModeToTokenNamespace(var4)].State[guiStateToStateLayer(arg3)]
end