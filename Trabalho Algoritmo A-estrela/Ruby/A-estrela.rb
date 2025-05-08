def ler_mapa(caminho)
  linhas = File.readlines(caminho)
  mapa = linhas.map do |linha|
    linha.strip.chars.map(&:to_i)
  end
  return mapa
end

def vizinhos(posicao, mapa)
  x, y = posicao
  movimentos = [[1, 0], [-1, 0], [0, 1], [0, -1]]
  vizinhos_validos = movimentos.map do |dx, dy|
    [x + dx, y + dy]
  end.select do |nx, ny|
    nx.between?(0, mapa.size - 1) &&
    ny.between?(0, mapa[0].size - 1) &&
    [0, 3].include?(mapa[nx][ny])
  end
  return vizinhos_validos
end

def heur(a, b)
  dx = (a[0] - b[0]).abs
  dy = (a[1] - b[1]).abs
  return dx + dy
end

def a_estrela(mapa, ini, fim)
  aberta = [[heur(ini, fim), ini]]
  fechada = []
  g = { ini => 0 }
  f = { ini => heur(ini, fim) }
  ant = {}
  until aberta.empty?
    aberta.sort_by!(&:first)
    _, atual = aberta.shift
    if atual == fim
      caminho = []
      caminho << atual
      while ant[atual]
        atual = ant[atual]
        caminho.unshift(atual)
      end
      return caminho
    end
    fechada << atual
    vizinhos(atual, mapa).each do |v|
      next if fechada.include?(v)
      g_v = g[atual] + 1
      if !g[v] || g_v < g[v]
        ant[v] = atual
        g[v] = g_v
        f[v] = g_v + heur(v, fim)
        aberta << [f[v], v]
      end
    end
  end
  return nil
end

mapa = ler_mapa("mapaN.txt")
ini = nil
fim = nil
mapa.each_with_index do |linha, i|
  linha.each_with_index do |v, j|
    ini = [i, j] if v == 2
    fim = [i, j] if v == 3
  end
end

caminho = a_estrela(mapa, ini, fim)

if caminho
  puts "Caminho Encontrado:"
  puts caminho.inspect
else
  puts "Nenhum caminho encontrado"
end
