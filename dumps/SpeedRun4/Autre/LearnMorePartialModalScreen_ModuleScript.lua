-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:48
-- Luau version 6, Types version 3
-- Time taken: 0.002418 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local tbl_upvr = {}
local useEffectOnMount_upvr = require(Parent.RoactUtils).Hooks.useEffectOnMount
local Logger_upvr = require(script.Parent.Logger)
local useCallback_upvr = React_upvr.useCallback
local LearnMorePartialModalContainer_upvr = require(script.Parent.LearnMorePartialModalContainer)
return function(arg1) -- Line 18, Named "LearnMorePartialModalScreen"
	--[[ Upvalues[7]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useEffectOnMount_upvr (readonly)
		[4]: Logger_upvr (readonly)
		[5]: useCallback_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: LearnMorePartialModalContainer_upvr (readonly)
	]]
	local navigation_upvr = Cryo_upvr.Dictionary.union(tbl_upvr, arg1).navigation
	local var17
	if type(navigation_upvr) == "nil" then
		var17 = false
	else
		var17 = true
	end
	assert(var17, "LearnMorePartialModalScreen should be wrapped with React Navigation")
	local var18 = navigation_upvr
	if var18 then
		var18 = navigation_upvr.getParam
		if var18 then
			var18 = navigation_upvr.getParam
			var17 = "conversationId"
			var18 = var18(var17, nil)
		end
	end
	var17 = useEffectOnMount_upvr
	var17(function() -- Line 24
		--[[ Upvalues[1]:
			[1]: Logger_upvr (copied, readonly)
		]]
		Logger_upvr:info("LearnMorePartialModalScreen mounted")
	end)
	var17 = useCallback_upvr
	var17 = var17(function() -- Line 28
		--[[ Upvalues[1]:
			[1]: navigation_upvr (readonly)
		]]
		navigation_upvr.goBack()
	end, {navigation_upvr})
	return React_upvr.createElement(LearnMorePartialModalContainer_upvr, {
		conversationId = var18;
		onDismissed = var17;
	})
end