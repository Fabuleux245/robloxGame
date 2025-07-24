-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:45
-- Luau version 6, Types version 3
-- Time taken: 0.001051 seconds

local Parent = script.Parent.Parent
local WindowState_upvr = require(Parent.Enums.WindowState)
local module = {}
local PromptState_upvr = require(Parent.Enums.PromptState)
module[require(Parent.Actions.SetPromptState).name] = function(arg1, arg2) -- Line 19
	--[[ Upvalues[2]:
		[1]: PromptState_upvr (readonly)
		[2]: WindowState_upvr (readonly)
	]]
	if arg2.promptState == PromptState_upvr.None then
		return WindowState_upvr.Hidden
	end
	return WindowState_upvr.Shown
end
module[require(Parent.Actions.SetWindowState).name] = function(arg1, arg2) -- Line 26
	return arg2.state
end
module[require(Parent.Actions.ErrorOccurred).name] = function(arg1, arg2) -- Line 29
	--[[ Upvalues[1]:
		[1]: WindowState_upvr (readonly)
	]]
	return WindowState_upvr.Shown
end
module[require(Parent.Actions.StartPurchase).name] = function(arg1, arg2) -- Line 32
	--[[ Upvalues[1]:
		[1]: WindowState_upvr (readonly)
	]]
	return WindowState_upvr.Shown
end
module[require(Parent.Actions.PromptNativeUpsell).name] = function(arg1, arg2) -- Line 35
	--[[ Upvalues[1]:
		[1]: WindowState_upvr (readonly)
	]]
	return WindowState_upvr.Shown
end
module[require(Parent.Actions.PromptNativeUpsellSuggestions).name] = function(arg1, arg2) -- Line 38
	--[[ Upvalues[1]:
		[1]: WindowState_upvr (readonly)
	]]
	return WindowState_upvr.Shown
end
module[require(Parent.Actions.CompleteRequest).name] = function(arg1, arg2) -- Line 41
	--[[ Upvalues[1]:
		[1]: WindowState_upvr (readonly)
	]]
	return WindowState_upvr.Hidden
end
return require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Rodux.createReducer(WindowState_upvr.Hidden, module)