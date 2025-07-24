-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:53
-- Luau version 6, Types version 3
-- Time taken: 0.000941 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("GuiServiceConnector")
local EventConnection_upvr = require(script.Parent.EventConnection)
local GuiService_upvr = game:GetService("GuiService")
function any_extend_result1.render(arg1) -- Line 16
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: EventConnection_upvr (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	return Roact_upvr.createFragment({
		InspectMenuEnabledConnection = Roact_upvr.createElement(EventConnection_upvr, {
			event = GuiService_upvr.InspectMenuEnabledChangedSignal;
			callback = function(arg1_2) -- Line 20, Named "callback"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.props.setInspectMenuEnabled(arg1_2)
			end;
		});
	})
end
local SetInspectMenuEnabled_upvr = require(script.Parent.Parent.Parent.Actions.SetInspectMenuEnabled)
return require(CorePackages.Packages.RoactRodux).connect(nil, function(arg1) -- Line 27, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: SetInspectMenuEnabled_upvr (readonly)
	]]
	return {
		setInspectMenuEnabled = function(arg1_3) -- Line 29, Named "setInspectMenuEnabled"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetInspectMenuEnabled_upvr (copied, readonly)
			]]
			return arg1(SetInspectMenuEnabled_upvr(arg1_3))
		end;
	}
end)(any_extend_result1)