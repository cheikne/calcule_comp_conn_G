︠4a35e0c1-e343-40f1-9412-cf72c1a8cd63s︠


def find_vertex_in_coomp_conn(g,v,vertex_decon):
    listes =[]
    couleur ={}
    new_list =[]
    for x in g.vertices():
        couleur[x] ="blanc"
    listes.append(v)
    couleur[v] = "gris"
    new_list.append(v)
    while(len(listes) !=0):
        sommet = listes.pop(0)
        for w in g.neighbors(sommet):
            if couleur[w] == "blanc" and w != vertex_decon:
                couleur[w] = "gris"
                new_list.append(w)
                listes.append(w)
    return new_list

def check_items_in_list(list1,list2):
    count=0
    for x in list1:
        for y in list2:
            if y==x:
                count +=1
                break
    return count
def find_nbre_comp_conn(g):
    i =0
    listes= []
    mydico = {}
    for each_vertex in g.vertices():
        vertex_son = g.neighbors(each_vertex)
        for w in vertex_son:
            mydico[w] = find_vertex_in_coomp_conn(g,w,each_vertex)
            listes.append(w)
        for x in listes:
            for y in listes:
                if y!=x and len(mydico[x]) == len(mydico[y]):
                    count = check_items_in_list(mydico[x],mydico[y])
                    if count != len(mydico[x]):
                        return each_vertex
        listes.clear()

g = Graph()
g.add_edges([(0,1),(0,2),(2,4),(4,3),(2,3)])
# g.add_edges([(0,1),(0,2),(1,3),(3,4),(2,4),(4,5),(5,6),(4,7),(7,8),(4,8),(6,8)])

g.show()
print(find_vertex_in_coomp_conn(g,1,0))
print("Le sommet deconnectant de g est ",find_nbre_comp_conn(g))


︡c41ff25b-f3f8-420c-8038-08756f86523d︡{"file":{"filename":"/home/user/.sage/temp/project-8ff099f0-1be8-47ab-a33c-d15efd840abd/604/tmp_cnc6f1l4.svg","show":true,"text":null,"uuid":"2e1ed529-5454-4c98-8c38-a646da5d3f69"},"once":false}︡{"stdout":"[1]\n"}︡{"stdout":"Le sommet deconnectant de g est  2\n"}︡{"done":true}









