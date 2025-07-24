-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:01
-- Luau version 6, Types version 3
-- Time taken: 0.004311 seconds

local Parent = script:FindFirstAncestor("GameTile").Parent
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local useTokens_upvr = Foundation.Hooks.useTokens
local useState_upvr = React_upvr.useState
local useMemo_upvr = React_upvr.useMemo
local FooterCornerButtonStyle_upvr = require(script.Parent.FooterCornerButtonStyle)
local Image_upvr = Foundation.Image
return function(arg1) -- Line 22
	--[[ Upvalues[7]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: useTokens_upvr (readonly)
		[3]: useState_upvr (readonly)
		[4]: useMemo_upvr (readonly)
		[5]: FooterCornerButtonStyle_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: Image_upvr (readonly)
	]]
	local var5_result1_upvr = useDesignTokens_upvr()
	local var7_result1_upvr, var7_result2_upvr = useState_upvr(false)
	local Size_500_upvr = var5_result1_upvr.Global.Size_500
	local useTokens_upvr_result1_upvr = useTokens_upvr()
	local module = {}
	local tbl = {
		Size = useMemo_upvr(function() -- Line 29
			--[[ Upvalues[3]:
				[1]: Size_500_upvr (readonly)
				[2]: var7_result1_upvr (readonly)
				[3]: arg1 (readonly)
			]]
			local udim2 = UDim2.new(0, Size_500_upvr, 0, Size_500_upvr)
			if var7_result1_upvr and not arg1.disabled then
				return udim2 + UDim2.new(0, 2, 0, 2)
			end
			return udim2
		end, {var7_result1_upvr, arg1.disabled});
		Position = UDim2.new(0, Size_500_upvr / 2, 0.5, 0);
		AnchorPoint = Vector2.new(0.5, 0.5);
	}
	local var28 = false
	tbl.AutoButtonColor = var28
	tbl.BackgroundColor3 = useMemo_upvr(function() -- Line 46
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: FooterCornerButtonStyle_upvr (copied, readonly)
			[3]: useTokens_upvr_result1_upvr (readonly)
			[4]: var5_result1_upvr (readonly)
		]]
		if arg1.buttonStyle == FooterCornerButtonStyle_upvr.Follow then
			return useTokens_upvr_result1_upvr.Inverse.Content.Default.Color3
		end
		if arg1.buttonStyle == FooterCornerButtonStyle_upvr.Following then
			return useTokens_upvr_result1_upvr.Color.ActionSubEmphasis.Background.Color3
		end
		return var5_result1_upvr.Semantic.Color.Action.PrimaryBrand.Background.Color3
	end, {arg1.buttonStyle})
	if arg1.disabled then
		var28 = 0.5
	else
		var28 = 0
	end
	tbl.BackgroundTransparency = var28
	tbl.Text = ""
	tbl[React_upvr.Event.MouseEnter] = function() -- Line 77
		--[[ Upvalues[1]:
			[1]: var7_result2_upvr (readonly)
		]]
		var7_result2_upvr(true)
	end
	tbl[React_upvr.Event.MouseLeave] = function() -- Line 80
		--[[ Upvalues[1]:
			[1]: var7_result2_upvr (readonly)
		]]
		var7_result2_upvr(false)
	end
	tbl[React_upvr.Event.Activated] = arg1.onActivated
	module.EventButton = React_upvr.createElement("TextButton", tbl, {
		Icon = React_upvr.createElement(Image_upvr, {
			Image = useMemo_upvr(function() -- Line 37
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: FooterCornerButtonStyle_upvr (copied, readonly)
				]]
				if arg1.buttonStyle == FooterCornerButtonStyle_upvr.Follow then
					return "icons/common/notificationOff"
				end
				if arg1.buttonStyle == FooterCornerButtonStyle_upvr.Following then
					return "icons/common/notificationOn"
				end
				return "icons/common/play"
			end, {arg1.buttonStyle});
			Size = UDim2.new(0, var5_result1_upvr.Global.Size_250, 0, var5_result1_upvr.Global.Size_250);
			Position = UDim2.new(0.5, 0, 0.5, 0);
			AnchorPoint = Vector2.new(0.5, 0.5);
			imageStyle = useMemo_upvr(function() -- Line 55
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: FooterCornerButtonStyle_upvr (copied, readonly)
					[3]: var5_result1_upvr (readonly)
				]]
				if arg1.buttonStyle == FooterCornerButtonStyle_upvr.Follow then
					return var5_result1_upvr.Semantic.Color.Text.Emphasis
				end
				if arg1.buttonStyle == FooterCornerButtonStyle_upvr.Following then
					return var5_result1_upvr.Semantic.Color.BackgroundUi.Default
				end
				return var5_result1_upvr.Semantic.Color.Action.PrimaryBrand.Content
			end, {arg1.buttonStyle});
		});
		Corners = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0);
		});
	})
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(0, Size_500_upvr + var5_result1_upvr.Global.Size_150, 1, 0);
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}, module)
end