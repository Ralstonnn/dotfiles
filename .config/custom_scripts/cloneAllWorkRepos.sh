#!/bin/bash

git clone ssh://git@git.jetbrains.space/vznaniya/vz/back.git && cd back && git checkout dev && cd .. && git clone ssh://git@git.jetbrains.space/vznaniya/vz/front.git && cd front && git checkout dev && cd .. && git clone ssh://git@git.jetbrains.space/vznaniya/vz/front-student.git && cd front-student && git checkout dev && cd .. && git clone ssh://git@git.jetbrains.space/vznaniya/vz/front-teacher.git && cd front-teacher && git checkout dev && cd ..
