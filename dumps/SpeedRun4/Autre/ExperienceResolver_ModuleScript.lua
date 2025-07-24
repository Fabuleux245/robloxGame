-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:19
-- Luau version 6, Types version 3
-- Time taken: 0.000970 seconds

local Parent = script:FindFirstAncestor("GraphQLServer").Parent
local module = {}
local tbl_2 = {}
local Promise_upvr = require(Parent.Promise)
function tbl_2.thumbnails(arg1, arg2, arg3) -- Line 10
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	local thumbnails_2 = arg3.dataLoaders.thumbnails
	if not thumbnails_2 then
		return Promise_upvr.resolve({})
	end
	return thumbnails_2:load(arg1.universeId):andThen(function(arg1_2) -- Line 17
		if not arg1_2 then
			return {}
		end
		return {{
			url = arg1_2.imageUrl;
		}}
	end):catch(function() -- Line 23
		return {}
	end)
end
module.Experience = tbl_2
local tbl = {}
local Array_upvr = require(Parent.LuauPolyfill).Array
function tbl.experienceThumbnails(arg1, arg2) -- Line 30
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	return Array_upvr.map(arg2.universeIds, function(arg1_3) -- Line 31
		local module_2 = {}
		module_2.universeId = arg1_3
		return module_2
	end)
end
module.Query = tbl
return module