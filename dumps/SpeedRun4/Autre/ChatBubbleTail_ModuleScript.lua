-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:34
-- Luau version 6, Types version 3
-- Time taken: 0.001399 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local tbl_upvr = {
	isIncoming = false;
	imageColor = Color3.new(0, 0, 0);
	imageTransparency = 0;
}
local Cryo_upvr = require(Parent.Cryo)
local ChatBubbleEnum_upvr = require(script.Parent.ChatBubbleEnum)
function ChatBubbleTail(arg1) -- Line 38
	--[[ Upvalues[4]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: ChatBubbleEnum_upvr (readonly)
		[4]: React_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var6 = tbl_upvr
	local any_union_result1 = Cryo_upvr.Dictionary.union(var6, arg1)
	local var8
	if any_union_result1.isIncoming then
		var6 = ChatBubbleEnum_upvr.RECEIVED_TAIL
	else
		var6 = ChatBubbleEnum_upvr.SENT_TAIL
	end
	if any_union_result1.isIncoming then
		var8 = 0
	else
		var8 = 0
	end
	local module = {}
	if any_union_result1.isIncoming then
		var8 = Vector2.new(0, 0)
	else
		var8 = Vector2.new(1, 0)
	end
	module.AnchorPoint = var8
	var8 = UDim2.new(0, ChatBubbleEnum_upvr.TAIL_WIDTH, 0, ChatBubbleEnum_upvr.TAIL_WIDTH)
	module.Size = var8
	var8 = 1
	module.BackgroundTransparency = var8
	var8 = any_union_result1.imageColor
	module.ImageColor3 = var8
	module.Position = UDim2.new(1, 0, 0, var8)
	module.Image = var6
	var8 = any_union_result1.imageTransparency
	module.ImageTransparency = var8
	return React_upvr.createElement("ImageLabel", module)
end
return React_upvr.memo(ChatBubbleTail)