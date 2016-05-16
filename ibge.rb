#!/usr/bin/env ruby
# encoding: ISO-8859-1

require 'date'
require "selenium-webdriver"

# seleção básica

def selecao(b,nome,pos)
	b.find_element(:xpath, "//select[@name='#{nome}']/option[contains(text(),'#{pos}')]").click	
	return b
end

# radio buttom: gravar

def gravar(b)
	b.find_element(:xpath, "//input[@name='proc' and @value='2']").click
	return b
end

# nome de arquivo

def nome_de_arquivo(b,nome_arquivo)
	b.find_element(:name,'arquivo').send_keys nome_arquivo
	return b
end

# modalidade: "Imediata", "A posteriori (", "A posteriori e notifique-me","A posteriori e envie-me",

def modalidade(b,modalidade)
	b.find_element(:xpath, "//select[@name='modalidade']/option[contains(text(),'#{modalidade}')]").click
	if modalidade =~ /notifique|envie/
		b.find_element(:name, "email").send_keys 'grafitiapp@gmail.com'
	end
	return b
end

