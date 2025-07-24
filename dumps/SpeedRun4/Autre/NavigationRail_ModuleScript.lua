-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:18
-- Luau version 6, Types version 3
-- Time taken: 0.012759 seconds

local Parent_3 = script.Parent.Parent
local Parent_2 = Parent_3.Parent
local Parent = Parent_2.Parent
local tbl_upvr = {
	visible = true;
	isVisible = true;
	zIndex = 1;
	position = UDim2.new(0, 0, 0, 0);
	animationConfig = {
		dampingRatio = 1;
		frequency = 3;
	};
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = require(Parent_2.Core.Style.useStyle)
local ReactOtter_upvr = require(Parent.ReactOtter)
local React_upvr = require(Parent.React)
local NavigationRailAlignment_upvr = require(Parent_3.Navigation.Enum.NavigationRailAlignment)
local UIBloxConfig_upvr = require(Parent_2.UIBloxConfig)
local InteractableList_upvr = require(Parent_2.Core.Control.InteractableList)
return function(arg1) -- Line 66, Named "NavigationRail"
	--[[ Upvalues[8]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: ReactOtter_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: NavigationRailAlignment_upvr (readonly)
		[7]: UIBloxConfig_upvr (readonly)
		[8]: InteractableList_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local var7_result1_upvr = useStyle_upvr()
	local Offset_upvr = any_join_result1_upvr.size.X.Offset
	local any_useAnimatedBinding_result1_upvr, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding(0)
	local useEffect_upvr = React_upvr.useEffect
	useEffect_upvr(function() -- Line 72
		--[[ Upvalues[4]:
			[1]: any_join_result1_upvr (readonly)
			[2]: any_useAnimatedBinding_result2_upvr (readonly)
			[3]: ReactOtter_upvr (copied, readonly)
			[4]: Offset_upvr (readonly)
		]]
		if any_join_result1_upvr.isVisible then
			any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.spring(0, any_join_result1_upvr.animationConfig))
		else
			any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.spring(-Offset_upvr, any_join_result1_upvr.animationConfig))
		end
		return nil
	end, {Offset_upvr, any_join_result1_upvr.isVisible, any_join_result1_upvr.animationConfig})
	local var21
	if any_join_result1_upvr.alignment == NavigationRailAlignment_upvr.Centered then
		useEffect_upvr = Enum.VerticalAlignment.Center
	else
		useEffect_upvr = Enum.VerticalAlignment.Top
	end
	local tbl_3 = {}
	if UIBloxConfig_upvr.enableAppNavTransparentBackground then
		var21 = nil
	else
		var21 = any_join_result1_upvr.rootBackgroundColor
	end
	tbl_3[1] = var7_result1_upvr
	tbl_3[2] = useEffect_upvr
	tbl_3[3] = any_join_result1_upvr.size
	tbl_3[4] = any_join_result1_upvr.clipsDescendants
	tbl_3[5] = any_join_result1_upvr.alignment
	tbl_3[6] = any_join_result1_upvr.visible
	tbl_3[7] = any_join_result1_upvr.zIndex
	tbl_3[8] = any_join_result1_upvr.paddings
	tbl_3[9] = var21
	tbl_3[10] = any_join_result1_upvr.backgroundColor
	local selection = any_join_result1_upvr.selection
	if selection then
		if any_join_result1_upvr.items[selection] == nil then
		else
		end
	end
	return React_upvr.createElement(InteractableList_upvr, {
		fillDirection = Enum.FillDirection.Horizontal;
		horizontalAlignment = Enum.HorizontalAlignment.Left;
		sortOrder = Enum.SortOrder.LayoutOrder;
		size = any_join_result1_upvr.size;
		position = any_join_result1_upvr.position;
		itemList = any_join_result1_upvr.items;
		selection = {nil};
		itemSize = any_join_result1_upvr.itemSize;
		renderItem = any_join_result1_upvr.renderItem;
		renderList = React_upvr.useCallback(function(arg1_2, arg2) -- Line 85
			--[[ Upvalues[8]:
				[1]: UIBloxConfig_upvr (copied, readonly)
				[2]: React_upvr (copied, readonly)
				[3]: any_join_result1_upvr (readonly)
				[4]: var7_result1_upvr (readonly)
				[5]: any_useAnimatedBinding_result1_upvr (readonly)
				[6]: useEffect_upvr (readonly)
				[7]: Cryo_upvr (copied, readonly)
				[8]: NavigationRailAlignment_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 142 start (CF ANALYSIS FAILED)
			local tbl_8 = {}
			local var40
			if UIBloxConfig_upvr.fixAppNavTestIssues then
				for i, v in ipairs(arg1_2) do
					local arg2_result1 = arg2(i)
					arg2_result1.key = nil
					if v.isSecondary then
						tbl_8[tostring(i)] = arg2_result1
						var40 = true
					else
						({})[tostring(i)] = arg2_result1
					end
				end
			else
				for i_2, v_2 in ipairs(arg1_2) do
					if v_2.isSecondary then
						table.insert(tbl_8, arg2(i_2))
					else
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						table.insert({}, arg2(i_2))
					end
				end
				if 0 >= #tbl_8 then
					var40 = false
				else
					var40 = true
				end
			end
			local tbl_2 = {}
			if any_join_result1_upvr.paddings and any_join_result1_upvr.paddings.Top then
			else
			end
			tbl_2.PaddingTop = UDim.new(0, var7_result1_upvr.Tokens.Global.Space_75)
			if any_join_result1_upvr.paddings and any_join_result1_upvr.paddings.Bottom then
			else
			end
			tbl_2.PaddingBottom = UDim.new(0, var7_result1_upvr.Tokens.Global.Space_75)
			if any_join_result1_upvr.paddings and any_join_result1_upvr.paddings.Left then
			else
			end
			tbl_2.PaddingLeft = UDim.new(0, var7_result1_upvr.Tokens.Global.Space_75)
			if any_join_result1_upvr.paddings and any_join_result1_upvr.paddings.Right then
			else
			end
			tbl_2.PaddingRight = UDim.new(0, var7_result1_upvr.Tokens.Global.Space_75)
			local any_createElement_result1 = React_upvr.createElement("UIPadding", tbl_2)
			if UIBloxConfig_upvr.enableAppNavTransparentBackground then
				-- KONSTANTWARNING: GOTO [239] #172
			end
			if any_join_result1_upvr.rootBackgroundColor then
				-- KONSTANTWARNING: GOTO [239] #172
			end
			;({}).BackgroundColor3 = var7_result1_upvr.Theme.BackgroundDefault.Color
			if UIBloxConfig_upvr.enableAppNavTransparentBackground then
				-- KONSTANTWARNING: GOTO [264] #189
			end
			if any_join_result1_upvr.rootBackgroundColor then
				-- KONSTANTWARNING: GOTO [264] #189
			end
			-- KONSTANTERROR: [0] 1. Error Block 142 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [257] 185. Error Block 143 start (CF ANALYSIS FAILED)
			local var50
			var50 = var7_result1_upvr.Theme.BackgroundDefault.Transparency
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({}).BackgroundTransparency = var50
			if UIBloxConfig_upvr.enableAppNavTransparentBackground then
				var50 = nil
			else
				var50 = 0
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({}).BorderSizePixel = var50
			var50 = any_join_result1_upvr.clipsDescendants
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({}).ClipsDescendants = var50
			var50 = any_join_result1_upvr.size
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({}).Size = var50
			var50 = any_join_result1_upvr.position
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({}).Position = var50
			var50 = any_join_result1_upvr.visible
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({}).Visible = var50
			var50 = {}
			local tbl = {
				Position = any_useAnimatedBinding_result1_upvr:map(function(arg1_3) -- Line 144
					return UDim2.new(0, math.floor(arg1_3 + 0.5), 0, 0)
				end);
				BorderSizePixel = 0;
				Size = UDim2.new(1, 0, 1, 0);
			}
			if any_join_result1_upvr.backgroundColor then
				-- KONSTANTWARNING: GOTO [337] #239
			end
			tbl.BackgroundColor3 = var7_result1_upvr.Theme.NavigationBar.Color
			if any_join_result1_upvr.backgroundColor then
			else
			end
			tbl.BackgroundTransparency = var7_result1_upvr.Theme.NavigationBar.Transparency
			tbl.Selectable = false
			tbl.Visible = any_join_result1_upvr.visible
			tbl.ZIndex = any_join_result1_upvr.zIndex
			local tbl_4 = {}
			local tbl_6 = {
				UIListLayout = React_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical;
					SortOrder = Enum.SortOrder.LayoutOrder;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					VerticalAlignment = useEffect_upvr;
					Padding = UDim.new(0, var7_result1_upvr.Tokens.Global.Space_200);
				});
				UIPadding = any_createElement_result1;
			}
			local tbl_7 = {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
			}
			local var58 = 1
			tbl_7.LayoutOrder = var58
			if UIBloxConfig_upvr.fixAppNavTestIssues then
				var58 = Cryo_upvr.Dictionary.join
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var58 = var58({
					Layout = React_upvr.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical;
						HorizontalAlignment = Enum.HorizontalAlignment.Center;
					});
				}, {})
			else
				var58 = {}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var58[1] = Cryo_upvr.Dictionary.join({
					Layout = React_upvr.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical;
						HorizontalAlignment = Enum.HorizontalAlignment.Center;
					});
				}, {})
			end
			tbl_6.PrimaryItems = React_upvr.createElement("Frame", tbl_7, var58)
			if var40 and any_join_result1_upvr.alignment == NavigationRailAlignment_upvr.Centered then
				local var64 = 2
				;({
					BackgroundTransparency = 1;
					Size = UDim2.new(1, 0, 0, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
				}).LayoutOrder = var64
				if UIBloxConfig_upvr.fixAppNavTestIssues then
					var64 = Cryo_upvr.Dictionary.join
					var64 = var64({
						Layout = React_upvr.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Vertical;
							HorizontalAlignment = Enum.HorizontalAlignment.Center;
						});
					}, tbl_8)
				else
					var64 = {}
					var64[1] = Cryo_upvr.Dictionary.join({
						Layout = React_upvr.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Vertical;
							HorizontalAlignment = Enum.HorizontalAlignment.Center;
						});
					}, tbl_8)
				end
			else
			end
			tbl_6.CenteredSeondaryItems = nil
			local var69
			var69 = var69("Frame", {
				Position = UDim2.new(0, 0, 0, 0);
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
			}, tbl_6)
			tbl_4.MainFrame = var69
			if var40 and any_join_result1_upvr.alignment == NavigationRailAlignment_upvr.Justified then
				var69 = React_upvr.createElement
				local tbl_5 = {
					Position = UDim2.new(0, 0, 0, 0);
					Size = UDim2.new(1, 0, 1, 0);
				}
				local var71 = 1
				tbl_5.BackgroundTransparency = var71
				if UIBloxConfig_upvr.fixAppNavTestIssues then
					var71 = Cryo_upvr.Dictionary.join
					var71 = var71({
						Layout = React_upvr.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Vertical;
							VerticalAlignment = Enum.VerticalAlignment.Bottom;
							HorizontalAlignment = Enum.HorizontalAlignment.Center;
						});
						UIPadding = any_createElement_result1;
					}, tbl_8)
				else
					var71 = {}
					var71[1] = Cryo_upvr.Dictionary.join({
						Layout = React_upvr.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Vertical;
							VerticalAlignment = Enum.VerticalAlignment.Bottom;
							HorizontalAlignment = Enum.HorizontalAlignment.Center;
						});
						UIPadding = any_createElement_result1;
					}, tbl_8)
				end
				var69 = var69("Frame", tbl_5, var71)
			else
				var69 = nil
			end
			tbl_4.BottomAlignedSecondaryItems = var69
			var50.AnimatedNavigationRail = React_upvr.createElement("Frame", tbl, tbl_4)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			do
				return React_upvr.createElement("Frame", {}, var50)
			end
			-- KONSTANTERROR: [257] 185. Error Block 143 end (CF ANALYSIS FAILED)
		end, tbl_3);
		onSelectionChanged = React_upvr.useCallback(function(arg1_4) -- Line 278
			--[[ Upvalues[1]:
				[1]: any_join_result1_upvr (readonly)
			]]
			local var80 = any_join_result1_upvr.items[arg1_4[1]]
			if var80 ~= nil and var80.onActivated ~= nil then
				var80.onActivated()
			end
		end, {any_join_result1_upvr.items});
	})
end