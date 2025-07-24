-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:26
-- Luau version 6, Types version 3
-- Time taken: 0.001039 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ReportConfirmationScreen")
any_extend_result1.validateProps = t.interface({
	closeMenu = t.callback;
	player = t.interface({
		DisplayName = t.string;
		Name = t.string;
		UserId = t.number;
	});
})
local renderWithCoreScriptsStyleProvider_upvr = require(script.Parent.Parent.Parent.Parent.Common.renderWithCoreScriptsStyleProvider)
local ReportConfirmationContainer_upvr = require(script.Parent.ReportConfirmationContainer)
function any_extend_result1.render(arg1) -- Line 21
	--[[ Upvalues[3]:
		[1]: renderWithCoreScriptsStyleProvider_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ReportConfirmationContainer_upvr (readonly)
	]]
	return renderWithCoreScriptsStyleProvider_upvr({
		reportConfirmationContainer = Roact_upvr.createElement(ReportConfirmationContainer_upvr, arg1.props);
	})
end
return any_extend_result1