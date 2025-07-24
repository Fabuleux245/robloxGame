-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:36
-- Luau version 6, Types version 3
-- Time taken: 0.001466 seconds

local PhoneUpsell = script:FindFirstAncestor("PhoneUpsell")
local Parent = PhoneUpsell.Parent
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	onSuccess = function() -- Line 24, Named "onSuccess"
	end;
	closeUpsell = function() -- Line 25, Named "closeUpsell"
	end;
}
local mergeProps_upvr = require(PhoneUpsell.Utils.mergeProps)
local React_upvr = require(Parent.React)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local FFlagFixUpsellVerificationToNavigateToOverlays_upvr = require(PhoneUpsell.Flags.FFlagFixUpsellVerificationToNavigateToOverlays)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local UpsellContainer_upvr = require(PhoneUpsell.Components.UpsellContainer)
local Cryo_upvr = require(Parent.Cryo)
local PhoneVerificationStatusOverlay_upvr = require(PhoneUpsell.Components.PhoneVerificationStatusOverlay)
return function(arg1) -- Line 30, Named "PhoneVerificationUpsellOverlayWrapper"
	--[[ Upvalues[10]:
		[1]: mergeProps_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
		[5]: Images_upvr (readonly)
		[6]: FFlagFixUpsellVerificationToNavigateToOverlays_upvr (readonly)
		[7]: useLocalization_upvr (readonly)
		[8]: UpsellContainer_upvr (readonly)
		[9]: Cryo_upvr (readonly)
		[10]: PhoneVerificationStatusOverlay_upvr (readonly)
	]]
	local mergeProps_upvr_result1_upvr = mergeProps_upvr(tbl_upvr, arg1)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local module = {
		PhoneVerificationUpsellOverlay = React_upvr.createElement(UpsellContainer_upvr, Cryo_upvr.Dictionary.join(mergeProps_upvr_result1_upvr, {
			onSuccess = function() -- Line 41
				--[[ Upvalues[3]:
					[1]: any_useState_result2_upvr (readonly)
					[2]: FFlagFixUpsellVerificationToNavigateToOverlays_upvr (copied, readonly)
					[3]: mergeProps_upvr_result1_upvr (readonly)
				]]
				any_useState_result2_upvr(true)
				task.delay(3, function() -- Line 43
					--[[ Upvalues[2]:
						[1]: FFlagFixUpsellVerificationToNavigateToOverlays_upvr (copied, readonly)
						[2]: mergeProps_upvr_result1_upvr (copied, readonly)
					]]
					if FFlagFixUpsellVerificationToNavigateToOverlays_upvr then
						mergeProps_upvr_result1_upvr.closeUpsell()
						mergeProps_upvr_result1_upvr.onSuccess()
					else
						mergeProps_upvr_result1_upvr.onSuccess()
						mergeProps_upvr_result1_upvr.closeUpsell()
					end
				end)
			end;
		}));
	}
	local var23 = any_useState_result1
	if var23 then
		var23 = React_upvr.createElement
		var23 = var23(PhoneVerificationStatusOverlay_upvr, {
			image = React_upvr.createElement(ImageSetLabel_upvr, {
				Size = UDim2.fromOffset(40, 40);
				Image = Images_upvr["icons/status/success_large"];
				BackgroundTransparency = 1;
			});
			text = useLocalization_upvr({
				verifySuccessKey = "Feature.VerificationUpsell.Heading.VerifiedSuccessfully.V2";
			}).verifySuccessKey;
		})
	end
	module.SuccessOverlay = var23
	return React_upvr.createElement(React_upvr.Fragment, nil, module)
end