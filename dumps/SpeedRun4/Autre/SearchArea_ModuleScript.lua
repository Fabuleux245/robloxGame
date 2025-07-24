-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:29
-- Luau version 6, Types version 3
-- Time taken: 0.005433 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Roact_upvr = require(CorePackages.Packages.Roact)
local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local Theme = require(RobloxGui.Modules.Settings.Theme)
local ShareGameIcons = require(RobloxGui.Modules.Settings.Pages.ShareGame.Spritesheets.ShareGameIcons)
local any_extend_result1 = Roact_upvr.PureComponent:extend("SearchArea")
local var8_upvr = require(ShareGame.getTranslator)()
function any_extend_result1.init(arg1) -- Line 38
	--[[ Upvalues[1]:
		[1]: var8_upvr (readonly)
	]]
	arg1.state = {
		cancelText = var8_upvr:FormatByKey("Feature.SettingsHub.Action.CancelSearch");
	}
	arg1.searchField = nil
end
local Text_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Text
local any_font_result1_upvr = Theme.font(Enum.Font.SourceSans)
local any_textSize_result1_upvr = Theme.textSize(20)
local IconButton_upvr = require(ShareGame.Components.IconButton)
local any_GetImagePath_result1_upvr = ShareGameIcons:GetImagePath()
local any_GetFrame_result1_upvr = ShareGameIcons:GetFrame("search_large")
local SearchBox_upvr = require(ShareGame.Components.SearchBox)
local GetFFlagShareGameSearchBoxFocusAnalytics_upvr = require(RobloxGui.Modules.Settings.Flags.GetFFlagShareGameSearchBoxFocusAnalytics)
local GRAY3_upvr = require(ShareGame.Constants).Color.GRAY3
function any_extend_result1.render(arg1) -- Line 45
	--[[ Upvalues[10]:
		[1]: Text_upvr (readonly)
		[2]: any_font_result1_upvr (readonly)
		[3]: any_textSize_result1_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: IconButton_upvr (readonly)
		[6]: any_GetImagePath_result1_upvr (readonly)
		[7]: any_GetFrame_result1_upvr (readonly)
		[8]: SearchBox_upvr (readonly)
		[9]: GetFFlagShareGameSearchBoxFocusAnalytics_upvr (readonly)
		[10]: GRAY3_upvr (readonly)
	]]
	local anchorPoint = arg1.props.anchorPoint
	local position = arg1.props.position
	local zIndex = arg1.props.zIndex
	local searchAreaActive_2 = arg1.props.searchAreaActive
	local cancelText_upvr = arg1.state.cancelText
	local any_GetTextWidth_result1 = Text_upvr.GetTextWidth(cancelText_upvr, any_font_result1_upvr, any_textSize_result1_upvr)
	local setSearchText = arg1.props.setSearchText
	if arg1.props.fullWidthSearchBar then
		local module = {
			SearchButton = Roact_upvr.createElement(IconButton_upvr, {
				visible = not searchAreaActive_2;
				anchorPoint = anchorPoint;
				position = position;
				size = UDim2.new(0, 44, 0, 44);
				zIndex = zIndex;
				iconHorizontalAlignment = Enum.HorizontalAlignment.Right;
				iconSpritePath = any_GetImagePath_result1_upvr;
				iconSpriteFrame = any_GetFrame_result1_upvr;
				onClick = function(arg1_2) -- Line 82, Named "onClick"
					--[[ Upvalues[1]:
						[1]: arg1 (readonly)
					]]
					arg1.props.setSearchAreaActive(true)
				end;
			});
		}
		local tbl = {
			anchorPoint = Vector2.new(0, 0.5);
			position = UDim2.new(0, 0, 0.5, 0);
			size = UDim2.new(1, -(arg1.props.searchBoxMargin + any_GetTextWidth_result1), 0, 28);
			zIndex = zIndex;
			visible = searchAreaActive_2;
			modalFocused = searchAreaActive_2;
			onTextChanged = setSearchText;
			onTextBoxFocused = function() -- Line 96, Named "onTextBoxFocused"
				--[[ Upvalues[2]:
					[1]: GetFFlagShareGameSearchBoxFocusAnalytics_upvr (copied, readonly)
					[2]: arg1 (readonly)
				]]
				if GetFFlagShareGameSearchBoxFocusAnalytics_upvr() and arg1.props.analytics then
					arg1.props.analytics:onSearchFocused()
				end
			end;
			onTextBoxFocusLost = function(arg1_3) -- Line 101, Named "onTextBoxFocusLost"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1_3 == "" then
					arg1.props.setSearchAreaActive(false)
				end
			end;
		}
		local function searchFieldRef(arg1_4) -- Line 106
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.searchField = arg1_4
		end
		tbl.searchFieldRef = searchFieldRef
		module.SearchBox = Roact_upvr.createElement(SearchBox_upvr, tbl)
		module.Cancel = Roact_upvr.createElement("TextButton", {
			BackgroundTransparency = 1;
			AnchorPoint = Vector2.new(1, 0.5);
			Position = UDim2.new(1, 0, 0.5, 0);
			Size = UDim2.new(0, any_GetTextWidth_result1, 1, 0);
			TextSize = any_textSize_result1_upvr;
			TextColor3 = GRAY3_upvr;
			Font = any_font_result1_upvr;
			ZIndex = zIndex;
			Visible = searchAreaActive_2;
			[Roact_upvr.Ref] = function(arg1_5) -- Line 121
				--[[ Upvalues[2]:
					[1]: cancelText_upvr (readonly)
					[2]: arg1 (readonly)
				]]
				if arg1_5 then
					arg1_5.Text = cancelText_upvr
					if not arg1.textConnection then
						arg1.textConnection = arg1_5:GetPropertyChangedSignal("Text"):connect(function() -- Line 131
							--[[ Upvalues[2]:
								[1]: arg1 (copied, readonly)
								[2]: arg1_5 (readonly)
							]]
							arg1:setState({
								cancelText = arg1_5.Text;
							})
						end)
					end
				end
			end;
			[Roact_upvr.Event.Activated] = function(arg1_6) -- Line 139
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.props.setSearchAreaActive(false)
			end;
		})
		return Roact_upvr.createElement("Frame", {
			AnchorPoint = anchorPoint;
			Position = position;
			Size = arg1.props.size;
			BackgroundTransparency = 1;
			ZIndex = zIndex;
		}, module)
	end
	return Roact_upvr.createElement(SearchBox_upvr, {
		anchorPoint = Vector2.new(1, 0.5);
		position = UDim2.new(1, 0, 0.5, 0);
		size = UDim2.new(0, 177, 0, 28);
		zIndex = zIndex;
		onTextChanged = setSearchText;
		searchFieldRef = function(arg1_7) -- Line 155, Named "searchFieldRef"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.searchField = arg1_7
		end;
	})
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 162
	local fullWidthSearchBar_upvr = arg1.props.fullWidthSearchBar
	if arg1.searchField then
		if not arg1.props.isPageOpen and arg2.isPageOpen then
			spawn(function() -- Line 170
				--[[ Upvalues[2]:
					[1]: fullWidthSearchBar_upvr (readonly)
					[2]: arg1 (readonly)
				]]
				if fullWidthSearchBar_upvr then
					arg1.props.setSearchAreaActive(false)
				else
					arg1.searchField.Text = ""
				end
			end)
		end
		if fullWidthSearchBar_upvr then
			local searchAreaActive_3 = arg1.props.searchAreaActive
			if searchAreaActive_3 and not arg2.searchAreaActive then
				arg1.searchField:CaptureFocus()
				return
			end
			if not searchAreaActive_3 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if arg2.searchAreaActive then
					arg1.searchField.Text = ""
				end
			end
		end
	end
end
local SetSearchAreaActive_upvr = require(ShareGame.Actions.SetSearchAreaActive)
local SetSearchText_upvr = require(ShareGame.Actions.SetSearchText)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 194
	return {
		isPageOpen = arg1.Page.IsOpen;
		searchAreaActive = arg1.ConversationsSearch.SearchAreaActive;
	}
end, function(arg1) -- Line 199
	--[[ Upvalues[2]:
		[1]: SetSearchAreaActive_upvr (readonly)
		[2]: SetSearchText_upvr (readonly)
	]]
	return {
		setSearchAreaActive = function(arg1_8) -- Line 201, Named "setSearchAreaActive"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetSearchAreaActive_upvr (copied, readonly)
			]]
			arg1(SetSearchAreaActive_upvr(arg1_8))
		end;
		setSearchText = function(arg1_9) -- Line 204, Named "setSearchText"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetSearchText_upvr (copied, readonly)
			]]
			arg1(SetSearchText_upvr(arg1_9))
		end;
	}
end)(any_extend_result1)