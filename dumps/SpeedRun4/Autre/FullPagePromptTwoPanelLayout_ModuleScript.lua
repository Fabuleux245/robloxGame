-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:24
-- Luau version 6, Types version 3
-- Time taken: 0.001839 seconds

local BulkPurchaseApp = script:FindFirstAncestor("BulkPurchaseApp")
local Parent = BulkPurchaseApp.Parent
local React_upvr = require(Parent.React)
local useScreenSize_upvr = require(Parent.EconomyCommonCoreScriptHooks).useScreenSize
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local constants_upvr = require(BulkPurchaseApp.constants)
return function(arg1) -- Line 15, Named "FullPagePromptTwoPanelLayout"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: useScreenSize_upvr (readonly)
		[3]: useDesignTokens_upvr (readonly)
		[4]: constants_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 29 start (CF ANALYSIS FAILED)
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(Vector2.new(0, 0))
	local useScreenSize_upvr_result1 = useScreenSize_upvr()
	local var5_result1_upvr = useDesignTokens_upvr()
	local Space_150_upvr = var5_result1_upvr.Global.Space_150
	local var12_upvr = false
	local var13
	if useScreenSize_upvr_result1.X < constants_upvr.MOBILE_BREAKPOINT then
		if useScreenSize_upvr_result1.X >= useScreenSize_upvr_result1.Y then
			var12_upvr = false
		else
			var12_upvr = true
		end
	end
	local module = {}
	local tbl = {}
	var13 = any_useBinding_result1:map(function(arg1_2) -- Line 29
		--[[ Upvalues[3]:
			[1]: var12_upvr (readonly)
			[2]: var5_result1_upvr (readonly)
			[3]: Space_150_upvr (readonly)
		]]
		if var12_upvr then
			return UDim2.new(1, 0, 1, -(arg1_2.Y + var5_result1_upvr.Global.Space_300))
		end
		return UDim2.new(0.5, -Space_150_upvr, 1, 0)
	end)
	tbl.Size = var13
	var13 = 1
	tbl.BackgroundTransparency = var13
	var13 = 0
	tbl.BorderSizePixel = var13
	var13 = arg1.startSlot
	module.StartSlot = React_upvr.createElement("Frame", tbl, var13)
	local tbl_2 = {}
	if var12_upvr then
		var13 = UDim2.new(1, 0, 0, 0)
		-- KONSTANTWARNING: GOTO [100] #73
	end
	-- KONSTANTERROR: [0] 1. Error Block 29 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [93] 67. Error Block 21 start (CF ANALYSIS FAILED)
	var13 = UDim2.new(0.5, -Space_150_upvr, 0, 0)
	tbl_2.Size = var13
	if var12_upvr then
		var13 = UDim2.new(0, 0, 1, 0)
	else
		var13 = UDim2.new(0.5, Space_150_upvr, 0, 0)
	end
	tbl_2.Position = var13
	if var12_upvr then
		var13 = Vector2.new(0, 1)
	else
		var13 = Vector2.new(0, 0)
	end
	tbl_2.AnchorPoint = var13
	var13 = 1
	tbl_2.BackgroundTransparency = var13
	var13 = 0
	tbl_2.BorderSizePixel = var13
	var13 = Enum.AutomaticSize.Y
	tbl_2.AutomaticSize = var13
	var13 = React_upvr.Change.AbsoluteSize
	tbl_2[var13] = function(arg1_3) -- Line 44
		--[[ Upvalues[1]:
			[1]: any_useBinding_result2_upvr (readonly)
		]]
		any_useBinding_result2_upvr(arg1_3.AbsoluteSize)
	end
	var13 = arg1.endSlot
	module.EndSlot = React_upvr.createElement("Frame", tbl_2, var13)
	do
		return React_upvr.createElement("Frame", {
			Size = arg1.size;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			LayoutOrder = arg1.LayoutOrder;
		}, module)
	end
	-- KONSTANTERROR: [93] 67. Error Block 21 end (CF ANALYSIS FAILED)
end