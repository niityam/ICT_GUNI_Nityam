#include <stdio.h>
int top=-1, n, i, stackTOP=-1;
char input[100], stack[100], output[100];
// a^b^c = abc^^
int precedence(char ch) 
{ 
    switch (ch) 
    { 
    case '+': 
    case '-': 
        return 1; 

    case '*': 
    case '/': 
        return 2; 

    case '^': 
        return 3; 
    } 
    return -1; 
} 

int checkOPD(char ch){
        if(ch>='a' && ch<='z'){
            return 1;
        }
        if(ch>='A' && ch<='Z'){
            return 1;
        }
        else{
            return 0;
        }
    }

int main() {
    gets(input);
    while(input[n]!=0){
        n++;
    }
    for(int i =0; i<n; i++){
        if(checkOPD(input[i])==1){
            top++;
            output[top] = input[i];
            
        }
        else{
            if(stackTOP==-1 || input[i]=='('){
                stackTOP++;
                stack[stackTOP]=input[i];
            }
            
            else if(precedence(input[i])==precedence(stack[stackTOP])){
                if(precedence(input[i]) == 3 && precedence(stack[stackTOP]) == 3){
                    stackTOP++;
                    stack[stackTOP] = input[i];
                }
                else{
                    top++;
                output[top] = stack[stackTOP];
                stack[stackTOP] = input[i];
                }
                
            }
            //(A+B)*C-(D*E)-(F+G) //MY O/P AB+C*DE*FG+-- //REQ AB+C * DE*-FG+-
            else if(input[i]==')' || precedence(input[i])<precedence(stack[stackTOP])){
                while(stackTOP!=-1 || stack[stackTOP]=='('){
                    if(stack[stackTOP]!='('){
                    top++;
                    output[top] = stack[stackTOP];
                    stack[stackTOP] = '\0';
                    stackTOP--;
                    }
                    else{
                        break;
                    }
                }
                
                if(input[i]!='(' && input[i]!=')')
                {
                stackTOP++;
                stack[stackTOP] = input[i];    
                }
            }
            else if(precedence(input[i])>precedence(stack[stackTOP])){
                stackTOP++;
                stack[stackTOP]=input[i];
            }
        }
        if(i==n-1){
            if(stackTOP!= -1){
                while(stackTOP!=-1){
                    if(stack[stackTOP]!='(' && stack[stackTOP]!=')'){
                    top++;
                    output[top] = stack[stackTOP];
                    stack[stackTOP] = '\0';
                    stackTOP--;
                    }
                    else{
                    stack[stackTOP] = '\0';
                        stackTOP--;
                        
                    }
                }
            }
        }
    }
    printf("%s", output);
}
