-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:30
-- Luau version 6, Types version 3
-- Time taken: 0.002409 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Constants_upvr = require(script.Parent.Parent.Constants)
local any_extend_result1 = Roact_upvr.PureComponent:extend("WheelText")
local StarterPlayer_upvr = game:GetService("StarterPlayer")
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
function any_extend_result1.getWheelText(arg1) -- Line 15
	--[[ Upvalues[3]:
		[1]: StarterPlayer_upvr (readonly)
		[2]: RobloxTranslator_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	local currentEmotes = arg1.props.emotesPage.currentEmotes
	local locale = arg1.props.locale
	if next(currentEmotes) == nil then
		if StarterPlayer_upvr.UserEmotesEnabled and arg1.props.emotesPage.numberEmotesLoaded == 0 then
			return RobloxTranslator_upvr:FormatByKeyForLocale(Constants_upvr.LocalizationKeys.NoEmotesEquipped, locale)
		end
		return RobloxTranslator_upvr:FormatByKeyForLocale(Constants_upvr.LocalizationKeys.EmotesDisabled, locale)
	end
	local var9 = currentEmotes[arg1.props.emotesWheel.focusedSegmentIndex]
	if var9 then
		return var9
	end
	return RobloxTranslator_upvr:FormatByKeyForLocale(Constants_upvr.LocalizationKeys.SelectAnEmote, locale)
end
function any_extend_result1.render(arg1) -- Line 38
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	local var10 = Constants_upvr.Layouts[arg1.props.layout]
	return Roact_upvr.createElement("TextLabel", {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Size = UDim2.new(Constants_upvr.InnerCircleSizeRatio, -Constants_upvr.TextPadding, Constants_upvr.InnerCircleSizeRatio, -Constants_upvr.TextPadding);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		BackgroundTransparency = 1;
		Text = arg1:getWheelText();
		TextScaled = true;
		TextSize = var10.MiddleTextSize;
		TextColor3 = Constants_upvr.Colors.White;
		Font = var10.MiddleTextFont;
		ZIndex = 5;
	}, {
		TextSizeConstraint = Roact_upvr.createElement("UITextSizeConstraint", {
			MaxTextSize = var10.MiddleTextSize;
		});
	})
end
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 65, Named "mapStateToProps"
	return {
		emotesWheel = arg1.emotesWheel;
		emotesPage = arg1.emotesPage;
		layout = arg1.layout;
		locale = arg1.locale;
	}
end, nil)(any_extend_result1)