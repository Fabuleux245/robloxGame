-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:47
-- Luau version 6, Types version 3
-- Time taken: 0.003854 seconds

local Parent = script:FindFirstAncestor("GameInvite").Parent
local function _() -- Line 27
	return workspace.CurrentCamera.ViewportSize
end
local LocalizationService_upvr = game:GetService("LocalizationService")
local function var3_upvr(arg1) -- Line 32
	--[[ Upvalues[1]:
		[1]: LocalizationService_upvr (readonly)
	]]
	if not arg1 or arg1 == "" then
		return ""
	end
	if not DateTime or not DateTime.fromIsoDate(arg1) then
		local var5
	end
	if not var5 then
		return ""
	end
	local RobloxLocaleId = LocalizationService_upvr.RobloxLocaleId
	return `{var5:FormatLocalTime("LL", RobloxLocaleId)} {var5:FormatLocalTime("LT", RobloxLocaleId)}`
end
local React_upvr = require(Parent.React)
local Foundation_upvr = require(Parent.Foundation)
local PartialPageModal_upvr = require(Parent.UIBlox).App.Dialog.Modal.PartialPageModal
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableRewardsWebViewOverlay", false)
local HttpService_upvr = game:GetService("HttpService")
local GetFStringReferralRewardsTermsURL_upvr = require(Parent.SharedFlags).GetFStringReferralRewardsTermsURL
local BrowserService_upvr = game:GetService("BrowserService")
return function(arg1) -- Line 46
	--[[ Upvalues[8]:
		[1]: React_upvr (readonly)
		[2]: Foundation_upvr (readonly)
		[3]: PartialPageModal_upvr (readonly)
		[4]: var3_upvr (readonly)
		[5]: game_DefineFastFlag_result1_upvr (readonly)
		[6]: HttpService_upvr (readonly)
		[7]: GetFStringReferralRewardsTermsURL_upvr (readonly)
		[8]: BrowserService_upvr (readonly)
	]]
	local module = {}
	local tbl = {
		tag = "size-full-full bg-over-media-100";
	}
	local function onActivated() -- Line 55
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.setModalOpen then
			arg1.setModalOpen(false)
		end
	end
	tbl.onActivated = onActivated
	module.RewardsInfoModalContainer = React_upvr.createElement(Foundation_upvr.View, tbl, {
		RewardsInfoModal = React_upvr.createElement(PartialPageModal_upvr, {
			title = arg1.title;
			screenSize = workspace.CurrentCamera.ViewportSize;
			position = UDim2.new(0.5, 0, 0.5, 0);
			onCloseClicked = function() -- Line 65, Named "onCloseClicked"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1.setModalOpen then
					arg1.setModalOpen(false)
				end
			end;
		}, {
			RewardsInfoModalContent = React_upvr.createElement(Foundation_upvr.View, {
				tag = "col size-full-0 auto-y gap-y-large margin-top-large";
				Size = UDim2.new(1, 0, 0, 180);
			}, {
				RewardsInfoModalTitle = React_upvr.createElement(Foundation_upvr.Text, {
					tag = "text-title-medium auto-xy text-align-x-left text-wrap";
					Text = arg1.rewardDetailsTitle;
					LayoutOrder = 0;
				});
				RewardsInfoModalBody = React_upvr.createElement(Foundation_upvr.Text, {
					tag = "text-body-medium auto-xy text-align-x-left text-wrap margin-top-small";
					Text = arg1.rewardDetailsBody;
					LayoutOrder = 1;
				});
				RewardsInfoModalLimitsTitle = React_upvr.createElement(Foundation_upvr.Text, {
					tag = "text-title-medium auto-xy text-align-x-left text-wrap margin-top-medium";
					Text = arg1.rewardLimitsTitle;
					LayoutOrder = 2;
				});
				RewardInfoExpiresText = React_upvr.createElement(Foundation_upvr.Text, {
					tag = "text-body-medium auto-xy text-align-x-left text-wrap margin-top-small";
					Text = arg1.rewardsExpiresText..' '..var3_upvr(arg1.expiryUtc);
					LayoutOrder = 3;
				});
				RewardsInfoModalLimitsBody = React_upvr.createElement(Foundation_upvr.Text, {
					tag = "text-body-medium auto-xy text-align-x-left text-wrap";
					Text = arg1.rewardLimitsBody;
					LayoutOrder = 4;
				});
				RewardsInfoModalCreatorSupportText = React_upvr.createElement(Foundation_upvr.Text, {
					tag = "text-caption-medium auto-xy text-align-x-left text-wrap margin-top-xlarge";
					Text = arg1.rewardCreatorSupportText;
					LayoutOrder = 5;
				});
				RewardsInfoModalTermsContainer = React_upvr.createElement(Foundation_upvr.View, {
					tag = "row grow auto-xy align-x-left margin-top-small";
					BackgroundTransparency = 1;
					LayoutOrder = 6;
					onActivated = function() -- Line 109, Named "onActivated"
						--[[ Upvalues[5]:
							[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
							[2]: HttpService_upvr (copied, readonly)
							[3]: GetFStringReferralRewardsTermsURL_upvr (copied, readonly)
							[4]: arg1 (readonly)
							[5]: BrowserService_upvr (copied, readonly)
						]]
						local var30
						if game_DefineFastFlag_result1_upvr then
							var30 = HttpService_upvr:JSONEncode({
								url = GetFStringReferralRewardsTermsURL_upvr();
								title = arg1.rewardsTerms;
								command = "open";
								visible = true;
								isGenericWebview = true;
								enableOverlayReplacement = true;
							})
						else
							var30 = HttpService_upvr:JSONEncode({
								url = GetFStringReferralRewardsTermsURL_upvr();
								title = arg1.rewardsTerms;
								command = "open";
							})
						end
						BrowserService_upvr:SendCommand(var30)
					end;
				}, {
					RewardsInfoModalTermsText = React_upvr.createElement(Foundation_upvr.Text, {
						tag = "text-label-small auto-xy text-align-x-left text-wrap";
						Text = `<u><b>{arg1.rewardsTerms}</b></u>`;
						RichText = true;
					});
				});
			});
		});
	})
	return React_upvr.createElement("ScreenGui", {
		DisplayOrder = 100;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		IgnoreGuiInset = true;
	}, module)
end