// #include <stdio.h>
int stack[9], top=-1, input;
int main() {
    
    scanf("%d", &input);
    push(input);
    scanf("%d", &input);
    push(input);
    scanf("%d", &input);
    push(input);
    scanf("%d", &input);
    push(input);
    scanf("%d", &input);
    push(input);
    pop();
    pop();
    scanf("%d", &input);
    push(input);
    display();
    return 0;
}
void pop(){
    if(top<0){
        printf("Stack underflow");
    }
    else{
        top--;
    }
}
void push(int input){
    if(top>=8){
        printf("Stack Overflow");
    }
    else{
        top++;
        stack[top] = input; 
    }
}
void display(){
    for(int i=0; i<=top; i++){
        printf("%d ", stack[i]);
    }
}