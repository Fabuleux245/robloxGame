-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:33
-- Luau version 6, Types version 3
-- Time taken: 0.000885 seconds

local HttpService_upvr = game:GetService("HttpService")
return {
	stringify = function(arg1, ...) -- Line 20, Named "stringify"
		--[[ Upvalues[1]:
			[1]: HttpService_upvr (readonly)
		]]
		if 0 < select('#', ...) then
			warn("JSON.stringify doesn't currently support more than 1 argument. All additional arguments will be ignored.")
		end
		return HttpService_upvr:JSONEncode(arg1)
	end;
	parse = function(arg1, ...) -- Line 28, Named "parse"
		--[[ Upvalues[1]:
			[1]: HttpService_upvr (readonly)
		]]
		if 0 < select('#', ...) then
			warn("JSON.parse doesn't currently support more than 1 argument. All additional arguments will be ignored.")
		end
		return HttpService_upvr:JSONDecode(arg1)
	end;
}