#include<iostream>
#include<queue>
using namespace std;
queue<int >que;
int move(int arr[],int len){
    int j=0;
    for(int i=0;i<len;i++){
        if(arr[i] >= 0){
            arr[j++] = arr[i];
        }
        else{
            que.push(arr[i]);
        }
    }
    while(!que.empty()){
        arr[j++] = que.front();
        que.pop();
    }
}
int main()
 {
	//code
	int test;
	cin>>test;
	for(int i=0;i<test;i++){
	    int element;
	    cin>>element;
	    int arr[element];
	    for(int j=0;j<element;j++){
	        cin>>arr[j];
	    }
	    move(arr,element);
	    for(int i=0;i<element;i++){
	        cout<<arr[i]<<" ";
	    }
	    cout<<"\n";
	}
	return 0;
}
