# 20362번: 유니대전 퀴즈쇼
# https://www.acmicpc.net/problem/20362


if __name__ == "__main__":
    count, winner = input().split()
    chat_list = []
    winner_chat = ""
    skip = False
    for i in range(int(count)):
        user, chat = input().split()
        if skip:  # 당첨자 챗 뒤는 필요없으므로 스킵
            continue
        elif user == winner:  # 당첨자가 나오면 그 뒤 채팅은 쓸모 없음
            winner_chat = chat
            skip = True
        else:  # 당첨자 이전에 나온 채팅들은 보관
            chat_list.append((user, chat))

    sad_count = 0
    for _, chat in chat_list:  # 당첨자 챗과 같은사람 있으면 카운트
        if chat == winner_chat:
            sad_count += 1

    print(sad_count)
