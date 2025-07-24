-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:58
-- Luau version 6, Types version 3
-- Time taken: 0.002155 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local GetGameMedia_upvr = require(AuthCommon.Http.Requests.GetGameMedia)
local Promise_upvr = require(AuthCommon.Parent.Promise)
function FetchGameMedia(arg1, arg2) -- Line 8
	--[[ Upvalues[2]:
		[1]: GetGameMedia_upvr (readonly)
		[2]: Promise_upvr (readonly)
	]]
	local var4
	if typeof(arg2) ~= "string" then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "universeId must be a string")
	if 0 >= #arg2 then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "universeId must be a non-empty string")
	var4 = arg1
	return GetGameMedia_upvr(var4, arg2):andThen(function(arg1_2) -- Line 12
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if arg1_2 and arg1_2.responseBody then
			local data = arg1_2.responseBody.data
			if data == nil then
				return Promise_upvr.reject()
			end
			for _, v in ipairs(data) do
				table.insert({}, {
					id = v.id;
					assetTypeId = v.assetTypeId;
					imageId = v.imageId;
				})
				local var20
			end
			return Promise_upvr.resolve(var20)
		end
		return Promise_upvr.reject()
	end)
end
return FetchGameMedia