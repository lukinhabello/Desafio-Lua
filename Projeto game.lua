--[[
    Infos do monstro
        (Nome, cor, som, história, drop)
    Atributos 
        (Vida, Defesa, Ataque, Mana, Inteligência)
    Habilidades
         


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
        if i >= attribute then
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
