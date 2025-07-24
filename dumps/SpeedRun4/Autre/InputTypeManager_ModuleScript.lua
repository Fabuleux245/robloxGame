-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:05
-- Luau version 6, Types version 3
-- Time taken: 0.004689 seconds

local Parent = script.Parent.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Workspace.Packages.PurchasePromptDeps).Roact
local tbl_upvr = {
	[Enum.UserInputType.Gamepad1] = true;
	[Enum.UserInputType.Gamepad2] = true;
	[Enum.UserInputType.Gamepad3] = true;
	[Enum.UserInputType.Gamepad4] = true;
}
local any_extend_result1 = Roact_upvr.Component:extend("InputTypeManager")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FilterPurchasePromptInputDispatch", false)
function any_extend_result1.init(arg1) -- Line 33
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local setGamepadEnabled_upvr = arg1.props.setGamepadEnabled
	function arg1.dispatchOnChange(arg1_2) -- Line 36
		--[[ Upvalues[4]:
			[1]: tbl_upvr (copied, readonly)
			[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: setGamepadEnabled_upvr (readonly)
		]]
		local var9
		if tbl_upvr[arg1_2] then
			var9 = true
		else
			var9 = false
		end
		if game_DefineFastFlag_result1_upvr and var9 == arg1.props.gamepadEnabled then
		else
			setGamepadEnabled_upvr(var9)
		end
	end
	arg1.cursorOverridden = false
end
local ExternalEventConnection_upvr = require(script.Parent.ExternalEventConnection)
local UserInputService_upvr = game:GetService("UserInputService")
function any_extend_result1.render(arg1) -- Line 55
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ExternalEventConnection_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
	]]
	return Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = UserInputService_upvr.LastInputTypeChanged;
		callback = arg1.dispatchOnChange;
	})
end
local PromptState_upvr = require(Parent.Enums.PromptState)
local MouseIconOverrideService_upvr = require(CorePackages.InGameServices.MouseIconOverrideService)
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 62
	--[[ Upvalues[2]:
		[1]: PromptState_upvr (readonly)
		[2]: MouseIconOverrideService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var15 = false
	local var16
	if arg2.promptState == var16 then
		var16 = arg1.props
		var16 = PromptState_upvr.None
		if var16.promptState == var16 then
			var15 = false
		else
			var15 = true
		end
	end
	local var17 = false
	var16 = arg2.promptState
	if var16 ~= PromptState_upvr.None then
		var16 = arg1.props.promptState
		if var16 ~= PromptState_upvr.None then
			var17 = false
		else
			var17 = true
		end
	end
	if arg1.props.promptState == PromptState_upvr.None then
		var16 = false
	else
		var16 = true
	end
	if not arg1.props.gamepadEnabled or not Enum.OverrideMouseIconBehavior.ForceHide then
		local ForceShow = Enum.OverrideMouseIconBehavior.ForceShow
	end
	if var16 and arg2.gamepadEnabled ~= arg1.props.gamepadEnabled then
		if arg1.cursorOverridden then
			MouseIconOverrideService_upvr.pop("PurchasePromptOverrideKey")
		end
		MouseIconOverrideService_upvr.push("PurchasePromptOverrideKey", ForceShow)
		arg1.cursorOverridden = true
	else
		if var15 then
			MouseIconOverrideService_upvr.push("PurchasePromptOverrideKey", ForceShow)
			arg1.cursorOverridden = true
			return
		end
		if var17 then
			MouseIconOverrideService_upvr.pop("PurchasePromptOverrideKey")
			arg1.cursorOverridden = false
		end
	end
end
local SetGamepadEnabled_upvr = require(Parent.Actions.SetGamepadEnabled)
return require(Parent.connectToStore)(function(arg1) -- Line 89, Named "mapStateToProps"
	return {
		promptState = arg1.promptState;
		gamepadEnabled = arg1.gamepadEnabled;
	}
end, function(arg1) -- Line 96, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: SetGamepadEnabled_upvr (readonly)
	]]
	return {
		setGamepadEnabled = function(arg1_3) -- Line 98, Named "setGamepadEnabled"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetGamepadEnabled_upvr (copied, readonly)
			]]
			arg1(SetGamepadEnabled_upvr(arg1_3))
		end;
	}
end)(any_extend_result1)