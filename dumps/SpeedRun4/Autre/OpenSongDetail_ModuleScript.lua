-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:19
-- Luau version 6, Types version 3
-- Time taken: 0.000734 seconds

local Parent = script:FindFirstAncestor("DiscoveryRouting").Parent
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: AppPage_upvr (readonly)
		[2]: NavigateDown_upvr (readonly)
	]]
	return function(arg1_2) -- Line 7
		--[[ Upvalues[3]:
			[1]: AppPage_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: NavigateDown_upvr (copied, readonly)
		]]
		local tbl = {
			name = AppPage_upvr.SongDetail;
		}
		tbl.songId = arg1
		arg1_2:dispatch(NavigateDown_upvr(tbl))
	end
end