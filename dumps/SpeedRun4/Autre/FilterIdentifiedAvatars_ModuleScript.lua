-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:55
-- Luau version 6, Types version 3
-- Time taken: 0.001391 seconds

local getAvatarsForPoint_upvr = require(game:GetService("CorePackages").Workspace.Packages.TnSAvatarIdentification).AvatarIdentification.getAvatarsForPoint
local SetSelectedAvatars_upvr = require(script.Parent.Parent.Actions.SetSelectedAvatars)
return function(arg1) -- Line 10
	--[[ Upvalues[2]:
		[1]: getAvatarsForPoint_upvr (readonly)
		[2]: SetSelectedAvatars_upvr (readonly)
	]]
	return function(arg1_2) -- Line 11
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: getAvatarsForPoint_upvr (copied, readonly)
			[3]: SetSelectedAvatars_upvr (copied, readonly)
		]]
		coroutine.wrap(function() -- Line 13
			--[[ Upvalues[4]:
				[1]: arg1_2 (readonly)
				[2]: arg1 (copied, readonly)
				[3]: getAvatarsForPoint_upvr (copied, readonly)
				[4]: SetSelectedAvatars_upvr (copied, readonly)
			]]
			local tbl = {}
			for _, v in ipairs(arg1) do
				for i_2, v_2 in pairs(getAvatarsForPoint_upvr(arg1_2:getState().report.identifiedAvatars, v)) do
					tbl[i_2] = v_2
					print("Selected avatar", i_2, v_2)
				end
			end
			arg1_2:dispatch(SetSelectedAvatars_upvr(tbl))
		end)()
	end
end