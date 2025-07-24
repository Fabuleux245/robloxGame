-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:51
-- Luau version 6, Types version 3
-- Time taken: 0.001104 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local module = {}
local RoactCompat_upvr = require(Parent.RoactCompat)
local CoreScriptsRootProvider_upvr = require(Parent.CoreScriptsRoactCommon).CoreScriptsRootProvider
local RoactServices_upvr = require(Parent.RoactServices).RoactServices
local RoactNetworking_upvr = require(Parent.RoactServiceTags).RoactNetworking
local requestInternalWrapper_upvr = require(Parent.Http).NetworkLayers.requestInternalWrapper
local HttpService_upvr = game:GetService("HttpService")
local function var5_upvr(arg1, arg2) -- Line 22
	--[[ Upvalues[7]:
		[1]: RoactCompat_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: CoreScriptsRootProvider_upvr (readonly)
		[4]: RoactServices_upvr (readonly)
		[5]: RoactNetworking_upvr (readonly)
		[6]: requestInternalWrapper_upvr (readonly)
		[7]: HttpService_upvr (readonly)
	]]
	local module_3 = {}
	local tbl_2 = {}
	local tbl = {}
	tbl.target = arg1
	tbl_2.Portal = React_upvr.createElement(RoactCompat_upvr.Portal, tbl, arg2)
	module_3.RoactServicesProvider = React_upvr.createElement(RoactServices_upvr.ServiceProvider, {
		services = {
			[RoactNetworking_upvr] = requestInternalWrapper_upvr(HttpService_upvr);
		};
	}, tbl_2)
	return RoactCompat_upvr.mount(React_upvr.createElement(CoreScriptsRootProvider_upvr, {}, module_3), nil, "EventsInExperienceRoot")
end
local EventInExperiencePrompts_upvr = require(Parent_2.Components.CoreUI.EventInExperiencePrompts)
function module.createApp() -- Line 40
	--[[ Upvalues[3]:
		[1]: var5_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: EventInExperiencePrompts_upvr (readonly)
	]]
	local module_2_upvr = {}
	function module_2_upvr.mountCoreUI(arg1) -- Line 43
		--[[ Upvalues[4]:
			[1]: module_2_upvr (readonly)
			[2]: var5_upvr (copied, readonly)
			[3]: React_upvr (copied, readonly)
			[4]: EventInExperiencePrompts_upvr (copied, readonly)
		]]
		module_2_upvr._coreUiHandle = var5_upvr(arg1, {
			EventInExperiencePrompts = React_upvr.createElement(EventInExperiencePrompts_upvr);
		})
	end
	return module_2_upvr
end
return module