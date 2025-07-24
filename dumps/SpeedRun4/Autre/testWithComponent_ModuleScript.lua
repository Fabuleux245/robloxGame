-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:39
-- Luau version 6, Types version 3
-- Time taken: 0.001764 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local function TestApp_upvr(arg1) -- Line 34, Named "TestApp"
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	return Roact_upvr.createElement("ScreenGui", {
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	}, arg1[Roact_upvr.Children])
end
local FoundationProvider_upvr = require(Parent.Foundation).FoundationProvider
local HttpService_upvr = game:GetService("HttpService")
local CoreGui_upvr = game:GetService("CoreGui")
local dumpInstanceTree_upvr = require(Parent_2.dumpInstanceTree)
return function(arg1, arg2) -- Line 40, Named "testWithComponent"
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: TestApp_upvr (readonly)
		[3]: FoundationProvider_upvr (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: CoreGui_upvr (readonly)
		[6]: dumpInstanceTree_upvr (readonly)
	]]
	local tbl_2 = {}
	local tbl = {}
	tbl.TestComponent = arg1
	tbl_2.FoundationProvider = Roact_upvr.createElement(FoundationProvider_upvr, {
		theme = "Dark";
	}, tbl)
	local formatted = "TestApp-%s":format(HttpService_upvr:GenerateGUID(false))
	local formatted_upvr = "game.CoreGui.%s.TestComponent":format(formatted)
	local pcall_result1, pcall_result2 = pcall(function() -- Line 51
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: formatted_upvr (readonly)
		]]
		arg2(formatted_upvr)
	end)
	if not pcall_result1 then
		print("Test instance tree:")
		dumpInstanceTree_upvr(CoreGui_upvr:FindFirstChild(formatted))
		print("Test instance tree end\n")
	end
	Roact_upvr.unmount(Roact_upvr.mount(Roact_upvr.createElement(TestApp_upvr, nil, tbl_2), CoreGui_upvr, formatted))
	if not pcall_result1 then
		error(pcall_result2)
	end
end