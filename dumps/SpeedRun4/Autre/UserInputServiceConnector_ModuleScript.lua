-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:58
-- Luau version 6, Types version 3
-- Time taken: 0.001955 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("UserInputServiceConnector")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("PlayerListFilterInputServiceDispatches", false)
local EventConnection_upvr = require(script.Parent.EventConnection)
local UserInputService_upvr = game:GetService("UserInputService")
function any_extend_result1.render(arg1) -- Line 19
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: EventConnection_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local module = {}
	local tbl = {
		event = UserInputService_upvr.InputBegan;
	}
	local function callback(arg1_2, arg2) -- Line 23
		--[[ Upvalues[2]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if game_DefineFastFlag_result1_upvr and not arg1.props.playerDropdownVisible then
		else
			if arg2 then return end
			local UserInputType = arg1_2.UserInputType
			if UserInputType == Enum.UserInputType.Touch or UserInputType == Enum.UserInputType.MouseButton1 then
				arg1.props.closePlayerDropDown()
			end
		end
	end
	tbl.callback = callback
	module.InputBeganConnection = Roact_upvr.createElement(EventConnection_upvr, tbl)
	module.LastInputTypeChangedConnection = Roact_upvr.createElement(EventConnection_upvr, {
		event = UserInputService_upvr.LastInputTypeChanged;
		callback = function(arg1_3) -- Line 41, Named "callback"
			--[[ Upvalues[2]:
				[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			local var12
			if arg1_3.Name:find("Gamepad") == nil then
				var12 = false
			else
				var12 = true
			end
			if game_DefineFastFlag_result1_upvr and var12 == arg1.props.isUsingGamepad then
			else
				arg1.props.setIsUsingGamepad(var12)
			end
		end;
	})
	return Roact_upvr.createFragment(module)
end
local ClosePlayerDropDown_upvr = require(Parent.Actions.ClosePlayerDropDown)
local SetIsUsingGamepad_upvr = require(Parent.Actions.SetIsUsingGamepad)
if not game_DefineFastFlag_result1_upvr or not function(arg1) -- Line 55, Named "mapStateToProps"
	return {
		playerDropdownVisible = arg1.playerDropDown.isVisible;
		isUsingGamepad = arg1.displayOptions.isUsingGamepad;
	}
end then
end
return require(CorePackages.Packages.RoactRodux).connect(nil, function(arg1) -- Line 62, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: ClosePlayerDropDown_upvr (readonly)
		[2]: SetIsUsingGamepad_upvr (readonly)
	]]
	return {
		closePlayerDropDown = function() -- Line 64, Named "closePlayerDropDown"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ClosePlayerDropDown_upvr (copied, readonly)
			]]
			return arg1(ClosePlayerDropDown_upvr())
		end;
		setIsUsingGamepad = function(arg1_4) -- Line 68, Named "setIsUsingGamepad"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetIsUsingGamepad_upvr (copied, readonly)
			]]
			return arg1(SetIsUsingGamepad_upvr(arg1_4))
		end;
	}
end)(any_extend_result1)