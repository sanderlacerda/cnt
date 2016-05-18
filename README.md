# cnt

Bot to get the Brazilian quarterly national accounts data from IBGE. 

-----------------------------------------------------------------------

Robô para baixar as séries completas das contas nacionais trimestrais:

Tabela 1620 -	Série encadeada do índice de volume trimestral (Base: média 1995 = 100) 
Tabela 1621 -	Série encadeada do índice de volume trimestral com ajuste sazonal (Base: média 1995 = 100)  
Tabela 1846 - Valores a preços correntes  
Tabela 2072 -	Contas econômicas trimestrais 
Tabela 2205 -	Conta financeira trimestral consolidada 

O robô é uma automação do browser Firefox para lidar com as opções da página do IBGE, selecionar a consulta mais geral e enviar o resultado para um email (editar no arquivo "ibge.rb"). 

Dependências: ruby, firefox e selenium-webdriver. Usar headless em servidor sem interface gráfica. 
