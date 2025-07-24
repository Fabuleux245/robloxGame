-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:11
-- Luau version 6, Types version 3
-- Time taken: 0.003634 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local UIBlox = require(Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local any_new_result1_upvr = require(Parent.Loggers).Logger:new(script.Name)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
return function(arg1) -- Line 22, Named "ImagePile"
	--[[ Upvalues[5]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: any_new_result1_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
	]]
	local Tokens_upvr = useStyle_upvr().Tokens
	local any_union_result1_upvr = Cryo_upvr.Dictionary.union(React_upvr.useMemo(function() -- Line 26
		--[[ Upvalues[1]:
			[1]: Tokens_upvr (readonly)
		]]
		return {
			imageBorderColor = Tokens_upvr.Global.Color.White.Color3;
			imageBorderThickness = Tokens_upvr.Global.Stroke_200;
		}
	end, {Tokens_upvr}), arg1)
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 35
		--[[ Upvalues[1]:
			[1]: Tokens_upvr (readonly)
		]]
		return {{
			Attribute1 = {
				AnchorPoint = Vector2.new(0, 0);
				Position = UDim2.fromScale(0, 0);
				Size = UDim2.fromOffset(Tokens_upvr.Global.Size_500, Tokens_upvr.Global.Size_500);
				ZIndex = 1;
			};
		}, {
			Attribute1 = {
				AnchorPoint = Vector2.new(0, 1);
				Position = UDim2.fromScale(0, 1);
				Size = UDim2.fromOffset(Tokens_upvr.Global.Size_350, Tokens_upvr.Global.Size_350);
				ZIndex = 2;
			};
			Attribute2 = {
				AnchorPoint = Vector2.new(1, 0);
				Position = UDim2.fromScale(1, 0);
				Size = UDim2.fromOffset(Tokens_upvr.Global.Size_350, Tokens_upvr.Global.Size_350);
				ZIndex = 1;
			};
		}}
	end, {Tokens_upvr})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_2, arg2) -- Line 62
		--[[ Upvalues[1]:
			[1]: any_useMemo_result1_upvr (readonly)
		]]
		return any_useMemo_result1_upvr[math.min(arg1_2, 2)]["Attribute"..arg2]
	end, {any_useMemo_result1_upvr})
	if #any_union_result1_upvr.images == 0 then
		any_new_result1_upvr:warning("Cannot have empty list of images")
		return nil
	end
	return React_upvr.createElement("Frame", {
		[React_upvr.Tag] = "data-testid=ImagePile";
		BackgroundTransparency = 1;
		Name = "ImagePile";
		Size = UDim2.fromOffset(Tokens_upvr.Global.Size_500, Tokens_upvr.Global.Size_500);
	}, React_upvr.useMemo(function() -- Line 67
		--[[ Upvalues[5]:
			[1]: any_union_result1_upvr (readonly)
			[2]: any_new_result1_upvr (copied, readonly)
			[3]: any_useCallback_result1_upvr (readonly)
			[4]: React_upvr (copied, readonly)
			[5]: ImageSetLabel_upvr (copied, readonly)
		]]
		local module = {}
		for i, v in any_union_result1_upvr.images do
			if 2 < i then
				any_new_result1_upvr:warning("More than 2 images provided but only the first 2 will be shown.")
				return module
			end
			local var25_result1 = any_useCallback_result1_upvr(#any_union_result1_upvr.images, i)
			v.AnchorPoint = var25_result1.AnchorPoint
			v.Position = var25_result1.Position
			v.Size = var25_result1.Size
			v.ZIndex = var25_result1.ZIndex
			module[tostring(i)] = React_upvr.createElement(ImageSetLabel_upvr, v, {
				UICorner = React_upvr.createElement("UICorner", {
					CornerRadius = UDim.new(1, 0);
				});
				UIStroke = React_upvr.createElement("UIStroke", {
					Color = any_union_result1_upvr.imageBorderColor;
					Thickness = any_union_result1_upvr.imageBorderThickness;
					Transparency = 0;
				});
			})
		end
		return module
	end, {any_union_result1_upvr.images}))
end