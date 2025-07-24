-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:09
-- Luau version 6, Types version 3
-- Time taken: 0.001520 seconds

local GuiService_upvr = game:GetService("GuiService")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("NativeCloseEventConnector")
any_extend_result1.validateProps = t.strictInterface({
	isEducationalPopupEnabled = t.boolean;
	maxDisplayCount = t.integer;
	openEducationalPopup = t.optional(t.callback);
})
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local UserLocalStore_upvr = require(Parent.Utility.UserLocalStore)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local Constants_upvr = require(Parent.Resources.Constants)
function any_extend_result1.init(arg1) -- Line 26
	--[[ Upvalues[5]:
		[1]: RbxAnalyticsService_upvr (readonly)
		[2]: UserLocalStore_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: SendAnalytics_upvr (readonly)
		[5]: Constants_upvr (readonly)
	]]
	function arg1.onNativeCloseConnect() -- Line 27
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: RbxAnalyticsService_upvr (copied, readonly)
			[3]: UserLocalStore_upvr (copied, readonly)
			[4]: GuiService_upvr (copied, readonly)
			[5]: SendAnalytics_upvr (copied, readonly)
			[6]: Constants_upvr (copied, readonly)
		]]
		if arg1.props.isEducationalPopupEnabled then
			RbxAnalyticsService_upvr:ReportCounter("LeaveGame_NativeClose", 1)
			arg1.props.openEducationalPopup(GuiService_upvr, UserLocalStore_upvr.new(), arg1.props.maxDisplayCount)
		end
		SendAnalytics_upvr(Constants_upvr.AnalyticsInGameMenuName, "LeaveGame_NativeClose", {})
	end
end
local ExternalEventConnection_upvr = require(Parent.Utility.ExternalEventConnection)
function any_extend_result1.render(arg1) -- Line 39
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ExternalEventConnection_upvr (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	return Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = GuiService_upvr.NativeClose;
		callback = arg1.onNativeCloseConnect;
	})
end
local OpenEducationalPopup_upvr = require(Parent.Thunks.OpenEducationalPopup)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(nil, function(arg1) -- Line 53
	--[[ Upvalues[1]:
		[1]: OpenEducationalPopup_upvr (readonly)
	]]
	return {
		openEducationalPopup = function(arg1_2, arg2, arg3) -- Line 55, Named "openEducationalPopup"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: OpenEducationalPopup_upvr (copied, readonly)
			]]
			return arg1(OpenEducationalPopup_upvr(arg1_2, arg2, arg3))
		end;
	}
end)(require(Parent.InGameMenuPolicy).connect(function(arg1, arg2) -- Line 46
	return {
		isEducationalPopupEnabled = arg1.enableEducationalPopup();
		maxDisplayCount = arg1.educationalPopupMaxDisplayCount();
	}
end)(any_extend_result1))