-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:51
-- Luau version 6, Types version 3
-- Time taken: 0.004785 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox_upvr = require(Parent.UIBlox)
local any_extend_result1 = Roact_upvr.PureComponent:extend("GameCard")
any_extend_result1.defaultProps = {
	isPlayButtonEnabled = true;
	playText = "Play";
	viewDetailsText = "View Details";
	noDescriptionText = "Placeholder: No Description";
	gameName = nil;
	gameIcon = nil;
	gameDescription = nil;
	contentLoadedCallback = nil;
	bodyActivated = nil;
	playabilityStatus = nil;
	conversationId = nil;
	universeId = nil;
	placeId = nil;
	price = nil;
	eventStream = nil;
	playButtonActivated = nil;
	viewDetailsActivated = nil;
	viewDetailsEnabled = true;
}
local PlayButton_upvr = require(script.Parent.PlayButton)
local ViewDetailsButton_upvr = require(script.Parent.ViewDetailsButton)
function any_extend_result1.makeButtons(arg1, arg2) -- Line 61
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: UIBlox_upvr (readonly)
		[3]: PlayButton_upvr (readonly)
		[4]: ViewDetailsButton_upvr (readonly)
	]]
	if not arg1.props.playabilityStatus then
	else
		if arg1.props.isLoading then
			return {
				loading = Roact_upvr.createElement(UIBlox_upvr.App.Loading.ShimmerPanel, {
					Size = UDim2.new(1, 0, 0, 32);
					cornerRadius = UDim.new(0, 4);
				});
			}
		end
		if arg1.props.isPlayButtonEnabled and arg1.props.playabilityStatus.isPlayable == true then
			local module_3 = {}
			local tbl = {
				placeId = arg1.props.placeId;
				universeId = arg1.props.universeId;
				text = arg1.props.playText;
				conversationId = arg1.props.conversationId;
			}
			local function onActivated() -- Line 85
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.props.onPlayButtonActivated(arg1.props)
			end
			tbl.onActivated = onActivated
			tbl.eventStream = arg1.props.eventStream
			module_3.playButton = Roact_upvr.createElement(PlayButton_upvr, tbl)
			return module_3
		end
		if arg1.props.viewDetailsEnabled then
			return {
				viewDetails = Roact_upvr.createElement(ViewDetailsButton_upvr, {
					text = arg1.props.viewDetailsText;
					onActivated = function() -- Line 97, Named "onActivated"
						--[[ Upvalues[1]:
							[1]: arg1 (readonly)
						]]
						arg1.props.openDetails(arg1.props)
					end;
					eventStream = arg1.props.eventStream;
				});
			}
		end
	end
end
local AssetCard_upvr = require(AppChat.Components.ChatConversation.AssetCardComponents.AssetCard)
function any_extend_result1.render(arg1) -- Line 107
	--[[ Upvalues[3]:
		[1]: UIBlox_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: AssetCard_upvr (readonly)
	]]
	return UIBlox_upvr.Style.withStyle(function(arg1_2) -- Line 108
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: AssetCard_upvr (copied, readonly)
		]]
		if arg1.props.universeId then
			local var22
			if arg1.props.gameDescription then
				var22 = arg1.props.gameDescription:gsub("%s", ' ')
				if var22:gsub("^%s+$", "") == "" then
					var22 = arg1.props.noDescriptionText
				end
			end
			return Roact_upvr.createElement(AssetCard_upvr, {
				isLoading = arg1.props.isLoading;
				cardTitle = arg1.props.gameName;
				cardBodyText = var22;
				cardIcon = arg1.props.gameIcon;
				contentLoadedCallback = arg1.props.contentLoadedCallback;
				bodyActivated = function() -- Line 128, Named "bodyActivated"
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					if arg1.props.viewDetailsEnabled then
						arg1.props.openDetails(arg1.props)
					end
				end;
			}, arg1:makeButtons(arg1_2))
		end
		return Roact_upvr.createElement(AssetCard_upvr, {
			cardTitle = arg1.props.gameName or "";
			cardBodyText = arg1.props.gameDescription or "";
			cardIcon = arg1.props.gameIcon or "";
			isLoading = true;
		}, {
			fill = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 0, 32);
			});
		})
	end)
end
return any_extend_result1