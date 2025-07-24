-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:08
-- Luau version 6, Types version 3
-- Time taken: 0.002328 seconds

local Enums = require(script.Parent.Enums)
local VPCErrorCategoriesEnum_upvr = Enums.VPCErrorCategoriesEnum
local VPCRetryBehaviorEnum = Enums.VPCRetryBehaviorEnum
local VPCErrorCodesEnum_upvr = Enums.VPCErrorCodesEnum
local tbl_upvr = {
	[VPCErrorCodesEnum_upvr.InvalidEmailAddress] = VPCErrorCategoriesEnum_upvr.InvalidEmail;
	[VPCErrorCodesEnum_upvr.EmailNotUnique] = VPCErrorCategoriesEnum_upvr.InvalidEmail;
	[VPCErrorCodesEnum_upvr.LinkingIneligible] = VPCErrorCategoriesEnum_upvr.InvalidEmail;
	[VPCErrorCodesEnum_upvr.ParentAtLinkLimit] = VPCErrorCategoriesEnum_upvr.InvalidEmail;
	[VPCErrorCodesEnum_upvr.SenderFlooded] = VPCErrorCategoriesEnum_upvr.SenderFlooded;
	[VPCErrorCodesEnum_upvr.ReceiverFlooded] = VPCErrorCategoriesEnum_upvr.ReceiverFlooded;
	[VPCErrorCodesEnum_upvr.InvalidParameter] = VPCErrorCategoriesEnum_upvr.BadUserInput;
	[VPCErrorCodesEnum_upvr.UpdateUserSettingRequestInvalid] = VPCErrorCategoriesEnum_upvr.BadUserInput;
	[VPCErrorCodesEnum_upvr.AlreadyLinked] = VPCErrorCategoriesEnum_upvr.UserStateRecoursePathMismatch;
	[VPCErrorCodesEnum_upvr.ChildAtLinkLimit] = VPCErrorCategoriesEnum_upvr.UserStateRecoursePathMismatch;
	[VPCErrorCodesEnum_upvr.NoLinkedParents] = VPCErrorCategoriesEnum_upvr.UserStateRecoursePathMismatch;
	[VPCErrorCodesEnum_upvr.SenderFloodedRequestCreated] = VPCErrorCategoriesEnum_upvr.SenderFloodedRequestCreated;
	[VPCErrorCodesEnum_upvr.Unknown] = VPCErrorCategoriesEnum_upvr.InternalVPCError;
	[VPCErrorCodesEnum_upvr.ServiceUnavailable] = VPCErrorCategoriesEnum_upvr.InternalVPCError;
	[VPCErrorCodesEnum_upvr.IllegalState] = VPCErrorCategoriesEnum_upvr.InternalVPCError;
	[VPCErrorCodesEnum_upvr.InvalidUserID] = VPCErrorCategoriesEnum_upvr.GenericError;
	[VPCErrorCodesEnum_upvr.ConsentAlreadyApplied] = VPCErrorCategoriesEnum_upvr.GenericError;
	[VPCErrorCodesEnum_upvr.ConsentAlreadyRequestedConflictingData] = VPCErrorCategoriesEnum_upvr.ConflictingPendingConsent;
	[VPCErrorCodesEnum_upvr.ReceiverNotWhitelisted] = VPCErrorCategoriesEnum_upvr.GenericError;
	[VPCErrorCodesEnum_upvr.InvalidComplianceFeature] = VPCErrorCategoriesEnum_upvr.GenericError;
	[VPCErrorCodesEnum_upvr.ChildTooOld] = VPCErrorCategoriesEnum_upvr.GenericError;
	[VPCErrorCodesEnum_upvr.UserForgotten] = VPCErrorCategoriesEnum_upvr.GenericError;
	[VPCErrorCodesEnum_upvr.UnsupportedNotificationType] = VPCErrorCategoriesEnum_upvr.GenericError;
	[VPCErrorCodesEnum_upvr.UnsupportedRequestType] = VPCErrorCategoriesEnum_upvr.GenericError;
	[VPCErrorCodesEnum_upvr.ChildIneligibleForConsent] = VPCErrorCategoriesEnum_upvr.GenericError;
}
local module_upvr = {
	[VPCErrorCategoriesEnum_upvr.InternalVPCError] = VPCRetryBehaviorEnum.RetryVPC;
	[VPCErrorCategoriesEnum_upvr.InvalidEmail] = VPCRetryBehaviorEnum.RetryVPC;
	[VPCErrorCategoriesEnum_upvr.Flooded] = VPCRetryBehaviorEnum.NoRetry;
	[VPCErrorCategoriesEnum_upvr.SenderFlooded] = VPCRetryBehaviorEnum.NoRetry;
	[VPCErrorCategoriesEnum_upvr.ReceiverFlooded] = VPCRetryBehaviorEnum.NoRetry;
	[VPCErrorCategoriesEnum_upvr.BadUserInput] = VPCRetryBehaviorEnum.NoRetry;
	[VPCErrorCategoriesEnum_upvr.UserStateRecoursePathMismatch] = VPCRetryBehaviorEnum.RetryAMP;
	[VPCErrorCategoriesEnum_upvr.SenderFloodedRequestCreated] = VPCRetryBehaviorEnum.Success;
	[VPCErrorCategoriesEnum_upvr.GenericError] = VPCRetryBehaviorEnum.NoRetry;
	[VPCErrorCategoriesEnum_upvr.ConflictingPendingConsent] = VPCRetryBehaviorEnum.NoRetry;
}
local vpcErrorCategoryToMessageStrings_upvr = require(script:FindFirstAncestor("AmpUpsell").Common.LocalizationStrings).vpcErrorCategoryToMessageStrings
return {
	getStringsFromErrorCodeAndRetryNum = function(arg1, arg2) -- Line 69, Named "getStringsFromErrorCodeAndRetryNum"
		--[[ Upvalues[4]:
			[1]: VPCErrorCodesEnum_upvr (readonly)
			[2]: tbl_upvr (readonly)
			[3]: VPCErrorCategoriesEnum_upvr (readonly)
			[4]: vpcErrorCategoryToMessageStrings_upvr (readonly)
		]]
		local var10
		if 4 <= arg2 then
			var10 = VPCErrorCodesEnum_upvr.SenderFlooded
		end
		local var11 = tbl_upvr[var10]
		if var11 == nil then
			var11 = VPCErrorCategoriesEnum_upvr.GenericError
		end
		return vpcErrorCategoryToMessageStrings_upvr[var11]
	end;
	getRetryBehaviorFromErrorCodeAndRetryNum = function(arg1, arg2) -- Line 55, Named "getRetryBehaviorFromErrorCodeAndRetryNum"
		--[[ Upvalues[4]:
			[1]: VPCErrorCodesEnum_upvr (readonly)
			[2]: tbl_upvr (readonly)
			[3]: VPCErrorCategoriesEnum_upvr (readonly)
			[4]: module_upvr (readonly)
		]]
		local var7
		if 4 <= arg2 then
			var7 = VPCErrorCodesEnum_upvr.SenderFlooded
		end
		local var8 = tbl_upvr[var7]
		if var8 == nil then
			var8 = VPCErrorCategoriesEnum_upvr.GenericError
		end
		return module_upvr[var8]
	end;
	VPCErrorCategoriesEnum = VPCErrorCategoriesEnum_upvr;
	VPCRetryBehaviorEnum = VPCRetryBehaviorEnum;
}