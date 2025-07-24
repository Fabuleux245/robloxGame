-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:25
-- Luau version 6, Types version 3
-- Time taken: 0.001563 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local any_extend_result1 = Roact_upvr.PureComponent:extend("LuobuWarningToastComponent")
local Images_upvr = UIBlox.App.ImageSet.Images
local ContentProvider_upvr = game:GetService("ContentProvider")
local any_FormatByKey_result1_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator):FormatByKey("InGame.CommonUI.Message.LuobuGameJoinWarning")
function any_extend_result1.init(arg1) -- Line 18
	--[[ Upvalues[3]:
		[1]: Images_upvr (readonly)
		[2]: ContentProvider_upvr (readonly)
		[3]: any_FormatByKey_result1_upvr (readonly)
	]]
	arg1.state = {
		isLoaded = false;
	}
	task.spawn(function() -- Line 23
		--[[ Upvalues[3]:
			[1]: Images_upvr (copied, readonly)
			[2]: ContentProvider_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local Image_upvr = Images_upvr["icons/status/alert"].Image
		pcall(function() -- Line 25
			--[[ Upvalues[2]:
				[1]: ContentProvider_upvr (copied, readonly)
				[2]: Image_upvr (readonly)
			]]
			ContentProvider_upvr:PreloadAsync({Image_upvr})
		end)
		arg1:setState({
			isLoaded = true;
		})
	end)
	function arg1.getToastContent() -- Line 33
		--[[ Upvalues[2]:
			[1]: Images_upvr (copied, readonly)
			[2]: any_FormatByKey_result1_upvr (copied, readonly)
		]]
		return {
			iconImage = Images_upvr["icons/status/alert"];
			iconColorStyle = {
				Color = Color3.new(1, 1, 1);
				Transparency = 0;
			};
			toastTitle = any_FormatByKey_result1_upvr;
		}
	end
end
local Toast_upvr = UIBlox.App.Dialog.Toast
local renderWithCoreScriptsStyleProvider_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Common.renderWithCoreScriptsStyleProvider)
function any_extend_result1.render(arg1) -- Line 45
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Toast_upvr (readonly)
		[3]: renderWithCoreScriptsStyleProvider_upvr (readonly)
	]]
	if not arg1.state.isLoaded then
		return nil
	end
	return renderWithCoreScriptsStyleProvider_upvr({
		RobloxCaptureNotificationGui = Roact_upvr.createElement("ScreenGui", {
			AutoLocalize = false;
			DisplayOrder = 9;
			IgnoreGuiInset = true;
			OnTopOfCoreBlur = true;
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		}, {
			Content = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 1, 0);
			}, {
				WarningToast = Roact_upvr.createElement(Toast_upvr, {
					duration = 5;
					show = true;
					toastContent = arg1.getToastContent();
				});
			});
		});
	})
end
return any_extend_result1