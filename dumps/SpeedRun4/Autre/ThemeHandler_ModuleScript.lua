-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:37
-- Luau version 6, Types version 3
-- Time taken: 0.002031 seconds

local tbl_upvr = {
	BackgroundImage = "rbxasset://textures/blackBkg_round.png";
	BackgroundImageScaleType = Enum.ScaleType.Slice;
	BackgroundImageSliceCenter = Rect.new(12, 12, 12, 12);
	BackgroundImageTransparency = 0;
	BackgroundTransparency = 1;
	BackgroundColor = Color3.fromRGB(31, 31, 31);
	NameTagColor = Color3.fromRGB(79, 79, 79);
	NameUnderlineColor = Color3.fromRGB(255, 255, 255);
	ButtonFrameColor = Color3.fromRGB(79, 79, 79);
	ButtonFrameTransparency = 0;
	ButtonImage = "";
	ButtonImageScaleType = Enum.ScaleType.Slice;
	ButtonImageSliceCenter = Rect.new(8, 6, 46, 44);
	ButtonColor = Color3.fromRGB(79, 79, 79);
	ButtonTransparency = 1;
	ButtonHoverColor = Color3.fromRGB(163, 162, 165);
	ButtonHoverTransparency = 0.5;
	ButtonUnderlineColor = Color3.fromRGB(137, 137, 137);
	Font = Enum.Font.SourceSansBold;
	TextColor = Color3.fromRGB(255, 255, 255);
	TextScale = 1;
	LeaveMenuImage = "rbxasset://textures/loading/cancelButton.png";
	ScrollRightImage = "rbxasset://textures/ui/AvatarContextMenu_Arrow.png";
	ScrollLeftImage = "";
	SelectedCharacterIndicator = game:GetService("InsertService"):LoadLocalAsset("rbxasset://models/AvatarContextMenu/AvatarContextArrow.rbxm");
	Size = UDim2.new(0.95, 0, 0.9, 0);
	MinSize = Vector2.new(200, 200);
	MaxSize = Vector2.new(300, 300);
	AspectRatio = 1.15;
	AnchorPoint = Vector2.new(0.5, 1);
	OnScreenPosition = UDim2.new(0.5, 0, 0.98, 0);
	OffScreenPosition = UDim2.new(0.5, 0, 1, 300);
}
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.UpdateTheme(arg1, arg2) -- Line 56
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	for i, v in pairs(tbl_upvr) do
		if typeof(arg2[i]) == typeof(v) then
			({})[i] = arg2[i]
		elseif arg2[i] == nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({})[i] = v
		else
			error(string.format("AvatarContextMenuTheme wrong type for key %s: %s. Expected type %s", i, typeof(arg2[i]), typeof(v)), 2)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	arg1.Theme = {}
end
local StarterGui_upvr = game:GetService("StarterGui")
function module_upvr.RegisterCoreMethods(arg1) -- Line 75
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: StarterGui_upvr (readonly)
	]]
	StarterGui_upvr:RegisterSetCore("AvatarContextMenuTheme", function(arg1_2) -- Line 76, Named "setMenuTheme"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if type(arg1_2) == "table" then
			for i_2 in pairs(arg1_2) do
				if tbl_upvr[i_2] == nil then
					error(string.format("AvatarContextMenuTheme got invalid key: %s", i_2))
				end
			end
			arg1:UpdateTheme(arg1_2)
		else
			error("AvatarContextMenuTheme argument must be a table")
		end
	end)
end
function module_upvr.GetTheme(arg1) -- Line 93
	return arg1.Theme
end
function module_upvr.new() -- Line 97
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.Theme = tbl_upvr
	setmetatable_result1:RegisterCoreMethods()
	return setmetatable_result1
end
return module_upvr.new()