-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:33
-- Luau version 6, Types version 3
-- Time taken: 0.001274 seconds

local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")
local Cryo_upvr = require(SocialLuaAnalytics.Parent.Cryo)
local formatEventStreamFields_upvr = require(SocialLuaAnalytics.Telemetry.formatEventStreamFields)
return function(arg1) -- Line 26, Named "telemetryConfig"
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: formatEventStreamFields_upvr (readonly)
	]]
	return {
		name = arg1.name;
		description = arg1.description;
		eventStreamCtx = arg1.eventStreamCtx;
		lastUpdated = arg1.lastUpdated;
		backendsList = Cryo_upvr.List.map(arg1.backendsList, function(arg1_2) -- Line 32
			--[[ Upvalues[2]:
				[1]: formatEventStreamFields_upvr (copied, readonly)
				[2]: Cryo_upvr (copied, readonly)
			]]
			if arg1_2.type == "EventIngest" then
				return Cryo_upvr.Dictionary.join(arg1_2, {
					format = function(...) -- Line 35
						--[[ Upvalues[2]:
							[1]: arg1_2 (readonly)
							[2]: formatEventStreamFields_upvr (copied, readonly)
						]]
						return formatEventStreamFields_upvr(arg1_2.format(...))
					end;
				})
			end
			return arg1_2
		end);
		throttlingThousandths = arg1.throttlingThousandths;
	}
end