-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:33
-- Luau version 6, Types version 3
-- Time taken: 0.001443 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Parent = script.Parent.Parent
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local any_extend_result1 = Roact_upvr.PureComponent:extend("IGMControllerBar2")
any_extend_result1.validateProps = t.strictInterface({
	rightHints = t.table;
	leftHint = t.table;
	incrementControllerBar = t.callback;
	decrementControllerBar = t.callback;
})
function any_extend_result1.init(arg1) -- Line 24
	arg1.props.incrementControllerBar()
end
function any_extend_result1.willUnmount(arg1) -- Line 28
	arg1.props.decrementControllerBar()
end
local CoreGui_upvr = game:GetService("CoreGui")
local Constants_upvr = require(Parent.Resources.Constants)
local ControllerBar_upvr = InGameMenuDependencies.UIBlox.App.Bar.ControllerBar
function any_extend_result1.render(arg1) -- Line 32
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: CoreGui_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: ControllerBar_upvr (readonly)
	]]
	return Roact_upvr.createElement(Roact_upvr.Portal, {
		target = CoreGui_upvr;
	}, {
		IGMControllerBar = Roact_upvr.createElement("ScreenGui", {
			DisplayOrder = Constants_upvr.DisplayOrder.ControllerBar;
		}, {
			ControllerBar = Roact_upvr.createElement(ControllerBar_upvr, {
				rightHints = arg1.props.rightHints;
				leftHint = arg1.props.leftHint;
			});
		});
	})
end
local IncrementControllerBar_upvr = require(Parent.Actions.IncrementControllerBar)
local DecrementControllerBar_upvr = require(Parent.Actions.DecrementControllerBar)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(nil, function(arg1) -- Line 48
	--[[ Upvalues[2]:
		[1]: IncrementControllerBar_upvr (readonly)
		[2]: DecrementControllerBar_upvr (readonly)
	]]
	return {
		incrementControllerBar = function() -- Line 50, Named "incrementControllerBar"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: IncrementControllerBar_upvr (copied, readonly)
			]]
			arg1(IncrementControllerBar_upvr())
		end;
		decrementControllerBar = function() -- Line 53, Named "decrementControllerBar"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: DecrementControllerBar_upvr (copied, readonly)
			]]
			arg1(DecrementControllerBar_upvr())
		end;
	}
end)(any_extend_result1)