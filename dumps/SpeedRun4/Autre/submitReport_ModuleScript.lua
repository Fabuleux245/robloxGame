-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:20
-- Luau version 6, Types version 3
-- Time taken: 0.002033 seconds

local HttpService_upvr = game:GetService("HttpService")
local Url_upvr = require(script:FindFirstAncestor("GenericAbuseReporting").Parent.Http).Url
return function(arg1, arg2) -- Line 7
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: Url_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_upvr = {
		tags = {};
	}
	for i, v in arg2 do
		if typeof(v) ~= "table" then
			v = {tostring(v)}
		end
		for _, v_2 in v do
			table.insert({}, {
				data = tostring(v_2);
			})
			local var24
		end
		module_upvr.tags[i] = {
			valueList = var24;
		}
	end
	local pcall_result1, pcall_result2 = pcall(function() -- Line 22
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: module_upvr (readonly)
		]]
		return HttpService_upvr:JSONEncode(module_upvr)
	end)
	if not pcall_result1 then
		i = "Failed to encode report data"
		warn(i)
	end
	return arg1(Url_upvr.APIS_URL.."abuse-reporting/v2/abuse-report", "POST", {
		postBody = pcall_result2;
	})
end