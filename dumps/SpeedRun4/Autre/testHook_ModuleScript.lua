-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:08
-- Luau version 6, Types version 3
-- Time taken: 0.000619 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local ReactRoblox_upvr = require(VirtualEvents.Parent.ReactRoblox)
local withMockProviders_upvr = require(VirtualEvents.withMockProviders)
local React_upvr = require(VirtualEvents.Parent.React)
return function(arg1) -- Line 7, Named "testHook"
	--[[ Upvalues[3]:
		[1]: ReactRoblox_upvr (readonly)
		[2]: withMockProviders_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	local any_createRoot_result1_upvr = ReactRoblox_upvr.createRoot(Instance.new("ScreenGui"))
	local var3_result1_upvr = withMockProviders_upvr({
		HookTester = React_upvr.createElement(function() -- Line 11, Named "HookTester"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1()
			return nil
		end);
	})
	ReactRoblox_upvr.act(function() -- Line 20
		--[[ Upvalues[2]:
			[1]: any_createRoot_result1_upvr (readonly)
			[2]: var3_result1_upvr (readonly)
		]]
		any_createRoot_result1_upvr:render(var3_result1_upvr)
	end)
end