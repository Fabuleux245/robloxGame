-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:21
-- Luau version 6, Types version 3
-- Time taken: 0.002111 seconds

local Parent = script:FindFirstAncestor("GenericAbuseReporting").Parent
local React_upvr = require(Parent.React)
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AddBackgroundTransparencyToAbuseReportCommentTextField", false)
return function(arg1) -- Line 25, Named "CommentTextField"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState("")
	local useStyle_upvr_result1 = useStyle_upvr()
	local Theme = useStyle_upvr_result1.Theme
	local module = {}
	local udim2 = UDim2.new(1, 0, 0, 60)
	module.Size = udim2
	local var13
	if game_DefineFastFlag_result1_upvr then
		if arg1.backgroundTransparency ~= nil then
			udim2 = arg1.backgroundTransparency
		else
			udim2 = useStyle_upvr_result1.Theme.BackgroundDefault.Transparency
		end
	else
		udim2 = useStyle_upvr_result1.Theme.BackgroundDefault.Transparency
	end
	module.BackgroundTransparency = udim2
	udim2 = arg1.backgroundColor3
	local var14 = udim2
	if not var14 then
		var14 = useStyle_upvr_result1.Theme.BackgroundDefault.Color
	end
	module.BackgroundColor3 = var14
	module.LayoutOrder = arg1.layoutOrder
	module.AutomaticSize = Enum.AutomaticSize.Y
	local module_2 = {}
	local tbl_2 = {}
	var13 = UDim.new(0, 10)
	tbl_2.PaddingLeft = var13
	var13 = UDim.new(0, 10)
	tbl_2.PaddingRight = var13
	var13 = UDim.new(0, 10)
	tbl_2.PaddingTop = var13
	var13 = UDim.new(0, 10)
	tbl_2.PaddingBottom = var13
	module_2.UIPadding = React_upvr.createElement("UIPadding", tbl_2)
	local tbl_3 = {}
	var13 = UDim.new(0, 8)
	tbl_3.CornerRadius = var13
	module_2.UICorner = React_upvr.createElement("UICorner", tbl_3)
	local tbl = {}
	var13 = UDim2.new(1, 0, 0, 40)
	tbl.Size = var13
	var13 = Enum.AutomaticSize.Y
	tbl.AutomaticSize = var13
	var13 = UDim2.new(0, 0, 0, 0)
	tbl.Position = var13
	var13 = Vector2.new(0, 0)
	tbl.AnchorPoint = var13
	var13 = arg1.backgroundColor3
	if not var13 then
		var13 = Theme.BackgroundDefault.Color
	end
	tbl.BackgroundColor3 = var13
	tbl.PlaceholderText = arg1.placeholderText
	tbl.Font = useStyle_upvr_result1.Font.Body.Font
	tbl.Text = arg1.text
	tbl.TextSize = useStyle_upvr_result1.Font.BaseSize
	tbl.TextColor3 = Theme.TextDefault.Color
	tbl.TextTransparency = Theme.TextDefault.Transparency
	if not arg1.textXAlignment then
	end
	tbl.TextXAlignment = Enum.TextXAlignment.Left
	if not arg1.textYAlignment then
	end
	tbl.TextYAlignment = Enum.TextYAlignment.Top
	if game_DefineFastFlag_result1_upvr then
	else
	end
	tbl.BackgroundTransparency = Theme.BackgroundDefault.Transparency
	tbl.BorderSizePixel = 0
	tbl.LayoutOrder = 1
	tbl.RichText = false
	tbl.MultiLine = true
	tbl.TextWrapped = true
	tbl.TextTruncate = Enum.TextTruncate.SplitWord
	tbl.ClearTextOnFocus = false
	tbl.OverlayNativeInput = true
	tbl.ClipsDescendants = true
	tbl.Interactable = arg1.interactable
	tbl[React_upvr.Change.Text] = React_upvr.useCallback(function(arg1_2) -- Line 32
		--[[ Upvalues[3]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: any_useState_result1_upvr (readonly)
		]]
		local Text = arg1_2.Text
		if arg1_2.TextFits then
			any_useState_result2_upvr(Text)
			arg1.onUpdate(Text)
		else
			arg1_2.Text = any_useState_result1_upvr
		end
	end)
	module_2.CommentField = React_upvr.createElement("TextBox", tbl)
	return React_upvr.createElement("Frame", module, module_2)
end