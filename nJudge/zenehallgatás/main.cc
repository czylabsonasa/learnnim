#include<cstdio>
#include<vector>
#include<algorithm>
using namespace std;

int main(){

  int n,k; 
  scanf("%d%d",&n,&k);
  vector<int> T(n);
  vector<int> P(k);
  for(int i=0;i<n;i++){
    scanf("%d",&T[i]);
  }
  for(int i=0;i<k;i++){
    scanf("%d",&P[i]);
  }



  int s=0;
  for(int i=0;i<n;i++){
    s += T[i];
    T[i] = s;
  }
  for(int i=0;i<k;i++){
    int p = P[i];
    if(0 == p){
      P[i]=1;
      continue;
    }
    int r = p % s;
    if(0 == r){
      P[i]=n;
      continue;
    }
    P[i]=int(lower_bound(T.begin(),T.end(),r)-T.begin())+1; 
  }
  for(int i=0;i<k;i++){
    printf("%d ",P[i]);
  }
  printf("\n");

  return 0;
}
