-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:08
-- Luau version 6, Types version 3
-- Time taken: 0.001312 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local Parent = script.Parent.Parent.Parent
local InputTypeMap_upvr = require(Parent.Resources.Constants).InputTypeMap
local any_extend_result1 = Roact_upvr.PureComponent:extend("LastInputTypeConnector")
local VRService_upvr = game:GetService("VRService")
function any_extend_result1.updateInputType(arg1, arg2) -- Line 19
	--[[ Upvalues[2]:
		[1]: VRService_upvr (readonly)
		[2]: InputTypeMap_upvr (readonly)
	]]
	local var8
	if VRService_upvr.VREnabled then
		var8 = InputTypeMap_upvr[Enum.UserInputType.MouseMovement]
	end
	if var8 then
		arg1.props.setInputType(var8)
	end
end
function any_extend_result1.init(arg1) -- Line 32
	--[[ Upvalues[2]:
		[1]: InputTypeMap_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	arg1:updateInputType(InputTypeMap_upvr[UserInputService_upvr:GetLastInputType()])
end
local ExternalEventConnection_upvr = require(Parent.Utility.ExternalEventConnection)
function any_extend_result1.render(arg1) -- Line 37
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: ExternalEventConnection_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: InputTypeMap_upvr (readonly)
	]]
	return Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = UserInputService_upvr.LastInputTypeChanged;
		callback = function(arg1_2) -- Line 40, Named "callback"
			--[[ Upvalues[2]:
				[1]: InputTypeMap_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			arg1:updateInputType(InputTypeMap_upvr[arg1_2])
		end;
	})
end
local SetInputType_upvr = require(Parent.Actions.SetInputType)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(nil, function(arg1) -- Line 47
	--[[ Upvalues[1]:
		[1]: SetInputType_upvr (readonly)
	]]
	return {
		setInputType = function(arg1_3) -- Line 49, Named "setInputType"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetInputType_upvr (copied, readonly)
			]]
			return arg1(SetInputType_upvr(arg1_3))
		end;
	}
end)(any_extend_result1)