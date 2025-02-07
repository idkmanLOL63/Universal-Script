local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Splix"))()
local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()
local speed = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/Lua-Speed/refs/heads/main/speed.lua"))()
local chams = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/Roblox-Chams-Highlight/refs/heads/main/Highlight.lua"))()
local dhlock = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/DH-Lua-Lock/refs/heads/main/Main.lua"))()
local window = library:new({textsize = 13.5,font = Enum.Font.RobotoMono,name = "Starlight - Universal",color = Color3.fromRGB(225,58,81)})
local aimtab = window:page({name = "Aim Features"})

local section1 = aimtab:section({name = "Aim Settings",side = "left",size = 250})
section1:toggle({name = "Aimbot",def = false,callback = function(value)
  tog = value
  getgenv().dhlock.enabled = tog
end})

section1:toggle({name = "Show FOV",def = false,callback = function(value)
  tog = value
  getgenv().dhlock.showfov = tog
end})

section1:slider({name = "FOV",def = 50, max = 500,min = 50,rounding = true,ticking = false,measuring = "Fov",callback = function(value)
   getgenv().dhlock.fov = value
end})

section1:button({name = "No hold aimbot",callback = function()
   getgenv().dhlock.toggle = true
end})

section1:toggle({name = "No hold Aimbot",def = false,callback = function(value)
  tog = value
  getgenv().dhlock.toggle = tog
end})

section1:toggle({name = "Aimbot 2",def = false,callback = function(value)
  tog = value
  Aimbot.Load()
end})

section1:toggle({name = "Show FOV for Aimbot 2",def = false,callback = function(value)
  tog = value
  getgenv().ExunysDeveloperAimbot.FOVSettings.Visible = tog
end})

section1:slider({name = "Aimbot 2 FOV",def = 80, max = 500,min = 50,rounding = true,ticking = false,measuring = "Fov",callback = function(value)
   getgenv().ExunysDeveloperAimbot.FOVSettings.Radius = Value
end})

section1:keybind({name = "Aimbot Key(Hold Button to aim)",def = nil,callback = function(key)
   getgenv().dhlock.keybind = key
end})

local esptab = window:page({name = "Visuals"})
local section2 = esptab:section({name = "Visuals Settings",side = "left",size = 250})
section2:toggle({name = "Chams",def = false,callback = function(value)
  tog = value
  getgenv().chams.enabled = tog
end})

section2:slider({name = "Chams Fill",def = 1, max = 5,min = 0,rounding = true,ticking = false,measuring = "Fill",callback = function(value)
   getgenv().chams.fillTransparency = value
end})

local playertab = window:page({name = "Players"})

local section3 = playertab:section({name = "Players Settings",side = "left",size = 250})
section3:toggle({name = "Enabled Speed",def = false,callback = function(value)
  tog = value
  getgenv().speed.enabled = tog
end})

section3:slider({name = "Speed",def = 16, max = 500,min = 16,rounding = true,ticking = false,measuring = "Speed",callback = function(value)
   getgenv().speed.speed = value
end})

section3:toggle({name = "Infinite Jump(Can't turn off)",def = false,callback = function(value)
  tog = value
  	game:GetService("UserInputService").JumpRequest:connect(function()
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")		
	end)
end})
