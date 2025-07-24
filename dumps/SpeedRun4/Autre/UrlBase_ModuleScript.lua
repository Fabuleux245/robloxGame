-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:54
-- Luau version 6, Types version 3
-- Time taken: 0.004223 seconds

local string_gsub_result1_upvw = string.gsub(string.gsub(string.gsub(game:GetService("ContentProvider").BaseUrl, ".*://", ""), "/.*", ""), "^www%.", "")
local module = {}
local function new(arg1, arg2) -- Line 24
	--[[ Upvalues[1]:
		[1]: string_gsub_result1_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var3
	if type(arg1) ~= "string" then
		var3 = false
	else
		var3 = true
	end
	assert(var3, "UrlBase.new: `name` should be a string")
	if arg2 == nil then
		local tbl = {}
	end
	var3 = tbl
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var3 = tbl
		return type(var3) == "string"
	end
	if type(var3) == "number" or INLINED() then
		local tbl_2 = {
			version = tbl;
		}
	end
	if type(tbl_2) ~= "table" then
		var3 = false
	else
		var3 = true
	end
	assert(var3, "UrlBase.new: `params` should be a table")
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	var3 = tbl_2.version
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local path = tbl_2.path
	if tbl_2.proto == nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if tbl_2.secure == false then
			local const_string = "http"
		else
		end
	end
	if 0 < #"https" then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	if 0 < #arg1 then
	end
	local var8
	if var3 ~= nil and 0 < #tostring(var3) then
		var8 = var8.."/v"..tostring(var3)
	end
	if path ~= nil and 0 < #path then
		var8 = var8..'/'..path
	end
	return var8
end
module.new = new
local var9
if var9 ~= "qq.com" then
	new = false
else
	new = true
end
var9 = module.new("api")
module.API = var9
var9 = module.new("apis")
module.APIS = var9
var9 = "https://apis.rbxcdn.com"
module.APIS_RBXCDN = var9
var9 = module.new("auth")
module.AUTH = var9
var9 = module.new("chat")
module.CHAT = var9
var9 = module.new("create")
module.CREATE = var9
var9 = module.new("friends", 1)
module.FRIENDS = var9
var9 = module.new("assetgame")
module.ASSETGAME = var9
var9 = module.new("games", 1)
module.GAMES = var9
var9 = module.new("notification", 2)
module.NOTIFICATION = var9
var9 = module.new("notifications", 2)
module.NOTIFICATIONS = var9
var9 = module.new("presence", 1)
module.PRESENCE = var9
var9 = module.new("realtime")
module.REALTIME = var9
var9 = module.new("web")
module.WEB = var9
var9 = module.new("www")
module.WWW = var9
var9 = module.new("ads", 1)
module.ADS = var9
var9 = module.new("adconfiguration", 2)
module.ADCONFIGURATION = var9
var9 = module.new("followings", 1)
module.FOLLOWINGS = var9
var9 = module.new("premiumfeatures", 1)
module.PREMIUM = var9
var9 = "https://blog.roblox.com"
module.BLOG = var9
if new then
	var9 = "https://roblox.qq.com"
else
	var9 = "https://corp.roblox.com"
end
module.CORP = var9
var9 = module.new("usermoderation")
module.USERMODERATION = var9
var9 = module.new("accountinformation", 1)
module.ACCOUNTINFORMATION = var9
var9 = module.new("accountsettings")
module.ACCOUNTSETTINGS = var9
var9 = module.new("badges", 1)
module.BADGES = var9
var9 = module.new("inventory", 1)
module.INVENTORY = var9
var9 = module.new("catalog", 1)
module.CATALOG = var9
var9 = module.new("avatar", 1)
module.AVATAR = var9
var9 = "roblox://navigation"
module.MOBILENAV = var9
var9 = "https://ro.blox.com"
module.APPSFLYER = var9
return module