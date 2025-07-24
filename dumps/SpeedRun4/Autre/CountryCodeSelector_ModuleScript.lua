-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:15
-- Luau version 6, Types version 3
-- Time taken: 0.001399 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("CountryCodeSelector")
function any_extend_result1.init(arg1) -- Line 16
	arg1.props.fetchCountryCodes(arg1.props.networking):catch(function() -- Line 17
	end)
end
local ListSearchWidget_upvr = require(AuthCommon.Components.ListSearchWidget)
local CountryCodeSelectorButton_upvr = require(AuthCommon.Components.CountryCodeSelectorButton)
function any_extend_result1.render(arg1) -- Line 22
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ListSearchWidget_upvr (readonly)
		[3]: CountryCodeSelectorButton_upvr (readonly)
	]]
	local module = {
		Heading = "Authentication.SignUp.Heading.CountryCodeSelector";
	}
	local CloseCallback = arg1.props.CloseCallback
	module.CloseCallback = CloseCallback
	if arg1.props.WidgetVisible then
		CloseCallback = 1
	else
		CloseCallback = 0
	end
	module.VisibilityTarget = CloseCallback
	module.List = arg1.props.countryCodeList
	module.ListButton = CountryCodeSelectorButton_upvr
	module.SelectionCallback = arg1.props.SelectionCallback
	return Roact_upvr.createElement(ListSearchWidget_upvr, module)
end
local ApiFetchCountryCodes_upvr = require(AuthCommon.Thunks.ApiFetchCountryCodes)
return require(Parent.RoactServices).RoactServices.connect({
	networking = require(Parent.RoactServiceTags).RoactNetworking;
})(require(Parent.RoactRodux).connect(function(arg1) -- Line 33
	return {
		countryCodeList = arg1.CountryCodeList;
	}
end, function(arg1) -- Line 37
	--[[ Upvalues[1]:
		[1]: ApiFetchCountryCodes_upvr (readonly)
	]]
	return {
		fetchCountryCodes = function(arg1_2) -- Line 39, Named "fetchCountryCodes"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ApiFetchCountryCodes_upvr (copied, readonly)
			]]
			return arg1(ApiFetchCountryCodes_upvr.Fetch(arg1_2))
		end;
	}
end)(any_extend_result1))