#include<iostream>
#include<string>
#include <algorithm>
using namespace std;
/*
string swap(string a, string b){
    int i;
    if(a[i]>a[i+1]){
char temp = a[i];
a[i]= a[i+1];
a[i+1]=temp;
    }
    return a;
    if(b[i]>b[i+1]){
char temp = b[i];
b[i]= b[i+1];
b[i+1]=temp;
    }
    return b;
}
bool Anagram(string a, string b){
if(a.size()==b.size())
{
for(int i=0;i<a.size()-1;i++)
{
for(int j =0;j<a.size()-i-1;j++)
{
swap(a,b);
}
}
for(int i=0;i<a.size()-1;i++)
{
for(int j =0;j<a.size()-i-1;j++)
{
swap(a,b);
}
}
for(int i=0;i<a.size();i++){
if(a[i]==b[i]){
return true;
}
else
{
 return false;
 break;
}
}
}
    return false; 
} */












void swap(char& a, char& b) {
    char temp = a;
    a = b;
    b = temp;
}

void sortString(string& str) {
    std::sort(str.begin(), str.end());
}

bool Anagram(string a, string b) {
    if(a.size()==b.size()) {
        sortString(a)/* condition */;
        sortString(b);
        for(int i=0; i<a.size(); i++) {
            if(a[i]!=b[i]) {
                return false;
            }
        }
        return true;
    }
    return false;
}
int main(){
    string str1,str2;
    cout<<"Enter The first string\n";
    cin>>str1;
    cout<<"Enter the second string\n";
    cin>>str2;
   cout<<Anagram(str1,str2)<<endl;
    if(Anagram(str1,str2)==1)
    cout<<"True";
else
cout<<"False";
    return 0;
}