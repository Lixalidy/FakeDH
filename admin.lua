local AdminPrefix = "!" --Prefix
local Players = game:GetService("Players")
local LocalP = Players.LocalPlayer;
getgenv().AdminTable = {
  [472813752] = {["Access"] = 5};
}

local Alt1 = 3668432275 --lixalidyAlt1
local Alt2 = 3668433501 --lixalidyAlt2
local Alt3 = 2547373189 --StarsAboveTokyo


getgenv().psearch = function(Name)
  local Inserted = {}
  for _, p in pairs(Players:GetPlayers()) do
      if string.lower(string.sub(p.Name,1, string.len(Name))) == string.lower(Name) then
          table.insert(Inserted, p);return p
      end
  end
end 


getgenv().AdminCmdList = { -- game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("yeah,yeah!", "All")
	["fastsetupt"] = {
        ["CommandFunc"] = function(Player, self, CmdPlayer)
            if Player == LocalP or Player == "all" then
                if game:GetService("Players").LocalPlayer.UserId == Alt1 then --lixalidyAlt1
            workspace[game.Players.LocalPlayer.Name].Remotes.Ragdoll:Destroy()
              workspace[game.Players.LocalPlayer.Name].Ragdoll:Destroy()
              workspace[game.Players.LocalPlayer.Name].Downed:Destroy()
              workspace[game.Players.LocalPlayer.Name].Client:Destroy()
              workspace[game.Players.LocalPlayer.Name].LocalScript:Destroy()
              game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Turned on Godmode!", "All")
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(39.5181999, 18.3476658, -103.959091, -0.943409979, 1.0296997e-07, 0.33162874, 8.2371777e-08, 1, -7.61683623e-08, -0.33162874, -4.45411459e-08, -0.943409979)
                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.X, game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Y + 15, game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Z)
                    wait(0.08)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Airlocked!", "All")
              end
              
              if game:GetService("Players").LocalPlayer.UserId == Alt3 then --StarsAboveTokyo
            workspace[game.Players.LocalPlayer.Name].Remotes.Ragdoll:Destroy()
              workspace[game.Players.LocalPlayer.Name].Ragdoll:Destroy()
              workspace[game.Players.LocalPlayer.Name].Downed:Destroy()
              workspace[game.Players.LocalPlayer.Name].Client:Destroy()
              workspace[game.Players.LocalPlayer.Name].LocalScript:Destroy()
              game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Turned on Godmode!", "All")
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(48.4205399, 18.5193615, -102.190155, -0.99999696, 5.46119772e-08, 0.00246492634, 5.45902985e-08, 1, -8.86199292e-09, -0.00246492634, -8.72740546e-09, -0.99999696)
                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.X, game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Y + 15, game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Z)
                    wait(0.08)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
             game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Airlocked!", "All")
              end
              
              if game:GetService("Players").LocalPlayer.UserId == Alt2 then --lixalidyAlt2
            workspace[game.Players.LocalPlayer.Name].Remotes.Ragdoll:Destroy()
              workspace[game.Players.LocalPlayer.Name].Ragdoll:Destroy()
              workspace[game.Players.LocalPlayer.Name].Downed:Destroy()
              workspace[game.Players.LocalPlayer.Name].Client:Destroy()
              workspace[game.Players.LocalPlayer.Name].LocalScript:Destroy()
              game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Turned on Godmode!", "All")
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(56.8177223, 18.5193615, -104.02346, -0.933894515, -9.62486197e-08, -0.357548684, -6.69064519e-08, 1, -9.44348386e-08, 0.357548684, -6.42698623e-08, -0.933894515)
                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.X, game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Y + 15, game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Z)
                    wait(0.08)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
             game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Airlocked!", "All")
              end
            end
        end;
        ["Clearence"] = {[5] = true;};
    };
    ["forcestop"] = {
        ["CommandFunc"] = function(Player, self, CmdPlayer)
            if Player == LocalP or Player == "all" then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Force Stop has been activated. | Forcing all accounts to crash their client..", "All")
                wait(3)
                game.Players.LocalPlayer:Kick("Force Stop has been activated.")
            end
        end;
        ["Clearence"] = {[5] = true;};
    };
    ["alert1"] = {
        ["CommandFunc"] = function(Player, self, CmdPlayer)
            if Player == LocalP or Player == "all" then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Server Status Warning : More than 500 parts have been detected in the games workspace!", "All")
            end
        end;
        ["Clearence"] = {[5] = true;};
    };
    ["alert2"] = {
        ["CommandFunc"] = function(Player, self, CmdPlayer)
            if Player == LocalP or Player == "all" then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("WARINING : More than 1000 parts have been detected in the games workspace! The server might crash.. Please join another server to save your money!", "All")
            end
        end;
        ["Clearence"] = {[5] = true;};
    };
    ["alert3"] = {
        ["CommandFunc"] = function(Player, self, CmdPlayer)
            if Player == LocalP or Player == "all" then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("SERVER WARINING : 1500 parts have been detected in the games workspace! At this rate the game WILL crash!", "All")
            end
        end;
        ["Clearence"] = {[5] = true;};
    };
    ["crashgame"] = {
        ["CommandFunc"] = function(Player, self, CmdPlayer)
            if Player == LocalP or Player == "all" then
                print("still working on crash")
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
    ["fastsetupbank"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              if game:GetService("Players").LocalPlayer.UserId == Alt1 then --lixalidyAlt1
            workspace[game.Players.LocalPlayer.Name].Remotes.Ragdoll:Destroy()
              workspace[game.Players.LocalPlayer.Name].Ragdoll:Destroy()
              workspace[game.Players.LocalPlayer.Name].Downed:Destroy()
              workspace[game.Players.LocalPlayer.Name].Client:Destroy()
              workspace[game.Players.LocalPlayer.Name].LocalScript:Destroy()
              game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Turned on Godmode!", "All")
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(35.2141533, 4.98986959, -56.0828934, 0.999426425, 4.04291036e-08, -0.0338644274, -4.18725037e-08, 1, -4.191374e-08, 0.0338644274, 4.33076899e-08, 0.999426425)
                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.X, game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Y + 15, game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Z)
                    wait(0.08)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Airlocked!", "All")
              end
              
              if game:GetService("Players").LocalPlayer.UserId == Alt3 then --StarsAboveTokyo
            workspace[game.Players.LocalPlayer.Name].Remotes.Ragdoll:Destroy()
              workspace[game.Players.LocalPlayer.Name].Ragdoll:Destroy()
              workspace[game.Players.LocalPlayer.Name].Downed:Destroy()
              workspace[game.Players.LocalPlayer.Name].Client:Destroy()
              workspace[game.Players.LocalPlayer.Name].LocalScript:Destroy()
              game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Turned on Godmode!", "All")
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16.8565578, 4.25000191, -58.8718567, 0.999942422, 8.05657319e-09, -0.0107309166, -7.82421594e-09, 1, 2.16950919e-08, 0.0107309166, -2.16098819e-08, 0.999942422)
                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.X, game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Y + 15, game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Z)
                    wait(0.08)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
             game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Airlocked!", "All")
              end
              
              if game:GetService("Players").LocalPlayer.UserId == Alt2 then --lixalidyAlt2
            workspace[game.Players.LocalPlayer.Name].Remotes.Ragdoll:Destroy()
              workspace[game.Players.LocalPlayer.Name].Ragdoll:Destroy()
              workspace[game.Players.LocalPlayer.Name].Downed:Destroy()
              workspace[game.Players.LocalPlayer.Name].Client:Destroy()
              workspace[game.Players.LocalPlayer.Name].LocalScript:Destroy()
              game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Turned on Godmode!", "All")
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.86879551, 4.47484398, -56.7688141, 0.999936163, -7.5750151e-08, -0.0113011263, 7.50762368e-08, 1, -6.00566636e-08, 0.0113011263, 5.92043783e-08, 0.999936163)
                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.X, game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Y + 15, game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Z)
                    wait(0.08)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
             game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Airlocked!", "All")
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
  ["setupbank"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              if game:GetService("Players").LocalPlayer.UserId == Alt1 then --lixalidyAlt1
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(35.2141533, 4.98986959, -56.0828934, 0.999426425, 4.04291036e-08, -0.0338644274, -4.18725037e-08, 1, -4.191374e-08, 0.0338644274, 4.33076899e-08, 0.999426425)
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Setup at Bank!", "All")
              end
              if game:GetService("Players").LocalPlayer.UserId == Alt3 then --StarsAboveTokyo
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16.8565578, 4.25000191, -58.8718567, 0.999942422, 8.05657319e-09, -0.0107309166, -7.82421594e-09, 1, 2.16950919e-08, 0.0107309166, -2.16098819e-08, 0.999942422)
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Setup at Bank!", "All")
              end
              if game:GetService("Players").LocalPlayer.UserId == Alt2 then --lixalidyAlt2
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.86879551, 4.47484398, -56.7688141, 0.999936163, -7.5750151e-08, -0.0113011263, 7.50762368e-08, 1, -6.00566636e-08, 0.0113011263, 5.92043783e-08, 0.999936163)
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Setup at Bank!", "All")
              end
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
  ["free"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
             game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
             game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Unairlocked!", "All")
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
    ["admin"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(48599.671875, 5676.1220703125, -953.8775024414062)
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
    ["bring"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Lixalidy.HumanoidRootPart.Position)
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
    ["say"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(self, "All")
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
    ["ac"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
             game:GetService("ReplicatedStorage").userKickHack:FireServer()
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
      ["Clearence"] = {[5] = true;};
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

local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
sethiddenproperty(l,"Technology",2)
sethiddenproperty(t,"Decoration",false)
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = 0
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(w:GetDescendants()) do
    if v:IsA("BasePart") and not v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif (v:IsA("Decal") or v:IsA("Texture")) and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") and decalsyeeted then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    elseif v:IsA("SpecialMesh") and decalsyeeted  then
        v.TextureId=0
    elseif v:IsA("ShirtGraphic") and decalsyeeted then
        v.Graphic=0
    elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
        v[v.ClassName.."Template"]=0
    end
end
for i = 1,#l:GetChildren() do
    e=l:GetChildren()[i]
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
w.DescendantAdded:Connect(function(v)
    wait()--prevent errors and shit
   if v:IsA("BasePart") and not v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") and decalsyeeted then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    elseif v:IsA("SpecialMesh") and decalsyeeted then
        v.TextureId=0
    elseif v:IsA("ShirtGraphic") and decalsyeeted then
        v.ShirtGraphic=0
    elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
        v[v.ClassName.."Template"]=0
    end
end)

--game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Scripted by Lixalidy.", "All")
print("working")
