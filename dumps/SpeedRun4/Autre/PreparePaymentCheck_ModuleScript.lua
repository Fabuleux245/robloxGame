-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:33
-- Luau version 6, Types version 3
-- Time taken: 0.001702 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local Parent_3 = Parent.Parent
local PaymentPlatform_upvr = require(Parent.Enums.PaymentPlatform)
function GetPaymentMethod(arg1) -- Line 15
	--[[ Upvalues[1]:
		[1]: PaymentPlatform_upvr (readonly)
	]]
	if arg1 == Enum.Platform.PS4 then
		return "PlaystationStore"
	end
	if arg1 == PaymentPlatform_upvr.Maquettes then
		return "QuestStore"
	end
	if arg1 == Enum.Platform.XBoxOne then
		return "XboxStore"
	end
	return ""
end
local HttpService_upvr = game:GetService("HttpService")
local HttpRbxApiService_upvr = game:GetService("HttpRbxApiService")
local Url_upvr = require(Parent_3.Http).Url
local default_upvr = require(Parent_3.LoggingProtocol).default
local PreparePaymentCheckCounter_upvr = require(Parent_2.Events.PreparePaymentCheckCounter)
function IsPreparePaymentSuccessful(arg1, arg2) -- Line 26
	--[[ Upvalues[5]:
		[1]: HttpService_upvr (readonly)
		[2]: HttpRbxApiService_upvr (readonly)
		[3]: Url_upvr (readonly)
		[4]: default_upvr (readonly)
		[5]: PreparePaymentCheckCounter_upvr (readonly)
	]]
	local tbl_3 = {}
	tbl_3.paymentMethod = arg1
	tbl_3.providerProductId = arg2
	local any_JSONEncode_result1_upvr = HttpService_upvr:JSONEncode(tbl_3)
	local pcall_result1, pcall_result2 = pcall(function() -- Line 33
		--[[ Upvalues[3]:
			[1]: HttpRbxApiService_upvr (copied, readonly)
			[2]: Url_upvr (copied, readonly)
			[3]: any_JSONEncode_result1_upvr (readonly)
		]]
		return HttpRbxApiService_upvr:PostAsyncFullUrl(Url_upvr.APIS_URL.."payments-gateway/v1/prepare-payment", any_JSONEncode_result1_upvr)
	end)
	if not pcall_result1 then
		local tbl = {}
		tbl.paymentMethod = arg1
		tbl.result = "Error"
		default_upvr:logRobloxTelemetryCounter(PreparePaymentCheckCounter_upvr, 1, tbl)
		return true
	end
	if HttpService_upvr:JSONDecode(pcall_result2).isSuccess then
		local tbl_2 = {}
		tbl_2.paymentMethod = arg1
		tbl_2.result = "Success"
		default_upvr:logRobloxTelemetryCounter(PreparePaymentCheckCounter_upvr, 1, tbl_2)
		return true
	end
	local tbl_4 = {}
	tbl_4.paymentMethod = arg1
	tbl_4.result = "Failed"
	default_upvr:logRobloxTelemetryCounter(PreparePaymentCheckCounter_upvr, 1, tbl_4)
	return false
end
local UserInputService_upvr = game:GetService("UserInputService")
function ConsolePreparePaymentCheck(arg1) -- Line 61
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	local any_GetPlatform_result1 = UserInputService_upvr:GetPlatform()
	local GetPaymentMethod_result1 = GetPaymentMethod(any_GetPlatform_result1)
	if GetPaymentMethod_result1 == "" or any_GetPlatform_result1 == Enum.Platform.XBoxOne then
		return true
	end
	return IsPreparePaymentSuccessful(GetPaymentMethod_result1, arg1)
end
local IsVRAppBuild_upvr = require(Parent_3.AppCommonLib).IsVRAppBuild
local GuiService_upvr = game:GetService("GuiService")
local getBlockingConsolePreparePaymentCheck_upvr = require(Parent.Flags.getBlockingConsolePreparePaymentCheck)
return function(arg1) -- Line 74
	--[[ Upvalues[3]:
		[1]: IsVRAppBuild_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: getBlockingConsolePreparePaymentCheck_upvr (readonly)
	]]
	if IsVRAppBuild_upvr() or GuiService_upvr:IsTenFootInterface() then
		local ConsolePreparePaymentCheck_result1 = ConsolePreparePaymentCheck(arg1)
		if not getBlockingConsolePreparePaymentCheck_upvr() then
			ConsolePreparePaymentCheck_result1 = true
		end
		return ConsolePreparePaymentCheck_result1
	end
	return true
end