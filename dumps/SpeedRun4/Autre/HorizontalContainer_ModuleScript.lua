-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:20
-- Luau version 6, Types version 3
-- Time taken: 0.002237 seconds

local Parent_2 = script.Parent.Parent.Parent.Parent
local Parent = Parent_2.Parent
local useStyle_upvr = require(Parent_2.Core.Style.useStyle)
local Roact_upvr = require(Parent.Roact)
local Constants_upvr = require(script.Parent.Constants)
local Object_upvr = require(Parent.LuauPolyfill).Object
return function(arg1, arg2) -- Line 22
	--[[ Upvalues[4]:
		[1]: useStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: Object_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 43 start (CF ANALYSIS FAILED)
	local tbl_2 = {}
	local var9
	if arg1.size then
		var9 = arg1.size
	else
		var9 = UDim2.new(1, 0, 1, 0)
	end
	tbl_2.Size = var9
	var9 = arg1.automaticSize
	tbl_2.AutomaticSize = var9
	var9 = 1
	tbl_2.BackgroundTransparency = var9
	var9 = 1
	tbl_2.LayoutOrder = var9
	var9 = {}
	if arg1.showRoundedBackground then
		local tbl = {}
		local roundedBackgroundSize = arg1.roundedBackgroundSize
		if not roundedBackgroundSize then
			roundedBackgroundSize = UDim2.new(1, 0, 1, 0)
		end
		tbl.Size = roundedBackgroundSize
		tbl.BackgroundTransparency = arg1.roundedBackgroundTransparency or 1
		local roundedBackgroundColor = arg1.roundedBackgroundColor
		if not roundedBackgroundColor then
			roundedBackgroundColor = useStyle_upvr().Theme.BackgroundUIDefault.Color
		end
		tbl.BackgroundColor3 = roundedBackgroundColor
		roundedBackgroundColor = arg1.roundedBackgroundPosition
		local var13 = roundedBackgroundColor
		if not var13 then
			var13 = UDim2.fromOffset(0, 0)
		end
		tbl.Position = var13
		tbl.ZIndex = 1
		;({}).Corner = Roact_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0);
		})
	else
	end
	var9.RoundedBackgroundWithTopAlignedToContent = nil
	if arg1.showOverlay then
		local tbl_3 = {
			Size = UDim2.new(1, 0, 1, 0);
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_3.BackgroundColor3 = useStyle_upvr().Theme.BackgroundUIDefault.Color
		tbl_3.BackgroundTransparency = Constants_upvr.ICON_TAB_PRESSED_TRANSPARENCY
		tbl_3.ZIndex = 3
		;({}).Corner = Roact_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0);
		})
		-- KONSTANTWARNING: GOTO [155] #111
	end
	-- KONSTANTERROR: [0] 1. Error Block 43 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [154] 110. Error Block 45 start (CF ANALYSIS FAILED)
	var9.Overlay = nil
	if arg1.size then
		-- KONSTANTWARNING: GOTO [175] #126
	end
	-- KONSTANTERROR: [154] 110. Error Block 45 end (CF ANALYSIS FAILED)
end