-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:30
-- Luau version 6, Types version 3
-- Time taken: 0.001630 seconds

local Cryo_upvr = require(script.Parent.Parent.Cryo)
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local UrlMatcher_upvr = require(script.Parent.UrlMatcher)
function module_2_upvr.new(arg1, arg2) -- Line 32
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: UrlMatcher_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	local var4 = arg1
	if not var4 then
		var4 = {}
	end
	local module = {
		_urlMatcher = UrlMatcher_upvr.new(Cryo_upvr.Dictionary.union(var4, {
			pathPatterns = Cryo_upvr.Dictionary.keys(arg2);
		}));
	}
	module._urlMap = arg2
	setmetatable(module, module_2_upvr)
	return module
end
local UrlValidation_upvr = require(script.Parent.UrlValidation)
function module_2_upvr.process(arg1, arg2) -- Line 48
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: UrlValidation_upvr (readonly)
	]]
	return Cryo_upvr.List.filterMap(arg1._urlMatcher:match(arg2), function(arg1_2) -- Line 50
		--[[ Upvalues[2]:
			[1]: UrlValidation_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local any_validateUrlMatch_result1, any_validateUrlMatch_result2 = UrlValidation_upvr.validateUrlMatch(arg1_2, arg1._urlMap)
		if any_validateUrlMatch_result1 then
			return {
				startIndex = arg1_2.startIndex;
				endIndex = arg1_2.endIndex;
				result = any_validateUrlMatch_result2;
			}
		end
		return nil
	end)
end
return module_2_upvr