-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:57
-- Luau version 6, Types version 3
-- Time taken: 0.001289 seconds

local Http_upvr = require(script:FindFirstAncestor("NetworkingVirtualEvents").Parent.Http)
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: Http_upvr (readonly)
	]]
	return arg1.POST(script, function(arg1_2, arg2, arg3) -- Line 9
		--[[ Upvalues[1]:
			[1]: Http_upvr (copied, readonly)
		]]
		local eventTime = arg3.eventTime
		local module = {
			title = arg3.title;
		}
		local description = arg3.description
		module.description = description
		if eventTime then
			description = {}
			description.startTime = eventTime.startTime:ToIsoDate()
			description.endTime = eventTime.endTime:ToIsoDate()
		else
			description = nil
		end
		module.eventTime = description
		module.universeId = arg3.universeId
		return arg1_2(Http_upvr.Url.APIS_URL):path("virtual-events"):path("v1"):path("virtual-events"):id(arg2):body(module)
	end)
end