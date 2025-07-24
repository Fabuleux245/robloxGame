-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:57
-- Luau version 6, Types version 3
-- Time taken: 0.002292 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent
local Roact_upvr = require(CorePackages.Packages.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("PlayerNameLabel")
local Players_upvr = game:GetService("Players")
local UserLib_upvr = require(CorePackages.Workspace.Packages.UserLib)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local verified_upvr = require(CorePackages.Workspace.Packages.VerifiedBadges).emoji.verified
local InspectAndBuyContext_upvr = require(Parent.Components.InspectAndBuyContext)
local Colors_upvr = require(Parent.Colors)
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
local function render(arg1) -- Line 21
	--[[ Upvalues[8]:
		[1]: Players_upvr (readonly)
		[2]: UserLib_upvr (readonly)
		[3]: RobloxTranslator_upvr (readonly)
		[4]: verified_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: InspectAndBuyContext_upvr (readonly)
		[7]: Colors_upvr (readonly)
		[8]: AppFonts_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local playerName = arg1.props.playerName
	local tonumber_result1 = tonumber(arg1.props.playerId)
	local var14 = tonumber_result1
	if var14 then
		var14 = Players_upvr:GetPlayerByUserId(tonumber_result1)
	end
	if var14 then
	else
	end
	if playerName == "" then
	elseif false then
		local tbl = {
			PLAYER_NAME = playerName;
			VERIFIED_BADGE = verified_upvr;
		}
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	local module = {}
	local view_upvr = arg1.props.view
	local any_FormatByKeyForLocale_result1_upvw = RobloxTranslator_upvr:FormatByKeyForLocale("InGame.InspectMenu.Label.Avatar", arg1.props.locale, {
		PLAYER_NAME = playerName;
	})
	function module.render(arg1_2) -- Line 43
		--[[ Upvalues[5]:
			[1]: view_upvr (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: Colors_upvr (copied, readonly)
			[4]: any_FormatByKeyForLocale_result1_upvw (read and write)
			[5]: AppFonts_upvr (copied, readonly)
		]]
		local var20 = arg1_2[view_upvr]
		return Roact_upvr.createElement("TextLabel", {
			Size = UDim2.new(1, -(var20.AvatarHeadShotSize + var20.BorderPaddingSize * 2 + 10), 0, var20.TopSizeY);
			BackgroundTransparency = 1;
			TextColor3 = Colors_upvr.White;
			TextScaled = true;
			Text = any_FormatByKeyForLocale_result1_upvw;
			TextSize = 36;
			Font = AppFonts_upvr.default:getBlack();
			TextXAlignment = Enum.TextXAlignment.Left;
			LayoutOrder = 2;
		}, {
			TextSizeConstraint = Roact_upvr.createElement("UITextSizeConstraint", {
				MaxTextSize = 36;
			});
		})
	end
	return Roact_upvr.createElement(InspectAndBuyContext_upvr.Consumer, module)
end
any_extend_result1.render = render
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 66
	return {
		view = arg1.view;
		playerName = arg1.playerName;
		playerId = arg1.playerId;
		locale = arg1.locale;
	}
end)(any_extend_result1)