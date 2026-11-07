/*
 * Copyright (C) 2026 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

extern "C" {
    void* _ZN16MdmCutbackHndler5startEi(int) { return nullptr; }
    void _ZN16MdmCutbackHndler4stopEv() {}

    int mot_update_DataCall_State(int) { return 0; }
    int mot_update_Apm_state(int) { return 0; }
    int mot_update_VoiceCall_Count(int) { return 0; }
    int mot_update_register_rat(int) { return 0; }
    int mot_update_Operator(const char*) { return 0; }
    int mot_query_Wlan_Sar_Info(void*, void*, void*) { return 0; }
}
