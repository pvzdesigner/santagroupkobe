function parseInt(Value)
	local Result = 0
	local Number = tonumber(Value)

	if Number ~= nil then
		if Number > 0 then
			Result = math.floor(Number)
		end
	end

	return Result
end
function generateTimer()
    return parseInt((GetGameTimer() + 1000 * 60 * 60 * 2) / 1000)
end

Promotion = {
    ["CidadeNobre"] = {
        ["timer"] = generateTimer(),
        ["hide_timer"] = false,
        ["image"] = "https://santaimagens.roleplayrp.com/img/imagens_variadas/vips/NobreOuro.png",
        ["button_text"] = "SAIBA MAIS",
        ["totalPrice"] = 147,
        ["discountPrice"] = 47, -- VALOR COM DESCONTO
        ["discountPercent"] = 68, -- VALOR COM DESCONTO
        ["title"] = 'VIP OURO', -- TITULO INTERNO DA PROMO
        ["video"] = 'https://www.youtube.com/watch?v=GDz0TaNGtS0', -- VIDEO DA PROMO
        ["link"] = "https://loja.cidadenobre.com/package/6691107", -- ID DO ITEM
        ["cupon"] = "VIPOURO" -- CUPOM A SER APLICADO
    },
    ["Caravelas"] = {
        ["timer"] = generateTimer(),
        ["hide_timer"] = false,
        ["image"] = "https://santaimagens.roleplayrp.com/img/imagens_variadas/vips/NobreOuro.png",
        ["button_text"] = "SAIBA MAIS",
        ["totalPrice"] = 147,
        ["discountPrice"] = 47, -- VALOR COM DESCONTO
        ["discountPercent"] = 68, -- VALOR COM DESCONTO
        ["title"] = 'VIP OURO', -- TITULO INTERNO DA PROMO
        ["video"] = 'https://www.youtube.com/watch?v=GDz0TaNGtS0', -- VIDEO DA PROMO
        ["link"] = "https://caravelas-rp.tebex.io/?currency=BRL", -- ID DO ITEM
        ["cupon"] = "VIPOURO" -- CUPOM A SER APLICADO
    },
    ["Maresia"] = {
        ["timer"] = generateTimer(),
        ["hide_timer"] = false,
        ["image"] = "https://santaimagens.roleplayrp.com/img/imagens_variadas/vips/NobreOuro.png",
        ["button_text"] = "SAIBA MAIS",
        ["totalPrice"] = 147,
        ["discountPrice"] = 47, -- VALOR COM DESCONTO
        ["discountPercent"] = 68, -- VALOR COM DESCONTO
        ["title"] = 'VIP OURO', -- TITULO INTERNO DA PROMO
        ["video"] = 'https://www.youtube.com/watch?v=GDz0TaNGtS0', -- VIDEO DA PROMO
        ["link"] = "https://lojamaresia.santagroup.gg/package/6647093", -- ID DO ITEM
        ["cupon"] = "VIPOURO" -- CUPOM A SER APLICADO
    },
    ["Universo"] = {
        ["timer"] = generateTimer(),
        ["hide_timer"] = false,
        ["image"] = "https://santaimagens.roleplayrp.com/img/imagens_variadas/vips/UniversoOuro.png",
        ["button_text"] = "SAIBA MAIS",
        ["totalPrice"] = 147,
        ["discountPrice"] = 47, -- VALOR COM DESCONTO
        ["discountPercent"] = 68, -- VALOR COM DESCONTO
        ["title"] = 'VIP OURO', -- TITULO INTERNO DA PROMO
        ["video"] = 'https://www.youtube.com/watch?v=GDz0TaNGtS0', -- VIDEO DA PROMO
        ["link"] = "https://loja.universoroleplay.com/package/6559279", -- ID DO ITEM
        ["cupon"] = "VIPOURO" -- CUPOM A SER APLICADO
    },
    ["Kingdom"] = {
        ["timer"] = generateTimer(),
        ["hide_timer"] = false,
        ["image"] = "https://santaimagens.roleplayrp.com/img/imagens_variadas/vips/goldvip2.png",
        ["button_text"] = "SAIBA MAIS",
        ["totalPrice"] = 30,
        ["discountPrice"] = 20, -- VALOR COM DESCONTO
        ["discountPercent"] = 33, -- % DESCONTO
        ["title"] = 'GOLDEN VIP', -- TITULO INTERNO DA PROMO
        ["video"] = 'https://www.youtube.com/watch?v=BLQVgsuQnKc&ab', -- VIDEO DA PROMO
        ["link"] = "https://store.kngestate.com/package/6566125?currency=GBP", -- ID DO ITEM
        ["cupon"] = "" -- CUPOM A SER APLICADO
    },
    ["Alexandria"] = {
        ["timer"] = generateTimer(),
        ["hide_timer"] = false,
        ["image"] = "https://santaimagens.roleplayrp.com/img/imagens_variadas/vips/AlexandriaOuro.png",
        ["button_text"] = "SAIBA MAIS",
        ["totalPrice"] = 147,
        ["discountPrice"] = 47, -- VALOR COM DESCONTO
        ["discountPercent"] = 68, -- VALOR COM DESCONTO
        ["title"] = 'VIP OURO', -- TITULO INTERNO DA PROMO
        ["video"] = 'https://www.youtube.com/watch?v=GDz0TaNGtS0', -- VIDEO DA PROMO
        ["link"] = "https://lojaalexandria.santagroup.gg/package/6559218", -- ID DO ITEM
        ["cupon"] = "VIPOURO" -- CUPOM A SER APLICADO
    },
    ["Santa"] = {
        ["timer"] = generateTimer(),
        ["hide_timer"] = false,
        ["image"] = "https://santaimagens.roleplayrp.com/img/imagens_variadas/vips/SantaOuro.png",
        ["button_text"] = "SAIBA MAIS",
        ["totalPrice"] = 147,
        ["discountPrice"] = 47, -- VALOR COM DESCONTO
        ["discountPercent"] = 68, -- VALOR COM DESCONTO
        ["title"] = 'VIP OURO', -- TITULO INTERNO DA PROMO
        ["video"] = 'https://www.youtube.com/watch?v=GDz0TaNGtS0', -- VIDEO DA PROMO
        ["link"] = "https://loja.cidadesantarp.com/package/6559278", -- ID DO ITEM
        ["cupon"] = "VIPOURO" -- CUPOM A SER APLICADO
    },
}

