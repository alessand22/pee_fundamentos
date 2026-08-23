load("bateria.RData")   # carregar dados

lab.size <- 0.9

# Fonte mais bonita
par(family = "serif", font = 3)   # serif + itálico
par(mai = c(0.8, 0.6, 0.6, 0.4))  # margens mais equilibradas


grafico <- boxplot(bateria$vida_util,
                   yaxt = "n",
                   col = "#E8E8E8",
                   border = "#555555",
                   boxwex = 0.4)

title(main = "Boxplot", cex.main = 1.6)

# ---- Anotações ----

# Limite inferior
text(0.55, grafico$stats[1], "Lim. inferior", cex = lab.size)
arrows(0.65, grafico$stats[1], 0.80, grafico$stats[1],
       length = .1, angle = 20)

# 1º quartil
text(0.55, grafico$stats[2], "1º Quartil", cex = lab.size)
text(0.55, grafico$stats[2] - 0.15, "(25%)", cex = lab.size)
arrows(0.65, grafico$stats[2], 0.80, grafico$stats[2],
       length = .1, angle = 20)

# Mediana
text(0.55, grafico$stats[3], "Mediana", cex = lab.size)
text(0.55, grafico$stats[3] - 0.15, "(50%)", cex = lab.size)
arrows(0.65, grafico$stats[3], 0.80, grafico$stats[3],
       length = .1, angle = 20)

# 3º quartil
text(0.55, grafico$stats[4], "3º Quartil", cex = lab.size)
text(0.55, grafico$stats[4] - 0.15, "(75%)", cex = lab.size)
arrows(0.65, grafico$stats[4], 0.80, grafico$stats[4],
       length = .1, angle = 20)

# Limite superior
text(0.55, grafico$stats[5], "Lim. superior", cex = lab.size)
arrows(0.65, grafico$stats[5], 0.80, grafico$stats[5],
       length = .1, angle = 20)

# Outliers
for (i in seq_along(grafico$out)) {
  text(0.75, grafico$out[i], "Outlier", cex = lab.size)
  arrows(0.82, grafico$out[i], 0.95, grafico$out[i],
         length = .1, angle = 20)
}

# IQR
text(1.25, mean(grafico$stats[2:4]), "IQR", cex = lab.size)
arrows(1.20, grafico$stats[2], 1.20, grafico$stats[4],
       length = .1, angle = 20, code = 3)

