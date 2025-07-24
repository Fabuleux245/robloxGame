-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:22
-- Luau version 6, Types version 3
-- Time taken: 0.003496 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local function dumpInstanceTree_upvr(arg1, arg2) -- Line 14, Named "dumpInstanceTree"
	--[[ Upvalues[1]:
		[1]: dumpInstanceTree_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var11 = arg2 or ""
	if arg1 == nil then
		print(var11.."[nil Instance]")
	else
		print(var11..arg1.Name)
		for _, v in ipairs(arg1:GetChildren()) do
			dumpInstanceTree_upvr(v, var11.."  ")
			local _
		end
	end
end
local Rodux_upvr = require(CorePackages.Packages.Rodux)
local Roact_upvr = require(CorePackages.Packages.Roact)
local RoactRodux_upvr = require(CorePackages.Packages.RoactRodux)
local AppStyleProvider_upvr = UIBlox.App.Style.AppStyleProvider
local Constants_upvr = UIBlox.App.Style.Constants
local HttpService_upvr = game:GetService("HttpService")
local CoreGui_upvr = game:GetService("CoreGui")
return function(arg1, arg2, arg3, arg4, arg5) -- Line 41
	--[[ Upvalues[8]:
		[1]: Rodux_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: RoactRodux_upvr (readonly)
		[4]: AppStyleProvider_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: HttpService_upvr (readonly)
		[7]: CoreGui_upvr (readonly)
		[8]: dumpInstanceTree_upvr (readonly)
	]]
	local var24 = arg4
	if not var24 then
		var24 = {}
	end
	var24 = arg5
	local var25 = var24
	if not var25 then
		var25 = {}
	end
	local var35 = "Test-"..HttpService_upvr:GenerateGUID(false)
	local formatted_upvr = "game.CoreGui.%s.*[ClassName=Folder].*":format(var35)
	local pcall_result1, pcall_result2 = pcall(function() -- Line 74
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: formatted_upvr (readonly)
		]]
		arg1(formatted_upvr)
	end)
	if not pcall_result1 then
		print("Test instance tree:\n")
		dumpInstanceTree_upvr(CoreGui_upvr:FindFirstChild(var35))
		print()
	end
	Roact_upvr.unmount(Roact_upvr.mount(Roact_upvr.createElement("ScreenGui", {
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	}, {
		[tostring(arg2)] = Roact_upvr.createElement(RoactRodux_upvr.StoreProvider, {
			store = Rodux_upvr.Store.new(arg3, var24, {Rodux_upvr.thunkMiddleware});
		}, {
			AppStyleProvider = Roact_upvr.createElement(AppStyleProvider_upvr, {
				style = {
					themeName = Constants_upvr.ThemeName.Dark;
					fontName = Constants_upvr.FontName.Gotham;
				};
			}, {
				Folder = Roact_upvr.createElement("Folder", {}, {
					Root = Roact_upvr.createElement(arg2, var25);
				});
			});
		});
	}), CoreGui_upvr, var35))
	if not pcall_result1 then
		error(pcall_result2)
	end
end