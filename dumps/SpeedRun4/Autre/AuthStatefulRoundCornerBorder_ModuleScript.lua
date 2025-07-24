-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:14
-- Luau version 6, Types version 3
-- Time taken: 0.001051 seconds

local Parent = script:FindFirstAncestor("AuthCommon").Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	Hover = "Hover";
	Focused = "Focused";
	Error = "Error";
	Default = "Default";
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("AuthStatefulRoundCornerBorder")
any_extend_result1.defaultProps = {
	borderState = tbl_upvr.Default;
}
local withStyle_upvr = UIBlox.Style.withStyle
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local GetImageData_upvr = require(Parent.RobloxAppAssets).GetImageData
function any_extend_result1.render(arg1) -- Line 27
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
		[5]: GetImageData_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 28
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: tbl_upvr (copied, readonly)
			[4]: ImageSetLabel_upvr (copied, readonly)
			[5]: GetImageData_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
		local borderState = arg1.props.borderState
		if not arg1.props[Roact_upvr.Children] then
		end
		if borderState == tbl_upvr.Focused then
			-- KONSTANTWARNING: GOTO [90] #52
		end
		-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [55] 33. Error Block 15 start (CF ANALYSIS FAILED)
		if borderState == tbl_upvr.Hover then
		elseif borderState == tbl_upvr.Error then
		end
		-- KONSTANTERROR: [55] 33. Error Block 15 end (CF ANALYSIS FAILED)
	end)
end
any_extend_result1.BorderState = tbl_upvr
return any_extend_result1