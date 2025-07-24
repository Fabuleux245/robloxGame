-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:13
-- Luau version 6, Types version 3
-- Time taken: 0.001460 seconds

local Parent = script:FindFirstAncestor("GameCollections").Parent
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 13, Named "useNavigateToSeeAll"
	--[[ Upvalues[4]:
		[1]: useDispatch_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: NavigateDown_upvr (readonly)
		[4]: AppPage_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local module = {useDispatch_upvr_result1_upvr}
	module[2] = arg2
	module[3] = arg1
	module[4] = arg3
	module[5] = arg5
	module[6] = arg6
	module[7] = arg4
	return React_upvr.useCallback(function() -- Line 24
		--[[ Upvalues[9]:
			[1]: arg1 (readonly)
			[2]: useDispatch_upvr_result1_upvr (readonly)
			[3]: NavigateDown_upvr (copied, readonly)
			[4]: AppPage_upvr (copied, readonly)
			[5]: arg5 (readonly)
			[6]: arg4 (readonly)
			[7]: arg6 (readonly)
			[8]: arg2 (readonly)
			[9]: arg3 (readonly)
		]]
		if arg1 == nil then
		else
			local tbl = {
				name = AppPage_upvr.GamesList;
			}
			tbl.detail = arg5
			local tbl_2 = {}
			tbl_2.sortPageId = arg4
			tbl_2.sortName = arg5
			tbl_2.pageContext = arg6
			local var10 = arg2
			tbl_2.isOmni = var10
			if arg2 then
				var10 = arg3
			else
				var10 = nil
			end
			tbl_2.sortIndex = var10
			tbl.extraProps = tbl_2
			useDispatch_upvr_result1_upvr(NavigateDown_upvr(tbl))
		end
	end, module)
end