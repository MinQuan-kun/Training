#include <iostream>
#include <list>
using namespace std;

void josephus(int N, int M) {
    list<int> people;
    for (int i = 1; i <= N; i++) {
        people.push_back(i); 
    }

    auto it = people.begin(); 

    while (!people.empty()) {
        for (int i = 1; i < M; i++) {
            it++;
            if (it == people.end()) it = people.begin(); 
        }

        cout << *it << " ";
        it = people.erase(it);

        if (it == people.end()) it = people.begin();
    }
}

int main() {
    int N, M;
    cin >> N >> M;

    josephus(N, M);
    return 0;
}
