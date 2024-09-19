#!/bin/bash

# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2019-present Shanti Gilbert (https://github.com/shantigilbert)
# Copyright (C) 2023 JELOS (https://github.com/JustEnoughLinuxOS)

pw-loopback -C M8 -P alsa_output._sys_devices_platform_rk817-sound_sound_card0.HiFi__Headphones__sink -l 20 &
LOOPBACK_PID=$!

/storage/m8c

kill $LOOPBACK_PID
