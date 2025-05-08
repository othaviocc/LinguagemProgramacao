def a_estrela(grafo, inicio, alvo, heuristica)
    aberta = [[heuristica[inicio], inicio]]
    fechada = []
    g = { inicio => 0 }
    f = { inicio => heuristica[inicio] }
    anterior = {}
    until aberta.empty?
      aberta.sort_by! { |custo, _| custo }
      _, atual = aberta.shift
      return reconstruir_caminho(anterior, atual) if atual == alvo
      fechada << atual
      grafo[atual].each do |vizinho, custo|
        next if fechada.include?(vizinho)  
        g_vizinho = g[atual] + custo
        if !aberta.any? { |_, n| n == vizinho } || g_vizinho < g[vizinho].to_i
          anterior[vizinho] = atual
          g[vizinho] = g_vizinho
          f[vizinho] = g_vizinho + heuristica[vizinho]
          aberta << [f[vizinho], vizinho] unless aberta.any? { |_, n| n == vizinho }
        end
      end
    end
    return nil 
  end 
  def reconstruir_caminho(anterior, atual)
    caminho = [atual]
    while anterior[atual]
      atual = anterior[atual]
      caminho.unshift(atual)
    end
    caminho
  end
  

  