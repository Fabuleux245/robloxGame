-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:22
-- Luau version 6, Types version 3
-- Time taken: 0.001859 seconds

local Utils = script.Parent.Parent.Parent:FindFirstChild("Utils")
local module_upvr_2 = require(Utils:WaitForChild("Fusion"))
local module_upvr = require(Utils:WaitForChild("FusionProps"))
local Children_upvr = module_upvr_2.Children
local Value_upvr = module_upvr_2.Value
local Observer_upvr = module_upvr_2.Observer
local New_upvr = module_upvr_2.New
local Ref_upvr = module_upvr_2.Ref
local OnChange_upvr = module_upvr_2.OnChange
local Cleanup_upvr = module_upvr_2.Cleanup
return function(arg1) -- Line 17
	--[[ Upvalues[9]:
		[1]: module_upvr (readonly)
		[2]: Children_upvr (readonly)
		[3]: Value_upvr (readonly)
		[4]: Observer_upvr (readonly)
		[5]: New_upvr (readonly)
		[6]: Ref_upvr (readonly)
		[7]: OnChange_upvr (readonly)
		[8]: Cleanup_upvr (readonly)
		[9]: module_upvr_2 (readonly)
	]]
	local any_GetValues_result1_upvw = module_upvr.GetValues(arg1, {
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0, 0);
		AnchorPoint = Vector2.new(0, 0);
		Text = "";
		TextColor3 = Color3.new(1, 1, 1);
		Font = Enum.Font.GothamMedium;
		MaxSize = 36;
		RichText = false;
		TextTransparency = 0;
		Rotation = 0;
		Visible = true;
		LayoutOrder = 0;
		TextXAlignment = Enum.TextXAlignment.Center;
		Name = "TextLabel";
		Parent = module_upvr.Nil;
		[Children_upvr] = module_upvr.Nil;
	})
	local Value_upvr_result1_upvr = Value_upvr()
	local function updateTextSize() -- Line 41
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr (readonly)
			[2]: any_GetValues_result1_upvw (read and write)
		]]
		if not Value_upvr_result1_upvr:get() then
		else
			local any_get_result1 = Value_upvr_result1_upvr:get()
			any_get_result1.TextSize = math.min(any_get_result1.AbsoluteSize.Y, any_GetValues_result1_upvw.MaxSize:get())
			local X = any_get_result1.TextBounds.X
			local X_2 = any_get_result1.AbsoluteSize.X
			if X_2 < X then
				any_get_result1.TextSize *= X_2 / X
			end
		end
	end
	local tbl_upvr = {}
	table.insert(tbl_upvr, Observer_upvr(any_GetValues_result1_upvw.Text):onChange(updateTextSize))
	table.insert(tbl_upvr, Observer_upvr(any_GetValues_result1_upvw.MaxSize):onChange(updateTextSize))
	table.insert(tbl_upvr, Observer_upvr(any_GetValues_result1_upvw.Font):onChange(updateTextSize))
	return New_upvr("TextLabel")({
		Size = any_GetValues_result1_upvw.Size;
		Position = any_GetValues_result1_upvw.Position;
		AnchorPoint = any_GetValues_result1_upvw.AnchorPoint;
		BackgroundTransparency = 1;
		Rotation = any_GetValues_result1_upvw.Rotation;
		Name = any_GetValues_result1_upvw.Name;
		Parent = any_GetValues_result1_upvw.Parent;
		[Children_upvr] = any_GetValues_result1_upvw[Children_upvr];
		Text = any_GetValues_result1_upvw.Text;
		TextColor3 = any_GetValues_result1_upvw.TextColor3;
		Font = any_GetValues_result1_upvw.Font;
		RichText = any_GetValues_result1_upvw.RichText;
		TextTransparency = any_GetValues_result1_upvw.TextTransparency;
		Visible = any_GetValues_result1_upvw.Visible;
		LayoutOrder = any_GetValues_result1_upvw.LayoutOrder;
		TextXAlignment = any_GetValues_result1_upvw.TextXAlignment;
		[Ref_upvr] = Value_upvr_result1_upvr;
		[OnChange_upvr("AbsoluteSize")] = updateTextSize;
		[Cleanup_upvr] = function() -- Line 85
			--[[ Upvalues[2]:
				[1]: module_upvr_2 (copied, readonly)
				[2]: tbl_upvr (readonly)
			]]
			module_upvr_2.cleanup(tbl_upvr)
		end;
	})
end