-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:45
-- Luau version 6, Types version 3
-- Time taken: 0.001314 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local any_extend_result1 = Roact_upvr.PureComponent:extend("PageNavigationWatcher")
any_extend_result1.validateProps = t.strictInterface({
	desiredPage = t.string;
	onNavigateTo = t.optional(t.callback);
	onNavigateAway = t.optional(t.callback);
	currentPage = t.string;
	menuOpen = t.boolean;
})
function any_extend_result1.init(arg1, arg2) -- Line 25
	arg1:setState({
		lastPage = arg2.currentPage;
		lastMenuOpen = arg2.menuOpen;
	})
end
function any_extend_result1.render(arg1) -- Line 32
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	return Roact_upvr.createFragment(arg1.props[Roact_upvr.Children])
end
function any_extend_result1.didUpdate(arg1) -- Line 36
	local lastPage = arg1.state.lastPage
	local lastMenuOpen = arg1.state.lastMenuOpen
	local currentPage = arg1.props.currentPage
	local menuOpen = arg1.props.menuOpen
	if lastPage ~= currentPage or lastMenuOpen ~= menuOpen then
		arg1:setState({
			lastPage = currentPage;
			lastMenuOpen = menuOpen;
		})
		if currentPage == arg1.props.desiredPage and menuOpen and arg1.props.onNavigateTo ~= nil then
			arg1.props.onNavigateTo()
			return
		end
		if lastPage == arg1.props.desiredPage and lastMenuOpen and arg1.props.onNavigateAway ~= nil then
			arg1.props.onNavigateAway()
			return
		end
		if lastMenuOpen and not menuOpen and arg1.props.onNavigateAway ~= nil then
			arg1.props.onNavigateAway()
		end
	end
end
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1) -- Line 58
	return {
		currentPage = arg1.menuPage;
		menuOpen = arg1.isMenuOpen;
	}
end)(any_extend_result1)