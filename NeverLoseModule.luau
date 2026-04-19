--[[
  Neverlose.cc UI Library
  Author: 4lpaca
	License: MIT
  Discord: https://arceney.win/discord
  Other-Projects: https://4lpaca.win
]]

--[[
https://raw.githubusercontent.com/4lpaca-pin/NeverLose/refs/heads/main/LICENSE
MIT License

Copyright (c) 2026 4lpacaLoL

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
]]

local NeverLose = loadstring(game:HttpGet("https://raw.githubusercontent.com/kiwixof/NeverLoseGuiModule/refs/heads/main/.luau"))()
local Notification = NeverLose:CreateNotification();
local UiHandler = {}

function UiHandler.MakeWindow(_name: string, _content: string, _scale: string, _3DRender: boolean)
    local window = NeverLose:CreateWindow({
	Logo = NeverLose.GlobalLogo,
	Name = _name or "NeverLose",
	Content = _content or "NeverLose",
	Size = NeverLose.Scales[_scale or "Mobile"],
	Enable3DRenderer = _3DRender or false,
	Keybind = "Insert"
    })

    return window
end

function UiHandler.MakeTab(window,_icon,_name)
    local tab = window:AddTab({
        Icon = _icon or "",
        Name = _name or "Tab"
    })

    return tab
end

function UiHandler.MakeSection(tab,_name)
    local section = tab:AddSection({
        Name = _name or "Section"
    })

    return section
end

function UiHandler.MakeRightSection(window,_name)
    local section = window:AddSection({
        Name = _name or "Right Section",
        Position = "right"
    })

    return section
end

function UiHandler.MakeLabel(_section,_name,_value)
    local Label = _section:AddLabel(_name,_value or false);
    return Label
end

function UiHandler.MakeToggle(_label,callback,defvalue,flag)
    local Toggle = _label:AddToggle({
    Default = defvalue or false,
    Flag = flag or "MyToggle",
    Callback = callback,
    })

    return Toggle
end

function UiHandler.MakeDropDown(_Label,_def,_value,_multi,callback,_size)
    local DropDown =  _Label:AddDropDown({
        Default = _def or "nil",
        Values = _value or {1,2,3},
        Multi = _multi or false,
        Callback = callback,
        AutoUpdate = false,
        Flag = "MyDropDown",
        Size = _size
    })

    return DropDown
end

function UiHandler.MakeButton(_section,_icon,_name,callback)
    local Button = _section:AddButton({
    Icon = _icon or '',
    Name = _name or "My Button",
	Callback = callback or 
    function ()
        print("button clicked")
    end,
    })

    return Button
end

function UiHandler.MakeSlider(_label,_def,_min,_max,_size,callback,_flag,_round)
    local Slider = _label:AddSlider({
    Default = _def or 5,
    Min = _min or 0,
    Max = _max or 15,
    Type = "", -- Opional
    Rounding = _round or 1,
    
    Flag = _flag or "MySlider",
    Size = _size, -- Size of Slider <Pixel> (Opional)
    Callback = callback
    })

    return Slider
end

function UiHandler.MakeNotify(_title,_content,duration)
    local notif = Notification.new({
    Title = "Notify",
    Content = "Copied",
    Duration = 1,
    })

    return notif
end

return UiHandler
