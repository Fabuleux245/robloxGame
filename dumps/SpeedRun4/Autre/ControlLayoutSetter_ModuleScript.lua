-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:15
-- Luau version 6, Types version 3
-- Time taken: 0.001287 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Parent = script.Parent.Parent.Parent
local Controls_upvr = require(Parent.Resources.Controls)
local any_extend_result1 = InGameMenuDependencies.Roact.PureComponent:extend("ControlLayoutSetter")
function any_extend_result1.init(arg1) -- Line 16
	--[[ Upvalues[2]:
		[1]: Controls_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	local var6 = Controls_upvr.inputToControlTypeMap[UserInputService_upvr:GetLastInputType()]
	if var6 then
		arg1.props.dispatchSetControlLayout(var6)
	end
end
function any_extend_result1.render(arg1) -- Line 23
	return nil
end
function any_extend_result1.didMount(arg1) -- Line 27
	--[[ Upvalues[2]:
		[1]: UserInputService_upvr (readonly)
		[2]: Controls_upvr (readonly)
	]]
	arg1.inputChangedConnection = UserInputService_upvr.LastInputTypeChanged:Connect(function(arg1_2) -- Line 28
		--[[ Upvalues[2]:
			[1]: Controls_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local var8 = Controls_upvr.inputToControlTypeMap[arg1_2]
		if var8 then
			arg1.props.dispatchSetControlLayout(var8)
		end
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 39
	if arg1.inputChangedConnection then
		arg1.inputChangedConnection:Disconnect()
	end
end
local SetControlLayout_upvr = require(Parent.Actions.SetControlLayout)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(nil, function(arg1) -- Line 45
	--[[ Upvalues[1]:
		[1]: SetControlLayout_upvr (readonly)
	]]
	return {
		dispatchSetControlLayout = function(arg1_3) -- Line 47, Named "dispatchSetControlLayout"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetControlLayout_upvr (copied, readonly)
			]]
			arg1(SetControlLayout_upvr(arg1_3))
		end;
	}
end)(any_extend_result1)