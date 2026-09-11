SELECT idCliente,
        -- QtdePontos,
        -- QtdePontos + 10 AS qtdePontosPlus10,
        -- QtdePontos * 2 AS qtdePontosMulti2,
        DtCriacao,

        substring(DtCriacao, 1, 19) AS dtSubString,

        datetime (substring(DtCriacao, 1, 19)) AS dtCriacaoNova,
        
        -- pegando dia da semana
        strftime('%w', datetime (substring(DtCriacao, 1, 19))) AS diaSemana
        
FROM clientes
