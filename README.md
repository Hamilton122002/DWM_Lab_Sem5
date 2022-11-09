# DWM_Lab_Sem5
import networkx as nx
import pylab as plt
d = nx.DiGraph()
d.add_weighted_edges_from([('A','B',1),('A','C',1),('C','A',1),('B','C',1)])
print (nx.pagerank(d))
nx.draw(d, with_labels=True)
plt.show()


import networkx as nx
G=nx.barabasi_albert_graph(60,41)
pr=nx.pagerank(G,0.4)
pr
