#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#define max 100

int top = -1;
int s[max];

void push(int x) {
    if (top >= max - 1) {
        printf("Stack overflow! Cannot push %d\n", x);
        return;
    }
    top++;
    s[top] = x;
    printf("Pushed: %d\n", x);
}

int pop() {
    if (top == -1) {
        printf("Stack underflow! Stack is empty.\n");
        return -1;
    }
  
    top--;
    printf("Popped: %d\n", s[--top] );
    return s[--top];
}

bool isempty() {
    return top == -1;
}

void display() {
    if (top == -1) {
        printf("Stack is empty.\n");
        return;
    }
    printf("Stack (top to bottom): ");
    for (int i = top; i >= 0; i--) {
        printf("%d ", s[i]);
    }
    printf("\n");
}

int main() {
    int x, y;
    while (1) {
        printf("\n1.push\n2.pop\n3.display\n4.exit\n");
        printf("Enter choice: ");
        scanf("%d", &x);
        switch (x) {
            case 1:
                printf("Enter value: ");
                scanf("%d", &y);
                push(y);
                break;
            case 2:
                pop();
                break;
            case 3:
                display();
                break;
            case 4:
                exit(0);
            default:
                printf("Invalid choice!\n");
        }
    }
    return 0;
}