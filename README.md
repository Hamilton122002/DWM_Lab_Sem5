# DWM_Lab_Sem5
import networkx as nx
<br></br>
import pylab as plt
<br></br>
d = nx.DiGraph()
<br></br>
d.add_weighted_edges_from([('A','B',1),('A','C',1),('C','A',1),('B','C',1)])
<br></br>
print (nx.pagerank(d))
<br></br>
nx.draw(d, with_labels=True)
<br></br>
plt.show()
<br></br>

import networkx as nx
<br></br>
G=nx.barabasi_albert_graph(60,41)
<br></br>
pr=nx.pagerank(G,0.4)
<br></br>
pr
