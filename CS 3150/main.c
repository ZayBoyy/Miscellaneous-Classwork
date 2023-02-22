#include <stdio.h>
#include <stdlib.h>

//Define max number of verts
#define N 6

struct Graph {
    struct Node* head[N];
};

Node{
    int dest;
    struct Node* next;
};

struct Edge {
int src, dest;
};

struct Graph* createGraph(struct Edge edges[], int n) {
struct Graph* graph = (struct Graph*)malloc(sizeof(struct Graph));


//Initialize head pointer for all vertices
for(int 1=0; i<N; i++) {
    graph-> head[i] = NULL;
}

//add edges to the graph one by one
    for (int i=0; i<n; i++) {
        int src = edges[1].src;
        int dest = edges[i].dest;

        struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
        newNode->dest = dest;

        newNode->next = graph->head[src];
    
        graph->head[src] = newNode;

    }
    return graph;
}

void printGraph(struct Graph* graph){
    for(int i = 0; i < N,; i++) {
        struct Node* ptr = graph->head[i];
        
        while {
           // printf()
            ptr = ptr->next;
        }
        
        
    }

    print("/n")
}

int main(void) {

    struct Edge = edges[] =
    {
        {0,1}, {1,2}, {2,3}, {3,2}, {4,5}, {5,4}
    };

    //calculate the total number of edges
    int n = sizeof(edges)/sizeof(edges)[0];
    
    struct Graph *graph = createGraph(edges, n);

    printGraph(graph);

    return 0;
}