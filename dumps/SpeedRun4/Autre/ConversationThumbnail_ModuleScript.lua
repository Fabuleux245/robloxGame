-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:20
-- Luau version 6, Types version 3
-- Time taken: 0.005468 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Constants_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Settings.Pages.ShareGame.Constants)
local tbl_2_upvr = {{{
	Size = UDim2.new(1, 0, 1, 0);
	Position = UDim2.new(0, 0, 0, 0);
	FrameSize = UDim2.new(1, 0, 1, 0);
	FramePosition = UDim2.new(0, 0, 0, 0);
}}, {{
	Size = UDim2.new(2, 0, 1, 0);
	Position = UDim2.new(-0.5, 0, 0, 0);
	FrameSize = UDim2.new(0.5, -1, 1, 0);
	FramePosition = UDim2.new(0, 0, 0, 0);
	Border = {
		BorderPosition = UDim2.new(0.5, -1, 0, 0);
		BorderSize = UDim2.new(0, 1, 1, 0);
	};
}, {
	Size = UDim2.new(2, 0, 1, 0);
	Position = UDim2.new(-0.5, 0, 0, 0);
	FrameSize = UDim2.new(0.5, -1, 1, 0);
	FramePosition = UDim2.new(0.5, 1, 0, 0);
}}, {{
	Size = UDim2.new(2, 0, 1, 0);
	Position = UDim2.new(-0.5, 0, 0, 0);
	FrameSize = UDim2.new(0.5, -1, 1, 0);
	FramePosition = UDim2.new(0, 0, 0, 0);
	Border = {
		BorderPosition = UDim2.new(0.5, -1, 0, 0);
		BorderSize = UDim2.new(0, 1, 1, 0);
	};
}, {
	Size = UDim2.new(1, 0, 1, 0);
	Position = UDim2.new(0, 0, 0, 0);
	FrameSize = UDim2.new(0.5, -1, 0.5, -1);
	FramePosition = UDim2.new(0.5, 1, 0, 0);
	Border = {
		BorderPosition = UDim2.new(0.5, 0, 0.5, -1);
		BorderSize = UDim2.new(0.5, 0, 0, 1);
	};
}, {
	Size = UDim2.new(1, 0, 1, 0);
	Position = UDim2.new(0, 0, 0, 0);
	FrameSize = UDim2.new(0.5, -1, 0.5, -1);
	FramePosition = UDim2.new(0.5, 1, 0.5, 1);
}}, {{
	Size = UDim2.new(1, 0, 1, 0);
	Position = UDim2.new(0, 0, 0, 0);
	FrameSize = UDim2.new(0.5, -1, 0.5, -1);
	FramePosition = UDim2.new(0, 0, 0, 0);
	Border = {
		BorderPosition = UDim2.new(0, 0, 0.5, -1);
		BorderSize = UDim2.new(1, 0, 0, 1);
	};
}, {
	Size = UDim2.new(1, 0, 1, 0);
	Position = UDim2.new(0, 0, 0, 0);
	FrameSize = UDim2.new(0.5, -1, 0.5, -1);
	FramePosition = UDim2.new(0.5, 1, 0, 0);
}, {
	Size = UDim2.new(1, 0, 1, 0);
	Position = UDim2.new(0, 0, 0, 0);
	FrameSize = UDim2.new(0.5, -1, 0.5, -1);
	FramePosition = UDim2.new(0, 0, 0.5, 1);
	Border = {
		BorderPosition = UDim2.new(0.5, -1, 0, 0);
		BorderSize = UDim2.new(0, 1, 1, 0);
	};
}, {
	Size = UDim2.new(1, 0, 1, 0);
	Position = UDim2.new(0, 0, 0, 0);
	FrameSize = UDim2.new(0.5, -1, 0.5, -1);
	FramePosition = UDim2.new(0.5, 1, 0.5, 1);
}}}
local any_extend_result1 = Roact_upvr.PureComponent:extend("ConversationThumbnail")
local Constants_upvr_2 = require(CorePackages.Workspace.Packages.UserLib).Utils.Constants
local InviteAvatarThumbnailSize_upvr = Constants_upvr.InviteAvatarThumbnailSize
local getRbxthumbWithTypeSizeAndOptions_upvr = require(CorePackages.Workspace.Packages.UserLib).Utils.getRbxthumbWithTypeSizeAndOptions
local GRAY3_upvr = Constants_upvr.Color.GRAY3
function any_extend_result1.render(arg1) -- Line 113
	--[[ Upvalues[7]:
		[1]: tbl_2_upvr (readonly)
		[2]: Constants_upvr_2 (readonly)
		[3]: InviteAvatarThumbnailSize_upvr (readonly)
		[4]: getRbxthumbWithTypeSizeAndOptions_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: Roact_upvr (readonly)
		[7]: GRAY3_upvr (readonly)
	]]
	local zIndex = arg1.props.zIndex
	local users = arg1.props.users
	local tbl = {}
	for i, v in ipairs(users) do
		local var41 = tbl_2_upvr[#users][i]
		local var42
		if v then
			var42 = getRbxthumbWithTypeSizeAndOptions_upvr(v.id, Constants_upvr.InviteAvatarRbxthumbType, Constants_upvr_2.RbxThumbnailSizeToNumberSize[InviteAvatarThumbnailSize_upvr])
		end
		if not var42 then
			var42 = "rbxasset://textures/ui/LuaApp/graphic/ph-avatar-portrait.png"
		end
		tbl["AvatarHolder-"..i] = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			ClipsDescendants = true;
			Size = var41.FrameSize;
			Position = var41.FramePosition;
			ZIndex = zIndex;
		}, {
			Avatar = Roact_upvr.createElement("ImageLabel", {
				BackgroundTransparency = 1;
				Size = var41.Size;
				Position = var41.Position;
				Image = var42;
				ZIndex = zIndex;
			});
		})
		if var41.Border then
			tbl["Border-"..i] = Roact_upvr.createElement("Frame", {
				Size = var41.Border.BorderSize;
				Position = var41.Border.BorderPosition;
				BorderSizePixel = 0;
				BackgroundColor3 = GRAY3_upvr;
				ZIndex = zIndex;
			})
		end
	end
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = arg1.props.size;
		LayoutOrder = arg1.props.layoutOrder;
		ZIndex = zIndex;
	}, {
		ContentsContainer = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 0;
			Size = UDim2.new(1, -1, 1, -1);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.new(0.5, 0, 0.5, 0);
			BackgroundColor3 = Constants_upvr.Color.WHITE;
			BorderColor3 = GRAY3_upvr;
			BorderSizePixel = 1;
			ZIndex = zIndex;
		}, tbl);
	})
end
return any_extend_result1