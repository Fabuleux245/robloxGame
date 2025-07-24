-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:54
-- Luau version 6, Types version 3
-- Time taken: 0.000570 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local useTelemetry_upvr = require(AppChat.Telemetry.useTelemetry)
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
return function(arg1) -- Line 8, Named "connectTelemetry"
	--[[ Upvalues[3]:
		[1]: useTelemetry_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	return function(arg1_2) -- Line 9
		--[[ Upvalues[4]:
			[1]: useTelemetry_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: React_upvr (copied, readonly)
			[4]: Cryo_upvr (copied, readonly)
		]]
		return function(arg1_3) -- Line 10
			--[[ Upvalues[5]:
				[1]: useTelemetry_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: React_upvr (copied, readonly)
				[4]: arg1_2 (readonly)
				[5]: Cryo_upvr (copied, readonly)
			]]
			return React_upvr.createElement(arg1_2, Cryo_upvr.Dictionary.union(arg1_3, {
				telemetry = useTelemetry_upvr(arg1);
			}))
		end
	end
end