-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:24
-- Luau version 6, Types version 3
-- Time taken: 0.003297 seconds

local CorePackages = game:GetService("CorePackages")
local PlayerList = require(CorePackages.Workspace.Packages.PlayerList)
local Constants_upvr = require(script.Parent.Parent.TopBar.Constants)
if PlayerList.Flags.FFlagUseNewPlayerList then
	local CreateLayoutValues_upvr = PlayerList.Common.CreateLayoutValues
	return function(arg1) -- Line 18
		--[[ Upvalues[2]:
			[1]: CreateLayoutValues_upvr (readonly)
			[2]: Constants_upvr (readonly)
		]]
		return CreateLayoutValues_upvr(arg1, Constants_upvr)
	end
end
local Enabled_upvr = require(script.Parent.Parent.Chrome.Enabled)
local Images_upvr = require(CorePackages.Packages.UIBlox).App.ImageSet.Images
function CreateLayoutValues_upvr(arg1) -- Line 22
	--[[ Upvalues[3]:
		[1]: Enabled_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Images_upvr (readonly)
	]]
	local module = {}
	module.IsTenFoot = arg1
	if arg1 then
		module.ContainerPosition = UDim2.new(0.5, 0, 0.5, 0)
		module.ContainerSize = UDim2.new(0, 350, 0, 720)
		module.AnchorPoint = Vector2.new(0.5, 0.5)
		module.PlayerDropDownSizeX = 0
		module.PlayerScrollListPosition = UDim2.new(0, 0, 0, 105)
		module.PlayerScrollListSize = UDim2.new(1, 19, 1, 0)
		module.PlayerScrollListInnerFramePosition = UDim2.new(0, 0, 0, 0)
		module.PlayerScrollListInnerFrameSize = UDim2.new(1, 0, 1, 0)
		module.EntrySizeX = 350
		module.PlayerEntrySizeY = 100
		module.EntryPadding = 5
		module.TeamEntrySizeY = 32
		module.StatEntrySizeX = 250
		module.EntryXOffset = -20
		module.BackgroundStyle = {
			Default = {
				Color = Color3.fromRGB(60, 60, 60);
				Transparency = 0.25;
			};
			Hovered = {
				Color = Color3.fromRGB(50, 181, 255);
				Transparency = 0.25;
			};
			HoveredTitle = {
				Color = Color3.fromRGB(50, 181, 255);
				Transparency = 0;
			};
			Title = {
				Color = Color3.fromRGB(25, 25, 25);
				Transparency = 0;
			};
			Selected = nil;
		}
		module.TeamEntryBackgroundTransparency = 0.25
		module.DefaultTextStyle = {
			Color = Color3.fromRGB(255, 255, 243);
			Transparency = 0;
			StrokeTransparency = 0.75;
			StrokeColor = Color3.fromRGB(34, 34, 34);
		}
		module.HoveredTextStyle = {
			Color = Color3.fromRGB(19, 19, 19);
			Transparency = 0;
			StrokeTransparency = 0.75;
			StrokeColor = Color3.fromRGB(34, 34, 34);
		}
		module.PlayerIconSize = UDim2.new(0, 64, 0, 64)
		module.InitalPlayerEntryPadding = 18
		module.PlayerEntryPadding = 8
		module.PlayerEntryNamePadding = 8
		module.TeamEntryTextPadding = 5
		module.StatTextPadding = 0
		module.PlayerNameSize = UDim2.new(1, -88, 1, 0)
		module.PlayerNameTextSize = 32
		module.StatTextSize = 32
		module.ScrollImageColor = Color3.fromRGB(31, 31, 31)
		module.ScrollImageTransparency = 0.5
	else
		module.ContainerPadding = 4
		module.ContainerPosition = UDim2.new(1, -4, 0, 4)
		module.ContainerSize = UDim2.new(0, 0, 0.5, 0)
		module.ExtraContainerPadding = 16
		module.AnchorPoint = Vector2.new(1, 0)
		module.PlayerDropDownSizeX = 300
		module.PlayerDropDownOffset = 4
		module.PlayerScrollListPosition = UDim2.new(0, 0, 0, 0)
		module.PlayerScrollListSize = UDim2.new(1, -1, 1, 0)
		module.EntryBaseSizeX = 150
		module.EntrySizeIncreasePerStat = 11
		module.PlayerEntrySizeY = 40
		module.EntryPadding = 0
		module.TeamEntrySizeY = 24
		module.StatEntrySizeX = 66
		module.TitleBarSizeY = 20
		module.EntryXOffset = 0
		module.TeamEntryBackgroundTransparency = 0.5
		module.IconButtonBackgroundTransparency = 0.3
		module.DropDownHeaderBackgroundTransparency = 0.1
		module.OverrideBackgroundTransparency = 0.3
		module.FadedBackgroundTransparency = 0.65
		module.FadedBackgroundScaleDelta = 0.05
		module.PlayerIconSize = UDim2.new(0, 16, 0, 16)
		module.InitalPlayerEntryPadding = 12
		module.PlayerEntryPadding = 12
		module.PlayerEntryNamePadding = 4
		module.TeamEntryTextPadding = 15
		module.StatTextPadding = 4
		module.PlayerNameSize = UDim2.new(1, -34, 1, 0)
		module.PlayerNameTextSize = 14
		module.StatTextSize = 14
		module.ScrollImageColor = Color3.fromRGB(216, 216, 216)
		module.ScrollImageTransparency = 0.5
		module.ScrollBarOffset = 4
		module.ScrollBarSize = 8
	end
	if Enabled_upvr() then
		module.TopBarOffset = Constants_upvr.TopBarHeight
	else
		module.TopBarOffset = 36
	end
	module.PlayerDropDownSizeXMobile = 327
	module.ScrollBarSizeMobile = 2
	module.PlayerNameSizeXMobile = 194
	module.PlayerIconSizeMobile = UDim2.fromOffset(20, 20)
	module.PlayerNameTextSizeMobile = 16
	module.StatTextSizeMobile = 16
	module.PlayerNamePaddingXMobile = 14
	module.TeamEntryTextPadding = 15
	module.TeamEntryTextPaddingMobile = 14
	module.RowHoverColor = Color3.fromRGB(0, 0, 0)
	module.RowDefaultColor = Color3.fromRGB(84, 84, 84)
	module.MaxLeaderstats = 4
	module.MaxLeaderstatsSmallScreen = 1
	module.PlayerEntryFont = Enum.Font.SourceSans
	module.TitlePlayerEntryFont = Enum.Font.SourceSansBold
	module.TeamEntryFont = Enum.Font.SourceSans
	module.StatFont = Enum.Font.SourceSans
	module.TitleStatFont = Enum.Font.SourceSansBold
	module.TeamStatFont = Enum.Font.SourceSansBold
	module.StatNameFont = Enum.Font.SourceSans
	module.PlayerIconBackgroundSize = UDim2.new(0, 66, 0, 66)
	module.PlayerBackgroundImage = "rbxasset://textures/ui/PlayerList/CharacterImageBackground.png"
	module.RobloxIconImage = "rbxasset://textures/ui/Shell/Icons/RobloxIcon24.png"
	module.IconSelectedColor = Color3.fromRGB(19, 19, 19)
	module.IconUnSelectedColor = Color3.fromRGB(255, 255, 255)
	module.SelectedEntryColor = Color3.fromRGB(0, 255, 255)
	module.ShadowImage = "rbxasset://textures/ui/PlayerList/TileShadowMissingTop.png"
	module.ShadowSize = 5
	module.ShadowSliceRect = Rect.new(6, 6, 9, 9)
	module.DefaultThumbnail = "rbxasset://textures/ui/Shell/Icons/DefaultProfileIcon.png"
	module.BlockedIcon = Images_upvr["icons/status/unavailable_small"]
	module.FriendIcons = {
		[Enum.FriendStatus.Friend] = Images_upvr["icons/status/player/friend"];
		[Enum.FriendStatus.FriendRequestReceived] = Images_upvr["icons/status/player/pending"];
	}
	module.FollowingIcon = Images_upvr["icons/status/player/following"]
	module.PlaceOwnerIcon = Images_upvr["icons/status/player/developer"]
	module.MembershipIcons = {
		[Enum.MembershipType.Premium] = Images_upvr["icons/status/premium_small"];
	}
	module.CustomPlayerIcons = {-- : First try: K:0: attempt to index nil with 't'

	module.NeutralTeamColor = BrickColor.new("White")
	module.NeutralTeamName = "Neutral"
	module.DropDownButtonSizeY = 56
	module.DropDownButtonPadding = 0
	module.DropDownPadding = 10
	module.DropDownRightOptionSize = 55
	module.DropDownIconSize = 36
	module.DropDownHeaderSizeY = 80
	module.DropDownHeaderBackgroundSize = 65
	module.DropDownScreenSidePadding = 4
	setmetatable(module, {
		__index = function(arg1_2, arg2) -- Line 224, Named "__index"
			error(string.format("%q is not a valid member of LayoutValues", tostring(arg2)), 2)
		end;
	})
	return module
end
return CreateLayoutValues_upvr