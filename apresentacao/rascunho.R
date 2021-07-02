# Até agora aprendemos ferramentas do R para extrair, transformar, analisar, modelar. 
# Uma etapa tão importante quanto, é aprensentar/comunicar o que foi analisado.
# No curso de R Markdown aprenderemos a como criar relatórios diretamente pelo R, 
# onde veremos como funciona a sintaxe básica do rmarkdown. 
# Veremos também os principais formatos de arquivos de saída (notebooks, slides, word, html e pdf).

### R Markdown - Introdução

## Os arquivos R Markdown são projetados para serem usados de três maneiras:
  
# 1 - Para se comunicar com os tomadores de decisão, que desejam se concentrar nas conclusões, não no código por trás da análise (Relatório).
# 2 - Para colaborar com outros cientistas de dados, que estão interessados em suas conclusões e como você chegou até elas (Relatório e Código).
# 3 - Como documentação, onde você pode capturar não apenas o que fez, mas também a sua linha de raciocínio.

# Dica: Sempre ter em mão a cheatsheets do R Markdown https://rstudio.com/resources/cheatsheets/ 

# Pré-requisito: Você precisa do pacote rmarkdown, o RStudio instala automaticamente.


## R Markdown básico
# Este é um arquivo R Markdown, um arquivo de texto simples que possui a extensão .Rmd:

# ---
# title: "Diamond sizes"
# date: 2016-08-25
# output: html_document
# ---
#   
#   ```{r setup, include = FALSE}
# library(ggplot2)
# library(dplyr)
# 
# smaller <- diamonds %>% 
#   filter(carat <= 2.5)
# ```
# 
# We have data about `r nrow(diamonds)` diamonds. Only 
# `r nrow(diamonds) - nrow(smaller)` are larger than
# 2.5 carats. The distribution of the remainder is shown
# below:
#   
#   ```{r, echo = FALSE}
# smaller %>% 
#   ggplot(aes(carat)) + 
#   geom_freqpoly(binwidth = 0.01)
# ```

# Ele contém três tipos de conteúdo importantes:
  
# Um cabeçalho YAML (opcional) com --- antes e depois.
# Partes de código R cercados por ```.
# Texto misturado com formatação de texto simples como # heading e _italics_.

# Ao abrir um .Rmd, você obtém uma interface de notebook onde o código e a saída são intercalados. 
# Você pode executar cada bloco de código clicando no ícone Executar (parece um botão de reprodução na parte superior do bloco) 
# ou pressionando Cmd / Ctrl + Shift + Enter. O RStudio executa o código e exibe os resultados em linha com o código:


# Para produzir um relatório completo, código e resultados, clique em "Knit" 
# ou pressione Cmd / Ctrl + Shift + K. 
# Você também pode fazer isso programaticamente com rmarkdown::render("exemplos/exemplo_1.Rmd", output_format = 'all'). 
# Isso exibirá o relatório no painel do visualizador e criará um arquivo HTML autocontido 
# que você pode compartilhar com outras pessoas.

# Quando você tricota o documento, R Markdown envia o arquivo .Rmd para knitr(http://yihui.name/knitr/), 
# que executa todos os blocos de código e cria um novo documento de marcação (.md) que inclui o código e seus resultado. 
# O arquivo markdown gerado pelo knitr é então processado por pandoc(http://pandoc.org/), que é responsável por criar o arquivo finalizado. 
# A vantagem desse fluxo de trabalho de duas etapas é que você pode criar uma ampla variedade de formatos de saída, 
# conforme aprenderá nos formatos R markdown .

# Para construção de documentos LaTeX usaremos o TinyTex:
# install.packages('tinytex')
# tinytex::install_tinytex()  # instalar o TinyTeX
















