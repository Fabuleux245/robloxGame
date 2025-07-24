-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:40
-- Luau version 6, Types version 3
-- Time taken: 0.000988 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Parent.Roact)
local mockStyleComponent_upvr = require(Parent.Utility.mockStyleComponent)
local HttpService_upvr = game:GetService("HttpService")
local CoreGui_upvr = game:GetService("CoreGui")
local dumpInstanceTree_upvr = require(Parent_2.dumpInstanceTree)
return function(arg1, arg2, arg3) -- Line 33, Named "testWithStyledComponent"
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: mockStyleComponent_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: CoreGui_upvr (readonly)
		[5]: dumpInstanceTree_upvr (readonly)
	]]
	local formatted = "TestApp-%s":format(HttpService_upvr:GenerateGUID())
	local formatted_2_upvr = "game.CoreGui.%s.Children.TestComponent":format(formatted)
	local pcall_result1, pcall_result2 = pcall(function() -- Line 46
		--[[ Upvalues[2]:
			[1]: arg3 (readonly)
			[2]: formatted_2_upvr (readonly)
		]]
		arg3(formatted_2_upvr)
	end)
	if not pcall_result1 then
		print("Test instance tree:")
		dumpInstanceTree_upvr(CoreGui_upvr:FindFirstChild(formatted))
		print("Test instance tree end\n")
	end
	Roact_upvr.unmount(Roact_upvr.mount(Roact_upvr.createElement("ScreenGui", {
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	}, {
		StyleProvider = mockStyleComponent_upvr({
			TestComponent = Roact_upvr.createElement(arg1, arg2);
		});
	}), CoreGui_upvr, formatted))
	if not pcall_result1 then
		error(pcall_result2)
	end
end