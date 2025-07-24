-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:39
-- Luau version 6, Types version 3
-- Time taken: 0.001108 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("Toast")
any_extend_result1.validateProps = t.strictInterface({
	toastTitle = t.optional(t.string);
	toastSubtitle = t.optional(t.string);
})
local Toast_upvr = UIBlox.App.Dialog.Toast
local Images_upvr = UIBlox.App.ImageSet.Images
function any_extend_result1.render(arg1) -- Line 18
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Toast_upvr (readonly)
		[3]: Images_upvr (readonly)
	]]
	if not arg1.props.toastTitle then
		return nil
	end
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		ZIndex = 100;
	}, {
		Toast = Roact_upvr.createElement(Toast_upvr, {
			duration = 3;
			toastContent = {
				iconImage = Images_upvr["icons/status/success"];
				toastTitle = arg1.props.toastTitle;
				toastSubtitle = arg1.props.toastSubtitle;
			};
		});
	})
end
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 38
	return {
		toastTitle = arg1.common.toastTitle;
		toastSubtitle = arg1.common.toastSubtitle;
	}
end, nil)(any_extend_result1)