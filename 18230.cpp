#include <iostream>
using namespace std;

void Swap(int &a, int &b)
{
    int temp = a;
    a = b;
    b = temp;
}
int Calculate(int *onetile, int *twotile, int tilesize, int onesize, int twosize) //소팅된 2x1, 2x2 타일 및 크기, 타일전체크기를 매개변수로 받음
{
    int max_size = 0;               //리턴할 최대 예쁨값
    int primary = 0, secondery = 1; //2x1 인덱스 참조용 변수
    int primary_t = 0;              //2x2 인덱스 참조용 변수

    if (tilesize % 2 == 1) //만약 타일이 홀수일 경우
    {
        max_size += onetile[primary]; //2x1 타일을 하나 두어 짝수 타일로 만듦
        primary++;                    //인덱스 1 증가
        secondery++;                  //인덱스 1 증가
        tilesize--;                   //타일 사이즈 1 감소시킴
    }
    while (tilesize > 0) //타일을 다 채울 때까지 반복
    {
        if (twotile[primary_t] > onetile[primary] + onetile[secondery] && primary < onesize && primary_t < twosize && secondery < onesize)
        { //2x2타일이 크면서 서로 간 인덱스가 벗어나지 않는 경우
            max_size += twotile[primary_t];
            primary_t++;
            tilesize -= 2;
        }
        else if (twotile[primary_t] <= onetile[primary] + onetile[secondery] && primary < onesize && primary_t < twosize && secondery < onesize)
        { //2x1 2개의 타일이 크면서 서로 간 인덱스가 벗어나지 않는 경우
            max_size += onetile[primary] + onetile[secondery];
            primary += 2;
            secondery += 2;
            tilesize -= 2;
        }
        else if (primary_t >= twosize)
        { //2x2 타일을 다 사용했을 경우(인덱스가 벗어났기 때문)
            for (int i = primary; tilesize != 0; i++)
            {
                max_size += onetile[primary]; //타일을 다 채울 때까지 넣음.
                tilesize--;                   //타일 사이즈 감소
            }
            break; //반복문 빠져 나옴
        }
        else if (primary >= onesize)
        { //2x1 타일을 다 사용했을 경우(인덱스가 벗어났기 때문)
            for (int i = primary_t; tilesize != 0; i++)
            {
                max_size += twotile[primary_t]; //타일을 다 채울 때까지 넣음
                tilesize -= 2;                  //타일 사이즈 감소
            }
            break; //반복문 빠져 나옴
        }
        else //이상한 값으로 들어온 경우
        {
            cout << "오류입니다." << endl;
            return -1; //오류 출력 후 -1값 리턴
        }
    }
    return max_size; //타일값 리턴
}
int main()
{
    int tilesize, twobyonesize, twobytwosize; //타일 사이즈, 2x1 사이즈, 2x2 사이즈 선언
    cin >> tilesize >> twobyonesize >> twobytwosize;
    int max; //소팅용 변수

    int *onetile = new int[twobyonesize];
    int *twotile = new int[twobytwosize];
    for (int i = 0; i < twobyonesize; i++)
        cin >> onetile[i];
    for (int i = 0; i < twobytwosize; i++)
        cin >> twotile[i];
    for (int i = 0; i < twobyonesize - 1; i++)
    {
        max = i;
        for (int j = i + 1; j < twobyonesize; j++)
        {
            if (onetile[max] < onetile[j])
                max = j;
        }
        Swap(onetile[i], onetile[max]);
    }
    for (int i = 0; i < twobytwosize - 1; i++)
    {
        max = i;
        for (int j = i + 1; j < twobytwosize; j++)
        {
            if (twotile[max] < twotile[j])
                max = j;
        }
        Swap(twotile[i], twotile[max]);
    }
    //----------------------여기까지 입력받고 소팅까지 완료된 상태-----------------------------------
    cout << Calculate(onetile, twotile, tilesize, twobyonesize, twobytwosize) << endl; //계산 후 출력
}