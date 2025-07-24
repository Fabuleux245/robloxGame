-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:37
-- Luau version 6, Types version 3
-- Time taken: 0.002694 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Roact_upvr = require(Parent.Roact)
local withStyle_upvr = require(Parent.UIBlox).Style.withStyle
local any_extend_result1 = Roact_upvr.PureComponent:extend("ChatLoadingIndicator")
any_extend_result1.defaultProps = {
	cellHeight = 64;
	avatarCellWidth = 60;
}
local LoadingAvatar_upvr = require(script.Parent.LoadingAvatar)
local TextPlaceholders_upvr = require(script.Parent.TextPlaceholders)
function any_extend_result1.init(arg1) -- Line 19
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: LoadingAvatar_upvr (readonly)
		[4]: TextPlaceholders_upvr (readonly)
	]]
	function arg1.singleConversationPlaceholder(arg1_2, arg2) -- Line 20
		--[[ Upvalues[5]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: LoadingAvatar_upvr (copied, readonly)
			[5]: TextPlaceholders_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 21
			--[[ Upvalues[6]:
				[1]: Roact_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: arg1 (copied, readonly)
				[4]: LoadingAvatar_upvr (copied, readonly)
				[5]: TextPlaceholders_upvr (copied, readonly)
				[6]: arg2 (readonly)
			]]
			local module_3 = {}
			module_3.LayoutOrder = arg1_2
			module_3.Size = UDim2.new(1, 0, 0, arg1.props.cellHeight)
			module_3.BackgroundTransparency = arg1_3.Tokens.Global.Color.None.Transparency
			module_3.BackgroundColor3 = arg1_3.Theme.BackgroundDefault.Color
			module_3.BorderSizePixel = 0
			local module = {
				UIList = Roact_upvr.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Vertical;
				});
				Padding = Roact_upvr.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 0);
					PaddingTop = UDim.new(0, 4);
				});
				Content = Roact_upvr.createElement("Frame", {
					LayoutOrder = 1;
					Size = UDim2.new(1, 0, 1, -1);
					BackgroundTransparency = 1;
				}, {
					UIList = Roact_upvr.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder;
						FillDirection = Enum.FillDirection.Horizontal;
					});
					avatar = Roact_upvr.createElement(LoadingAvatar_upvr, {
						avatarImage = arg1.props.avatarImage;
						cellWidth = arg1.props.avatarCellWidth;
						cellHeight = arg1.props.cellHeight;
						LayoutOrder = 1;
					});
					textPlaceholders = Roact_upvr.createElement(TextPlaceholders_upvr, {
						avatarCellWidth = arg1.props.avatarCellWidth;
						LayoutOrder = 2;
					});
				});
			}
			local var19 = not arg2
			if var19 then
				var19 = Roact_upvr.createElement
				var19 = var19("Frame", {
					LayoutOrder = 2;
					Size = UDim2.new(1, 0, 0, 1);
					BackgroundTransparency = 1;
					ZIndex = 2;
					ClipsDescendants = true;
				}, {
					Padding = Roact_upvr.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, arg1.props.avatarCellWidth);
					});
					bottomLine = Roact_upvr.createElement("Frame", {
						BackgroundColor3 = arg1_3.Theme.Divider.Color;
						Transparency = arg1_3.Theme.Divider.Transparency;
						Size = UDim2.new(1, 0, 1, 0);
						BorderSizePixel = 0;
					});
				})
			end
			module.bottomLineContainer = var19
			return Roact_upvr.createElement("Frame", module_3, module)
		end)
	end
	function arg1.allConversationPlaceholdersList() -- Line 78
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local module_2 = {
			UIList = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
			});
		}
		table.insert(module_2, arg1.singleConversationPlaceholder(1, false))
		table.insert(module_2, arg1.singleConversationPlaceholder(2, false))
		table.insert(module_2, arg1.singleConversationPlaceholder(3, true))
		return module_2
	end
end
function any_extend_result1.render(arg1) -- Line 92
	--[[ Upvalues[2]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_4) -- Line 93
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundColor3 = arg1_4.Theme.BackgroundDefault.Color;
			BackgroundTransparency = arg1_4.Tokens.Global.Color.None.Transparency;
			BorderSizePixel = 0;
		}, arg1.allConversationPlaceholdersList())
	end)
end
return any_extend_result1