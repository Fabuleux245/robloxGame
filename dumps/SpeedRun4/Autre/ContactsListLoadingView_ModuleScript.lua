-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:30
-- Luau version 6, Types version 3
-- Time taken: 0.002097 seconds

local Parent = script.Parent.Parent.Parent.Parent
local dependencies = require(Parent.dependencies)
local t = dependencies.t
local Roact_upvr = dependencies.Roact
local UIBlox = dependencies.UIBlox
local any_extend_result1 = Roact_upvr.PureComponent:extend("ContactsListLoadingView")
any_extend_result1.validateProps = t.strictInterface({
	screenSize = t.Vector2;
})
local withLocalization_upvr = dependencies.withLocalization
local TextKeys_upvr = require(Parent.Common.TextKeys)
local withStyle_upvr = UIBlox.Style.withStyle
local FullPageModal_upvr = UIBlox.App.Dialog.Modal.FullPageModal
local ContactsGlimmer_upvr = require(Parent.ContactsList.Components.ContactsGlimmer)
function any_extend_result1.render(arg1) -- Line 29
	--[[ Upvalues[6]:
		[1]: withLocalization_upvr (readonly)
		[2]: TextKeys_upvr (readonly)
		[3]: withStyle_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: FullPageModal_upvr (readonly)
		[6]: ContactsGlimmer_upvr (readonly)
	]]
	local screenSize_upvr = arg1.props.screenSize
	return withLocalization_upvr({
		titleText = TextKeys_upvr.CONTACTS_LIST_TITLE;
	})(function(arg1_2) -- Line 34
		--[[ Upvalues[5]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: FullPageModal_upvr (copied, readonly)
			[4]: screenSize_upvr (readonly)
			[5]: ContactsGlimmer_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 35
			--[[ Upvalues[5]:
				[1]: Roact_upvr (copied, readonly)
				[2]: FullPageModal_upvr (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: screenSize_upvr (copied, readonly)
				[5]: ContactsGlimmer_upvr (copied, readonly)
			]]
			return Roact_upvr.createElement(FullPageModal_upvr, {
				title = arg1_2.titleText;
				screenSize = screenSize_upvr;
			}, {
				LoadingViewContainer = Roact_upvr.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.Y;
					Size = UDim2.new(1, 0, 1, 0);
					BackgroundTransparency = 1;
					LayoutOrder = 1;
				}, {
					UIListLayout = Roact_upvr.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical;
						SortOrder = Enum.SortOrder.LayoutOrder;
						Padding = UDim.new(0, 12);
						HorizontalAlignment = Enum.HorizontalAlignment.Left;
					});
					UIPadding = Roact_upvr.createElement("UIPadding", {
						PaddingTop = UDim.new(0, 24);
						PaddingBottom = UDim.new(0, 36);
					});
					Glimmer1 = Roact_upvr.createElement(ContactsGlimmer_upvr, {
						layoutOrder = 1;
					});
					Glimmer2 = Roact_upvr.createElement(ContactsGlimmer_upvr, {
						layoutOrder = 2;
					});
					Glimmer3 = Roact_upvr.createElement(ContactsGlimmer_upvr, {
						layoutOrder = 3;
					});
				});
			})
		end)
	end)
end
return any_extend_result1