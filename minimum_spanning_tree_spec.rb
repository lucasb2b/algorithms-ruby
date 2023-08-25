require_relative 'MinimumSpanningTree'

RSpec.describe "Kruskal's Algorithm" do
  it "finds the Minimum Spanning Tree" do
    # Criando o grafo de exemplo
    graph = Graph.new(6)
    graph.add_edge(0, 1, 4)
    graph.add_edge(0, 2, 3)
    graph.add_edge(1, 2, 1)
    graph.add_edge(1, 3, 2)
    graph.add_edge(2, 3, 4)
    graph.add_edge(3, 4, 2)
    graph.add_edge(4, 5, 6)

    # Executando o algoritmo de Kruskal
    mst = kruskal(graph)

    # Verificando se o resultado é uma árvore de spanning mínima
    num_vertices = graph.num_vertices
    mst_vertices = mst.flat_map { |edge| [edge[0], edge[1]] }.uniq
    expect(mst_vertices.length).to eq(num_vertices)

    # Verificando se as arestas da MST não formam ciclos
    union_find = UnionFind.new(num_vertices)
    mst.each do |edge|
      u, v, _ = edge
      expect(union_find.find(u)).not_to eq(union_find.find(v))
      union_find.union(u, v)
    end
  end
end