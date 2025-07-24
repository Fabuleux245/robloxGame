-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:34
-- Luau version 6, Types version 3
-- Time taken: 0.002410 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("FeedbackSubmissionToast")
any_extend_result1.validateProps = t.strictInterface({
	numFeedbackSubmissionAttempts = t.optional(t.number);
})
local withLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).withLocalization
local Toast_upvr = UIBlox.App.Dialog.Toast
local Images_upvr = UIBlox.App.ImageSet.Images
function any_extend_result1.render(arg1) -- Line 26
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: withLocalization_upvr (readonly)
		[3]: Toast_upvr (readonly)
		[4]: Images_upvr (readonly)
	]]
	if arg1.props.numFeedbackSubmissionAttempts == nil then
		return nil
	end
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		ZIndex = 100;
	}, {
		Toast = withLocalization_upvr({
			toastTitle = "CoreScripts.Feedback.SubmissionToastHeader";
			toastSubtitle = "CoreScripts.Feedback.SubmissionToastBody";
		})(function(arg1_2) -- Line 40
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: Roact_upvr (copied, readonly)
				[3]: Toast_upvr (copied, readonly)
				[4]: Images_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var14
			if arg1.props.numFeedbackSubmissionAttempts % 2 ~= 0 then
				var14 = false
			else
				var14 = true
			end
			if var14 then
			end
			return Roact_upvr.createElement(Toast_upvr, {
				duration = 3;
				toastContent = {
					iconImage = Images_upvr["icons/status/success"];
					toastTitle = arg1_2.toastTitle..' ';
					toastSubtitle = arg1_2.toastSubtitle..' ';
				};
			})
		end);
	})
end
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 65
	return {
		numFeedbackSubmissionAttempts = arg1.common.numFeedbackSubmissionAttempts;
	}
end, nil)(any_extend_result1)