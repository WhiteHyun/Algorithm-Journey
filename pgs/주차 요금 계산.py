#
#  주차 요금 계산
#  https://school.programmers.co.kr/learn/courses/30/lessons/92341
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/17.
#


def solution(fees: list, records: list) -> list:
    default_time, default_fee, unit_time, unit_fee = fees
    parking_time_dict = {}
    parking_record_dict = {}
    for record in records:
        # 시간, 차량번호, 출차여부 플래그
        time, car_number, flag = record.split()
        time = [*map(int, time.split(":"))]
        time = time[0] * 60 + time[1]
        if flag == "IN":
            parking_record_dict[car_number] = time
        else:
            before_time = parking_record_dict.pop(car_number)
            parking_time_dict[car_number] = (
                parking_time_dict.get(car_number, 0) + time - before_time
            )

    for car_number, before_time in parking_record_dict.items():
        parking_time_dict[car_number] = (
            parking_time_dict.get(car_number, 0) + 60 * 23 + 59 - before_time
        )

    # 정답
    answer = []
    for _, total_time in sorted(parking_time_dict.items()):
        if total_time <= default_time:
            answer.append(default_fee)
            continue
        unit_per_time = (total_time - default_time) / unit_time
        answer.append(
            default_fee
            + (
                int(unit_per_time) + 1
                if not unit_per_time.is_integer()
                else int(unit_per_time)
            )
            * unit_fee
        )

    return answer
