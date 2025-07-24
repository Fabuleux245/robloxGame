-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:20
-- Luau version 6, Types version 3
-- Time taken: 0.003639 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local tbl_2_upvr = {
	isChecked = false;
	size = require(Foundation.Enums.ChipSize).Medium;
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local useCursor_upvr = require(Foundation.Providers.Cursor.useCursor)
local CursorType_upvr = require(Foundation.Enums.CursorType)
local IconPosition_upvr = require(Foundation.Enums.IconPosition)
local useChipVariants_upvr = require(script.Parent.useChipVariants)
local View_upvr = require(Foundation.Components.View)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local StateLayerMode_upvr = require(Foundation.Enums.StateLayerMode)
local Accessory_upvr = require(script.Parent.Accessory)
local Text_upvr = require(Foundation.Components.Text)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 59, Named "Chip"
	--[[ Upvalues[13]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useCursor_upvr (readonly)
		[5]: CursorType_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: IconPosition_upvr (readonly)
		[8]: useChipVariants_upvr (readonly)
		[9]: View_upvr (readonly)
		[10]: withCommonProps_upvr (readonly)
		[11]: StateLayerMode_upvr (readonly)
		[12]: Accessory_upvr (readonly)
		[13]: Text_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 37 start (CF ANALYSIS FAILED)
	local withDefaults_upvr_result1_upvr = withDefaults_upvr(arg1, tbl_2_upvr)
	local any_useMemo_result1, any_useMemo_result2 = React_upvr.useMemo(function() -- Line 64
		--[[ Upvalues[2]:
			[1]: withDefaults_upvr_result1_upvr (readonly)
			[2]: IconPosition_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
		local var17
		if withDefaults_upvr_result1_upvr.icon == nil then
			return withDefaults_upvr_result1_upvr.leading, withDefaults_upvr_result1_upvr.trailing
		end
		if typeof(withDefaults_upvr_result1_upvr.icon) == "string" then
			var17 = {
				iconName = withDefaults_upvr_result1_upvr.icon;
			}
			-- KONSTANTWARNING: GOTO [52] #37
		end
		-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [31] 23. Error Block 17 start (CF ANALYSIS FAILED)
		local module = {
			iconName = withDefaults_upvr_result1_upvr.icon.name;
		}
		if withDefaults_upvr_result1_upvr.icon.position == IconPosition_upvr.Left then
			var17 = module
		else
		end
		do
			return withDefaults_upvr_result1_upvr.leading or var17, withDefaults_upvr_result1_upvr.trailing or module
		end
		-- KONSTANTERROR: [31] 23. Error Block 17 end (CF ANALYSIS FAILED)
	end, {withDefaults_upvr_result1_upvr.leading, withDefaults_upvr_result1_upvr.icon, withDefaults_upvr_result1_upvr.trailing})
	local var23
	if any_useMemo_result1 == nil then
		var23 = false
	else
		var23 = true
	end
	if any_useMemo_result2 == nil then
	else
	end
	local var9_result1 = useChipVariants_upvr(useTokens_upvr(), withDefaults_upvr_result1_upvr.size, withDefaults_upvr_result1_upvr.isChecked, var23, true)
	var23 = withDefaults_upvr_result1_upvr
	local tbl = {
		selection = {
			Selectable = true;
			SelectionImageObject = useCursor_upvr(CursorType_upvr.SmallPill);
		};
		onActivated = withDefaults_upvr_result1_upvr.onActivated;
	}
	if withDefaults_upvr_result1_upvr.isChecked then
		({}).mode = StateLayerMode_upvr.Inverse
		-- KONSTANTWARNING: GOTO [73] #54
	end
	-- KONSTANTERROR: [0] 1. Error Block 37 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [72] 53. Error Block 40 start (CF ANALYSIS FAILED)
	tbl.stateLayer = nil
	tbl.backgroundStyle = var9_result1.chip.backgroundStyle
	tbl.padding = var9_result1.chip.padding
	tbl.tag = var9_result1.chip.tag
	tbl.ref = arg2
	var23 = {}
	if any_useMemo_result1 then
		local tbl_3 = {
			isLeading = true;
			config = any_useMemo_result1;
			size = withDefaults_upvr_result1_upvr.size;
			contentStyle = var9_result1.text.contentStyle;
		}
		-- KONSTANTWARNING: GOTO [121] #83
	end
	-- KONSTANTERROR: [72] 53. Error Block 40 end (CF ANALYSIS FAILED)
end))