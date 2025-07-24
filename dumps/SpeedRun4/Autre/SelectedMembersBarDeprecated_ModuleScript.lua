-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:16
-- Luau version 6, Types version 3
-- Time taken: 0.006470 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local t = require(Parent.t)
local Roact_upvr = require(Parent.Roact)
local FFlagAppChatSelectChatMembersSearchSpacing = AppChat.Flags.FFlagAppChatSelectChatMembersSearchSpacing
local var5_2_upvr = require(FFlagAppChatSelectChatMembersSearchSpacing)
local var7
if var5_2_upvr then
	FFlagAppChatSelectChatMembersSearchSpacing = 36
else
	FFlagAppChatSelectChatMembersSearchSpacing = 24
end
if var5_2_upvr then
	var7 = 15
else
	var7 = 20
end
local var8 = 60 - FFlagAppChatSelectChatMembersSearchSpacing
if var5_2_upvr then
else
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("SelectedMembersBar")
any_extend_result1.defaultProps = {
	barBackgroundColor3 = Color3.fromRGB(245, 245, 245);
	barBackgroundTransparency = 1;
	maxSize = 0;
	selectedUsers = {};
	LayoutOrder = nil;
	renderEntry = nil;
}
local any_interface_result1_upvr = t.interface({
	displayName = t.string;
	id = t.string;
	thumbnail = t.string;
	presenceImage = t.optional(t.union(t.table, t.string));
})
function any_extend_result1.populateBar(arg1, arg2) -- Line 46
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: any_interface_result1_upvr (readonly)
	]]
	local module = {
		layout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, 16);
		});
	}
	for i = 1, arg1.props.maxSize do
		local var16 = arg1.props.selectedUsers[i]
		if var16 then
			assert(any_interface_result1_upvr(var16))
			table.insert(module, Roact_upvr.createElement("Frame", {
				Size = UDim2.new(0, 48, 0, 48);
				BackgroundTransparency = 1;
				LayoutOrder = i;
			}, {
				avatarContainer = arg1.props.renderEntry(var16);
				removeImageContainer = Roact_upvr.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0);
					BackgroundTransparency = 1;
				}, {
					layout = Roact_upvr.createElement("UIListLayout", {
						HorizontalAlignment = Enum.HorizontalAlignment.Right;
						VerticalAlignment = Enum.VerticalAlignment.Top;
					});
					removeImage = Roact_upvr.createElement("ImageLabel", {
						BackgroundTransparency = 1;
						BorderSizePixel = 0;
						Size = UDim2.new(0, 16, 0, 16);
						Image = "rbxasset://textures/ui/LuaChat/icons/ic-remove.png";
					});
				});
			}))
		else
			table.insert(module, Roact_upvr.createElement("ImageLabel", {
				Size = UDim2.new(0, 48, 0, 48);
				BackgroundTransparency = 1;
				Image = "rbxasset://textures/ui/LuaChatV2/ic-friend-empty-border.png";
				ImageColor3 = arg2.Theme.IconDefault.Color;
				ImageTransparency = arg2.Theme.IconDefault.Transparency;
				LayoutOrder = i;
			}))
		end
	end
	return module
end
local UIBlox_upvr = require(Parent.UIBlox)
local var25_upvr = var8 / 2
local var26_upvr = var7 + 48 + 20
local FriendCountLabelDeprecated_upvr = require(script.Parent.FriendCountLabelDeprecated)
function any_extend_result1.render(arg1) -- Line 107
	--[[ Upvalues[6]:
		[1]: UIBlox_upvr (readonly)
		[2]: var25_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: var26_upvr (readonly)
		[5]: var5_2_upvr (readonly)
		[6]: FriendCountLabelDeprecated_upvr (readonly)
	]]
	return UIBlox_upvr.Style.withStyle(function(arg1_2) -- Line 108
		--[[ Upvalues[6]:
			[1]: var25_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: var26_upvr (copied, readonly)
			[5]: var5_2_upvr (copied, readonly)
			[6]: FriendCountLabelDeprecated_upvr (copied, readonly)
		]]
		local module_2 = {
			layout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
		}
		local tbl = {}
		local any_createElement_result1 = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Top;
		})
		tbl.layout = any_createElement_result1
		if var5_2_upvr then
			any_createElement_result1 = nil
		else
			any_createElement_result1 = Roact_upvr.createElement
			any_createElement_result1 = any_createElement_result1("UIPadding", {
				PaddingTop = UDim.new(0, 10);
			})
		end
		tbl.padding = any_createElement_result1
		tbl.friendCountLabel = Roact_upvr.createElement(FriendCountLabelDeprecated_upvr, {
			currentSize = #arg1.props.selectedUsers;
			maxSize = arg1.props.maxSize;
			LayoutOrder = 1;
		})
		tbl.userScrollingBar = Roact_upvr.createElement("ScrollingFrame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, -60, 0, var26_upvr);
			ScrollBarThickness = 0;
			ScrollingDirection = Enum.ScrollingDirection.X;
			ElasticBehavior = Enum.ElasticBehavior.WhenScrollable;
			CanvasSize = UDim2.new(0, var25_upvr + 64 * arg1.props.maxSize - 16, 1, 0);
			LayoutOrder = 2;
		}, arg1:populateBar(arg1_2))
		module_2.barContainer = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		}, tbl)
		return Roact_upvr.createElement("Frame", {
			BackgroundColor3 = arg1.props.barBackgroundColor3;
			BackgroundTransparency = arg1.props.barBackgroundTransparency;
			BorderSizePixel = 0;
			Size = UDim2.new(1, 0, 0, var26_upvr);
			LayoutOrder = arg1.props.LayoutOrder;
		}, module_2)
	end)
end
return any_extend_result1