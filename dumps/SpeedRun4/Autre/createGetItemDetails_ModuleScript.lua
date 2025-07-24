-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:56:52
-- Luau version 6, Types version 3
-- Time taken: 0.000685 seconds

local CATALOG_URL_upvr = require(script.Parent.Parent.CATALOG_URL)
local Dash_upvr = require(script:FindFirstAncestor("NetworkingCurrentlyWearing").Parent.Dash)
return function(arg1) -- Line 11
	--[[ Upvalues[2]:
		[1]: CATALOG_URL_upvr (readonly)
		[2]: Dash_upvr (readonly)
	]]
	return arg1.roduxNetworking.POST({
		Name = "GetItemDetails";
	}, function(arg1_2, arg2) -- Line 14
		--[[ Upvalues[2]:
			[1]: CATALOG_URL_upvr (copied, readonly)
			[2]: Dash_upvr (copied, readonly)
		]]
		return arg1_2(CATALOG_URL_upvr):path("v1"):path("catalog"):path("items"):path("details"):body({
			items = Dash_upvr.map(arg2, function(arg1_3) -- Line 16
				local module = {
					itemType = "Asset";
				}
				module.id = arg1_3
				return module
			end);
		})
	end)
end