-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:13
-- Luau version 6, Types version 3
-- Time taken: 0.003819 seconds

return {
	getBaseMenuDefaultTokens = function(arg1) -- Line 27
		local var5
		if arg1.Tokens == nil then
			var5 = false
		else
			var5 = true
		end
		assert(var5, "Design token support is not enabled!")
		local module_2 = {}
		var5 = arg1.Tokens.Component.MenuCell.Base.Container.Height
		module_2.elementHeight = var5
		var5 = arg1.Tokens.Component.BaseMenu.BorderRadius
		module_2.borderCornerRadius = var5
		var5 = {}
		var5.Color = arg1.Tokens.Component.BaseMenu.BackgroundColor.Color3
		var5.Transparency = arg1.Tokens.Component.BaseMenu.BackgroundColor.Transparency
		module_2.background = var5
		return module_2
	end;
	getCellDefaultTokens = function(arg1) -- Line 7
		local var2
		if arg1.Tokens == nil then
			var2 = false
		else
			var2 = true
		end
		assert(var2, "Design token support is not enabled!")
		local module = {}
		var2 = arg1.Tokens.Component.MenuCell.Base.IconFrame.Size
		module.iconSize = var2
		var2 = arg1.Tokens.Component.MenuCell.Base.CheckFrame.Size
		module.selectedIconSize = var2
		var2 = arg1.Tokens.Component.MenuCell.Base.Container.Spacing.Leading
		module.iconPaddingLeft = var2
		var2 = {}
		var2.left = arg1.Tokens.Component.MenuCell.Base.TextFrame.Spacing.Leading
		var2.right = arg1.Tokens.Component.MenuCell.Base.TextFrame.Spacing.Trailing
		module.textPadding = var2
		var2 = {}
		var2.Font = arg1.Tokens.Component.MenuCell.Base.Text.Typography.Font
		var2.RelativeSize = arg1.Tokens.Component.MenuCell.Base.Text.Typography.FontSize / arg1.Font.BaseSize
		var2.RelativeMinSize = arg1.Tokens.Component.MenuCell.Base.Text.Typography.FontSize / arg1.Font.BaseSize
		module.fontStyle = var2
		var2 = arg1.Tokens.Component.MenuCell.Divider.Container.BorderWidth
		module.dividerSize = var2
		var2 = arg1.Tokens.Component.MenuCell.Base.Container.Spacing.Trailing
		module.selectedIconPaddingRight = var2
		return module
	end;
	getDropdownMenuCellDefaultTokens = function(arg1) -- Line 39
		return {
			iconSize = arg1.Tokens.Global.Size_450;
			containerPadding = {
				left = arg1.Tokens.Global.Space_200;
				right = arg1.Tokens.Global.Space_300;
			};
			textFont = arg1.Tokens.Semantic.Typography.Subheader;
			iconTextSpacing = arg1.Tokens.Global.Space_200;
			border = {
				cornerRadius = arg1.Tokens.Semantic.Radius.Medium;
				size = arg1.Tokens.Global.Stroke_100;
			};
		}
	end;
	getDropdownMenuDefaultTokens = function(arg1) -- Line 55
		return {
			height = UDim.new(0, arg1.Tokens.Global.Size_600);
			menuStateColors = {
				buttonDefault = {
					Color = arg1.Tokens.Semantic.Color.Action.Secondary.Border.Color3;
					Transparency = arg1.Tokens.Semantic.Color.Action.Secondary.Border.Transparency;
				};
				contentDefault = {
					Color = arg1.Tokens.Semantic.Color.Text.Default.Color3;
					Transparency = arg1.Tokens.Semantic.Color.Text.Default.Transparency;
				};
				alert = {
					Color = arg1.Tokens.Semantic.Color.Action.Alert.Border.Color3;
					Transparency = arg1.Tokens.Semantic.Color.Action.Alert.Border.Transparency;
				};
			};
		}
	end;
}