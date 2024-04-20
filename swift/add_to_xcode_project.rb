#!/usr/bin/env ruby

require 'xcodeproj'

# Xcode 프로젝트 파일의 상대 경로
project_path = 'Algorithm.xcodeproj'

# 추가할 Swift 파일의 상대 경로와 난이도
swift_file_path = ARGV[0]
problem_folder = ARGV[1]
difficulty = ARGV[2] || 'Unknown'  # 난이도가 주어지지 않은 경우 'Unknown'을 기본값으로 사용

# Xcode 프로젝트 열기
project = Xcodeproj::Project.open(project_path)

# 프로젝트의 첫 번째 타겟 가져오기
target = project.targets.first

# "Algorithm" 그룹 찾기
algorithm_group = project.main_group.find_subpath('Algorithm', true)

# "문제풀이 사이트" 그룹 찾기
ps_group = algorithm_group.find_subpath(problem_folder, true)

# 난이도에 따라 해당 그룹 찾기 또는 생성하기
if difficulty != 'Unknown'
    difficulty_group = ps_group.find_subpath(difficulty, true)
    file_group = difficulty_group
else
    file_group = ps_group
end

# 새 파일을 파일 그룹에 추가
file_ref = file_group.new_reference(swift_file_path)
target.add_file_references([file_ref])

# 프로젝트 저장
project.save