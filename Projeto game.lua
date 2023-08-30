--[[
    Infos do monstro
        (Nome, cor, som, história, drop)
    Atributos 
        (Vida, Defesa, Ataque, Mana, Inteligência)
    Habilidades
         (Poderes, emoji)


]]

--- Habilitar UTF-8 no terminal
os.execute("chcp 65001")



---- Infos monstro -----

local monstername = "Troll"
local color = "Brown"
local sound = "Give my money"
local history = "O troll é o protetor da floresta"
local drop = "Lança"

----- Atributos -----
local lifeAttribute = 10
local attackAttribute = 10
local manaAttribute = 1
local defenseAttribute = 6
local inteligenceAttribute = 8

----- Habilidades ---- 

local ability = "Arrow"
local emojiAbility = "🏹"


---- Função que recebe o atributo e nos retorna uma barra de progresso em string / texto
local function getProgressBar(attribute)
    local fullChar = "⬜"
    local emptyChar = "⬛"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

----- Cartão -----

print("=========================================")
print("!---Info monstro---")
print("|", monstername)
print("|", color)
print("|", sound)
print("|", drop)
print("|", history)
print("|")
print("|---Atributos---")
print("|  Vida:        " .. getProgressBar(lifeAttribute))
print("|  Ataque:      " .. getProgressBar(attackAttribute))
print("|  Mana:        " .. getProgressBar(manaAttribute))
print("|  Defesa:      " .. getProgressBar(defenseAttribute))
print("|  Inteligência " .. getProgressBar(inteligenceAttribute))
print("|")
print("|---Habilidades---")
print("|", ability)
print("|", emojiAbility)
print("|")
print("=========================================")

--[[
    Infos do monstro no mapa:
        -Local de respawn
        -Horário do respawn
        -Tempo de cada respawn
        -Quantidade de mobs ou monstros
        -Valor de exeperiência por kill
]]

-----------Infos do monstro no mapa ---------------

local respawn = "Tower"
local hour = "alltime"
local timeRespawn = 2 
local amountMonstersRespawn = 6
local experience = 8


print("=========================================")
print("|",  respawn)
print("|",  hour)
print("|",  timeRespawn)
print("|",  amountMonstersRespawn)
print("|",  experience)
print("=========================================")



