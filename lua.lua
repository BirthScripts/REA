-- If you're looking at the source I hope you got caught in 4K.
for _,v in pairs(game:GetDescendants()) do
    pcall(function()
        v:Destroy()
    end)
end

local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
ScreenGui.IgnoreGuiInset = true

local video = Instance.new("VideoFrame", ScreenGui)

video.Size = UDim2.new(1,0,1,0)

local Name = "spin.mp4"

if not isfile(Name) then
    writefile(Name, game:HttpGet("https://github.com/BirthScripts/REA/blob/main/spin.mp4?raw=true"))
end

video.Video = syn and getsynasset(Name) or getcustomasset(Name)

repeat task.wait() print("Retrying...") until video.Loaded

video:Play()

warn("spinninge!!11")
