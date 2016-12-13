#include <stdio.h>

#include<iostream>
#include<vector>

int main(int argc, char **argv){

printf("hello world");


std::vector<int> example;


example.push_back(2);
example.push_back(10);


int i;

for(i=0;i< example.size();i++)
{

	printf("value : %d",example.at(i)); 
}




return 0;
}
