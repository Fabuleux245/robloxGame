-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:10
-- Luau version 6, Types version 3
-- Time taken: 0.001839 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Dictionary_upvr = require(Parent.llama).Dictionary
local Actions = ExpChat.Actions
local module = {
	[require(Actions.ChatLayoutHorizontalAlignmentChanged).name] = function(arg1, arg2) -- Line 22
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		local Position_2 = arg1.Position
		local AnchorPoint = arg1.AnchorPoint
		if arg2.value == Enum.HorizontalAlignment.Left then
			Position_2 = UDim2.new(0, 8, Position_2.Y.Scale, Position_2.Y.Offset)
			AnchorPoint = Vector2.new(0, AnchorPoint.Y)
		elseif arg2.value == Enum.HorizontalAlignment.Center then
			Position_2 = UDim2.new(0.5, 0, Position_2.Y.Scale, Position_2.Y.Offset)
			AnchorPoint = Vector2.new(0.5, AnchorPoint.Y)
		elseif arg2.value == Enum.HorizontalAlignment.Right then
			Position_2 = UDim2.new(1, -8, Position_2.Y.Scale, Position_2.Y.Offset)
			AnchorPoint = Vector2.new(1, AnchorPoint.Y)
		end
		return Dictionary_upvr.join(arg1, {
			Position = Position_2;
			AnchorPoint = AnchorPoint;
		})
	end;
}
local Y_upvr = game:GetService("GuiService"):GetGuiInset().Y
module[require(Actions.ChatLayoutVerticalAlignmentChanged).name] = function(arg1, arg2) -- Line 43
	--[[ Upvalues[2]:
		[1]: Y_upvr (readonly)
		[2]: Dictionary_upvr (readonly)
	]]
	local Position = arg1.Position
	local AnchorPoint_2 = arg1.AnchorPoint
	if arg2.value == Enum.VerticalAlignment.Top then
		Position = UDim2.new(Position.X.Scale, Position.X.Offset, 0, 4)
		AnchorPoint_2 = Vector2.new(AnchorPoint_2.X, 0)
	elseif arg2.value == Enum.VerticalAlignment.Center then
		Position = UDim2.new(Position.X.Scale, Position.X.Offset, 0.5, -Y_upvr)
		AnchorPoint_2 = Vector2.new(AnchorPoint_2.X, 0.5)
	elseif arg2.value == Enum.VerticalAlignment.Bottom then
		Position = UDim2.new(Position.X.Scale, Position.X.Offset, 1, -4)
		AnchorPoint_2 = Vector2.new(AnchorPoint_2.X, 1)
	end
	return Dictionary_upvr.join(arg1, {
		Position = Position;
		AnchorPoint = AnchorPoint_2;
		UIListLayoutVerticalAlignment = arg2.value;
	})
end
return require(Parent.Rodux).createReducer({
	Position = UDim2.new(0, 8, 0, 4);
	AnchorPoint = Vector2.new(0, 0);
	UIListLayoutVerticalAlignment = Enum.VerticalAlignment.Top;
}, module)