BattlePassLink = {
    ["Santa"] = "https://loja.cidadesantarp.com/package/6549154",
    ["Galaxy"] = "",
    ["Universo"] = "https://loja.universoroleplay.com/?currency=BRL",
    ["CidadeNobre"] = "https://loja.cidadenobre.com/package/6546080",
    ["Caravelas"] = "https://caravelas-rp.tebex.io/package/6734251",
    ["Kingdom"] = "https://store.kngestate.com/package/6553619",
    ["Grande"] = "",
    ["Alexandria"] = "",
    ["Maresia"] = "https://lojamaresia.santagroup.gg",
    ["Gaules"] = "",
    ["Fronteira"] = "",
}

StoreLink = {
    ["Santa"] = "https://loja.cidadesantarp.com",
    ["Galaxy"] = "https://lojagalaxy.santagroup.gg",
    ["Universo"] = "https://loja.universoroleplay.com",
    ["Caravelas"] = "https://caravelas-rp.tebex.io/",
    ["CidadeNobre"] = "https://loja.cidadenobre.com/category/vip?currency=BRL",
    ["Kingdom"] = "https://store.kngestate.com/category/2818259?currency=GBP&currency=GBP",
    ["Grande"] = "https://lojagrande.santagroup.gg",
    ["Maresia"] = "https://lojamaresia.santagroup.gg",
    ["Gaules"] = "https://lojagaules.santagroup.gg",
    ["Fronteira"] = "https://fronteiraroleplay.hydrus.gg",
    ["Alexandria"] = "https://lojaalexandria.santagroup.gg",
}

DiamondLink = {
    ["Santa"] = "https://loja.cidadesantarp.com/?currency=BRL",
    ["Galaxy"] = "",
    ["Universo"] = "https://loja.universoroleplay.com/?currency=BRL",
    ["Caravelas"] = "https://caravelas-rp.tebex.io/category/diamantes?currency=EUR",
    ["CidadeNobre"] = "https://loja.cidadenobre.com/package/6565188",
    ["Kingdom"] = "https://store.kngestate.com/category/diamonds?currency=GBP",
    ["Grande"] = "",
    ["Alexandria"] = "",
    ["Maresia"] = "https://lojamaresia.santagroup.gg/category/diamantes?currency=BRL",
    ["Gaules"] = "",
    ["Fronteira"] = "",
}


MothlyVip = {
    ["Universo"] = {
        ["name"] = "VIP Rico bem novinho",
        ["coupon"] = "RICONOVINHO",
        ["description"] = [[
            <b>VIP Rico bem novinho</b>
            <br>
            <br>
            <b>Benefícios:</b>
            <br>
            - 10% de desconto em todos os produtos
            - 10% de desconto em todos os produtos
        ]],
        ["validity"] = "DISPONIVEL APENAS ESTE MÊS",
        ["link"] = "https://loja.cidadesantarp.com/package/6667563",
        ["image"] = "https://santaimagens.roleplayrp.com/img/imagens_variadas/Ouro.png",
    },
    ["Maresia"] = {
        ["name"] = "VIP OURO",
        ["coupon"] = "VIPOURO",
        ["description"] = [[
            <b>VIP Ouro</b>
            <br>
            <br>
            <b>Benefícios:</b>
            <br>
            - 10% de desconto em todos os produtos
            - 10% de desconto em todos os produtos
        ]],
        ["validity"] = "DISPONIVEL APENAS ESTE MÊS",
        ["link"] = "https://lojamaresia.santagroup.gg/package/6647093",
        ["image"] = "https://santaimagens.roleplayrp.com/img/imagens_variadas/vips/MaresiaOuro.png'",
    },
}

FlashOffer = {
    ["Universo"] = {
        ["name"] = "VIP Rico bem novinho",
        ["image"] = "https://santaimagens.roleplayrp.com/img/imagens_variadas/Ouro.png",
        ["percent"] = 10,
        ["price"] = 1000,
        ["discount"] = 100,
        ["validity"] = "Oferta valida ate hoje.",
        ["link"] = "https://loja.cidadesantarp.com/package/6667563",
    },
    ["Maresia"] = {
        ["name"] = "VIP OURO",
        ["image"] = "https://santaimagens.roleplayrp.com/img/imagens_variadas/vips/MaresiaOuro.png",
        ["percent"] = 68,
        ["price"] = 147,
        ["discount"] = 47,
        ["validity"] = "Oferta valida ate hoje.",
        ["link"] = "https://lojamaresia.santagroup.gg/package/6647093",
    }   
}

ExclusiveLink = {
    ["Universo"] = "https://loja.cidadesantarp.com",
    ["Maresia"] = "https://lojamaresia.santagroup.gg/?currency=BRL",
}