-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:30
-- Luau version 6, Types version 3
-- Time taken: 0.002216 seconds

local Constants_upvr = require(script.Parent.Parent.Constants)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("CapturesRecursiveCoreUIRemoval", false)
local CoreGui_upvr = game:GetService("CoreGui")
return function() -- Line 8
	--[[ Upvalues[3]:
		[1]: Constants_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: CoreGui_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local tbl_upvr = {}
	local function _(arg1) -- Line 11, Named "shouldRemoveUI"
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		if not arg1:IsA("LayerCollector") then
			return false
		end
		if arg1:IsA("BillboardGui") then
			return false
		end
		if not arg1.Enabled then
			return false
		end
		if arg1.Name == Constants_upvr.OverlayName then
			return false
		end
		return true
	end
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 53 start (CF ANALYSIS FAILED)
	local function restoreCoreUI_upvr(arg1) -- Line 34, Named "searchInstance"
		--[[ Upvalues[3]:
			[1]: Constants_upvr (copied, readonly)
			[2]: tbl_upvr (readonly)
			[3]: restoreCoreUI_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var18
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
		var18 = arg1:IsA("CoreGui")
		-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [17] 15. Error Block 33 start (CF ANALYSIS FAILED)
		if arg1:IsA("BillboardGui") then
			var18 = false
		elseif not arg1.Enabled then
			var18 = false
		elseif arg1.Name == Constants_upvr.OverlayName then
			var18 = false
		else
			var18 = true
		end
		if var18 then
			var18 = false
			arg1.Enabled = var18
			var18 = table.insert
			var18(tbl_upvr, arg1)
		end
		do
			return
		end
		-- KONSTANTERROR: [17] 15. Error Block 33 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [51] 41. Error Block 25 start (CF ANALYSIS FAILED)
		var18 = arg1:GetChildren()
		for _, v in arg1:GetChildren() do
			restoreCoreUI_upvr(v)
		end
		-- KONSTANTERROR: [51] 41. Error Block 25 end (CF ANALYSIS FAILED)
	end
	restoreCoreUI_upvr(CoreGui_upvr)
	function restoreCoreUI_upvr() -- Line 70, Named "restoreCoreUI"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		for _, v_2 in tbl_upvr do
			v_2.Enabled = true
		end
	end
	do
		return restoreCoreUI_upvr
	end
	-- KONSTANTERROR: [6] 6. Error Block 53 end (CF ANALYSIS FAILED)
end