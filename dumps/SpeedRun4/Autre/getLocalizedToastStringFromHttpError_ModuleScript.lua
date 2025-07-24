-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:07
-- Luau version 6, Types version 3
-- Time taken: 0.001403 seconds

local StatusCodes = require(script:FindFirstAncestor("RobloxAppToastsRodux").Parent.Http).StatusCodes
local module_upvr = {
	[StatusCodes.BAD_REQUEST] = "Feature.Toast.NetworkingError.SomethingIsWrong";
	[StatusCodes.UNAUTHORIZED] = "Feature.Toast.NetworkingError.Unauthorized";
	[StatusCodes.FORBIDDEN] = "Feature.Toast.NetworkingError.Forbidden";
	[StatusCodes.NOT_FOUND] = "Feature.Toast.NetworkingError.NotFound";
	[StatusCodes.REQUEST_TIMEOUT] = "Feature.Toast.NetworkingError.Timeout";
	[StatusCodes.TOO_MANY_REQUESTS] = "Feature.Toast.NetworkingError.TooManyRequests";
	[StatusCodes.INTERNAL_SERVER_ERROR] = "Feature.Toast.NetworkingError.SomethingIsWrong";
	[StatusCodes.NOT_IMPLEMENTED] = "Feature.Toast.NetworkingError.SomethingIsWrong";
	[StatusCodes.BAD_GATEWAY] = "Feature.Toast.NetworkingError.SomethingIsWrong";
	[StatusCodes.SERVICE_UNAVAILABLE] = "Feature.Toast.NetworkingError.ServiceUnavailable";
	[StatusCodes.GATEWAY_TIMEOUT] = "Feature.Toast.NetworkingError.Timeout";
}
return function(arg1, arg2) -- Line 30, Named "getLocalizedToastStringFromHttpError"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if arg1 == Enum.HttpError.DnsResolve or arg1 == Enum.HttpError.ConnectFail or arg1 == Enum.HttpError.NetFail or arg1 == Enum.HttpError.SslConnectFail then
		return "Feature.Toast.NetworkingError.UnableToConnect"
	end
	if arg1 == Enum.HttpError.TimedOut then
		return "Feature.Toast.NetworkingError.Timeout"
	end
	if arg1 == Enum.HttpError.Aborted then
		return nil
	end
	if arg1 == Enum.HttpError.OK and arg2 ~= nil and module_upvr[arg2] ~= nil then
		return module_upvr[arg2]
	end
	return "Feature.Toast.NetworkingError.SomethingIsWrong"
end