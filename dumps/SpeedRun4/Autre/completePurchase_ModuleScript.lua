-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:54
-- Luau version 6, Types version 3
-- Time taken: 0.000764 seconds

local Parent = script.Parent.Parent
local Thunk_upvr = require(Parent.Thunk)
local Workspace_upvr = game:GetService("Workspace")
local PurchaseCompleteRecieved_upvr = require(Parent.Actions.PurchaseCompleteRecieved)
local SetPromptState_upvr = require(Parent.Actions.SetPromptState)
local PromptState_upvr = require(Parent.Enums.PromptState)
return function() -- Line 16, Named "completePurchase"
	--[[ Upvalues[5]:
		[1]: Thunk_upvr (readonly)
		[2]: Workspace_upvr (readonly)
		[3]: PurchaseCompleteRecieved_upvr (readonly)
		[4]: SetPromptState_upvr (readonly)
		[5]: PromptState_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, {}, function(arg1, arg2) -- Line 17
		--[[ Upvalues[4]:
			[1]: Workspace_upvr (copied, readonly)
			[2]: PurchaseCompleteRecieved_upvr (copied, readonly)
			[3]: SetPromptState_upvr (copied, readonly)
			[4]: PromptState_upvr (copied, readonly)
		]]
		local var8 = Workspace_upvr.DistributedGameTime - arg1:getState().purchasingStartTime
		arg1:dispatch(PurchaseCompleteRecieved_upvr())
		if 1 <= var8 then
			return arg1:dispatch(SetPromptState_upvr(PromptState_upvr.PurchaseComplete))
		end
		delay(1 - var8, function() -- Line 26
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: SetPromptState_upvr (copied, readonly)
				[3]: PromptState_upvr (copied, readonly)
			]]
			return arg1:dispatch(SetPromptState_upvr(PromptState_upvr.PurchaseComplete))
		end)
	end)
end