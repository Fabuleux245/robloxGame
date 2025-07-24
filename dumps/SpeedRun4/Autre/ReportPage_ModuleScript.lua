-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:52
-- Luau version 6, Types version 3
-- Time taken: 0.001346 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local Players_upvr = game:GetService("Players")
local function getReportablePlayers_upvr() -- Line 14, Named "getReportablePlayers"
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	for _, v in ipairs(Players_upvr:GetPlayers()) do
		if v ~= Players_upvr.LocalPlayer then
			table.insert({}, v)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("ReportPage")
any_extend_result1.validateProps = t.strictInterface({
	pageTitle = t.string;
})
function any_extend_result1.init(arg1) -- Line 31
	--[[ Upvalues[1]:
		[1]: getReportablePlayers_upvr (readonly)
	]]
	arg1:setState({
		players = getReportablePlayers_upvr();
	})
end
local Page_upvr = require(Parent.Components.Page)
local ReportList_upvr = require(script.ReportList)
local PageNavigationWatcher_upvr = require(Parent.Components.PageNavigationWatcher)
function any_extend_result1.render(arg1) -- Line 37
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: Page_upvr (readonly)
		[3]: ReportList_upvr (readonly)
		[4]: PageNavigationWatcher_upvr (readonly)
		[5]: getReportablePlayers_upvr (readonly)
	]]
	return Roact_upvr.createElement(Page_upvr, {
		pageTitle = arg1.props.pageTitle;
	}, {
		PlayerList = Roact_upvr.createElement(ReportList_upvr, {
			players = arg1.state.players;
		});
		Watcher = Roact_upvr.createElement(PageNavigationWatcher_upvr, {
			desiredPage = "Report";
			onNavigateTo = function() -- Line 46, Named "onNavigateTo"
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: getReportablePlayers_upvr (copied, readonly)
				]]
				arg1:setState({
					players = getReportablePlayers_upvr();
				})
			end;
		});
	})
end
return any_extend_result1