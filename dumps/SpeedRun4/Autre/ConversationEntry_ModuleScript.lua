-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:19
-- Luau version 6, Types version 3
-- Time taken: 0.004106 seconds

local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Roact_upvr = require(CorePackages.Packages.Roact)
local ShareGame = Modules.Settings.Pages.ShareGame
local any_extend_result1 = Roact_upvr.PureComponent:extend("ConversationEntry")
local EventStream_upvr = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventStream
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local InviteStatus_upvr = require(ShareGame.Constants).InviteStatus
local Players_upvr = game:GetService("Players")
function any_extend_result1.init(arg1) -- Line 30
	--[[ Upvalues[4]:
		[1]: EventStream_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
		[3]: InviteStatus_upvr (readonly)
		[4]: Players_upvr (readonly)
	]]
	arg1.eventStream = EventStream_upvr.new(RbxAnalyticsService_upvr)
	function arg1.onInvite() -- Line 33
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: InviteStatus_upvr (copied, readonly)
			[3]: Players_upvr (copied, readonly)
		]]
		local inviteStatus = arg1.props.inviteStatus
		if inviteStatus and inviteStatus ~= InviteStatus_upvr.Failed then
		else
			local users_upvr = arg1.props.users
			if #users_upvr == 1 then
				local analytics_upvr = arg1.props.analytics
				arg1.props.inviteUser(users_upvr[1].id):andThen(function(arg1_2) -- Line 45
					--[[ Upvalues[3]:
						[1]: users_upvr (readonly)
						[2]: Players_upvr (copied, readonly)
						[3]: analytics_upvr (readonly)
					]]
					-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
					if not arg1_2 then
					else
						for _, v in pairs(users_upvr) do
							table.insert({}, v.id)
							local var27
						end
						analytics_upvr:onActivatedInviteSent(Players_upvr.LocalPlayer.UserId, arg1_2.conversationId, var27)
					end
				end, function() -- Line 60
				end)
			end
		end
	end
end
local Theme_upvr = require(Modules.Settings.Theme)
local ConversationThumbnail_upvr = require(ShareGame.Components.ConversationThumbnail)
local ConversationDetails_upvr = require(ShareGame.Components.ConversationDetails)
local InviteButton_upvr = require(ShareGame.Components.InviteButton)
function any_extend_result1.render(arg1) -- Line 66
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: Theme_upvr (readonly)
		[3]: ConversationThumbnail_upvr (readonly)
		[4]: ConversationDetails_upvr (readonly)
		[5]: InviteButton_upvr (readonly)
	]]
	local zIndex = arg1.props.zIndex
	return Roact_upvr.createElement("ImageButton", {
		Visible = arg1.props.visible;
		Selectable = true;
		BackgroundColor3 = Theme_upvr.color("PlayerRowFrame");
		BackgroundTransparency = Theme_upvr.transparency("PlayerRowFrame", 1);
		ImageTransparency = 0;
		ScaleType = Enum.ScaleType.Stretch;
		SliceCenter = Rect.new();
		Size = arg1.props.size;
		LayoutOrder = arg1.props.layoutOrder;
		ZIndex = zIndex;
		[Roact_upvr.Event.Activated] = arg1.onInvite;
	}, {
		UICorner = Roact_upvr.createElement("UICorner", {
			CornerRadius = Theme_upvr.MenuContainerCornerRadius;
		}) or nil;
		UIPadding = Roact_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 12);
			PaddingRight = UDim.new(0, 12);
			PaddingTop = UDim.new(0, 12);
			PaddingBottom = UDim.new(0, 12);
		});
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, 12);
		});
		Thumbnail = Roact_upvr.createElement(ConversationThumbnail_upvr, {
			users = arg1.props.users;
			size = UDim2.new(0, 32, 0, 32);
			layoutOrder = 0;
			zIndex = zIndex;
		});
		Details = Roact_upvr.createElement(ConversationDetails_upvr, {
			title = arg1.props.title;
			subtitle = arg1.props.subtitle;
			presence = arg1.props.presence;
			size = UDim2.new(1, -125, 1, 0);
			layoutOrder = 1;
			zIndex = zIndex;
		});
		InviteButton = Roact_upvr.createElement(InviteButton_upvr, {
			size = UDim2.new(0, 69, 1, 0);
			layoutOrder = 2;
			zIndex = zIndex;
			onInvite = arg1.onInvite;
			inviteStatus = arg1.props.inviteStatus;
		});
	})
end
return any_extend_result1