-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:09
-- Luau version 6, Types version 3
-- Time taken: 0.006427 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local React_upvr = require(ExpChat.Parent.React)
local Config_upvr = require(ExpChat.Config)
local EmojiList_upvr = require(ExpChat.Parent.EmojiList)
return function(arg1) -- Line 10
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: Config_upvr (readonly)
		[3]: EmojiList_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	local tbl_4 = {}
	local var9
	if arg1.isDividerVisible then
		var9 = -1
	else
		var9 = 0
	end
	tbl_4.Size = UDim2.new(1, 0, 1, var9)
	if arg1.layoutOrder ~= arg1.selectedIndex or not Config_upvr.AutocompleteSelectedTransparency then
	end
	tbl_4.BackgroundTransparency = arg1.setTransparency(1, arg1.transparencyValue)
	if arg1.layoutOrder ~= arg1.selectedIndex or not Config_upvr.AutocompleteSelectedColor then
	end
	tbl_4.BackgroundColor3 = nil
	tbl_4.Text = ""
	tbl_4.ZIndex = 3
	tbl_4[React_upvr.Event.Activated] = arg1.onAutocompleteSelected
	local tbl_2 = {}
	local tbl_8 = {}
	var9 = UDim.new(0, 15)
	tbl_8.PaddingLeft = var9
	var9 = UDim.new(0, 30)
	tbl_8.PaddingRight = var9
	var9 = UDim.new(0, 8)
	tbl_8.PaddingTop = var9
	var9 = UDim.new(0, 8)
	tbl_8.PaddingBottom = var9
	tbl_2.UIPadding = React_upvr.createElement("UIPadding", tbl_8)
	local tbl_7 = {}
	var9 = Enum.FillDirection.Horizontal
	tbl_7.FillDirection = var9
	var9 = Enum.SortOrder.LayoutOrder
	tbl_7.SortOrder = var9
	var9 = Enum.VerticalAlignment.Center
	tbl_7.VerticalAlignment = var9
	tbl_2.UIListLayout = React_upvr.createElement("UIListLayout", tbl_7)
	if arg1.autocompleteType == "emojis" then
		local tbl_3 = {}
		var9 = Enum.AutomaticSize.XY
		tbl_3.AutomaticSize = var9
		var9 = 1
		tbl_3.BackgroundTransparency = var9
		var9 = arg1.chatInputBarSettings.FontFace
		tbl_3.FontFace = var9
		var9 = true
		tbl_3.RichText = var9
		var9 = UDim2.new(0, 0, 0, 0)
		tbl_3.Size = var9
		var9 = string.format("%s", EmojiList_upvr[arg1.result].base)
		tbl_3.Text = var9
		var9 = arg1.chatInputBarSettings.TextColor3
		tbl_3.TextColor3 = var9
		var9 = arg1.chatInputBarSettings.TextSize
		tbl_3.TextSize = var9
		var9 = arg1.chatInputBarSettings.TextStrokeColor3
		tbl_3.TextStrokeColor3 = var9
		var9 = arg1.setTransparency(arg1.chatInputBarSettings.TextStrokeTransparency, arg1.transparencyValue)
		tbl_3.TextStrokeTransparency = var9
		var9 = arg1.setTransparency(0, arg1.transparencyValue)
		tbl_3.TextTransparency = var9
		var9 = true
		tbl_3.TextWrapped = var9
		var9 = Enum.TextXAlignment.Left
		tbl_3.TextXAlignment = var9
		var9 = Enum.TextYAlignment.Top
		tbl_3.TextYAlignment = var9
		var9 = 1
		tbl_3.LayoutOrder = var9
		var9 = 2
		tbl_3.ZIndex = var9
	end
	tbl_2.EmojiLabel = React_upvr.createElement("TextLabel", tbl_3)
	if arg1.autocompleteType == "emojis" then
		local tbl_6 = {}
		var9 = Enum.AutomaticSize.XY
		tbl_6.AutomaticSize = var9
		var9 = 1
		tbl_6.BackgroundTransparency = var9
		var9 = arg1.chatInputBarSettings.FontFace
		tbl_6.FontFace = var9
		var9 = true
		tbl_6.RichText = var9
		var9 = UDim2.new(0, 0, 0, 0)
		tbl_6.Size = var9
		var9 = "  "
		tbl_6.Text = var9
		var9 = arg1.chatInputBarSettings.TextColor3
		tbl_6.TextColor3 = var9
		var9 = 14
		tbl_6.TextSize = var9
		var9 = arg1.chatInputBarSettings.TextStrokeColor3
		tbl_6.TextStrokeColor3 = var9
		var9 = arg1.setTransparency(arg1.chatInputBarSettings.TextStrokeTransparency, arg1.transparencyValue)
		tbl_6.TextStrokeTransparency = var9
		var9 = arg1.setTransparency(0, arg1.transparencyValue)
		tbl_6.TextTransparency = var9
		var9 = true
		tbl_6.TextWrapped = var9
		var9 = Enum.TextXAlignment.Left
		tbl_6.TextXAlignment = var9
		var9 = Enum.TextYAlignment.Top
		tbl_6.TextYAlignment = var9
		var9 = 2
		tbl_6.LayoutOrder = var9
		var9 = 2
		tbl_6.ZIndex = var9
	end
	tbl_2.SpaceLabel = React_upvr.createElement("TextLabel", tbl_6)
	local tbl = {}
	var9 = Enum.AutomaticSize.XY
	tbl.AutomaticSize = var9
	var9 = 1
	tbl.BackgroundTransparency = var9
	var9 = arg1.chatInputBarSettings.FontFace
	tbl.FontFace = var9
	var9 = true
	tbl.RichText = var9
	var9 = UDim2.new(0, 0, 0, 0)
	tbl.Size = var9
	var9 = string.format("%s", arg1.result)
	tbl.Text = var9
	var9 = arg1.chatInputBarSettings.TextColor3
	tbl.TextColor3 = var9
	var9 = arg1.chatInputBarSettings.TextSize
	tbl.TextSize = var9
	var9 = arg1.chatInputBarSettings.TextStrokeColor3
	tbl.TextStrokeColor3 = var9
	var9 = arg1.setTransparency(arg1.chatInputBarSettings.TextStrokeTransparency, arg1.transparencyValue)
	tbl.TextStrokeTransparency = var9
	var9 = arg1.setTransparency(0, arg1.transparencyValue)
	tbl.TextTransparency = var9
	var9 = true
	tbl.TextWrapped = var9
	var9 = Enum.TextXAlignment.Left
	tbl.TextXAlignment = var9
	var9 = Enum.TextYAlignment.Top
	tbl.TextYAlignment = var9
	var9 = 3
	tbl.LayoutOrder = var9
	var9 = 2
	tbl.ZIndex = var9
	tbl_2.TextLabel = React_upvr.createElement("TextLabel", tbl)
	module.TextLabelButton = React_upvr.createElement("TextButton", tbl_4, tbl_2)
	local function INLINED() -- Internal function, doesn't exist in bytecode
		tbl_5.ZIndex = 2
		tbl_5.BorderSizePixel = 0
		tbl_5.BackgroundColor3 = Config_upvr.ChatInputBarBorderColor3
		tbl_5.BackgroundTransparency = arg1.setTransparency(Config_upvr.ChatInputBarBorderTransparency, arg1.transparencyValue)
		tbl_5.AnchorPoint = Vector2.new(0, 1)
		tbl_5.Position = UDim2.new(0, 0, 1, var9)
		var9 = 0
		tbl_5.Size = UDim2.new(1, 0, 0, var9)
		var9 = 1
		local tbl_5 = {}
		return React_upvr.createElement("Frame", tbl_5)
	end
	if not arg1.isDividerVisible or not INLINED() then
	end
	module.Divider = nil
	return React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.new(1, 0, 0, Config_upvr.AutocompleteEntryDefaultSizeY);
		BackgroundTransparency = 1;
		LayoutOrder = arg1.layoutOrder;
		ZIndex = 2;
		[React_upvr.Event.MouseEnter] = arg1.onAutocompleteDropdownHover;
	}, module)
end