-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:01
-- Luau version 6, Types version 3
-- Time taken: 0.001101 seconds

local Packages = script:FindFirstAncestor("Packages")
local Rhodium = require(Packages.Dev.Rhodium)
local Roact_upvr = require(Packages.Roact)
local mockStyle_upvr = require(script.Parent.Parent.UnitTestHelpers.mockStyle)
local CoreGui_upvr = game:GetService("CoreGui")
local XPath_upvr = Rhodium.XPath
local Element_upvr = Rhodium.Element
return function(arg1) -- Line 11
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: mockStyle_upvr (readonly)
		[3]: CoreGui_upvr (readonly)
		[4]: XPath_upvr (readonly)
		[5]: Element_upvr (readonly)
	]]
	local var9_upvw = false
	local tbl_2 = {}
	local tbl = {
		onActivated = function() -- Line 16, Named "onActivated"
			--[[ Upvalues[1]:
				[1]: var9_upvw (read and write)
			]]
			var9_upvw = true
		end;
	}
	tbl_2.buttonElement = Roact_upvr.createElement(arg1, tbl)
	local any_new_result1 = Element_upvr.new(XPath_upvr.new("game.CoreGui.TestRoot.buttonElement"))
	if any_new_result1:getRbxInstance() == nil then
		tbl = false
	else
		tbl = true
	end
	assert(tbl, "button was nil")
	any_new_result1:click()
	tbl = 0
	wait(tbl)
	if var9_upvw ~= true then
		tbl = false
	else
		tbl = true
	end
	assert(tbl, "button was not activated")
	tbl = Roact_upvr
	tbl = Roact_upvr.mount(mockStyle_upvr(Roact_upvr.createElement("ScreenGui", {}, tbl_2)), CoreGui_upvr, "TestRoot")
	tbl.unmount(tbl)
end