-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:03:22
-- Luau version 6, Types version 3
-- Time taken: 0.000746 seconds

local RoduxGames = script:FindFirstAncestor("RoduxGames")
local Parent = RoduxGames.Parent
local Rodux_upvr = require(Parent.Rodux)
local module_upvr = {}
local Dash_upvr = require(Parent.Dash)
local ProductModel_upvr = require(RoduxGames.Models.ProductModel)
return function(arg1) -- Line 13
	--[[ Upvalues[4]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Dash_upvr (readonly)
		[4]: ProductModel_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(module_upvr, {
		[arg1.networkingGames.GetExperiencesProductInfo.Succeeded.name] = function(arg1_2, arg2) -- Line 17
			--[[ Upvalues[2]:
				[1]: Dash_upvr (copied, readonly)
				[2]: ProductModel_upvr (copied, readonly)
			]]
			return Dash_upvr.reduce(arg2.responseBody.data, function(arg1_3, arg2_2) -- Line 18
				--[[ Upvalues[2]:
					[1]: Dash_upvr (copied, readonly)
					[2]: ProductModel_upvr (copied, readonly)
				]]
				return Dash_upvr.join(arg1_3, {
					[tostring(arg2_2.universeId)] = ProductModel_upvr.format(arg2_2);
				})
			end, arg1_2)
		end;
	})
end