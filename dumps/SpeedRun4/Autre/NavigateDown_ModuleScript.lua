-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:27
-- Luau version 6, Types version 3
-- Time taken: 0.000882 seconds

local NavigationRodux = script:FindFirstAncestor("NavigationRodux")
local Parent = NavigationRodux.Parent
local ArgCheck_upvr = require(Parent.ArgCheck)
local RNAdapterThunk_upvr = require(NavigationRodux.Thunks.RNAdapterThunk)
local SetNavigationLocked_upvr = require(NavigationRodux.Thunks.SetNavigationLocked)
local RoactNavigation_upvr = require(Parent.RoactNavigation)
local Cryo_upvr = require(Parent.Cryo)
return function(arg1, arg2) -- Line 11
	--[[ Upvalues[5]:
		[1]: ArgCheck_upvr (readonly)
		[2]: RNAdapterThunk_upvr (readonly)
		[3]: SetNavigationLocked_upvr (readonly)
		[4]: RoactNavigation_upvr (readonly)
		[5]: Cryo_upvr (readonly)
	]]
	ArgCheck_upvr.isType(arg1, "table", "page")
	ArgCheck_upvr.isTypeOrNil(arg2, "boolean", "bypassNavigationLock")
	return RNAdapterThunk_upvr.new("NavigateDown", function(arg1_2, arg2_2) -- Line 15
		--[[ Upvalues[5]:
			[1]: arg2 (readonly)
			[2]: SetNavigationLocked_upvr (copied, readonly)
			[3]: RoactNavigation_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: Cryo_upvr (copied, readonly)
		]]
		if arg1_2:getState().Navigation.lockNavigationActions and not arg2 then
		else
			arg1_2:dispatch(SetNavigationLocked_upvr(true))
			arg2_2(RoactNavigation_upvr.StackActions.push({
				routeName = arg1.name;
				params = Cryo_upvr.Dictionary.join(arg1, {
					name = Cryo_upvr.None;
					rnKey = Cryo_upvr.None;
				});
			}))
		end
	end)
end