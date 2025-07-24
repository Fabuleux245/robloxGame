-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:06
-- Luau version 6, Types version 3
-- Time taken: 0.000799 seconds

local Parent = script:FindFirstAncestor("AmpUpsell").Parent
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local NavigateBack_upvr = require(Parent.NavigationRodux).Thunks.NavigateBack
return function(arg1, arg2, arg3, arg4) -- Line 8
	--[[ Upvalues[3]:
		[1]: NavigateDown_upvr (readonly)
		[2]: AppPage_upvr (readonly)
		[3]: NavigateBack_upvr (readonly)
	]]
	return function(arg1_2) -- Line 9
		--[[ Upvalues[7]:
			[1]: NavigateDown_upvr (copied, readonly)
			[2]: AppPage_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: arg3 (readonly)
			[5]: arg4 (readonly)
			[6]: NavigateBack_upvr (copied, readonly)
			[7]: arg2 (readonly)
		]]
		local tbl_2 = {
			name = AppPage_upvr.AmpWizardContainer;
		}
		local tbl = {}
		tbl.featureName = arg1
		tbl.recourseData = arg3
		tbl.entryPointEventCtx = arg4
		function tbl.completionCallback(arg1_3, arg2_2) -- Line 16
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: NavigateBack_upvr (copied, readonly)
				[3]: arg2 (copied, readonly)
			]]
			arg1_2:dispatch(NavigateBack_upvr())
			arg2(arg1_3, arg2_2)
		end
		tbl_2.extraProps = tbl
		arg1_2:dispatch(NavigateDown_upvr(tbl_2, true))
	end
end