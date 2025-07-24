-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:34
-- Luau version 6, Types version 3
-- Time taken: 0.001825 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local AspectRatio_upvr = require(Foundation.Components.AspectRatio)
local Padding_upvr = require(Foundation.Components.Padding)
return function(arg1) -- Line 13, Named "GuiObjectChildren"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: AspectRatio_upvr (readonly)
		[3]: Padding_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 51 start (CF ANALYSIS FAILED)
	local tbl = {}
	local any_createElement_result1 = React_upvr.createElement(React_upvr.Fragment, {}, arg1.children)
	tbl.Children = any_createElement_result1
	if arg1.aspectRatio ~= nil then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1(AspectRatio_upvr, {
			value = arg1.aspectRatio;
		})
	else
		any_createElement_result1 = nil
	end
	tbl.AspectRatio = any_createElement_result1
	if arg1.cornerRadius ~= nil then
		local _ = {
			CornerRadius = arg1.cornerRadius;
		}
		-- KONSTANTWARNING: GOTO [48] #33
	end
	-- KONSTANTERROR: [0] 1. Error Block 51 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [47] 32. Error Block 58 start (CF ANALYSIS FAILED)
	tbl.CornerRadius = nil
	if arg1.flexItem ~= nil then
		local tbl_2 = {
			FlexMode = arg1.flexItem.FlexMode;
			GrowRatio = arg1.flexItem.GrowRatio;
			ShrinkRatio = arg1.flexItem.ShrinkRatio;
			ItemLineAlignment = arg1.flexItem.ItemLineAlignment;
		}
		-- KONSTANTWARNING: GOTO [86] #55
	end
	-- KONSTANTERROR: [47] 32. Error Block 58 end (CF ANALYSIS FAILED)
end