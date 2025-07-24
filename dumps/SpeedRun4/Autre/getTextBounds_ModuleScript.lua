-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:56
-- Luau version 6, Types version 3
-- Time taken: 0.002367 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local CoreGui_upvr = game:GetService("CoreGui")
local getFFlagReplicateUIPaddingChildProperties_upvr = require(ExpChat.Flags.getFFlagReplicateUIPaddingChildProperties)
local getAbsolutePaddingbyDimension_upvr = require(ExpChat.BubbleChat.Helpers.getAbsolutePaddingbyDimension)
local function var2_upvr(arg1, arg2) -- Line 11
	--[[ Upvalues[3]:
		[1]: CoreGui_upvr (readonly)
		[2]: getFFlagReplicateUIPaddingChildProperties_upvr (readonly)
		[3]: getAbsolutePaddingbyDimension_upvr (readonly)
	]]
	local ScreenGui = Instance.new("ScreenGui")
	ScreenGui.Enabled = false
	ScreenGui.Name = "RichTextSizingLabel"
	ScreenGui.Parent = CoreGui_upvr
	local TextLabel = Instance.new("TextLabel")
	TextLabel.TextWrapped = true
	TextLabel.RichText = true
	TextLabel.Parent = ScreenGui
	TextLabel.Text = arg1
	TextLabel.TextSize = arg2.TextSize
	if arg2.FontFace then
		TextLabel.FontFace = arg2.FontFace
	else
		TextLabel.Font = arg2.Font
	end
	TextLabel.Size = UDim2.fromOffset(arg2.MaxWidth, 10000)
	local TextBounds = TextLabel.TextBounds
	ScreenGui:Destroy()
	local var9
	if getFFlagReplicateUIPaddingChildProperties_upvr() and arg2.UIPadding then
		var9 = Vector2.new((getAbsolutePaddingbyDimension_upvr(arg2.UIPadding.PaddingLeft, TextBounds.X) + getAbsolutePaddingbyDimension_upvr(arg2.UIPadding.PaddingRight, TextBounds.X)) * 2, getAbsolutePaddingbyDimension_upvr(arg2.UIPadding.PaddingTop, TextBounds.Y) + getAbsolutePaddingbyDimension_upvr(arg2.UIPadding.PaddingBottom, TextBounds.Y))
	else
		local Padding = arg2.Padding
		var9 = Vector2.new(Padding * 4, Padding * 2)
	end
	return var9 + TextBounds
end
local TextChatService_upvr = game:GetService("TextChatService")
local getFFlagExpChatAlwaysRunTCS_upvr = require(ExpChat.Parent.SharedFlags).getFFlagExpChatAlwaysRunTCS
local TextService_upvr = game:GetService("TextService")
return function(arg1, arg2, arg3) -- Line 53
	--[[ Upvalues[4]:
		[1]: TextChatService_upvr (readonly)
		[2]: getFFlagExpChatAlwaysRunTCS_upvr (readonly)
		[3]: var2_upvr (readonly)
		[4]: TextService_upvr (readonly)
	]]
	if arg3 == nil then
	end
	if getFFlagExpChatAlwaysRunTCS_upvr() or TextChatService_upvr.ChatVersion == Enum.ChatVersion.TextChatService then
		return var2_upvr(arg1, arg2)
	end
	return TextService_upvr:GetTextSize(arg1, arg2.TextSize, arg2.Font, Vector2.new(arg2.MaxWidth, 10000)) + Vector2.new(arg2.Padding * 4, arg2.Padding * 2)
end