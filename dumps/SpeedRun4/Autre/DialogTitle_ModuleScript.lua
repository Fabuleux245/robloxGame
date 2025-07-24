-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:33
-- Luau version 6, Types version 3
-- Time taken: 0.002111 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local tbl_upvr = {
	closeIcon = "icons/navigation/close";
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local useTextSizeOffset_upvr = require(Foundation.Providers.Style.useTextSizeOffset)
local useDialogLayout_upvr = require(script.Parent.Parent.useDialogLayout)
local React_upvr = require(Foundation.Parent.React)
local View_upvr = require(Foundation.Components.View)
local IconButton_upvr = require(Foundation.Components.IconButton)
local IconSize_upvr = require(Foundation.Enums.IconSize)
local Text_upvr = require(Foundation.Components.Text)
local renderFade_upvr = require(script.Parent.Parent.renderFade)
return function(arg1) -- Line 31, Named "DialogTitle"
	--[[ Upvalues[11]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useTextSizeOffset_upvr (readonly)
		[5]: useDialogLayout_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: View_upvr (readonly)
		[8]: IconButton_upvr (readonly)
		[9]: IconSize_upvr (readonly)
		[10]: Text_upvr (readonly)
		[11]: renderFade_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local var3_result1 = withDefaults_upvr(arg1, tbl_upvr)
	local useTokens_upvr_result1_upvr = useTokens_upvr()
	local var5_result1_upvr = useTextSizeOffset_upvr()
	local var6_result1_upvr = useDialogLayout_upvr()
	React_upvr.useEffect(function() -- Line 37
		--[[ Upvalues[3]:
			[1]: useTokens_upvr_result1_upvr (readonly)
			[2]: var5_result1_upvr (readonly)
			[3]: var6_result1_upvr (readonly)
		]]
		local HeadingSmall = useTokens_upvr_result1_upvr.Typography.HeadingSmall
		var6_result1_upvr.setTitleHeight((HeadingSmall.FontSize + var5_result1_upvr) * HeadingSmall.LineHeight + useTokens_upvr_result1_upvr.Padding.Medium * 2)
	end, {useTokens_upvr_result1_upvr, var5_result1_upvr})
	React_upvr.useEffect(function() -- Line 45
		--[[ Upvalues[1]:
			[1]: var6_result1_upvr (readonly)
		]]
		return function() -- Line 46
			--[[ Upvalues[1]:
				[1]: var6_result1_upvr (copied, readonly)
			]]
			var6_result1_upvr.setTitleHeight(0)
		end
	end, {useTokens_upvr_result1_upvr, var5_result1_upvr})
	local tbl_2 = {
		Size = UDim2.new(1, 0, 0, var6_result1_upvr.titleHeight);
		ZIndex = var3_result1.ZIndex;
	}
	local tbl = {}
	local var26
	if var3_result1.onClose then
		var26 = React_upvr.createElement
		var26 = var26(IconButton_upvr, {
			Position = UDim2.fromScale(0, 0.5);
			AnchorPoint = Vector2.new(0, 0.5);
			icon = var3_result1.closeIcon;
			size = IconSize_upvr.Medium;
			onActivated = var3_result1.onClose;
		})
	else
		var26 = nil
	end
	tbl.CloseButton = var26
	if var3_result1.title then
		var26 = React_upvr.createElement
		var26 = var26(Text_upvr, {
			tag = "anchor-center-center position-center-center text-heading-small text-no-wrap auto-y size-full-0 text-truncate-end";
			Text = var3_result1.title;
		})
		-- KONSTANTWARNING: GOTO [126] #94
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [125] 93. Error Block 29 start (CF ANALYSIS FAILED)
	var26 = nil
	tbl.Title = var26
	;({}).TitleContent = React_upvr.createElement(View_upvr, {
		tag = "size-full padding-medium";
		ZIndex = 1;
	}, tbl)
	if var3_result1.title then
		local _ = {
			ZIndex = 1;
			tag = "stroke-default size-full-0 position-bottom-left";
		}
		-- KONSTANTWARNING: GOTO [148] #110
	end
	-- KONSTANTERROR: [125] 93. Error Block 29 end (CF ANALYSIS FAILED)
end