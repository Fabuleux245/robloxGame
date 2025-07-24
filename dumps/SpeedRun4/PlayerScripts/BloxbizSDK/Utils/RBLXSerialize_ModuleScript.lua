-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:40
-- Luau version 6, Types version 3
-- Time taken: 0.003874 seconds

local Compress_upvr = require(script.Compress)
local module_upvr = {
	_IDENTITY = "RBLXSerialize";
	_AUTHOR = "Whim#2127";
	_VERSION = "v0.7";
	_DESCRIPTION = "A All-In-One Roblox instance and datatype serializer.";
	_LICENSE = "    MIT LICENSE\n    Copyright (c) 2022 Theron Akubuiro\n    Permission is hereby granted, free of charge, to any person obtaining a\n    copy of this software and associated documentation files (the\n    \"Software\"), to deal in the Software without restriction, including\n    without limitation the rights to use, copy, modify, merge, publish,\n    distribute, sublicense, and/or sell copies of the Software, and to\n    permit persons to whom the Software is furnished to do so, subject to\n    the following conditions:\n    The above copyright notice and this permission notice shall be included\n    in all copies or substantial portions of the Software.\n    THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS\n    OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF\n    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.\n    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY\n    CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,\n    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE\n    SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\n    ";
	Convertors = require(script.Convertors);
	SaveCFrames = true;
	UseBase92 = true;
	AutoRename = true;
	Encode = function(arg1, arg2) -- Line 32, Named "Encode"
	end;
	Decode = function(arg1, arg2) -- Line 33, Named "Decode"
	end;
}
local function var3_upvr(...) -- Line 35
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	require(script.Parent).pprint("[SuperBiz]["..module_upvr._IDENTITY..' '..module_upvr._VERSION.."]:", ...)
end
local base92_upvr = require(script.base92)
local Properties_upvr = require(script.Properties)
local var7_upvw = false
local function var6_upvr() -- Line 43
	--[[ Upvalues[4]:
		[1]: Properties_upvr (readonly)
		[2]: var3_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: var7_upvw (read and write)
	]]
	Properties_upvr.throw = var3_upvr
	Properties_upvr.SaveCFrames = module_upvr.SaveCFrames
	Properties_upvr.SaveSource = module_upvr.SaveSource
	Properties_upvr.AutoRename = module_upvr.AutoRename
	local function INLINED() -- Internal function, doesn't exist in bytecode
		local pcall_result1, pcall_result2 = pcall(function() -- Line 50
			--[[ Upvalues[1]:
				[1]: Properties_upvr (copied, readonly)
			]]
			return Properties_upvr:Fetch()
		end)
		var7_upvw = true
		return pcall_result1
	end
	if not var7_upvw and (not INLINED() or not pcall_result2) then
		var7_upvw = false
		return
	end
end
function module_upvr.Encode(arg1, arg2) -- Line 60
	--[[ Upvalues[6]:
		[1]: var6_upvr (readonly)
		[2]: Properties_upvr (readonly)
		[3]: var3_upvr (readonly)
		[4]: Compress_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: base92_upvr (readonly)
	]]
	var6_upvr()
	local typeof_result1 = typeof(arg1)
	if typeof_result1 == "Instance" then
		if #arg1:GetDescendants() == 0 then
		else
			typeof_result1 = typeof_result1..'s'
		end
	end
	local SOME_2 = script.Encoders:FindFirstChild(typeof_result1)
	if not SOME_2 then
		SOME_2 = script.Encoders:FindFirstChild("Value")
	end
	if not require(SOME_2)(Properties_upvr, arg1) then
		var3_upvr("Failure to encode "..typeof_result1)
		do
			return true
		end
		local var14
	end
	if (arg2 or true) and var14 then
		var14 = Compress_upvr.compress(var14)
	end
	if module_upvr.UseBase92 then
		return base92_upvr.encode(var14)
	end
	return var14
end
local Binary_upvr = require(script.Binary)
function module_upvr.Decode(arg1, arg2) -- Line 99
	--[[ Upvalues[7]:
		[1]: var6_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: base92_upvr (readonly)
		[4]: Compress_upvr (readonly)
		[5]: Binary_upvr (readonly)
		[6]: var3_upvr (readonly)
		[7]: Properties_upvr (readonly)
	]]
	var6_upvr()
	local var17
	if module_upvr.UseBase92 then
		var17 = base92_upvr.decode(var17)
	end
	if arg2 or true then
		var17 = Compress_upvr.decompress(var17)
	end
	local any_DecodeData_result1 = Binary_upvr.DecodeData(var17)
	if not any_DecodeData_result1 then
		var3_upvr("Instnace/Datatype failed to decode correctly!")
		return
	end
	local SOME = script.Decoders:FindFirstChild(any_DecodeData_result1.TypeOf)
	if not SOME then
		SOME = script.Encoders:FindFirstChild("Value")
	end
	return require(SOME)(Properties_upvr, any_DecodeData_result1)
end
return module_upvr