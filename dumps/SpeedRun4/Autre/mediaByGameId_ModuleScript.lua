-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:03:21
-- Luau version 6, Types version 3
-- Time taken: 0.000697 seconds

local RoduxGames = script:FindFirstAncestor("RoduxGames")
local Parent = RoduxGames.Parent
local Rodux_upvr = require(Parent.Rodux)
local module_upvr = {}
local Dash_upvr = require(Parent.Dash)
local GameMediaModel_upvr = require(RoduxGames.Models.GameMediaModel)
return function(arg1) -- Line 13
	--[[ Upvalues[4]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Dash_upvr (readonly)
		[4]: GameMediaModel_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(module_upvr, {
		[arg1.networkingGames.GetExperienceMedia.Succeeded.name] = function(arg1_2, arg2) -- Line 16
			--[[ Upvalues[2]:
				[1]: Dash_upvr (copied, readonly)
				[2]: GameMediaModel_upvr (copied, readonly)
			]]
			return Dash_upvr.join(arg1_2, {
				[tostring(arg2.ids[1])] = Dash_upvr.map(arg2.responseBody.data, function(arg1_3) -- Line 19
					--[[ Upvalues[1]:
						[1]: GameMediaModel_upvr (copied, readonly)
					]]
					return GameMediaModel_upvr.format(arg1_3)
				end);
			})
		end;
	})
end