//
//  queue.h
//  aurioTouch2
//
//  Created by Bruce on 13-11-6.
//
//

#ifndef aurioTouch2_queue_h
#define aurioTouch2_queue_h


#define QUEUESIZE       1000

typedef float queue_item;

typedef struct {
    
    queue_item q[QUEUESIZE+1];		/* body of queue */
    int first;                      /* position of first element */
    int last;                       /* position of last element */
    int count;                      /* number of queue elements */
    int length;

} queue;

void init_queue(queue *q, int length);
void enqueue(queue *q, queue_item x);
queue_item dequeue(queue *q);
int queue_is_empty(queue *q);

/*
void print_queue(queue *q)
{
    int i;
    
    i=q->first;
    
    while (i != q->last) {
        
        printf("%c ",q->q[i]);
        i = (i+1) % q->length;
    }
    
    printf("%.2f ",q->q[i]);
    printf("\n");
}
 */


#endif
