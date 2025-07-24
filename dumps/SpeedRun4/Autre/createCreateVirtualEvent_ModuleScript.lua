-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:52
-- Luau version 6, Types version 3
-- Time taken: 0.000657 seconds

local Http_upvr = require(script:FindFirstAncestor("NetworkingVirtualEvents").Parent.Http)
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: Http_upvr (readonly)
	]]
	return arg1.POST(script, function(arg1_2, arg2) -- Line 9
		--[[ Upvalues[1]:
			[1]: Http_upvr (copied, readonly)
		]]
		return arg1_2(Http_upvr.Url.APIS_URL):path("virtual-events"):path("v1"):path("virtual-events"):path("create"):body({
			title = arg2.title;
			description = arg2.description;
			eventTime = {
				startTime = arg2.eventTime.startTime:ToIsoDate();
				endTime = arg2.eventTime.endTime:ToIsoDate();
			};
			universeId = arg2.universeId;
		})
	end)
end