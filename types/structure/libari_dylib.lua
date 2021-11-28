--- AUTO GENERATED OUTPUT from Ghidra script "ari-structure-extractor.py" on 2021-11-28_17:09:33 
return {
    [1] = {
        ["name"] = "_ARIMSGDEF_GROUP01_bsp",
        [10] = {
            name = "AriACK",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 8,
                        name = "AriStatusTlv",
                    },
                    type_desc = "status_t1"
                },
            },
        },
        [11] = {
            name = "AriBBLogInd",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 264,
                        name = "AriLog2APParam",
                    },
                    type_desc = "log_t1"
                },
            },
        },
        [15] = {
            name = "AriNACK",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 8,
                        name = "AriStatusTlv",
                    },
                    type_desc = "status_t1"
                },
            },
        },
        [17] = {
            name = "AriMsgAttribReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 16,
                        name = "AriMsgAttribParam",
                    },
                    type_desc = "msgAttrib_t1"
                },
            },
        },
        [18] = {
            name = "AriGrpMsgsAttribReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 2016,
                        name = "AriGrpMsgsAttribParam",
                    },
                    type_desc = "params_t1"
                },
            },
        },
        [19] = {
            name = "AriGrpAttribReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 20,
                        name = "AriGroupAttribParam",
                    },
                    type_desc = "params_t1"
                },
            },
        },
        [33] = {
            name = "AriMsgAttribResp",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 16,
                        name = "AriMsgAttribParam",
                    },
                    type_desc = "msgAttrib_t1"
                },
            },
        },
        [34] = {
            name = "AriGrpMsgsAttribResp",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 2016,
                        name = "AriGrpMsgsAttribParam",
                    },
                    type_desc = "params_t1"
                },
            },
        },
        [35] = {
            name = "AriGrpAttribResp",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 20,
                        name = "AriGroupAttribParam",
                    },
                    type_desc = "params_t1"
                },
            },
        },
        [257] = {
            name = "CsiMsCpsReadImeiReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [258] = {
            name = "CsiMsCpsGetCurrentBootStateReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [259] = {
            name = "CsiSecGetFusingStateReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [260] = {
            name = "CsiSecGetSNUMReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [261] = {
            name = "CsiSysGetInfoReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaSysInfoType",
                    },
                    type_desc = "infoRequest_t1"
                },
            },
        },
        [262] = {
            name = "CsiSecGetRandomNumReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [263] = {
            name = "UtaMsCpsSetSvnReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 1,
                        name = "UtaCpsSetSvnReqParam",
                    },
                    type_desc = "params_t1"
                },
            },
        },
        [265] = {
            name = "CsiMsSimCardPresenceReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [266] = {
            name = "CsiBspStateGetReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "item_t1"
                },
            },
        },
        [267] = {
            name = "CsiBspStateSetReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "item_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "value_t2"
                },
            },
        },
        [268] = {
            name = "CsiModeSetReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaMode",
                    },
                    type_desc = "mode_t1"
                },
            },
        },
        [269] = {
            name = "CsiGetCurrentBootStateReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [270] = {
            name = "CsiGetSystemTimeReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [271] = {
            name = "CsiModeGetReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [272] = {
            name = "CsiSysGetInfoReqV2",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaSysInfoType",
                    },
                    type_desc = "infoRequest_t1"
                },
            },
        },
        [273] = {
            name = "CsiDelayedOutstandingReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "durationInMs_t1"
                },
            },
        },
        [274] = {
            name = "CsiMsCpsReadMeidReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [275] = {
            name = "IBIRfSetAntennaPortMappingReq",
            mtlvs = {2, 3},
            tlvs = {
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIRfRat",
                    },
                    type_desc = "rat_t2"
                },
                [3] = {
                    codec = {
                        length = 8,
                        name = "IBIRfPortMap",
                    },
                    type_desc = "map_t3"
                },
            },
        },
        [422] = {
            name = "CsiBmmProvideBootTimeInfoReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [423] = {
            name = "CsiBspDebugJtagModeReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "CsiBspDebugJtagMode",
                    },
                    type_desc = "jtag_mode_t1"
                },
            },
        },
        [513] = {
            name = "CsiMsCpsReadImeiRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 24,
                        name = "CsiMsCpsReadImeiRspParam",
                    },
                    type_desc = "params_t2"
                },
                [3] = {
                    codec = {
                        length = 17,
                        name = "IBICpsImei",
                    },
                    type_desc = "imei2_t3"
                },
                [4] = {
                    codec = {
                        length = 17,
                        name = "IBICpsMeid",
                    },
                    type_desc = "meid_t4"
                },
            },
        },
        [514] = {
            name = "CsiMsCpsGetCurrentBootStateRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "CsiMsCpsBootStateRspParam",
                    },
                    type_desc = "params_t2"
                },
            },
        },
        [515] = {
            name = "CsiSecGetFusingStateRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaBool",
                    },
                    type_desc = "fusing_state_t2"
                },
            },
        },
        [516] = {
            name = "CsiSecGetSNUMRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 24,
                        name = "CsiSecSnumInfo",
                    },
                    type_desc = "snum_info_t1"
                },
            },
        },
        [517] = {
            name = "CsiSysGetInfoRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 108,
                        name = "CsiVerInfoString",
                    },
                    type_desc = "info_str_t1"
                },
            },
        },
        [518] = {
            name = "CsiSecGetRandomNumRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 36,
                        name = "CsiSecNonce",
                    },
                    type_desc = "nonce_t1"
                },
            },
        },
        [519] = {
            name = "AriUtaMsCpsSetSvnRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaCpsSvnResult",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [521] = {
            name = "CsiMsSimCardPresenceRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "CsiSimCardStatusInfo",
                    },
                    type_desc = "sim_status_t2"
                },
            },
        },
        [522] = {
            name = "CsiBspStateGetRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "value_t2"
                },
            },
        },
        [523] = {
            name = "CsiBspStateSetRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [524] = {
            name = "CsiModeSetRespCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaMode",
                    },
                    type_desc = "current_mode_t1"
                },
            },
        },
        [525] = {
            name = "CsiGetCurrentBootStateRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "CsiBootStateRspParam",
                    },
                    type_desc = "param_t1"
                },
            },
        },
        [526] = {
            name = "CsiGetSystemTimeResp",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 8,
                        name = "UtaUInt64",
                    },
                    type_desc = "systemTime_t1"
                },
            },
        },
        [527] = {
            name = "CsiModeGetRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 24,
                        name = "CsiModeGetRspParam",
                    },
                    type_desc = "rsp_param_t1"
                },
            },
        },
        [528] = {
            name = "CsiSysGetInfoRspCbV2",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 520,
                        name = "CsiVerInfoStringV2",
                    },
                    type_desc = "info_str_t1"
                },
            },
        },
        [529] = {
            name = "CsiDelayedOutstandingResp",
            mtlvs = {},
            tlvs = {
            },
        },
        [530] = {
            name = "CsiMsCpsReadMeidRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 24,
                        name = "CsiMsCpsReadMeidRspParam",
                    },
                    type_desc = "params_t2"
                },
            },
        },
        [531] = {
            name = "IBIRfSetAntennaPortMappingResp",
            mtlvs = {2},
            tlvs = {
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIRfPortMapStatus",
                    },
                    type_desc = "status_t2"
                },
            },
        },
        [678] = {
            name = "CsiBmmProvideBootTimeInfoRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 3612,
                        name = "CsiBmmBootTimeInfoReport",
                    },
                    type_desc = "csi_bmm_bti_report_t1"
                },
                [2] = {
                    codec = {
                        length = 24,
                        name = "CsiBmmBootTimeInfo",
                    },
                    type_desc = "data_array_bmm_ext_t2"
                },
            },
        },
        [679] = {
            name = "CsiBspDebugJtagModeRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "return_value_t1"
                },
            },
        },
        [781] = {
            name = "AriUtaModeInitialSwitchCompleteIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 8,
                        name = "UtaUInt64",
                    },
                    type_desc = "uptime_ms_t1"
                },
            },
        },
        [783] = {
            name = "CsiModeSetIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 8,
                        name = "CsiModeSetIndParam",
                    },
                    type_desc = "ind_param_t1"
                },
            },
        },
        [784] = {
            name = "CsiBSPBBDumpInd",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 1,
                        name = "UtaChar",
                    },
                    type_desc = "reason_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaBool",
                    },
                    type_desc = "userNotification_t2"
                },
            },
        },
    },
    [2] = {
        ["name"] = "_ARIMSGDEF_GROUP02_call_cs",
        [257] = {
            name = "IBICallCsSetupVoiceCallReq",
            mtlvs = {1, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsType",
                    },
                    type_desc = "call_type_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "phone_no_t4"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsClirMode",
                    },
                    type_desc = "clir_mode_t6"
                },
                [13] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsEccValue",
                    },
                    type_desc = "ecc_category_t13"
                },
                [14] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ctm_t14"
                },
                [16] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "skip_fdn_check_t16"
                },
                [17] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_emergency_normal_t17"
                },
            },
        },
        [258] = {
            name = "IBICallCsReleaseCallReq",
            mtlvs = {1, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsGroup",
                    },
                    type_desc = "call_group_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsErrorCause",
                    },
                    type_desc = "call_error_cause_t5"
                },
            },
        },
        [259] = {
            name = "IBICallCsAcceptCallReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t3"
                },
            },
        },
        [260] = {
            name = "IBICallCsSwapCallsReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [261] = {
            name = "IBICallCsHoldCallReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [262] = {
            name = "IBICallCsRetrieveCallReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [263] = {
            name = "IBICallCsSplitMptyReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t3"
                },
            },
        },
        [264] = {
            name = "IBICallCsJoinCallsReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [265] = {
            name = "IBICallCsStartDtmfReq",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "digit_t4"
                },
            },
        },
        [266] = {
            name = "IBICallCsStopDtmfReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t3"
                },
            },
        },
        [267] = {
            name = "IBICallCsSetClirModeReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsClirMode",
                    },
                    type_desc = "clir_mode_t3"
                },
            },
        },
        [268] = {
            name = "IBICallCsSetTtyDeviceModeReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsTtyDeviceMode",
                    },
                    type_desc = "tty_device_mode_t3"
                },
            },
        },
        [270] = {
            name = "IBICallCsGetEccListReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [273] = {
            name = "IBICallCsCrssReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsCrssGroup",
                    },
                    type_desc = "call_grp_t3"
                },
            },
        },
        [274] = {
            name = "IBICallCsTransferCallsReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [275] = {
            name = "IBICallCsAutoAnswerReq",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsCmd",
                    },
                    type_desc = "cmd_req_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsFeat",
                    },
                    type_desc = "auto_ans_t4"
                },
            },
        },
        [276] = {
            name = "IBICallCsGetTtyDeviceModeReq_V2",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [277] = {
            name = "IBICallCsSetupVoiceCallReq_V1",
            mtlvs = {1, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsType",
                    },
                    type_desc = "call_type_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "phone_no_t4"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsClirMode",
                    },
                    type_desc = "clir_mode_t6"
                },
                [13] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsEccValue",
                    },
                    type_desc = "ecc_category_t13"
                },
                [14] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ctm_t14"
                },
                [16] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "skip_fdn_check_t16"
                },
                [17] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_emergency_normal_t17"
                },
            },
        },
        [278] = {
            name = "IBICallCsBurstDtmfReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "num_digits_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "digit_buffer_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsBurstDtmfWidth",
                    },
                    type_desc = "on_duration_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsBurstDtmfInterval",
                    },
                    type_desc = "off_duration_t7"
                },
            },
        },
        [279] = {
            name = "IBICallCsSetPrefPrivacyReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "enable_enhanced_privacy_t3"
                },
            },
        },
        [280] = {
            name = "IBICallCsCdmaVerifySpcCodeReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "spc_code_len_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "spc_code_t4"
                },
            },
        },
        [513] = {
            name = "IBICallCsSetupCallRspCb",
            mtlvs = {1, 4, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsResult",
                    },
                    type_desc = "result_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsErrorCause",
                    },
                    type_desc = "call_error_cause_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcServiceDomain",
                    },
                    type_desc = "domain_t6"
                },
            },
        },
        [514] = {
            name = "IBICallCsReleaseCallRspCb",
            mtlvs = {1, 3, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsGroup",
                    },
                    type_desc = "call_group_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsResult",
                    },
                    type_desc = "result_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsErrorCause",
                    },
                    type_desc = "call_error_cause_t6"
                },
            },
        },
        [515] = {
            name = "IBICallCsAcceptCallRspCb",
            mtlvs = {1, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsResult",
                    },
                    type_desc = "result_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsErrorCause",
                    },
                    type_desc = "call_error_cause_t5"
                },
            },
        },
        [516] = {
            name = "IBICallCsSwapCallsRspCb",
            mtlvs = {1, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "active_call_id_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "hold_call_id_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsResult",
                    },
                    type_desc = "result_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsErrorCause",
                    },
                    type_desc = "call_error_cause_t6"
                },
            },
        },
        [517] = {
            name = "IBICallCsHoldCallRspCb",
            mtlvs = {1, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsResult",
                    },
                    type_desc = "result_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsErrorCause",
                    },
                    type_desc = "call_error_cause_t5"
                },
            },
        },
        [518] = {
            name = "IBICallCsRetrieveCallRspCb",
            mtlvs = {1, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsResult",
                    },
                    type_desc = "result_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsErrorCause",
                    },
                    type_desc = "call_error_cause_t5"
                },
            },
        },
        [519] = {
            name = "IBICallCsSplitMptyRspCb",
            mtlvs = {1, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsResult",
                    },
                    type_desc = "result_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsErrorCause",
                    },
                    type_desc = "call_error_cause_t5"
                },
            },
        },
        [520] = {
            name = "IBICallCsJoinCallsRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsErrorCause",
                    },
                    type_desc = "call_error_cause_t4"
                },
            },
        },
        [521] = {
            name = "IBICallCsStartDtmfRspCb",
            mtlvs = {1, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "digit_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsResult",
                    },
                    type_desc = "result_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsErrorCause",
                    },
                    type_desc = "call_error_cause_t6"
                },
            },
        },
        [522] = {
            name = "IBICallCsStopDtmfExtRspCb",
            mtlvs = {1, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsResult",
                    },
                    type_desc = "result_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsErrorCause",
                    },
                    type_desc = "call_error_cause_t5"
                },
            },
        },
        [524] = {
            name = "IBICallCsSetTtyDeviceModeRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [526] = {
            name = "IBICallCsGetEccListRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 241,
                        name = "IBICallCsEccListParam",
                    },
                    type_desc = "ecc_list_t4"
                },
            },
        },
        [529] = {
            name = "IBICallCsCrssRspCb",
            mtlvs = {1, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsResult",
                    },
                    type_desc = "result_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsErrorCause",
                    },
                    type_desc = "call_error_cause_t6"
                },
            },
        },
        [530] = {
            name = "IBICallCsTransferCallsRspCb",
            mtlvs = {1, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsResult",
                    },
                    type_desc = "result_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsErrorCause",
                    },
                    type_desc = "call_error_cause_t5"
                },
            },
        },
        [531] = {
            name = "IBICallCsAutoAnswerRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "oper_result_t3"
                },
                [4] = {
                    codec = {
                        length = 8,
                        name = "IBICallCsAutoAnswerSetting",
                    },
                    type_desc = "auto_answer_rsp_t4"
                },
            },
        },
        [532] = {
            name = "IBICallCsGetTtyDeviceModeRspCb_V2",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsTtyDeviceMode",
                    },
                    type_desc = "mode_t4"
                },
            },
        },
        [533] = {
            name = "IBICallCsSetupCallRspCb_V1",
            mtlvs = {1, 4, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsResult",
                    },
                    type_desc = "result_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsErrorCause",
                    },
                    type_desc = "call_error_cause_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcServiceDomain",
                    },
                    type_desc = "domain_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_cc_info_present_t7"
                },
            },
        },
        [534] = {
            name = "IBICallCsBurstDtmfRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "error_code_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t5"
                },
            },
        },
        [535] = {
            name = "IBICallCsSetPrefPrivacyRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "error_code_t4"
                },
            },
        },
        [536] = {
            name = "IBICallCsCdmaVerifySpcCodeRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsCdmaVerifySpcCodeResult",
                    },
                    type_desc = "spc_validation_result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "spc_fail_count_t4"
                },
            },
        },
        [772] = {
            name = "IBICallCsConnectedIndCb",
            mtlvs = {1, 2, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "connected_no_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsClirCause",
                    },
                    type_desc = "clir_cause_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsType",
                    },
                    type_desc = "call_type_t5"
                },
            },
        },
        [774] = {
            name = "IBICallCsDisconnectedIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsErrorCause",
                    },
                    type_desc = "error_cause_t3"
                },
            },
        },
        [775] = {
            name = "IBICallCsIncomingCallIndCb",
            mtlvs = {1, 2, 3, 7, 8, 9, 15, 17, 18},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsType",
                    },
                    type_desc = "call_type_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "phone_nr_t4"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "pi_si_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsLine",
                    },
                    type_desc = "line_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ctm_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsClirCause",
                    },
                    type_desc = "clir_cause_t9"
                },
                [15] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "dual_service_t15"
                },
                [16] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsDualServiceMode",
                    },
                    type_desc = "service_mode_t16"
                },
                [17] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsAlertingPattern",
                    },
                    type_desc = "alerting_pattern_t17"
                },
                [18] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcServiceDomain",
                    },
                    type_desc = "domain_t18"
                },
            },
        },
        [781] = {
            name = "IBICallCsCallingNameInfoIndCb",
            mtlvs = {1, 2, 3, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t2"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "length_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "calling_name_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "dcs_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsClirCause",
                    },
                    type_desc = "cli_cause_t6"
                },
            },
        },
        [782] = {
            name = "IBICallCsEmergencyNumberListIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "ecc_length_t2"
                },
                [3] = {
                    codec = {
                        length = 7,
                        name = "IBICallCsEmergencyNumber",
                    },
                    type_desc = "ecc_list_t3"
                },
                [4] = {
                    codec = {
                        length = 8,
                        name = "IBIPlmn",
                    },
                    type_desc = "ecc_plmn_info_t4"
                },
            },
        },
        [783] = {
            name = "IBICallCsCallStatusIndCb",
            mtlvs = {1, 2, 3, 4, 8, 9, 12, 16},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsStatus",
                    },
                    type_desc = "call_status_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsType",
                    },
                    type_desc = "call_type_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "phone_no_t5"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsLine",
                    },
                    type_desc = "line_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ctm_t9"
                },
                [10] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsEccValue",
                    },
                    type_desc = "ecc_category_t10"
                },
                [12] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "transaction_id_t12"
                },
                [14] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "pi_si_t14"
                },
                [16] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsChannelMode",
                    },
                    type_desc = "channel_mode_t16"
                },
                [17] = {
                    codec = {
                        length = 4,
                        name = "IBIMessageMode",
                    },
                    type_desc = "message_mode_t17"
                },
                [18] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "callerName_t18"
                },
                [19] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsWaitingIndicator",
                    },
                    type_desc = "call_waiting_t19"
                },
                [20] = {
                    codec = {
                        length = 12,
                        name = "IBICallCsSignalInfo",
                    },
                    type_desc = "cdma_signal_info_t20"
                },
                [21] = {
                    codec = {
                        length = 2,
                        name = "IBICallCsAudioControl",
                    },
                    type_desc = "audio_control_t21"
                },
                [22] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsLineControl",
                    },
                    type_desc = "line_control_t22"
                },
            },
        },
        [785] = {
            name = "IBICallCsEmergencyCallIntermediateStatusIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsEmergencyCallIntermediateStatus",
                    },
                    type_desc = "call_status_t2"
                },
            },
        },
        [786] = {
            name = "IBICallCsStartDtmfIndCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "digit_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsResult",
                    },
                    type_desc = "result_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsErrorCause",
                    },
                    type_desc = "call_error_cause_t5"
                },
            },
        },
        [787] = {
            name = "IBICallCsStopDtmfIndCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsErrorCause",
                    },
                    type_desc = "call_error_cause_t4"
                },
            },
        },
        [789] = {
            name = "IBICallCsBurstDtmfIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsBurstDtmfEvent",
                    },
                    type_desc = "event_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "num_digits_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "digit_buffer_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsBurstDtmfWidth",
                    },
                    type_desc = "on_duration_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsBurstDtmfInterval",
                    },
                    type_desc = "off_duration_t7"
                },
            },
        },
        [790] = {
            name = "IBICallCsSetPrefPrivacyIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "enhanced_privacy_enabled_t2"
                },
            },
        },
        [791] = {
            name = "IBICallCsOtaspStatusIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIOtaspStatus",
                    },
                    type_desc = "status_t3"
                },
            },
        },
    },
    [3] = {
        ["name"] = "_ARIMSGDEF_GROUP03_call_ps",
        [257] = {
            name = "IBICallPsLTEAttachApnConfigReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "apn_validity_bitmask_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "apn_t4"
                },
                [5] = {
                    codec = {
                        length = 24,
                        name = "IBICallPsIpAddr",
                    },
                    type_desc = "ip_addr_t5"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPDPReqType",
                    },
                    type_desc = "pdp_req_type_t8"
                },
                [10] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bPcscfIPv6_t10"
                },
                [11] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bImCN_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDnsIPv6_t12"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bBearerControlInd_t13"
                },
                [14] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDSMIPv6_haar_t14"
                },
                [15] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDSMIPv6_hnpr_t15"
                },
                [16] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDSMIPv6v4_haar_t16"
                },
                [17] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIPAddrAllocNasSignaling_t17"
                },
                [18] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIPv4AddressAllocDHCPv4_t18"
                },
                [19] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bPcscfIPv4_t19"
                },
                [20] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDnsIPv4_t20"
                },
                [21] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bMSISDN_t21"
                },
                [22] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIFOMSupport_t22"
                },
                [23] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIPv4Mtu_t23"
                },
                [24] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bLocalAddrTftInd_t24"
                },
                [29] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "apn_t29"
                },
                [30] = {
                    codec = {
                        length = 24,
                        name = "IBICallPsIpAddr",
                    },
                    type_desc = "ip_addr_t30"
                },
                [33] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPDPReqType",
                    },
                    type_desc = "pdp_req_type_t33"
                },
                [35] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bPcscfIPv6_t35"
                },
                [36] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bImCN_t36"
                },
                [37] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDnsIPv6_t37"
                },
                [38] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bBearerControlInd_t38"
                },
                [39] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDSMIPv6_haar_t39"
                },
                [40] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDSMIPv6_hnpr_t40"
                },
                [41] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDSMIPv6v4_haar_t41"
                },
                [42] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIPAddrAllocNasSignaling_t42"
                },
                [43] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIPv4AddressAllocDHCPv4_t43"
                },
                [44] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bPcscfIPv4_t44"
                },
                [45] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDnsIPv4_t45"
                },
                [46] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bMSISDN_t46"
                },
                [47] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIFOMSupport_t47"
                },
                [48] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIPv4Mtu_t48"
                },
                [49] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bLocalAddrTftInd_t49"
                },
                [54] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "apn_t54"
                },
                [55] = {
                    codec = {
                        length = 24,
                        name = "IBICallPsIpAddr",
                    },
                    type_desc = "ip_addr_t55"
                },
                [58] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPDPReqType",
                    },
                    type_desc = "pdp_req_type_t58"
                },
                [60] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bPcscfIPv6_t60"
                },
                [61] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bImCN_t61"
                },
                [62] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDnsIPv6_t62"
                },
                [63] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bBearerControlInd_t63"
                },
                [64] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDSMIPv6_haar_t64"
                },
                [65] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDSMIPv6_hnpr_t65"
                },
                [66] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDSMIPv6v4_haar_t66"
                },
                [67] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIPAddrAllocNasSignaling_t67"
                },
                [68] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIPv4AddressAllocDHCPv4_t68"
                },
                [69] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bPcscfIPv4_t69"
                },
                [70] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDnsIPv4_t70"
                },
                [71] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bMSISDN_t71"
                },
                [72] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIFOMSupport_t72"
                },
                [73] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIPv4Mtu_t73"
                },
                [74] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bLocalAddrTftInd_t74"
                },
                [79] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "apn_t79"
                },
                [80] = {
                    codec = {
                        length = 24,
                        name = "IBICallPsIpAddr",
                    },
                    type_desc = "ip_addr_t80"
                },
                [83] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPDPReqType",
                    },
                    type_desc = "pdp_req_type_t83"
                },
                [85] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bPcscfIPv6_t85"
                },
                [86] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bImCN_t86"
                },
                [87] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDnsIPv6_t87"
                },
                [88] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bBearerControlInd_t88"
                },
                [89] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDSMIPv6_haar_t89"
                },
                [90] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDSMIPv6_hnpr_t90"
                },
                [91] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDSMIPv6v4_haar_t91"
                },
                [92] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIPAddrAllocNasSignaling_t92"
                },
                [93] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIPv4AddressAllocDHCPv4_t93"
                },
                [94] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bPcscfIPv4_t94"
                },
                [95] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDnsIPv4_t95"
                },
                [96] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bMSISDN_t96"
                },
                [97] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIFOMSupport_t97"
                },
                [98] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIPv4Mtu_t98"
                },
                [99] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bLocalAddrTftInd_t99"
                },
                [112] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "username_t112"
                },
                [113] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "password_t113"
                },
                [114] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsAuthenticationType",
                    },
                    type_desc = "type_t114"
                },
                [116] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "username_t116"
                },
                [117] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "password_t117"
                },
                [118] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsAuthenticationType",
                    },
                    type_desc = "type_t118"
                },
                [120] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "username_t120"
                },
                [121] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "password_t121"
                },
                [122] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsAuthenticationType",
                    },
                    type_desc = "type_t122"
                },
                [124] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "username_t124"
                },
                [125] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "password_t125"
                },
                [126] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsAuthenticationType",
                    },
                    type_desc = "type_t126"
                },
                [129] = {
                    codec = {
                        length = 4,
                        name = "IBIMessageMode",
                    },
                    type_desc = "message_mode_t129"
                },
                [130] = {
                    codec = {
                        length = 4,
                        name = "IBICdmaPsRatType",
                    },
                    type_desc = "cdma_ps_rat_t130"
                },
            },
        },
        [258] = {
            name = "IBICallPsStartDataCallReq",
            mtlvs = {1, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "apn_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsIpType",
                    },
                    type_desc = "ip_type_t5"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPDPReqType",
                    },
                    type_desc = "pdp_req_type_t8"
                },
                [10] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bPcscfIPv6_t10"
                },
                [11] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bImCN_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDnsIPv6_t12"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bBearerControlInd_t13"
                },
                [14] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDSMIPv6_haar_t14"
                },
                [15] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDSMIPv6_hnpr_t15"
                },
                [16] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDSMIPv6v4_haar_t16"
                },
                [17] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIPAddrAllocNasSignaling_t17"
                },
                [18] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIPv4AddressAllocDHCPv4_t18"
                },
                [19] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bPcscfIPv4_t19"
                },
                [20] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bDnsIPv4_t20"
                },
                [21] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bMSISDN_t21"
                },
                [22] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIFOMSupport_t22"
                },
                [23] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIPv4Mtu_t23"
                },
                [24] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bLocalAddrTftInd_t24"
                },
                [29] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "username_t29"
                },
                [30] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "password_t30"
                },
                [31] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsAuthenticationType",
                    },
                    type_desc = "type_t31"
                },
                [34] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "qos_3g_present_t34"
                },
                [35] = {
                    codec = {
                        length = 72,
                        name = "IBICallPsQos3g",
                    },
                    type_desc = "qos_3g_t35"
                },
                [36] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_tethered_t36"
                },
                [37] = {
                    codec = {
                        length = 4,
                        name = "IBICallPs3gpp2DataCallType",
                    },
                    type_desc = "data_call_type_3gpp2_t37"
                },
            },
        },
        [259] = {
            name = "IBICallPsStopDataCallReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPdpContextId",
                    },
                    type_desc = "cid_t3"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bLocalAbort_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsStopDataCallReason",
                    },
                    type_desc = "stop_data_call_reason_t6"
                },
            },
        },
        [260] = {
            name = "IBICallPsRegisterFT",
            mtlvs = {1, 3, 4, 5, 6, 7, 8},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPdpContextId",
                    },
                    type_desc = "cid_t3"
                },
                [4] = {
                    codec = {
                        length = 24,
                        name = "IBICallPsIpAddr",
                    },
                    type_desc = "src_ip_t4"
                },
                [5] = {
                    codec = {
                        length = 24,
                        name = "IBICallPsIpAddr",
                    },
                    type_desc = "dst_ip_t5"
                },
                [6] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "udp_src_port_t6"
                },
                [7] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "udp_dst_port_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cookie_t8"
                },
            },
        },
        [261] = {
            name = "IBICallPsDeRegisterFT",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [262] = {
            name = "IBICallPsDropIPPackets",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "num_rtp_payload_type_t3"
                },
                [4] = {
                    codec = {
                        length = 16,
                        name = "IBICallPsDropIPPacketsParams",
                    },
                    type_desc = "drop_packet_params_t4"
                },
            },
        },
        [263] = {
            name = "IBICallPsPdnStats",
            mtlvs = {1, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPdpContextId",
                    },
                    type_desc = "cid_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "tx_count_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "rx_count_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "status_t6"
                },
            },
        },
        [264] = {
            name = "IBICallPsDataPathSetupReq",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPdpContextId",
                    },
                    type_desc = "cid_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "data_path_idx_t4"
                },
            },
        },
        [265] = {
            name = "IBISetFilterReq",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPdpContextId",
                    },
                    type_desc = "cid_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIPsFilterCmd",
                    },
                    type_desc = "filter_cmd_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "num_tcp_udp_filters_t5"
                },
                [6] = {
                    codec = {
                        length = 412,
                        name = "IBIPsTCPUDPFilterType",
                    },
                    type_desc = "tcp_udp_filter_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "num_mbim_filters_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIPsIPMaskFilterType",
                    },
                    type_desc = "mbim_filter_t8"
                },
            },
        },
        [266] = {
            name = "IBICallPsAllowMultiplePDNToSameApnReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "enable_t3"
                },
            },
        },
        [267] = {
            name = "IBICallPsFlushDataReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPdpContextId",
                    },
                    type_desc = "cid_t3"
                },
            },
        },
        [268] = {
            name = "IBICallPsTrafficClassInfo",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 16,
                        name = "IBICallPsTCinfo",
                    },
                    type_desc = "TrafficClassinfo_t3"
                },
                [4] = {
                    codec = {
                        length = 28,
                        name = "IBICallPsTCinfoDSinfo",
                    },
                    type_desc = "TrafficClassinfoWithDataStallinfo_t4"
                },
            },
        },
        [269] = {
            name = "IBICallPsLqmRegisterReq",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "report_link_state_ind_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "report_link_fp_ind_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "report_tc_ap_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "report_transfer_time_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "report_power_cost_t7"
                },
            },
        },
        [270] = {
            name = "IBICallPsLqmQueryReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "dl_thrpt_est_t3"
                },
            },
        },
        [271] = {
            name = "IBICallPsSetKeepaliveOffloadReq",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPdpContextId",
                    },
                    type_desc = "cid_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "enable_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "num_of_frames_t5"
                },
                [6] = {
                    codec = {
                        length = 132,
                        name = "IBICallPsKeepAliveFrameInfo",
                    },
                    type_desc = "frame_array_t6"
                },
            },
        },
        [272] = {
            name = "IBICallPsDataTransferTimeReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 12,
                        name = "IBICallPsDTTReqInfo",
                    },
                    type_desc = "DataTransferTimeReqInfo_t3"
                },
            },
        },
        [273] = {
            name = "IBICallPsImsTestModeReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsTestReqType",
                    },
                    type_desc = "Type_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "OemImsEnabled_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "At_Response_t5"
                },
            },
        },
        [274] = {
            name = "IBICallPsVoipAppInfoReq",
            mtlvs = {1, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "msg_version_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "voip_call_application_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "voip_call_state_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "voip_call_type_t6"
                },
            },
        },
        [275] = {
            name = "IBICallPsRtpReq",
            mtlvs = {1, 3, 4, 5, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "rtp_members_set_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "primary_pdp_cid_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "local_ip_length_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "local_ip_t6"
                },
                [7] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "local_rtp_port_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "remote_ip_length_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "remote_ip_t9"
                },
                [10] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "remote_rtp_port_t10"
                },
                [11] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "call_state_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "call_id_t12"
                },
            },
        },
        [276] = {
            name = "IBICallPsUpdateNaiReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "username_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "password_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "encryption_required_t5"
                },
            },
        },
        [304] = {
            name = "IBICallPsIPV6AddrFormationSuccessReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPdpContextId",
                    },
                    type_desc = "cid_t3"
                },
            },
        },
        [305] = {
            name = "IBICallPsTransmitStateReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsTransmitStateInfoType",
                    },
                    type_desc = "transmit_state_enable_t3"
                },
            },
        },
        [307] = {
            name = "IBICallPsWiFiAssociationStatusReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "ssid_len_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "wifi_ssid_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "bsid_len_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "wifi_bssid_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "wifi_calling_supported_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "wifi_call_active_t8"
                },
            },
        },
        [308] = {
            name = "IBICallPsVoLTECodecReq",
            mtlvs = {1, 3, 4, 5, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "call_id_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsVoLTECodecType",
                    },
                    type_desc = "codec_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "amr_mode_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsEvsAudioBWType",
                    },
                    type_desc = "evs_bw_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsEvsBitRateType",
                    },
                    type_desc = "evs_br_t7"
                },
            },
        },
        [309] = {
            name = "IBICallPsSignificantLocationReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "latitude_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "longitude_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "arrival_time_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "departure_time_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "horizontal_accuracy_t7"
                },
            },
        },
        [310] = {
            name = "IBICallPsBreadButterModeReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsBreadModeState",
                    },
                    type_desc = "breadModeState_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsButterModeState",
                    },
                    type_desc = "butterModeState_t4"
                },
            },
        },
        [311] = {
            name = "IBICallPsDataStallInfoReq",
            mtlvs = {1, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "version_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "data_stall_detected_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "Playback_stall_detected_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "dns_failure_detected_t6"
                },
            },
        },
        [312] = {
            name = "IBICallPsDataStallRegReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "report_data_stall_t3"
                },
            },
        },
        [313] = {
            name = "IBICallPsSecurityStatusReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [314] = {
            name = "IBICallPsCriticalPsSessionReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsCriticalPsSessionStatus",
                    },
                    type_desc = "session_status_t3"
                },
            },
        },
        [315] = {
            name = "IBIQoERequestReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "app_index_t3"
                },
                [4] = {
                    codec = {
                        length = 8,
                        name = "IBIUInt64",
                    },
                    type_desc = "system_time_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "Latency_Target_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "Jitter_Target_t6"
                },
                [7] = {
                    codec = {
                        length = 8,
                        name = "IBIUInt64",
                    },
                    type_desc = "App_HMAC_t7"
                },
            },
        },
        [316] = {
            name = "IBIQoELatencyReportReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "app_index_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "Latency_Value_t4"
                },
            },
        },
        [317] = {
            name = "IBIQoEQueryReq",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "app_index_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "QueryMode_t4"
                },
            },
        },
        [513] = {
            name = "IBICallPsAttachApnConfigRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [514] = {
            name = "IBICallPsStartDataCallRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 8,
                        name = "IBICallPsResult",
                    },
                    type_desc = "cause_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPdpContextId",
                    },
                    type_desc = "cid_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsSmCauseAccept",
                    },
                    type_desc = "sm_cause2_t6"
                },
            },
        },
        [515] = {
            name = "IBICallPsStopDataCallRspCb",
            mtlvs = {1, 3, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 8,
                        name = "IBICallPsResult",
                    },
                    type_desc = "cause_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPdpContextId",
                    },
                    type_desc = "cid_t5"
                },
            },
        },
        [520] = {
            name = "IBICallPsDataPathSetupRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [521] = {
            name = "IBISetFilterRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIPsFilterRespCodeType",
                    },
                    type_desc = "failure_cause_t4"
                },
            },
        },
        [522] = {
            name = "IBICallPsAllowMultiplePDNToSameApnRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_enabled_t4"
                },
            },
        },
        [523] = {
            name = "IBICallPsFlushDataRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPdpContextId",
                    },
                    type_desc = "cid_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t4"
                },
            },
        },
        [524] = {
            name = "IBICallPsTrafficClassInfoRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [525] = {
            name = "IBICallPsLqmRegisterRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [526] = {
            name = "IBICallPsLqmQueryRsbCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 12,
                        name = "IBICallPsLqmQueryRspinfo",
                    },
                    type_desc = "LqmQueryRspinfo_t3"
                },
            },
        },
        [527] = {
            name = "IBICallPsSetKeepaliveOffloadRspCb",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPdpContextId",
                    },
                    type_desc = "cid_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "enable_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "num_of_frames_t5"
                },
            },
        },
        [528] = {
            name = "IBICallPsDataTransferTimeRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 20,
                        name = "IBICallPsDTTRspCbInfo",
                    },
                    type_desc = "DataTransferTimeRspCbInfo_t3"
                },
            },
        },
        [529] = {
            name = "IBICallPsImsTestModeRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [530] = {
            name = "IBICallPsVoipAppInfoRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [531] = {
            name = "IBICallPsRtpRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [532] = {
            name = "IBICallPsUpdateNaiRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t4"
                },
            },
        },
        [560] = {
            name = "IBICallPsIPV6AddrFormationSuccessRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPdpContextId",
                    },
                    type_desc = "cid_t4"
                },
            },
        },
        [561] = {
            name = "IBICallPsTransmitStateRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [563] = {
            name = "IBICallPsWiFiAssociationStatusRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [564] = {
            name = "IBICallPsVoLTECodecRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [565] = {
            name = "IBICallPsSignificantLocationRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [566] = {
            name = "IBICallPsBreadButterModeRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [567] = {
            name = "IBICallPsDataStallInfoRsbCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [568] = {
            name = "IBICallPsDataStallRegRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [569] = {
            name = "IBICallPsSecurityStatusRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "valid_mask_t4"
                },
                [5] = {
                    codec = {
                        length = 8,
                        name = "IBICallPsEncryptionStatus",
                    },
                    type_desc = "encryptionStatusInfo_t5"
                },
                [6] = {
                    codec = {
                        length = 8,
                        name = "IBICallPsTempIDUpdateStatus",
                    },
                    type_desc = "tempIDUpdateStatusInfo_t6"
                },
                [7] = {
                    codec = {
                        length = 8,
                        name = "IBICallPsUeCapSecurityInfo",
                    },
                    type_desc = "ueCapSecurityInfo_t7"
                },
                [8] = {
                    codec = {
                        length = 8,
                        name = "IBICallPsPagingWithPermIdInfo",
                    },
                    type_desc = "pagingWithPermId_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "is_conn_encrypted_t9"
                },
            },
        },
        [570] = {
            name = "IBICallPsCriticalPsSessionRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [571] = {
            name = "IBIQoERequestRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIQoEResult",
                    },
                    type_desc = "returnCode_t3"
                },
            },
        },
        [572] = {
            name = "IBIQoELatencyReportReqRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIQoEResult",
                    },
                    type_desc = "returnCode_t3"
                },
            },
        },
        [573] = {
            name = "IBIQoEQueryRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIQoEResult",
                    },
                    type_desc = "returnCode_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "Quality_index_t4"
                },
            },
        },
        [769] = {
            name = "IBICallPsActivateStatusIndCb",
            mtlvs = {1, 2, 4, 8, 10, 13, 15, 18, 21},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPdpContextId",
                    },
                    type_desc = "cid_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPdpContextId",
                    },
                    type_desc = "linked_cid_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsActivationStatus",
                    },
                    type_desc = "activation_status_t4"
                },
                [5] = {
                    codec = {
                        length = 24,
                        name = "IBICallPsIpAddr",
                    },
                    type_desc = "ip_address_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "apn_t6"
                },
                [7] = {
                    codec = {
                        length = 20,
                        name = "IBICallPsQos2g",
                    },
                    type_desc = "qos_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "qos_3g_present_t8"
                },
                [9] = {
                    codec = {
                        length = 72,
                        name = "IBICallPsQos3g",
                    },
                    type_desc = "qos3g_t9"
                },
                [10] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "eps_qos_present_t10"
                },
                [11] = {
                    codec = {
                        length = 20,
                        name = "IBICallPsEpsQos",
                    },
                    type_desc = "eps_qos_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsLlcSapi",
                    },
                    type_desc = "llc_sapi_t12"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsRadioPriority",
                    },
                    type_desc = "radio_priority_t13"
                },
                [14] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "t3380_expirieries_t14"
                },
                [15] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsOrigin",
                    },
                    type_desc = "origin_t15"
                },
                [16] = {
                    codec = {
                        length = 8,
                        name = "IBICallPsResult",
                    },
                    type_desc = "cause_t16"
                },
                [17] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsSmCauseAccept",
                    },
                    type_desc = "smCause2_t17"
                },
                [18] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_tft_present_t18"
                },
                [19] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "num_pf_t19"
                },
                [20] = {
                    codec = {
                        length = 164,
                        name = "IBICallPsPacketFilter",
                    },
                    type_desc = "pf_t20"
                },
                [21] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_pco_present_t21"
                },
                [22] = {
                    codec = {
                        length = 1152,
                        name = "IBICallPsNwPcoParams",
                    },
                    type_desc = "pco_params_t22"
                },
            },
        },
        [770] = {
            name = "IBICallPsDataCallStoppedIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPdpContextId",
                    },
                    type_desc = "cid_t2"
                },
                [3] = {
                    codec = {
                        length = 8,
                        name = "IBICallPsResult",
                    },
                    type_desc = "cause_t3"
                },
            },
        },
        [771] = {
            name = "IBICallPsModifyIndCb",
            mtlvs = {1, 2, 4, 6, 8, 11, 13},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPdpContextId",
                    },
                    type_desc = "cid_t2"
                },
                [3] = {
                    codec = {
                        length = 20,
                        name = "IBICallPsQos2g",
                    },
                    type_desc = "qos2g_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "qos_3g_present_t4"
                },
                [5] = {
                    codec = {
                        length = 72,
                        name = "IBICallPsQos3g",
                    },
                    type_desc = "qos3g_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "eps_qos_present_t6"
                },
                [7] = {
                    codec = {
                        length = 20,
                        name = "IBICallPsEpsQos",
                    },
                    type_desc = "eps_qos_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_tft_present_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "num_pf_t9"
                },
                [10] = {
                    codec = {
                        length = 164,
                        name = "IBICallPsPacketFilter",
                    },
                    type_desc = "pf_t10"
                },
                [11] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_ambr_present_t11"
                },
                [12] = {
                    codec = {
                        length = 6,
                        name = "IBICallPsEpsApnAmbr",
                    },
                    type_desc = "apn_ambr_t12"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_pco_present_t13"
                },
                [14] = {
                    codec = {
                        length = 1152,
                        name = "IBICallPsNwPcoParams",
                    },
                    type_desc = "pco_params_t14"
                },
            },
        },
        [772] = {
            name = "IBICallPsSuspendIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsSuspendCause",
                    },
                    type_desc = "cause_t2"
                },
            },
        },
        [773] = {
            name = "IBICallPsResumeIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [774] = {
            name = "IBICallPsVoiceLQMLinkStateInd",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "version_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "voice_lqm_state_t3"
                },
            },
        },
        [778] = {
            name = "IBICallPsLqmDataIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsLqmType",
                    },
                    type_desc = "cmd_type_t2"
                },
                [3] = {
                    codec = {
                        length = 5,
                        name = "IBICallPsLqmLinkState",
                    },
                    type_desc = "lqm_link_state_t3"
                },
                [4] = {
                    codec = {
                        length = 184,
                        name = "IBICallPsLqmFp",
                    },
                    type_desc = "lqm_fp_t4"
                },
                [5] = {
                    codec = {
                        length = 12,
                        name = "IBICallPsLqmDlThrpt",
                    },
                    type_desc = "lqm_dl_thrpt_t5"
                },
                [6] = {
                    codec = {
                        length = 8,
                        name = "IBICallPsLqmTcApEnable",
                    },
                    type_desc = "lqm_tc_ap_enable_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "transfer_time_enable_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "lqm_transfer_time_enable_t8"
                },
                [9] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "cmd_type_bitmask_t9"
                },
                [10] = {
                    codec = {
                        length = 3,
                        name = "IBICallPsPowerCost",
                    },
                    type_desc = "power_cost_t10"
                },
                [11] = {
                    codec = {
                        length = 224,
                        name = "IBICallPsLqmFpV2",
                    },
                    type_desc = "lqm_fp_v2_t11"
                },
            },
        },
        [779] = {
            name = "IBICallPsVoiceLQMStateInd",
            mtlvs = {1, 2, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "version_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "voice_lqm_state_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "vLqm_blob_info_len_t4"
                },
                [5] = {
                    codec = {
                        length = 20,
                        name = "IBICallPsLqmBlob",
                    },
                    type_desc = "vLqm_blob_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "voice_lqm_blob_t6"
                },
            },
        },
        [780] = {
            name = "IBICallPsFDBackOffTimeInd",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "backoff_time_t2"
                },
            },
        },
        [781] = {
            name = "IBICallPsNotificationIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cause_t2"
                },
            },
        },
        [782] = {
            name = "IBICallPsImsTestModeIndCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "msg_len_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "msg_t4"
                },
            },
        },
        [783] = {
            name = "IBICallPsLteAttachIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsPdpContextId",
                    },
                    type_desc = "cid_t2"
                },
                [3] = {
                    codec = {
                        length = 24,
                        name = "IBICallPsIpAddr",
                    },
                    type_desc = "ip_address_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "apn_t4"
                },
            },
        },
        [784] = {
            name = "IBICallPsTransmitStateIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsConnectionStateType",
                    },
                    type_desc = "connection_state_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsConnectionTriggerType",
                    },
                    type_desc = "connection_trigger_t3"
                },
            },
        },
        [785] = {
            name = "IBICallPsDataStallRegIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 8,
                        name = "IBICallPsDataStallEnable",
                    },
                    type_desc = "data_stall_enable_t2"
                },
            },
        },
        [786] = {
            name = "IBICallPsSecurityStatusInd",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "valid_mask_t2"
                },
                [3] = {
                    codec = {
                        length = 8,
                        name = "IBICallPsEncryptionStatus",
                    },
                    type_desc = "encryptionStatusInfo_t3"
                },
                [4] = {
                    codec = {
                        length = 8,
                        name = "IBICallPsTempIDUpdateStatus",
                    },
                    type_desc = "tempIDUpdateStatusInfo_t4"
                },
                [5] = {
                    codec = {
                        length = 8,
                        name = "IBICallPsUeCapSecurityInfo",
                    },
                    type_desc = "ueCapSecurityInfo_t5"
                },
                [6] = {
                    codec = {
                        length = 8,
                        name = "IBICallPsPagingWithPermIdInfo",
                    },
                    type_desc = "pagingWithPermId_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "is_conn_encrypted_t7"
                },
            },
        },
        [787] = {
            name = "IBICallPsCriticalPsSessionIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBICallPsCriticalPsSessionCause",
                    },
                    type_desc = "cause_t2"
                },
            },
        },
        [788] = {
            name = "IBIQoEQueryInd",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "Quality_index_t2"
                },
            },
        },
    },
    [4] = {
        ["name"] = "_ARIMSGDEF_GROUP04_sms",
        [260] = {
            name = "IBISmsIncomingSmsAck",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "tipd_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISmsStorageResult",
                    },
                    type_desc = "result_t4"
                },
                [5] = {
                    codec = {
                        length = 177,
                        name = "IBITpduData",
                    },
                    type_desc = "tpdu_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIMessageMode",
                    },
                    type_desc = "message_mode_t6"
                },
            },
        },
        [261] = {
            name = "IBISmsDataDownloadReq",
            mtlvs = {1, 4, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "tipd_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISmsPpProtocol",
                    },
                    type_desc = "pp_protocol_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "dcs_t5"
                },
                [6] = {
                    codec = {
                        length = 177,
                        name = "IBITpduData",
                    },
                    type_desc = "tpdu_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIMessageMode",
                    },
                    type_desc = "message_mode_t7"
                },
            },
        },
        [262] = {
            name = "IBISmsSendReq_V2",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 184,
                        name = "IBISmsData",
                    },
                    type_desc = "sms_data_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBINetGsmService",
                    },
                    type_desc = "service_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sms_check_bitmask_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "tp_mr_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIMessageMode",
                    },
                    type_desc = "message_mode_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBINetCdmaChannel",
                    },
                    type_desc = "channel_type_t8"
                },
                [9] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "message_id_t9"
                },
                [10] = {
                    codec = {
                        length = 260,
                        name = "IBICdmaTpduData",
                    },
                    type_desc = "cdma_tpdu_t10"
                },
            },
        },
        [263] = {
            name = "IBISmsConfirmSmsDataDownloadAck",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "tipd_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIMessageMode",
                    },
                    type_desc = "message_mode_t4"
                },
            },
        },
        [264] = {
            name = "IBISmsSetSendMoreMessagesStatus",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBISmsSendMoreMessagesStatus",
                    },
                    type_desc = "status_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIMessageMode",
                    },
                    type_desc = "message_mode_t3"
                },
            },
        },
        [265] = {
            name = "IBISimSetSmscAddressReq",
            mtlvs = {1, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "record_no_t3"
                },
                [4] = {
                    codec = {
                        length = 23,
                        name = "IBISimSmscAddress",
                    },
                    type_desc = "smsc_add_t4"
                },
            },
        },
        [266] = {
            name = "IBISimGetSmscAddressReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "record_no_t3"
                },
            },
        },
        [267] = {
            name = "IBISmsGetServiceStatusReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIMessageMode",
                    },
                    type_desc = "message_mode_t3"
                },
            },
        },
        [268] = {
            name = "IBISmsGetMsgWaitIndReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [269] = {
            name = "IBISmsSetMsgWaitIndReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 12,
                        name = "IBISmsMsgWaitingArray",
                    },
                    type_desc = "msg_wait_info_t3"
                },
            },
        },
        [270] = {
            name = "IBISimGetMsgListReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimMsgTagType",
                    },
                    type_desc = "msg_tag_t3"
                },
            },
        },
        [271] = {
            name = "IBISimGetEfSmsReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "rec_num_t3"
                },
            },
        },
        [272] = {
            name = "IBIMsSimSetSmsTagReq",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "rec_num_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimMsgTagType",
                    },
                    type_desc = "msg_tag_t4"
                },
            },
        },
        [516] = {
            name = "IBISmsDeliverySessionStatusCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "tipd_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "net_response_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBISmsCpResult",
                    },
                    type_desc = "cp_result_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIMessageMode",
                    },
                    type_desc = "message_mode_t6"
                },
            },
        },
        [517] = {
            name = "IBISmsDataDownloadRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "tipd_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimUpdateStatus",
                    },
                    type_desc = "status_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBISmsSendResult",
                    },
                    type_desc = "result_t5"
                },
                [6] = {
                    codec = {
                        length = 129,
                        name = "IBISmsDownloadData",
                    },
                    type_desc = "data_t6"
                },
            },
        },
        [518] = {
            name = "IBISmsSendRspCb_V2",
            mtlvs = {1, 3, 14},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISmsSendResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBISmsMessageReference",
                    },
                    type_desc = "tp_mr_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBISmsTpFcs",
                    },
                    type_desc = "tp_fcs_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "tp_presence_t6"
                },
                [14] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcServiceDomain",
                    },
                    type_desc = "domain_t14"
                },
                [15] = {
                    codec = {
                        length = 4,
                        name = "IBIMessageMode",
                    },
                    type_desc = "message_mode_t15"
                },
                [16] = {
                    codec = {
                        length = 4,
                        name = "IBICdmaSmsErrorClass",
                    },
                    type_desc = "error_class_t16"
                },
                [17] = {
                    codec = {
                        length = 4,
                        name = "IBICdmaSmsErrorCause",
                    },
                    type_desc = "error_cause_t17"
                },
                [18] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "message_id_t18"
                },
            },
        },
        [521] = {
            name = "IBISimSetSmscAddressRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimEfAccessResType",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimEfAccessErrorCause",
                    },
                    type_desc = "error_cause_t4"
                },
            },
        },
        [522] = {
            name = "IBISimGetSmscAddressRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimEfAccessResType",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimEfAccessErrorCause",
                    },
                    type_desc = "error_cause_t4"
                },
                [5] = {
                    codec = {
                        length = 23,
                        name = "IBISimSmscAddress",
                    },
                    type_desc = "smsc_add_t5"
                },
            },
        },
        [523] = {
            name = "IBISmsGetServiceStatusRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "sms_service_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISmsServiceErrorCause",
                    },
                    type_desc = "error_cause_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIMessageMode",
                    },
                    type_desc = "message_mode_t5"
                },
            },
        },
        [524] = {
            name = "IBISmsGetMsgWaitIndRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimEfAccessResType",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimEfAccessErrorCause",
                    },
                    type_desc = "error_cause_t4"
                },
                [5] = {
                    codec = {
                        length = 12,
                        name = "IBISmsMsgWaitingArray",
                    },
                    type_desc = "msg_wait_info_t5"
                },
            },
        },
        [525] = {
            name = "IBISmsSetMsgWaitIndRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimEfAccessResType",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimEfAccessErrorCause",
                    },
                    type_desc = "error_cause_t4"
                },
            },
        },
        [526] = {
            name = "IBISimGetMsgListRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimUpdateStatus",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 2044,
                        name = "IBISimMsgListCbParams",
                    },
                    type_desc = "params_t4"
                },
            },
        },
        [527] = {
            name = "IBISimGetEfSmsRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimEfAccessResType",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimEfAccessErrorCause",
                    },
                    type_desc = "error_cause_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "rec_num_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBISimMsgTagType",
                    },
                    type_desc = "tag_type_t6"
                },
                [7] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "data_read_length_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "data_read_t8"
                },
            },
        },
        [528] = {
            name = "IBISimSetSmsTagRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimEfAccessResType",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimEfAccessErrorCause",
                    },
                    type_desc = "error_cause_t4"
                },
            },
        },
        [769] = {
            name = "IBISmsIncomingIndCb",
            mtlvs = {1, 2, 3, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "tipd_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "stored_on_sim_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "pos_t4"
                },
                [5] = {
                    codec = {
                        length = 184,
                        name = "IBISmsData",
                    },
                    type_desc = "sms_data_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcServiceDomain",
                    },
                    type_desc = "domain_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "network_source_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIMessageMode",
                    },
                    type_desc = "message_mode_t8"
                },
                [9] = {
                    codec = {
                        length = 260,
                        name = "IBICdmaTpduData",
                    },
                    type_desc = "cdma_tpdu_t9"
                },
            },
        },
        [770] = {
            name = "IBISimSmscAddressIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "smsc_add_present_t2"
                },
                [3] = {
                    codec = {
                        length = 23,
                        name = "IBISimSmscAddress",
                    },
                    type_desc = "smsc_add_t3"
                },
            },
        },
        [771] = {
            name = "IBISmsServiceIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "sms_service_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISmsServiceErrorCause",
                    },
                    type_desc = "error_cause_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIMessageMode",
                    },
                    type_desc = "message_mode_t4"
                },
            },
        },
        [772] = {
            name = "IBISimMsgWaitIndicatorIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 12,
                        name = "IBISmsMsgWaitingArray",
                    },
                    type_desc = "msg_wait_info_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIMessageMode",
                    },
                    type_desc = "message_mode_t3"
                },
            },
        },
        [773] = {
            name = "IBISimMsgListIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "no_of_sms_entries_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "no_of_req_sms_entries_t3"
                },
                [4] = {
                    codec = {
                        length = 8,
                        name = "IBISimMsgListData",
                    },
                    type_desc = "msg_list_t4"
                },
            },
        },
    },
    [5] = {
        ["name"] = "_ARIMSGDEF_GROUP05_cbs",
        [257] = {
            name = "IBICbsConfigReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 402,
                        name = "IBICbsMidRangeList",
                    },
                    type_desc = "mid_range_list_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ignore_duplicates_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIMessageMode",
                    },
                    type_desc = "message_mode_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBICdmaLanguage",
                    },
                    type_desc = "language_list_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "language_cnt_t7"
                },
                [8] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "category_fields_cnt_t8"
                },
                [9] = {
                    codec = {
                        length = 8,
                        name = "IBICbsCdmaServiceCategoryFields",
                    },
                    type_desc = "category_fields_t9"
                },
            },
        },
        [258] = {
            name = "IBICbsGetConfigReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIMessageMode",
                    },
                    type_desc = "message_mode_t3"
                },
            },
        },
        [513] = {
            name = "IBICbsConfigRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICbsCause",
                    },
                    type_desc = "cause_t4"
                },
            },
        },
        [514] = {
            name = "IBICbsGetConfigRspCb",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 402,
                        name = "IBICbsMidRangeList",
                    },
                    type_desc = "mid_range_list_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ignore_duplicates_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIMessageMode",
                    },
                    type_desc = "message_mode_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBICdmaLanguage",
                    },
                    type_desc = "language_list_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "language_cnt_t8"
                },
                [9] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "category_fields_cnt_t9"
                },
                [10] = {
                    codec = {
                        length = 8,
                        name = "IBICbsCdmaServiceCategoryFields",
                    },
                    type_desc = "category_fields_t10"
                },
            },
        },
        [772] = {
            name = "IBICbsMsgIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8, 10},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "coding_scheme_t2"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "serial_number_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "mid_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "number_of_pages_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "cb_length_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cb_data_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBICbsType",
                    },
                    type_desc = "cbs_type_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBICbsEtwsWarningType",
                    },
                    type_desc = "warning_t9"
                },
                [10] = {
                    codec = {
                        length = 4,
                        name = "IBIRat",
                    },
                    type_desc = "rat_t10"
                },
                [11] = {
                    codec = {
                        length = 2,
                        name = "IBIInt16",
                    },
                    type_desc = "warning_area_coord_length_t11"
                },
                [12] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "warning_area_coord_t12"
                },
            },
        },
    },
    [6] = {
        ["name"] = "_ARIMSGDEF_GROUP06_ss",
        [257] = {
            name = "IBISsCallForwardReq",
            mtlvs = {1, 3, 7, 8},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISsOperationCode",
                    },
                    type_desc = "operation_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISsServiceCode",
                    },
                    type_desc = "service_code_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBISsBasicServiceGroup",
                    },
                    type_desc = "basic_service_groups_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "noreply_timeout_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBISsAddressType",
                    },
                    type_desc = "forward_to_type_t7"
                },
                [8] = {
                    codec = {
                        length = 83,
                        name = "IBISsAddressData",
                    },
                    type_desc = "forward_to_address_t8"
                },
            },
        },
        [258] = {
            name = "IBISsExtendedUssdReq",
            mtlvs = {1, 3, 4, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "data_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "data_length_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBISsUssdSendMode",
                    },
                    type_desc = "send_mode_t5"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "dcs_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_continued_ussd_transaction_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "tid_t9"
                },
            },
        },
        [260] = {
            name = "IBISsAbortReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [262] = {
            name = "IBISsIdentificationReq",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISsOperationCode",
                    },
                    type_desc = "operation_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISsServiceCode",
                    },
                    type_desc = "service_code_t4"
                },
            },
        },
        [263] = {
            name = "IBISsCallWaitingReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISsOperationCode",
                    },
                    type_desc = "operation_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISsServiceCode",
                    },
                    type_desc = "service_code_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBISsBasicServiceGroup",
                    },
                    type_desc = "basic_service_groups_t5"
                },
            },
        },
        [265] = {
            name = "IBISsCallBarringReq_V1",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISsOperationCode",
                    },
                    type_desc = "operation_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISsServiceCode",
                    },
                    type_desc = "service_code_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBISsBasicServiceGroup",
                    },
                    type_desc = "basic_service_groups_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "call_barring_existing_pwd_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "call_barring_new_pwd_t7"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "call_barring_repeat_new_pwd_t9"
                },
            },
        },
        [513] = {
            name = "IBISsCallForwardRspCb",
            mtlvs = {1, 3, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISsOperationCode",
                    },
                    type_desc = "operation_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISsServiceCode",
                    },
                    type_desc = "service_code_t4"
                },
                [5] = {
                    codec = {
                        length = 140,
                        name = "IBISsCallForwardingFeatureExtStruct",
                    },
                    type_desc = "cf_list_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cf_list_length_t6"
                },
                [7] = {
                    codec = {
                        length = 20,
                        name = "IBISsOperationResponse",
                    },
                    type_desc = "response_t7"
                },
            },
        },
        [514] = {
            name = "IBISsExtendedUssdRspCb",
            mtlvs = {1, 3, 4, 8},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 20,
                        name = "IBISsOperationResponse",
                    },
                    type_desc = "response_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISsUssdType",
                    },
                    type_desc = "ussd_type_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "data_t5"
                },
                [6] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "data_length_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "dcs_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "release_complete_t8"
                },
                [11] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "tid_t11"
                },
            },
        },
        [516] = {
            name = "IBISsAbortRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [518] = {
            name = "IBISsIdentificationRspCb",
            mtlvs = {1, 3, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISsOperationCode",
                    },
                    type_desc = "operation_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISsServiceCode",
                    },
                    type_desc = "service_code_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBISsStatus",
                    },
                    type_desc = "ss_status_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBISsClirOption",
                    },
                    type_desc = "cli_restrict_options_t6"
                },
                [7] = {
                    codec = {
                        length = 20,
                        name = "IBISsOperationResponse",
                    },
                    type_desc = "response_t7"
                },
            },
        },
        [519] = {
            name = "IBISsCallWaitingRspCb",
            mtlvs = {1, 3, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISsOperationCode",
                    },
                    type_desc = "operation_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISsServiceCode",
                    },
                    type_desc = "service_code_t4"
                },
                [5] = {
                    codec = {
                        length = 8,
                        name = "IBISsCallWaitingFeatureStruct",
                    },
                    type_desc = "cw_list_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cw_list_length_t6"
                },
                [7] = {
                    codec = {
                        length = 20,
                        name = "IBISsOperationResponse",
                    },
                    type_desc = "response_t7"
                },
            },
        },
        [521] = {
            name = "IBISsCallBarringRspCb_V1",
            mtlvs = {1, 3, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISsOperationCode",
                    },
                    type_desc = "operation_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISsServiceCode",
                    },
                    type_desc = "service_code_t4"
                },
                [5] = {
                    codec = {
                        length = 8,
                        name = "IBISsCallBarringFeatureStruct",
                    },
                    type_desc = "cb_list_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cb_list_length_t6"
                },
                [7] = {
                    codec = {
                        length = 20,
                        name = "IBISsOperationResponse",
                    },
                    type_desc = "response_t7"
                },
            },
        },
        [769] = {
            name = "IBISsUssdIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBISsUssdType",
                    },
                    type_desc = "ussd_type_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "data_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "data_length_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "dcs_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "release_complete_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "tid_t7"
                },
            },
        },
    },
    [7] = {
        ["name"] = "_ARIMSGDEF_GROUP07_net_plmn",
        [258] = {
            name = "IBINetDetachReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [262] = {
            name = "IBINetPowerDownReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [264] = {
            name = "IBINetIceFdStatusReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [266] = {
            name = "IBINetIceSingleShotFdReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "rel8_only_t3"
                },
            },
        },
        [272] = {
            name = "IBIMsNetIceCsgAsfSearchReq",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "mcc_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "mnc_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "csg_id_t5"
                },
            },
        },
        [273] = {
            name = "IBISendApacsDataReq",
            mtlvs = {1, 2, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "num_entries_t2"
                },
                [3] = {
                    codec = {
                        length = 460,
                        name = "IBINetPssiList",
                    },
                    type_desc = "pssi_table_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIApacsType",
                    },
                    type_desc = "apacs_type_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "message_sequence_number_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "total_number_of_messages_t6"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "boostrap_version_t8"
                },
                [9] = {
                    codec = {
                        length = 280,
                        name = "IBINetPssiListExt",
                    },
                    type_desc = "pssi_table_ext_t9"
                },
                [10] = {
                    codec = {
                        length = 8,
                        name = "IBINetPssiCdma1xInfo",
                    },
                    type_desc = "cdma_1x_pssi_table_t10"
                },
                [11] = {
                    codec = {
                        length = 20,
                        name = "IBINetPssiCdmaEvdoInfo",
                    },
                    type_desc = "cdma_evdo_pssi_table_t11"
                },
            },
        },
        [274] = {
            name = "IBIApacsDataStatusReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIApacs_status_resp",
                    },
                    type_desc = "apacs_status_t2"
                },
                [3] = {
                    codec = {
                        length = 8,
                        name = "IBIPlmn",
                    },
                    type_desc = "plmn_t3"
                },
            },
        },
        [275] = {
            name = "IBINetIceCellularSwitchStatusReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "roaming_enhancement_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "cellular_data_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "data_roaming_t5"
                },
            },
        },
        [276] = {
            name = "IBIP2PProximityStatusReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "proximity_indicator_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "HW_version_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "SW_version_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "BB_info_t6"
                },
            },
        },
        [278] = {
            name = "IBINetIceApStatusReq",
            mtlvs = {},
            tlvs = {
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBINetApScreenStatusType",
                    },
                    type_desc = "screen_status_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetApSleepStatusType",
                    },
                    type_desc = "sleep_status_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBINetApTetheringStatusType",
                    },
                    type_desc = "tethering_status_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBINetApBatterySaverModeType",
                    },
                    type_desc = "battery_saver_mode_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBINetApScreenLockStatusType",
                    },
                    type_desc = "screen_lock_status_t6"
                },
            },
        },
        [279] = {
            name = "IBISetRtcEpochTimeReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 8,
                        name = "IBIUInt64",
                    },
                    type_desc = "time_t1"
                },
            },
        },
        [280] = {
            name = "IBINetAttachReq_V1",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetRegistrationMode",
                    },
                    type_desc = "registration_mode_t3"
                },
                [4] = {
                    codec = {
                        length = 12,
                        name = "IBIPlmnWAcT",
                    },
                    type_desc = "plmn_w_ac_t_t4"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "reboot_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "cmas_only_t8"
                },
            },
        },
        [281] = {
            name = "IBINetGetPlmnNameInfoReq_V1",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "plmn_count_t3"
                },
                [4] = {
                    codec = {
                        length = 8,
                        name = "IBINetPlmnId",
                    },
                    type_desc = "plmn_id_t4"
                },
            },
        },
        [283] = {
            name = "IBINetGetRegistrationInfoReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [284] = {
            name = "IBINetIncrementalScanReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetEonsSupport",
                    },
                    type_desc = "eons_support_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "provide_plmn_name_t4"
                },
            },
        },
        [285] = {
            name = "IBISendPreferredListReq",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 3084,
                        name = "IBIPlmnPriorityInfo",
                    },
                    type_desc = "plmn_info_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "message_seq_number_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "total_msg_number_t5"
                },
            },
        },
        [286] = {
            name = "IBISendPreferredPlmnVersionReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "CRC_t3"
                },
            },
        },
        [287] = {
            name = "IBIP2PMsgPushReq",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "timestamp_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "MsgType_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "BB_info_req_t5"
                },
                [6] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "ext_flag_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "MsgData_t7"
                },
            },
        },
        [288] = {
            name = "IBINetSetSystemSelectionPreferenceReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "user_reboot_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "cmas_only_t4"
                },
            },
        },
        [289] = {
            name = "IBINetSetECBMReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ecbm_enabled_t3"
                },
            },
        },
        [514] = {
            name = "IBINetDetachRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetRegistrationStatus",
                    },
                    type_desc = "registration_status_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBINetUserCause",
                    },
                    type_desc = "user_cause_t4"
                },
            },
        },
        [518] = {
            name = "IBINetPowerDownCnfCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [520] = {
            name = "IBINetIceFdStatusCnfCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetFdStatus",
                    },
                    type_desc = "fd_status_t3"
                },
            },
        },
        [522] = {
            name = "IBINetSingleShotFdRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBINetFdorRejectCause",
                    },
                    type_desc = "reject_cause_t4"
                },
            },
        },
        [528] = {
            name = "IBIMsNetIceCsgAsfSearchCnfCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "csg_asf_search_status_t3"
                },
                [4] = {
                    codec = {
                        length = 8,
                        name = "IBICsgInfo",
                    },
                    type_desc = "csg_info_t4"
                },
            },
        },
        [529] = {
            name = "IBISendApacsDataRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [530] = {
            name = "IBIApacsDataStatusRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [531] = {
            name = "IBINetIceCellularSwitchStatusRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [532] = {
            name = "IBIP2PProximityStatusRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_type_t3"
                },
            },
        },
        [534] = {
            name = "IBINetIceApStatusRspCb",
            mtlvs = {},
            tlvs = {
            },
        },
        [535] = {
            name = "IBISetRtcEpochTimeRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "status_t1"
                },
            },
        },
        [536] = {
            name = "IBINetAttachRspCb_V1",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_type_t3"
                },
            },
        },
        [537] = {
            name = "IBINetGetPlmnNameInfoRspCb_V1",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "plmn_count_t3"
                },
                [4] = {
                    codec = {
                        length = 108,
                        name = "IBINetPlmn_V1",
                    },
                    type_desc = "plmn_list_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBINetGetPlmnNameInfoResult",
                    },
                    type_desc = "result_t5"
                },
                [6] = {
                    codec = {
                        length = 100,
                        name = "IBINetPlmnNameInfo_V1",
                    },
                    type_desc = "network_plmn_name_t6"
                },
            },
        },
        [539] = {
            name = "IBINetGetRegistrationInfoRspCb",
            mtlvs = {1, 3, 6, 9},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetRegistrationStatus",
                    },
                    type_desc = "cs_registration_status_t3"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBINetError",
                    },
                    type_desc = "cs_error_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBINetRegistrationStatus",
                    },
                    type_desc = "ps_registration_status_t6"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBINetError",
                    },
                    type_desc = "ps_error_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBINetRegistrationMode",
                    },
                    type_desc = "registration_mode_t9"
                },
                [11] = {
                    codec = {
                        length = 12,
                        name = "IBIPlmnWAcT",
                    },
                    type_desc = "plmn_w_ac_t_t11"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_roaming_t13"
                },
                [21] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ims_emergency_supported_t21"
                },
                [26] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_ps_rej_internal_t26"
                },
                [32] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_cs_rej_internal_t32"
                },
                [33] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cdma_1x_eri_t33"
                },
                [34] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cdma_evdo_eri_t34"
                },
                [35] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "network_ims_voice_over_ps_supported_t35"
                },
            },
        },
        [540] = {
            name = "IBINetIncrementalScanRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_type_t3"
                },
            },
        },
        [541] = {
            name = "IBISendPreferredListRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "status_t3"
                },
            },
        },
        [542] = {
            name = "IBISendPreferredPlmnVersionRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "status_t3"
                },
            },
        },
        [543] = {
            name = "IBIP2PMsgPushRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_type_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "BB_info_t4"
                },
            },
        },
        [544] = {
            name = "IBINetSetSystemSelectionPreferenceRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_type_t3"
                },
            },
        },
        [545] = {
            name = "IBINetSetECBMRspCb",
            mtlvs = {},
            tlvs = {
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t3"
                },
            },
        },
        [769] = {
            name = "IBINetRegistrationInfoIndCb",
            mtlvs = {1, 2, 5, 8},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBINetRegistrationStatus",
                    },
                    type_desc = "cs_registration_status_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetRegistrationRejectCause",
                    },
                    type_desc = "cs_registration_reject_cause_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBINetError",
                    },
                    type_desc = "cs_error_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBINetRegistrationStatus",
                    },
                    type_desc = "ps_registration_status_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBINetRegistrationRejectCause",
                    },
                    type_desc = "ps_registration_reject_cause_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBINetError",
                    },
                    type_desc = "ps_error_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBINetRegistrationMode",
                    },
                    type_desc = "registration_mode_t8"
                },
                [10] = {
                    codec = {
                        length = 12,
                        name = "IBIPlmnWAcT",
                    },
                    type_desc = "plmn_w_ac_t_t10"
                },
                [11] = {
                    codec = {
                        length = 4,
                        name = "IBINetBand",
                    },
                    type_desc = "band_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_roaming_t12"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_eplmn_t13"
                },
                [16] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "cs_reg_reject_cause_updated_t16"
                },
                [17] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ps_reg_reject_cause_updated_t17"
                },
                [19] = {
                    codec = {
                        length = 4,
                        name = "IBINetAreaType",
                    },
                    type_desc = "area_type_t19"
                },
                [20] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ims_emergency_supported_t20"
                },
                [22] = {
                    codec = {
                        length = 8,
                        name = "IBICallPsResult",
                    },
                    type_desc = "sm_cause_t22"
                },
                [23] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bIsApnValid_t23"
                },
                [25] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_cs_rej_internal_t25"
                },
                [26] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_ps_rej_internal_t26"
                },
                [27] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cdma_1x_eri_t27"
                },
                [28] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cdma_evdo_eri_t28"
                },
                [29] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "network_ims_voice_over_ps_supported_t29"
                },
            },
        },
        [770] = {
            name = "IBINetNetworkFeatureSupportInfoIndCb",
            mtlvs = {1, 4, 5, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ims_voice_over_ps_supported_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "emergency_bearer_supported_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBINetNetworkFeatureAdditionalInfo",
                    },
                    type_desc = "nw_feature_additional_Info_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIRat",
                    },
                    type_desc = "rat_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "roaming_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_ehrpd_available_t9"
                },
            },
        },
        [772] = {
            name = "IBINetIceFdReportIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBINetFdStatus",
                    },
                    type_desc = "fd_status_t2"
                },
            },
        },
        [773] = {
            name = "IBILapsFetchIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "laps_fetch_type_t2"
                },
                [3] = {
                    codec = {
                        length = 124,
                        name = "IBIMsNetIcelapsfetchdata",
                    },
                    type_desc = "laps_fetch_data_t3"
                },
            },
        },
        [774] = {
            name = "IBINetIceManualPlmnModeIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 8,
                        name = "IBIPlmn",
                    },
                    type_desc = "last_selected_plmn_t2"
                },
                [3] = {
                    codec = {
                        length = 8,
                        name = "IBIPlmn",
                    },
                    type_desc = "hplmn_or_ehplmn_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "third_country_mcc_t4"
                },
            },
        },
        [776] = {
            name = "IBIP2PMessageIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "waking_indicator_t2"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "MsgType_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "MsgData_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "if_delete_t5"
                },
            },
        },
        [778] = {
            name = "IBINetNitzInfoIndCb_V1",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_timezone_available_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_time_available_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_dst_available_t6"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "timezone_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "daylight_saving_time_t9"
                },
                [10] = {
                    codec = {
                        length = 10,
                        name = "IBIDateTime",
                    },
                    type_desc = "time_t10"
                },
                [12] = {
                    codec = {
                        length = 12,
                        name = "IBIPlmnWAcT",
                    },
                    type_desc = "plmn_w_ac_t_t12"
                },
            },
        },
        [779] = {
            name = "IBINetGetPlmnNameInfoIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "plmn_count_t2"
                },
                [3] = {
                    codec = {
                        length = 108,
                        name = "IBINetPlmn_V1",
                    },
                    type_desc = "plmn_list_t3"
                },
                [4] = {
                    codec = {
                        length = 100,
                        name = "IBINetPlmnNameInfo_V1",
                    },
                    type_desc = "network_plmn_name_t4"
                },
            },
        },
        [780] = {
            name = "IBINetRegisteredPlmnNameIndCb_V1",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 8,
                        name = "IBIPlmn",
                    },
                    type_desc = "plmn_id_t2"
                },
                [3] = {
                    codec = {
                        length = 100,
                        name = "IBINetPlmnNameInfo_V1",
                    },
                    type_desc = "plmn_name_info_t3"
                },
                [4] = {
                    codec = {
                        length = 100,
                        name = "IBINetPlmnNameInfo_V1",
                    },
                    type_desc = "network_plmn_name_t4"
                },
            },
        },
        [781] = {
            name = "IBINetIncrementalScanIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 3964,
                        name = "IBINetPlmnScanList_V1",
                    },
                    type_desc = "plmn_scan_list_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "scan_rejected_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBINetUserCause",
                    },
                    type_desc = "user_cause_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "final_report_t5"
                },
            },
        },
        [801] = {
            name = "IBINetSetECBMIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ecbm_enabled_t2"
                },
            },
        },
    },
    [8] = {
        ["name"] = "_ARIMSGDEF_GROUP08_net_rat",
        [258] = {
            name = "IBINetConfigureNetworkModeReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 20,
                        name = "IBINetRatModeSetting",
                    },
                    type_desc = "rat_mode_settings_t3"
                },
                [4] = {
                    codec = {
                        length = 16,
                        name = "IBINetPreferredRatSetting",
                    },
                    type_desc = "preferred_rat_settings_t4"
                },
                [5] = {
                    codec = {
                        length = 540,
                        name = "IBINetBandSettings",
                    },
                    type_desc = "band_settings_t5"
                },
                [6] = {
                    codec = {
                        length = 8,
                        name = "IBINetRatModeSettingExt",
                    },
                    type_desc = "cdma_rat_mode_settings_t6"
                },
                [7] = {
                    codec = {
                        length = 12,
                        name = "IBINetPreferredRatSettingExt",
                    },
                    type_desc = "cdma_preferred_rat_settings_t7"
                },
                [8] = {
                    codec = {
                        length = 344,
                        name = "IBINetBandSettingsExt",
                    },
                    type_desc = "cdma_band_settings_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "cdma_international_roaming_enabled_t9"
                },
                [10] = {
                    codec = {
                        length = 564,
                        name = "IBINetBandSettings3gppExt",
                    },
                    type_desc = "band_settings_3gpp_ext_t10"
                },
                [11] = {
                    codec = {
                        length = 172,
                        name = "IBINetBandConfiguration",
                    },
                    type_desc = "cdma_bands_t11"
                },
            },
        },
        [259] = {
            name = "IBINetRatModeStatusReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [260] = {
            name = "IBINetBandStatusReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [261] = {
            name = "IBINetRatSwitchStatusReport",
            mtlvs = {1, 2, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "switch_toggled_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIRatSwitchType",
                    },
                    type_desc = "ap_rat_switch_type_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIRatSwitchStatus",
                    },
                    type_desc = "ap_rat_switch_status_t4"
                },
            },
        },
        [514] = {
            name = "IBINetConfigureNetworkModeRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "success_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBINetConfigureNetworkModeError",
                    },
                    type_desc = "error_cause_t4"
                },
            },
        },
        [515] = {
            name = "IBINetRatModeStatusRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 12,
                        name = "IBINetEnabledRats",
                    },
                    type_desc = "rat_mode_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIRat",
                    },
                    type_desc = "pref_rat_list_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBINetDuplexMode",
                    },
                    type_desc = "umts_duplex_mode_t5"
                },
                [6] = {
                    codec = {
                        length = 8,
                        name = "IBINetEnabledRatsExt",
                    },
                    type_desc = "cdma_rat_mode_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIRat",
                    },
                    type_desc = "cdma_pref_rat_list_t7"
                },
            },
        },
        [516] = {
            name = "IBINetBandStatusRspCb",
            mtlvs = {1, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 344,
                        name = "IBINet2gBandstatus",
                    },
                    type_desc = "gsm_band_status_t3"
                },
                [4] = {
                    codec = {
                        length = 344,
                        name = "IBINet3gBandstatus",
                    },
                    type_desc = "umts_band_status_t4"
                },
                [5] = {
                    codec = {
                        length = 16,
                        name = "IBINetLteBandstatus",
                    },
                    type_desc = "lte_band_status_t5"
                },
                [6] = {
                    codec = {
                        length = 344,
                        name = "IBINetUmtsTddBandStatus",
                    },
                    type_desc = "umts_tdd_band_status_t6"
                },
                [7] = {
                    codec = {
                        length = 344,
                        name = "IBINetCdmaBandStatus",
                    },
                    type_desc = "cdma1x_band_status_t7"
                },
                [8] = {
                    codec = {
                        length = 344,
                        name = "IBINetCdmaBandStatus",
                    },
                    type_desc = "cdmaEvdo_band_status_t8"
                },
                [9] = {
                    codec = {
                        length = 64,
                        name = "IBINetExtLteBandstatus",
                    },
                    type_desc = "lte_band_status_ext_t9"
                },
                [10] = {
                    codec = {
                        length = 344,
                        name = "IBINetCdmaBandStatus",
                    },
                    type_desc = "cdma_band_status_t10"
                },
            },
        },
        [769] = {
            name = "IBINetNetworkModeChangeIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 20,
                        name = "IBINetRatModeSetting",
                    },
                    type_desc = "rat_mode_settings_t2"
                },
                [4] = {
                    codec = {
                        length = 540,
                        name = "IBINetBandSettings",
                    },
                    type_desc = "band_settings_t4"
                },
                [5] = {
                    codec = {
                        length = 8,
                        name = "IBINetRatModeSettingExt",
                    },
                    type_desc = "cdma_rat_mode_settings_t5"
                },
                [6] = {
                    codec = {
                        length = 344,
                        name = "IBINetBandSettingsExt",
                    },
                    type_desc = "cdma_band_settings_t6"
                },
                [7] = {
                    codec = {
                        length = 564,
                        name = "IBINetBandSettings3gppExt",
                    },
                    type_desc = "band_settings_3gpp_ext_t7"
                },
                [8] = {
                    codec = {
                        length = 172,
                        name = "IBINetBandConfiguration",
                    },
                    type_desc = "cdma_bands_t8"
                },
            },
        },
        [770] = {
            name = "IBINetRatModeStatusIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 12,
                        name = "IBINetEnabledRats",
                    },
                    type_desc = "rat_mode_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIRat",
                    },
                    type_desc = "pref_rat_list_t3"
                },
                [4] = {
                    codec = {
                        length = 8,
                        name = "IBINetEnabledRatsExt",
                    },
                    type_desc = "cdma_rat_mode_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIRat",
                    },
                    type_desc = "cdma_pref_rat_list_t5"
                },
            },
        },
    },
    [9] = {
        ["name"] = "_ARIMSGDEF_GROUP09_net_cell",
        [257] = {
            name = "IBINetSetRadioSignalReportingConfiguration",
            mtlvs = {1, 2, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "radioSignalReportingConfigPresenceBitmask_t2"
                },
                [3] = {
                    codec = {
                        length = 20,
                        name = "IBINetGSMRadioSignalReportingConfiguration",
                    },
                    type_desc = "gsm_radio_signal_report_config_t3"
                },
                [4] = {
                    codec = {
                        length = 32,
                        name = "IBINetUMTSRadioSignalReportingConfiguration",
                    },
                    type_desc = "umts_radio_signal_report_config_t4"
                },
                [5] = {
                    codec = {
                        length = 44,
                        name = "IBINetLTERadioSignalReportingConfiguration",
                    },
                    type_desc = "lte_radio_signal_report_config_t5"
                },
                [6] = {
                    codec = {
                        length = 44,
                        name = "IBINetCdma1xRadioSignalReportingConfiguration",
                    },
                    type_desc = "cdma1x_radio_signal_report_config_t6"
                },
                [7] = {
                    codec = {
                        length = 44,
                        name = "IBINetCdmaEvdoRadioSignalReportingConfiguration",
                    },
                    type_desc = "cdmaEvdo_radio_signal_report_config_t7"
                },
            },
        },
        [258] = {
            name = "IBINetSetRadioSignalReporting",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "enable_reporting_t2"
                },
            },
        },
        [259] = {
            name = "IBINetSingleShotRadioSignalReportingReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetSingleShotReportingReqType",
                    },
                    type_desc = "reqtype_t3"
                },
            },
        },
        [263] = {
            name = "IBINetGetCellInfoReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [264] = {
            name = "IBINetGetCurrCellInfoReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [265] = {
            name = "IBINetGetCellInfoReqV1",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [288] = {
            name = "IBIMsAccCurrentFreqInfoReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIAccFreqReportingType",
                    },
                    type_desc = "reporting_type_t3"
                },
            },
        },
        [290] = {
            name = "IBINetEmergencyCellEndReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [291] = {
            name = "IBINetGetEmergencyCellReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetEmergencySearchModePref",
                    },
                    type_desc = "modePref_t3"
                },
                [4] = {
                    codec = {
                        length = 44,
                        name = "IBINetEmergencyPLMNAvoidanceList",
                    },
                    type_desc = "avoidanceList_t4"
                },
            },
        },
        [292] = {
            name = "IBINetGetAcBarringInfoReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [293] = {
            name = "IBINetEmergencyCellSearchReq",
            mtlvs = {3, 4, 5},
            tlvs = {
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetEmergencySearchModePref",
                    },
                    type_desc = "mode_pref_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "avoid_previous_cells_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBINetEmergencyCellSearchParameter",
                    },
                    type_desc = "em_param_t5"
                },
            },
        },
        [294] = {
            name = "IBISetDeviceRegionCodeReq",
            mtlvs = {2, 3},
            tlvs = {
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "length_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "region_code_t3"
                },
            },
        },
        [295] = {
            name = "IBIMsNetGetEmergencyCellInfoReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [296] = {
            name = "IBINetCellBBSignatureReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [515] = {
            name = "IBINetSingleShotRadioSignalReportingRspCb",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 580,
                        name = "IBINetGsmcellInfoList",
                    },
                    type_desc = "gsm_list_t3"
                },
                [4] = {
                    codec = {
                        length = 1156,
                        name = "IBINetUmtscellInfoList",
                    },
                    type_desc = "umts_list_t4"
                },
                [5] = {
                    codec = {
                        length = 1540,
                        name = "IBINetLtecellInfoList",
                    },
                    type_desc = "lte_list_t5"
                },
                [6] = {
                    codec = {
                        length = 52,
                        name = "IBINetCdma1xcellInfoList",
                    },
                    type_desc = "cdma1x_list_t6"
                },
                [7] = {
                    codec = {
                        length = 56,
                        name = "IBINetCdmaEvdocellInfoList",
                    },
                    type_desc = "cdmaEvdo_list_t7"
                },
            },
        },
        [519] = {
            name = "IBINetGetCellInfoRespCb",
            mtlvs = {1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 8,
                        name = "IBICellResponseT",
                    },
                    type_desc = "resp_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "csg_indicator_valid_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBICSGIndicatorT",
                    },
                    type_desc = "csg_indicator_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "csg_info_valid_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBICSGInfoT",
                    },
                    type_desc = "csg_info_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "umts_scell_info_valid_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "umts_scell_info_len_t9"
                },
                [10] = {
                    codec = {
                        length = 28,
                        name = "IBIUmtsCellInfoT",
                    },
                    type_desc = "umts_scell_info_t10"
                },
                [11] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "gsm_scell_info_valid_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "gsm_scell_info_len_t12"
                },
                [13] = {
                    codec = {
                        length = 24,
                        name = "IBIGsmCellInfoT",
                    },
                    type_desc = "gsm_scell_info_t13"
                },
                [14] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "lte_scell_info_valid_t14"
                },
                [15] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "lte_scell_info_len_t15"
                },
                [16] = {
                    codec = {
                        length = 32,
                        name = "IBILteCellInfoT",
                    },
                    type_desc = "lte_scell_info_t16"
                },
                [17] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "umts_ncell_info_valid_t17"
                },
                [18] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "umts_ncell_info_len_t18"
                },
                [19] = {
                    codec = {
                        length = 8,
                        name = "IBIUmtsNeighborCellInfoT",
                    },
                    type_desc = "umts_ncell_info_t19"
                },
                [20] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "gsm_ncell_info_valid_t20"
                },
                [21] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "gsm_ncell_info_len_t21"
                },
                [22] = {
                    codec = {
                        length = 4,
                        name = "IBIGsmNeighborCellInfoT",
                    },
                    type_desc = "gsm_ncell_info_t22"
                },
                [23] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "lte_ncell_info_valid_t23"
                },
                [24] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "lte_ncell_info_len_t24"
                },
                [25] = {
                    codec = {
                        length = 8,
                        name = "IBILteNeighborCellInfoT",
                    },
                    type_desc = "lte_ncell_info_t25"
                },
                [26] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "tds_scell_info_valid_t26"
                },
                [27] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "tds_scell_info_len_t27"
                },
                [28] = {
                    codec = {
                        length = 28,
                        name = "IBITdsCellInfoT",
                    },
                    type_desc = "tds_scell_info_t28"
                },
                [29] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "tds_ncell_info_valid_t29"
                },
                [30] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "tds_ncell_info_len_t30"
                },
                [31] = {
                    codec = {
                        length = 8,
                        name = "IBITdsNeighborCellInfoT",
                    },
                    type_desc = "tds_ncell_info_t31"
                },
                [32] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cdma1x_scell_info_valid_t32"
                },
                [33] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cdma1x_scell_info_len_t33"
                },
                [34] = {
                    codec = {
                        length = 48,
                        name = "IBINetCdma1xCellInfo",
                    },
                    type_desc = "cdma1x_scell_info_t34"
                },
                [35] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cdma_evdo_scell_info_valid_t35"
                },
                [36] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cdma_evdo_scell_info_len_t36"
                },
                [37] = {
                    codec = {
                        length = 52,
                        name = "IBINetCdmaEvdoCellInfo",
                    },
                    type_desc = "cdma_evdo_scell_info_t37"
                },
                [38] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cdma1x_ncell_info_valid_t38"
                },
                [39] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cdma1x_ncell_info_len_t39"
                },
                [40] = {
                    codec = {
                        length = 8,
                        name = "IBICdma1xNeighborCellInfo",
                    },
                    type_desc = "cdma1x_ncell_info_t40"
                },
                [41] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cdma_evdo_ncell_info_valid_t41"
                },
                [48] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cdma_evdo_ncell_info_len_t48"
                },
                [49] = {
                    codec = {
                        length = 10,
                        name = "IBICdmaEvdoNeighborCellInfo",
                    },
                    type_desc = "cdma_evdo_ncell_info_t49"
                },
                [50] = {
                    codec = {
                        length = 36,
                        name = "IBILteCellInfoV1T",
                    },
                    type_desc = "lte_scell_info_ext_t50"
                },
                [51] = {
                    codec = {
                        length = 12,
                        name = "IBILteNeighborCellInfoV1T",
                    },
                    type_desc = "lte_ncell_info_ext_t51"
                },
            },
        },
        [520] = {
            name = "IBINetGetCurrCellInfoRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 68,
                        name = "IBINetCellInfoIndParam",
                    },
                    type_desc = "cell_info_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIRatInfoExtension",
                    },
                    type_desc = "duplex_mode_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "cell_info_valid_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "cdma_plmn_pres_t7"
                },
                [8] = {
                    codec = {
                        length = 8,
                        name = "IBIPlmn",
                    },
                    type_desc = "cdma_plmn_t8"
                },
                [9] = {
                    codec = {
                        length = 16,
                        name = "IBINetCdma1xCellInfoParam",
                    },
                    type_desc = "cdma1x_cell_info_t9"
                },
                [16] = {
                    codec = {
                        length = 24,
                        name = "IBINetCdmaEvdoCellInfoParam",
                    },
                    type_desc = "cdmaEvdo_cell_info_t16"
                },
                [17] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_ehrpd_available_t17"
                },
            },
        },
        [521] = {
            name = "IBINetGetCellInfoRespCbV1",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 8,
                        name = "IBICellResponseT",
                    },
                    type_desc = "resp_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBICSGIndicatorT",
                    },
                    type_desc = "csg_indicator_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICSGInfoT",
                    },
                    type_desc = "csg_info_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "umts_scell_info_len_t6"
                },
                [7] = {
                    codec = {
                        length = 28,
                        name = "IBIUmtsCellInfoT",
                    },
                    type_desc = "umts_scell_info_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "gsm_scell_info_len_t8"
                },
                [9] = {
                    codec = {
                        length = 24,
                        name = "IBIGsmCellInfoT",
                    },
                    type_desc = "gsm_scell_info_t9"
                },
                [10] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "lte_scell_info_len_t10"
                },
                [11] = {
                    codec = {
                        length = 32,
                        name = "IBILteCellInfoT",
                    },
                    type_desc = "lte_scell_info_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "umts_ncell_info_len_t12"
                },
                [13] = {
                    codec = {
                        length = 8,
                        name = "IBIUmtsNeighborCellInfoT",
                    },
                    type_desc = "umts_ncell_info_t13"
                },
                [14] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "gsm_ncell_info_len_t14"
                },
                [15] = {
                    codec = {
                        length = 4,
                        name = "IBIGsmNeighborCellInfoT",
                    },
                    type_desc = "gsm_ncell_info_t15"
                },
                [16] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "lte_ncell_info_len_t16"
                },
                [17] = {
                    codec = {
                        length = 8,
                        name = "IBILteNeighborCellInfoT",
                    },
                    type_desc = "lte_ncell_info_t17"
                },
                [18] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "tds_scell_info_len_t18"
                },
                [19] = {
                    codec = {
                        length = 28,
                        name = "IBITdsCellInfoT",
                    },
                    type_desc = "tds_scell_info_t19"
                },
                [20] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "tds_ncell_info_len_t20"
                },
                [21] = {
                    codec = {
                        length = 8,
                        name = "IBITdsNeighborCellInfoT",
                    },
                    type_desc = "tds_ncell_info_t21"
                },
                [22] = {
                    codec = {
                        length = 48,
                        name = "IBINetCdma1xCellInfo",
                    },
                    type_desc = "cdma1x_scell_info_t22"
                },
                [23] = {
                    codec = {
                        length = 52,
                        name = "IBINetCdmaEvdoCellInfo",
                    },
                    type_desc = "cdma_evdo_scell_info_t23"
                },
                [24] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cdma1x_ncell_info_len_t24"
                },
                [25] = {
                    codec = {
                        length = 8,
                        name = "IBICdma1xNeighborCellInfo",
                    },
                    type_desc = "cdma1x_ncell_info_t25"
                },
                [26] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cdma_evdo_ncell_info_len_t26"
                },
                [27] = {
                    codec = {
                        length = 10,
                        name = "IBICdmaEvdoNeighborCellInfo",
                    },
                    type_desc = "cdma_evdo_ncell_info_t27"
                },
                [28] = {
                    codec = {
                        length = 36,
                        name = "IBILteCellInfoV1T",
                    },
                    type_desc = "lte_scell_info_ext_t28"
                },
                [29] = {
                    codec = {
                        length = 12,
                        name = "IBILteNeighborCellInfoV1T",
                    },
                    type_desc = "lte_ncell_info_ext_t29"
                },
            },
        },
        [544] = {
            name = "IBIMsAccCurrentFreqInfoRspCb",
            mtlvs = {1, 3, 5, 6, 7, 8, 9, 10},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "status_t3"
                },
                [5] = {
                    codec = {
                        length = 52,
                        name = "IBIAccServingDLFreqBandwidthInfo",
                    },
                    type_desc = "dl_freq_info_t5"
                },
                [6] = {
                    codec = {
                        length = 28,
                        name = "IBIAccServingULFreqBandwidthInfo",
                    },
                    type_desc = "ul_freq_info_t6"
                },
                [7] = {
                    codec = {
                        length = 244,
                        name = "IBIAccSearchFreqBandwidthInfo",
                    },
                    type_desc = "search_freq_info_t7"
                },
                [8] = {
                    codec = {
                        length = 772,
                        name = "IBIAccHoppingFreqBandwidthInfo",
                    },
                    type_desc = "hopping_freq_info_t8"
                },
                [9] = {
                    codec = {
                        length = 1204,
                        name = "IBIAccNeighborFreqBandwidthInfo",
                    },
                    type_desc = "neighbor_freq_info_t9"
                },
                [10] = {
                    codec = {
                        length = 844,
                        name = "IBIAccRPLMNFreqBandwidthInfo",
                    },
                    type_desc = "rplmn_freq_info_t10"
                },
                [11] = {
                    codec = {
                        length = 124,
                        name = "IBIAccServingDLFreqBandwidthInfo_ext",
                    },
                    type_desc = "dl_freq_info_ext_t11"
                },
                [12] = {
                    codec = {
                        length = 124,
                        name = "IBIAccServingULFreqBandwidthInfo_ext",
                    },
                    type_desc = "ul_freq_info_ext_t12"
                },
            },
        },
        [546] = {
            name = "IBINetEmergencyCellEndRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [547] = {
            name = "IBINetGetEmergencyCellRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetEmergencyCellInfoResult",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [548] = {
            name = "IBINetGetAcBarringInfoRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 12,
                        name = "IBINetLteCellAcBarringInfo",
                    },
                    type_desc = "acb_info_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "skip_barring_mmtel_voice_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "skip_barring_mmtel_video_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "skip_barring_sms_t7"
                },
            },
        },
        [549] = {
            name = "IBINetEmergencyCellSearchRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetEmergencyCellInfoResult",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [550] = {
            name = "IBISetDeviceRegionCodeRspCb",
            mtlvs = {2},
            tlvs = {
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t2"
                },
            },
        },
        [551] = {
            name = "IBIMsNetGetEmergencyCellInfoRspCb",
            mtlvs = {1, 3, 4, 5, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetEmergencyCellInfoResult",
                    },
                    type_desc = "procedure_result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIRat",
                    },
                    type_desc = "rat_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ps_reg_status_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "cs_reg_status_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ims_emergency_bearer_t7"
                },
            },
        },
        [552] = {
            name = "IBINetCellBBSignatureRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [769] = {
            name = "IBINetCellInfoIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 8,
                        name = "IBIPlmn",
                    },
                    type_desc = "plmn_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetCellId",
                    },
                    type_desc = "cell_id_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBINetLac",
                    },
                    type_desc = "lac_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_gprs_available_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_edge_available_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_dtm_available_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_hsdpa_available_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_hsupa_available_t9"
                },
                [10] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "current_rac_t10"
                },
                [11] = {
                    codec = {
                        length = 4,
                        name = "IBINetNetworkOpMode",
                    },
                    type_desc = "network_op_mode_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_cb_available_t12"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBIRat",
                    },
                    type_desc = "rat_t13"
                },
                [14] = {
                    codec = {
                        length = 4,
                        name = "IBINetBand",
                    },
                    type_desc = "gsm_band_t14"
                },
                [15] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "eutra_detected_t15"
                },
                [16] = {
                    codec = {
                        length = 2,
                        name = "IBINetTac",
                    },
                    type_desc = "tac_t16"
                },
                [17] = {
                    codec = {
                        length = 4,
                        name = "IBINetAreaType",
                    },
                    type_desc = "area_type_t17"
                },
                [18] = {
                    codec = {
                        length = 4,
                        name = "IBIRatInfoExtension",
                    },
                    type_desc = "duplex_mode_t18"
                },
                [19] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "plmn_pres_t19"
                },
                [20] = {
                    codec = {
                        length = 16,
                        name = "IBINetCdma1xCellInfoParam",
                    },
                    type_desc = "cdma1x_cell_info_t20"
                },
                [21] = {
                    codec = {
                        length = 24,
                        name = "IBINetCdmaEvdoCellInfoParam",
                    },
                    type_desc = "cdmaEvdo_cell_info_t21"
                },
                [22] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_ehrpd_available_t22"
                },
            },
        },
        [770] = {
            name = "IBINetConnectionInfoIndCb",
            mtlvs = {1, 2, 3, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_connected_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_enciphered_t3"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICnDomain",
                    },
                    type_desc = "cn_domain_t5"
                },
            },
        },
        [772] = {
            name = "IBINetRadioSignalIndCb",
            mtlvs = {1, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBINetSignalStrength",
                    },
                    type_desc = "signal_strength_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBINetSignalQuality",
                    },
                    type_desc = "signal_quality_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBINetSignalStrenghtMax",
                    },
                    type_desc = "max_signal_strength_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBINetSignalQualityMax",
                    },
                    type_desc = "max_signal_quality_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIRat",
                    },
                    type_desc = "scell_rat_t6"
                },
                [8] = {
                    codec = {
                        length = 52,
                        name = "IBINetSignalScellInfo",
                    },
                    type_desc = "scell_info_t8"
                },
            },
        },
        [775] = {
            name = "IBINetGetCellInfoIndCb",
            mtlvs = {1, 2, 4, 6, 9, 12, 15, 18, 21, 24, 27},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "csg_indicator_valid_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBICSGIndicatorT",
                    },
                    type_desc = "csg_indicator_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "csg_info_valid_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICSGInfoT",
                    },
                    type_desc = "csg_info_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "umts_scell_info_valid_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "umts_scell_info_len_t7"
                },
                [8] = {
                    codec = {
                        length = 28,
                        name = "IBIUmtsCellInfoT",
                    },
                    type_desc = "umts_scell_info_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "gsm_scell_info_valid_t9"
                },
                [10] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "gsm_scell_info_len_t10"
                },
                [11] = {
                    codec = {
                        length = 24,
                        name = "IBIGsmCellInfoT",
                    },
                    type_desc = "gsm_scell_info_t11"
                },
                [12] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "lte_scell_info_valid_t12"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "lte_scell_info_len_t13"
                },
                [14] = {
                    codec = {
                        length = 32,
                        name = "IBILteCellInfoT",
                    },
                    type_desc = "lte_scell_info_t14"
                },
                [15] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "umts_ncell_info_valid_t15"
                },
                [16] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "umts_ncell_info_len_t16"
                },
                [17] = {
                    codec = {
                        length = 8,
                        name = "IBIUmtsNeighborCellInfoT",
                    },
                    type_desc = "umts_ncell_info_t17"
                },
                [18] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "gsm_ncell_info_valid_t18"
                },
                [19] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "gsm_ncell_info_len_t19"
                },
                [20] = {
                    codec = {
                        length = 4,
                        name = "IBIGsmNeighborCellInfoT",
                    },
                    type_desc = "gsm_ncell_info_t20"
                },
                [21] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "lte_ncell_info_valid_t21"
                },
                [22] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "lte_ncell_info_len_t22"
                },
                [23] = {
                    codec = {
                        length = 8,
                        name = "IBILteNeighborCellInfoT",
                    },
                    type_desc = "lte_ncell_info_t23"
                },
                [24] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "tds_scell_info_valid_t24"
                },
                [25] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "tds_scell_info_len_t25"
                },
                [26] = {
                    codec = {
                        length = 28,
                        name = "IBITdsCellInfoT",
                    },
                    type_desc = "tds_scell_info_t26"
                },
                [27] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "tds_ncell_info_valid_t27"
                },
                [28] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "tds_ncell_info_len_t28"
                },
                [29] = {
                    codec = {
                        length = 8,
                        name = "IBITdsNeighborCellInfoT",
                    },
                    type_desc = "tds_ncell_info_t29"
                },
                [30] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cdma1x_scell_info_valid_t30"
                },
                [31] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cdma1x_scell_info_len_t31"
                },
                [32] = {
                    codec = {
                        length = 48,
                        name = "IBINetCdma1xCellInfo",
                    },
                    type_desc = "cdma1x_scell_info_t32"
                },
                [33] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cdma_evdo_scell_info_valid_t33"
                },
                [34] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cdma_evdo_scell_info_len_t34"
                },
                [35] = {
                    codec = {
                        length = 52,
                        name = "IBINetCdmaEvdoCellInfo",
                    },
                    type_desc = "cdma_evdo_scell_info_t35"
                },
                [36] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cdma1x_ncell_info_valid_t36"
                },
                [37] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cdma1x_ncell_info_len_t37"
                },
                [38] = {
                    codec = {
                        length = 8,
                        name = "IBICdma1xNeighborCellInfo",
                    },
                    type_desc = "cdma1x_ncell_info_t38"
                },
                [39] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cdma_evdo_ncell_info_valid_t39"
                },
                [40] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cdma_evdo_ncell_info_len_t40"
                },
                [41] = {
                    codec = {
                        length = 10,
                        name = "IBICdmaEvdoNeighborCellInfo",
                    },
                    type_desc = "cdma_evdo_ncell_info_t41"
                },
                [42] = {
                    codec = {
                        length = 36,
                        name = "IBILteCellInfoV1T",
                    },
                    type_desc = "lte_scell_info_ext_t42"
                },
                [43] = {
                    codec = {
                        length = 12,
                        name = "IBILteNeighborCellInfoV1T",
                    },
                    type_desc = "lte_ncell_info_ext_t43"
                },
            },
        },
        [776] = {
            name = "IBINetGetCellInfoIndCbV1",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBICSGIndicatorT",
                    },
                    type_desc = "csg_indicator_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICSGInfoT",
                    },
                    type_desc = "csg_info_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "umts_scell_info_len_t4"
                },
                [5] = {
                    codec = {
                        length = 28,
                        name = "IBIUmtsCellInfoT",
                    },
                    type_desc = "umts_scell_info_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "gsm_scell_info_len_t6"
                },
                [7] = {
                    codec = {
                        length = 24,
                        name = "IBIGsmCellInfoT",
                    },
                    type_desc = "gsm_scell_info_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "lte_scell_info_len_t8"
                },
                [9] = {
                    codec = {
                        length = 32,
                        name = "IBILteCellInfoT",
                    },
                    type_desc = "lte_scell_info_t9"
                },
                [10] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "umts_ncell_info_len_t10"
                },
                [11] = {
                    codec = {
                        length = 8,
                        name = "IBIUmtsNeighborCellInfoT",
                    },
                    type_desc = "umts_ncell_info_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "gsm_ncell_info_len_t12"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBIGsmNeighborCellInfoT",
                    },
                    type_desc = "gsm_ncell_info_t13"
                },
                [14] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "lte_ncell_info_len_t14"
                },
                [15] = {
                    codec = {
                        length = 8,
                        name = "IBILteNeighborCellInfoT",
                    },
                    type_desc = "lte_ncell_info_t15"
                },
                [16] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "tds_scell_info_len_t16"
                },
                [17] = {
                    codec = {
                        length = 28,
                        name = "IBITdsCellInfoT",
                    },
                    type_desc = "tds_scell_info_t17"
                },
                [18] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "tds_ncell_info_len_t18"
                },
                [19] = {
                    codec = {
                        length = 8,
                        name = "IBITdsNeighborCellInfoT",
                    },
                    type_desc = "tds_ncell_info_t19"
                },
                [20] = {
                    codec = {
                        length = 48,
                        name = "IBINetCdma1xCellInfo",
                    },
                    type_desc = "cdma1x_scell_info_t20"
                },
                [21] = {
                    codec = {
                        length = 52,
                        name = "IBINetCdmaEvdoCellInfo",
                    },
                    type_desc = "cdma_evdo_scell_info_t21"
                },
                [22] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cdma1x_ncell_info_len_t22"
                },
                [23] = {
                    codec = {
                        length = 8,
                        name = "IBICdma1xNeighborCellInfo",
                    },
                    type_desc = "cdma1x_ncell_info_t23"
                },
                [24] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cdma_evdo_ncell_info_len_t24"
                },
                [25] = {
                    codec = {
                        length = 10,
                        name = "IBICdmaEvdoNeighborCellInfo",
                    },
                    type_desc = "cdma_evdo_ncell_info_t25"
                },
                [26] = {
                    codec = {
                        length = 36,
                        name = "IBILteCellInfoV1T",
                    },
                    type_desc = "lte_scell_info_ext_t26"
                },
                [27] = {
                    codec = {
                        length = 12,
                        name = "IBILteNeighborCellInfoV1T",
                    },
                    type_desc = "lte_ncell_info_ext_t27"
                },
            },
        },
        [777] = {
            name = "IBINetCaConfigIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "num_of_bands_per_bc_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "band_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "bw_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "num_of_mimo_layers_t5"
                },
                [6] = {
                    codec = {
                        length = 8,
                        name = "IBIPlmn",
                    },
                    type_desc = "plmn_id_t6"
                },
            },
        },
        [784] = {
            name = "IBINetCellBBSignatureInd",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 44,
                        name = "IBINetCellBBSlocInfo",
                    },
                    type_desc = "sloc_info_t2"
                },
            },
        },
        [800] = {
            name = "IBIMsAccCurrentFreqInfoIndCb",
            mtlvs = {1, 2, 4, 5, 6, 7, 8, 9},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "status_t2"
                },
                [4] = {
                    codec = {
                        length = 52,
                        name = "IBIAccServingDLFreqBandwidthInfo",
                    },
                    type_desc = "dl_freq_info_t4"
                },
                [5] = {
                    codec = {
                        length = 28,
                        name = "IBIAccServingULFreqBandwidthInfo",
                    },
                    type_desc = "ul_freq_info_t5"
                },
                [6] = {
                    codec = {
                        length = 244,
                        name = "IBIAccSearchFreqBandwidthInfo",
                    },
                    type_desc = "search_freq_info_t6"
                },
                [7] = {
                    codec = {
                        length = 772,
                        name = "IBIAccHoppingFreqBandwidthInfo",
                    },
                    type_desc = "hopping_freq_info_t7"
                },
                [8] = {
                    codec = {
                        length = 1204,
                        name = "IBIAccNeighborFreqBandwidthInfo",
                    },
                    type_desc = "neighbor_freq_info_t8"
                },
                [9] = {
                    codec = {
                        length = 844,
                        name = "IBIAccRPLMNFreqBandwidthInfo",
                    },
                    type_desc = "rplmn_freq_info_t9"
                },
                [10] = {
                    codec = {
                        length = 124,
                        name = "IBIAccServingDLFreqBandwidthInfo_ext",
                    },
                    type_desc = "dl_freq_info_ext_t10"
                },
                [11] = {
                    codec = {
                        length = 124,
                        name = "IBIAccServingULFreqBandwidthInfo_ext",
                    },
                    type_desc = "ul_freq_info_ext_t11"
                },
            },
        },
        [803] = {
            name = "IBINetGetEmergencyCellIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBINetEmergencyCellInfoResult",
                    },
                    type_desc = "procedure_result_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIRat",
                    },
                    type_desc = "rat_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ps_reg_status_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "cs_reg_status_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ims_emergency_bearer_t6"
                },
            },
        },
        [805] = {
            name = "IBINetCellLteAcBarringStatusIndCb",
            mtlvs = {1, 2, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "barring_info_type_t2"
                },
                [3] = {
                    codec = {
                        length = 8,
                        name = "IBINetCellLteAcBarringStatusInfo",
                    },
                    type_desc = "emergency_barring_t3"
                },
                [4] = {
                    codec = {
                        length = 8,
                        name = "IBINetCellLteAcBarringStatusInfo",
                    },
                    type_desc = "mo_data_barring_t4"
                },
                [5] = {
                    codec = {
                        length = 8,
                        name = "IBINetCellLteAcBarringStatusInfo",
                    },
                    type_desc = "mo_signaling_barring_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBINetCellLteAcBarringStatusIndTrigger",
                    },
                    type_desc = "ind_trigger_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "skip_barring_mmtel_voice_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "skip_barring_mmtel_video_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "skip_barring_sms_t9"
                },
            },
        },
        [806] = {
            name = "IBINetTimerInfoIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBINetTimerId",
                    },
                    type_desc = "timer_id_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "timer_value_t3"
                },
            },
        },
        [807] = {
            name = "IBINetEmergencyCellSearchFailIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBINetEmergencyCellSearchFailCause",
                    },
                    type_desc = "cause_t2"
                },
            },
        },
        [808] = {
            name = "IBINetRrcConnectionRejectIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "cause_t2"
                },
            },
        },
    },
    [10] = {
        ["name"] = "_ARIMSGDEF_GROUP10_net_dc_ims",
        [257] = {
            name = "IBINetDcImsProvideImsRegStatusInfo",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcImsRegistrationStatus",
                    },
                    type_desc = "ims_voice_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcImsRegistrationStatus",
                    },
                    type_desc = "ims_sms_t4"
                },
            },
        },
        [258] = {
            name = "IBINetDcImsGetImsRegStatusInfoReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [259] = {
            name = "IBINetDcSsacBarringInfoReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [260] = {
            name = "IBINetDcSetVoiceDomainPreferenceConfigReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "isUtranValid_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcVoiceDomainPreference",
                    },
                    type_desc = "utranVoiceDomainPreference_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "isEUtranValid_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcVoiceDomainPreference",
                    },
                    type_desc = "eUtranVoiceDomainPreference_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "isRoamingUtranValid_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcVoiceDomainPreference",
                    },
                    type_desc = "utranRoamingVoiceDomainPreference_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "isRoamingEUtranValid_t9"
                },
                [10] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcVoiceDomainPreference",
                    },
                    type_desc = "eUtranRoamingVoiceDomainPreference_t10"
                },
            },
        },
        [262] = {
            name = "IBINetDcImsRegistrationStatusInfoReq",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcImsRegistrationType",
                    },
                    type_desc = "reg_type_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcImsServiceType",
                    },
                    type_desc = "service_type_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcImsRegistrationState",
                    },
                    type_desc = "reg_state_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBINetTimerStatus",
                    },
                    type_desc = "throttling_timer_status_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "throttling_timer_value_t7"
                },
            },
        },
        [263] = {
            name = "IBINetDcImsSignallingStatusInfoReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcImsSessionStatus",
                    },
                    type_desc = "session_status_t3"
                },
            },
        },
        [513] = {
            name = "IBINetDcImsProvideImsRegStatusRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [514] = {
            name = "IBINetDcImsGetImsRegStatusInfoRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcImsRegistrationStatus",
                    },
                    type_desc = "ims_voice_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcImsRegistrationStatus",
                    },
                    type_desc = "ims_sms_t4"
                },
            },
        },
        [515] = {
            name = "IBINetDcSsacBarringInfoRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcSsacBarringInfoResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 8,
                        name = "IBINetDcSsacBarringConfig",
                    },
                    type_desc = "ssac_barring_info_for_voice_t4"
                },
                [5] = {
                    codec = {
                        length = 8,
                        name = "IBINetDcSsacBarringConfig",
                    },
                    type_desc = "ssac_barring_info_for_video_t5"
                },
            },
        },
        [516] = {
            name = "IBINetDcSetVoiceDomainPreferenceConfigRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [518] = {
            name = "IBINetDcImsRegistrationStatusInfoRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [519] = {
            name = "IBINetDcImsSignallingStatusInfoRspcb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [770] = {
            name = "IBINetDcSsacBarringInfoIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 8,
                        name = "IBINetDcSsacBarringConfig",
                    },
                    type_desc = "ssac_barring_info_for_voice_t2"
                },
                [3] = {
                    codec = {
                        length = 8,
                        name = "IBINetDcSsacBarringConfig",
                    },
                    type_desc = "ssac_barring_info_for_video_t3"
                },
            },
        },
    },
    [11] = {
        ["name"] = "_ARIMSGDEF_GROUP11_sim_access",
        [257] = {
            name = "IBISimAccessApduCmdReq",
            mtlvs = {1, 5, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "client_cookie_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "channel_id_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "file_id_t5"
                },
                [6] = {
                    codec = {
                        length = 10,
                        name = "IBISimPathArray",
                    },
                    type_desc = "path_t6"
                },
                [7] = {
                    codec = {
                        length = 272,
                        name = "IBISimAccessApduCmdReqData",
                    },
                    type_desc = "apdu_t7"
                },
            },
        },
        [258] = {
            name = "IBISimAccessGetSimDataReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [261] = {
            name = "IBISimApplicationReq",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimApplicationActivity",
                    },
                    type_desc = "activity_t3"
                },
                [4] = {
                    codec = {
                        length = 17,
                        name = "IBISimApplicationId",
                    },
                    type_desc = "app_id_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "channel_id_t5"
                },
            },
        },
        [262] = {
            name = "IBISimAccessFcpReq",
            mtlvs = {1, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "channel_id_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "file_id_t5"
                },
                [6] = {
                    codec = {
                        length = 10,
                        name = "IBISimPathArray",
                    },
                    type_desc = "path_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "min_rec_count_for_search_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBISimAccessSearchPatern",
                    },
                    type_desc = "search_pattern_t8"
                },
            },
        },
        [263] = {
            name = "IBISimTestReq",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "test_cmd_len_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "test_cmd_t4"
                },
            },
        },
        [265] = {
            name = "IBISimGetEccListReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [266] = {
            name = "IBISimGetFullAccessStatusReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [272] = {
            name = "IBISimAccessReadRecordReq",
            mtlvs = {1, 5, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "channel_id_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "file_id_t5"
                },
                [6] = {
                    codec = {
                        length = 10,
                        name = "IBISimPathArray",
                    },
                    type_desc = "path_t6"
                },
                [7] = {
                    codec = {
                        length = 12,
                        name = "IBISimAccessReadRecReqData",
                    },
                    type_desc = "read_rec_t7"
                },
            },
        },
        [274] = {
            name = "IBISimFileReadBinaryReq",
            mtlvs = {1, 5, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "channel_id_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "file_id_t5"
                },
                [6] = {
                    codec = {
                        length = 10,
                        name = "IBISimPathArray",
                    },
                    type_desc = "path_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBISimFileReadBinReqData",
                    },
                    type_desc = "read_bin_t7"
                },
            },
        },
        [275] = {
            name = "IBISimFileUpdateBinaryReq",
            mtlvs = {1, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "channel_id_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "file_id_t5"
                },
                [6] = {
                    codec = {
                        length = 10,
                        name = "IBISimPathArray",
                    },
                    type_desc = "path_t6"
                },
                [7] = {
                    codec = {
                        length = 3588,
                        name = "IBISimFileUpdateBinReqData",
                    },
                    type_desc = "update_bin_t7"
                },
            },
        },
        [276] = {
            name = "IBISimGetPlmnModeBitReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [277] = {
            name = "IBISimFileGetCdmaAuxInfoReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cdmaAuxInfoMask_t3"
                },
            },
        },
        [278] = {
            name = "IBISimFileSearchRecordReq",
            mtlvs = {1, 5, 6, 7, 10, 11},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "client_cookie_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "channel_id_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "file_id_t5"
                },
                [6] = {
                    codec = {
                        length = 10,
                        name = "IBISimPathArray",
                    },
                    type_desc = "path_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBISimFileSearchModeOption",
                    },
                    type_desc = "search_opt_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "rec_no_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "search_offset_t9"
                },
                [10] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "search_string_length_t10"
                },
                [11] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "search_string_t11"
                },
            },
        },
        [513] = {
            name = "IBISimAccessApduCmdRspCb",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimGenResType",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "channel_id_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBISimApduCmdResultType",
                    },
                    type_desc = "uicc_result_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sw1_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sw2_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "client_cookie_t8"
                },
                [9] = {
                    codec = {
                        length = 788,
                        name = "IBISimAccessApduCmdRspData",
                    },
                    type_desc = "apdu_t9"
                },
            },
        },
        [514] = {
            name = "IBISimAccessGetSimDataRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimAccessSimState",
                    },
                    type_desc = "sim_state_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimAccessCardType",
                    },
                    type_desc = "card_type_t4"
                },
                [13] = {
                    codec = {
                        length = 564,
                        name = "IBISimAccessAppInfoParam",
                    },
                    type_desc = "app_info_t13"
                },
                [17] = {
                    codec = {
                        length = 4,
                        name = "IBISimIndicator",
                    },
                    type_desc = "sim_indicator_t17"
                },
                [19] = {
                    codec = {
                        length = 4,
                        name = "IBISimChvStatus",
                    },
                    type_desc = "chv1_status_t19"
                },
                [21] = {
                    codec = {
                        length = 4,
                        name = "IBISimChvAttempts",
                    },
                    type_desc = "chv_attempts_t21"
                },
                [27] = {
                    codec = {
                        length = 4,
                        name = "IBISimUpdateStatus",
                    },
                    type_desc = "sim_init_error_cause_t27"
                },
                [28] = {
                    codec = {
                        length = 4,
                        name = "IBISimErrorCause",
                    },
                    type_desc = "sim_error_cause_t28"
                },
                [29] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sim_ext_capabilities_t29"
                },
                [30] = {
                    codec = {
                        length = 84,
                        name = "IBISimAccessAppInfoParamExt",
                    },
                    type_desc = "app_info_ext_t30"
                },
                [31] = {
                    codec = {
                        length = 4,
                        name = "IBISimAccessCardTypeInfo",
                    },
                    type_desc = "cardTypeInfo_t31"
                },
                [32] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "iccid_t32"
                },
            },
        },
        [517] = {
            name = "IBISimApplicationRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "channel_id_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimApplicationActivity",
                    },
                    type_desc = "activity_t4"
                },
            },
        },
        [518] = {
            name = "IBISimAccessFcpRspCb",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimGenResType",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "channel_id_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBISimApduCmdResultType",
                    },
                    type_desc = "uicc_result_t5"
                },
                [9] = {
                    codec = {
                        length = 1756,
                        name = "IBISimFcpInfo",
                    },
                    type_desc = "fcp_info_t9"
                },
                [10] = {
                    codec = {
                        length = 510,
                        name = "IBISimSearchRecordInfo",
                    },
                    type_desc = "search_rec_info_t10"
                },
            },
        },
        [519] = {
            name = "IBISimTestRspCb",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimSupportedTestCmdType",
                    },
                    type_desc = "cmd_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimGenResType",
                    },
                    type_desc = "result_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBISimApduCmdResultType",
                    },
                    type_desc = "uicc_result_t5"
                },
                [6] = {
                    codec = {
                        length = 257,
                        name = "IBISimReadCardRspParam",
                    },
                    type_desc = "read_card_param_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBISimReadRplmnRspParam",
                    },
                    type_desc = "read_rplmn_param_t7"
                },
            },
        },
        [521] = {
            name = "IBISimGetEccListRspCb",
            mtlvs = {1, 3, 5, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "ecc_list_sim_length_t3"
                },
                [4] = {
                    codec = {
                        length = 8,
                        name = "IBIEmergencyNumber",
                    },
                    type_desc = "ecc_list_sim_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "ecc_list_nw_length_t5"
                },
                [6] = {
                    codec = {
                        length = 8,
                        name = "IBIEmergencyNumber",
                    },
                    type_desc = "ecc_list_nw_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "ecc_list_cust_length_t7"
                },
                [8] = {
                    codec = {
                        length = 8,
                        name = "IBIEmergencyNumber",
                    },
                    type_desc = "ecc_list_cust_t8"
                },
            },
        },
        [522] = {
            name = "IBISimGetFullAccessStatusRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "full_access_granted_t3"
                },
            },
        },
        [528] = {
            name = "IBISimAccessReadRecordRspCb",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimGenResType",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "channel_id_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBISimApduCmdResultType",
                    },
                    type_desc = "uicc_result_t5"
                },
                [9] = {
                    codec = {
                        length = 262,
                        name = "IBISimAccessReadRecRspData",
                    },
                    type_desc = "read_rec_t9"
                },
            },
        },
        [530] = {
            name = "IBISimFileReadBinaryRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 20,
                        name = "IBISimAccessFileInfoRspParam",
                    },
                    type_desc = "f_info_t3"
                },
                [4] = {
                    codec = {
                        length = 3588,
                        name = "IBISimFileReadBinRspData",
                    },
                    type_desc = "read_bin_t4"
                },
            },
        },
        [531] = {
            name = "IBISimFileUpdateBinaryRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 20,
                        name = "IBISimAccessFileInfoRspParam",
                    },
                    type_desc = "f_info_t3"
                },
            },
        },
        [532] = {
            name = "IBISimGetPlmnModeBitRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimEfAccessResType",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimEfAccessErrorCause",
                    },
                    type_desc = "error_cause_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_manual_sel_allowed_t5"
                },
            },
        },
        [533] = {
            name = "IBISimFileGetCdmaAuxInfoRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cdma_aux_info_mask_t3"
                },
                [4] = {
                    codec = {
                        length = 10,
                        name = "IBISimFileMin",
                    },
                    type_desc = "min_type_t4"
                },
                [5] = {
                    codec = {
                        length = 1169,
                        name = "IBISimFileSipNaiData",
                    },
                    type_desc = "sip_nai_data_t5"
                },
                [6] = {
                    codec = {
                        length = 1169,
                        name = "IBISimFileMipNaiData",
                    },
                    type_desc = "mip_nai_data_t6"
                },
                [7] = {
                    codec = {
                        length = 73,
                        name = "IBISimFileEhrpdNaiData",
                    },
                    type_desc = "ehrpd_nai_data_t7"
                },
                [8] = {
                    codec = {
                        length = 73,
                        name = "IBISimFileHrpdNaiData",
                    },
                    type_desc = "hrpd_nai_data_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "prl_version_t9"
                },
                [10] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "prl_id_t10"
                },
            },
        },
        [534] = {
            name = "IBISimFileSearchRecordRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 20,
                        name = "IBISimAccessFileInfoRspParam",
                    },
                    type_desc = "f_info_t3"
                },
                [4] = {
                    codec = {
                        length = 257,
                        name = "IBISimFileSearchRecRspData",
                    },
                    type_desc = "search_rsp_t4"
                },
            },
        },
        [771] = {
            name = "IBISimFullAccessIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [774] = {
            name = "IBISimEccListIndCb",
            mtlvs = {1, 2, 4, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "ecc_list_sim_length_t2"
                },
                [3] = {
                    codec = {
                        length = 8,
                        name = "IBIEmergencyNumber",
                    },
                    type_desc = "ecc_list_sim_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "ecc_list_nw_length_t4"
                },
                [5] = {
                    codec = {
                        length = 8,
                        name = "IBIEmergencyNumber",
                    },
                    type_desc = "ecc_list_nw_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "ecc_list_cust_length_t6"
                },
                [7] = {
                    codec = {
                        length = 8,
                        name = "IBIEmergencyNumber",
                    },
                    type_desc = "ecc_list_cust_t7"
                },
            },
        },
        [776] = {
            name = "IBISimAccessGetSimDataIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBISimAccessSimState",
                    },
                    type_desc = "sim_state_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimAccessCardType",
                    },
                    type_desc = "card_type_t3"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBISimIndicator",
                    },
                    type_desc = "sim_indicator_t7"
                },
                [15] = {
                    codec = {
                        length = 564,
                        name = "IBISimAccessAppInfoParam",
                    },
                    type_desc = "app_info_t15"
                },
                [18] = {
                    codec = {
                        length = 4,
                        name = "IBISimChvStatus",
                    },
                    type_desc = "chv1_status_t18"
                },
                [20] = {
                    codec = {
                        length = 4,
                        name = "IBISimChvAttempts",
                    },
                    type_desc = "chv_attempts_t20"
                },
                [26] = {
                    codec = {
                        length = 4,
                        name = "IBISimUpdateStatus",
                    },
                    type_desc = "sim_init_error_cause_t26"
                },
                [27] = {
                    codec = {
                        length = 4,
                        name = "IBISimErrorCause",
                    },
                    type_desc = "sim_error_cause_t27"
                },
                [28] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sim_ext_capabilities_t28"
                },
                [29] = {
                    codec = {
                        length = 84,
                        name = "IBISimAccessAppInfoParamExt",
                    },
                    type_desc = "app_info_ext_t29"
                },
                [30] = {
                    codec = {
                        length = 4,
                        name = "IBISimAccessCardTypeInfo",
                    },
                    type_desc = "cardTypeInfo_t30"
                },
                [31] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "iccid_t31"
                },
            },
        },
        [777] = {
            name = "IBISimPlmnModeBitIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_manual_sel_allowed_t2"
                },
            },
        },
        [778] = {
            name = "IBISimHwEventIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBISimHwEvent",
                    },
                    type_desc = "event_t2"
                },
            },
        },
        [779] = {
            name = "IBISimCdmaFullAccessIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
    },
    [12] = {
        ["name"] = "_ARIMSGDEF_GROUP12_sim_sec",
        [257] = {
            name = "IBISimGenPinReq",
            mtlvs = {1, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "channel_id_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimPinActivity",
                    },
                    type_desc = "activity_t4"
                },
                [5] = {
                    codec = {
                        length = 20,
                        name = "IBISimGenPinReqUnblockData",
                    },
                    type_desc = "unblock_data_t5"
                },
                [6] = {
                    codec = {
                        length = 20,
                        name = "IBISimGenPinReqChangeData",
                    },
                    type_desc = "change_data_t6"
                },
                [8] = {
                    codec = {
                        length = 12,
                        name = "IBISimGenPinReqEnableData",
                    },
                    type_desc = "enable_data_t8"
                },
                [9] = {
                    codec = {
                        length = 12,
                        name = "IBISimGenPinReqDisableData",
                    },
                    type_desc = "disable_data_t9"
                },
                [10] = {
                    codec = {
                        length = 12,
                        name = "IBISimGenPinReqVerifyData",
                    },
                    type_desc = "verify_data_t10"
                },
            },
        },
        [263] = {
            name = "IBISimExtendedAuthReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimSecurityContext",
                    },
                    type_desc = "security_context_t3"
                },
                [4] = {
                    codec = {
                        length = 17,
                        name = "IBISimSecRand",
                    },
                    type_desc = "rand_t4"
                },
                [5] = {
                    codec = {
                        length = 17,
                        name = "IBISimSecAutn",
                    },
                    type_desc = "autn_t5"
                },
                [6] = {
                    codec = {
                        length = 256,
                        name = "IBISimSecNafid",
                    },
                    type_desc = "naf_id_t6"
                },
                [7] = {
                    codec = {
                        length = 256,
                        name = "IBISimSecImpi",
                    },
                    type_desc = "impi_t7"
                },
            },
        },
        [513] = {
            name = "IBISimGenPinRspCb",
            mtlvs = {1, 4, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "channel_id_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimPinActivity",
                    },
                    type_desc = "activity_t4"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBISimPinStatus",
                    },
                    type_desc = "status_t6"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "verify_attempts_t9"
                },
                [10] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "unblock_attempts_t10"
                },
                [11] = {
                    codec = {
                        length = 4,
                        name = "IBISimGenPinResType",
                    },
                    type_desc = "result_t11"
                },
            },
        },
        [519] = {
            name = "IBISimExtendedAuthRspCb",
            mtlvs = {1, 3, 4, 8, 10, 12, 14, 16, 18},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimSecurityContext",
                    },
                    type_desc = "security_context_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimAuthResult",
                    },
                    type_desc = "result_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBISimApduCmdResultType",
                    },
                    type_desc = "uicc_result_t5"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "res_available_t8"
                },
                [9] = {
                    codec = {
                        length = 17,
                        name = "IBISimSecAuthRsp",
                    },
                    type_desc = "res_t9"
                },
                [10] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ck_available_t10"
                },
                [11] = {
                    codec = {
                        length = 17,
                        name = "IBISimSecAuthCipheringKey",
                    },
                    type_desc = "ck_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ik_available_t12"
                },
                [13] = {
                    codec = {
                        length = 17,
                        name = "IBISimSecAuthIntegrityKey",
                    },
                    type_desc = "ik_t13"
                },
                [14] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "kc_available_t14"
                },
                [15] = {
                    codec = {
                        length = 9,
                        name = "IBISimSecAuthKc",
                    },
                    type_desc = "kc_t15"
                },
                [16] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "auts_available_t16"
                },
                [17] = {
                    codec = {
                        length = 15,
                        name = "IBISimSecAuthAuts",
                    },
                    type_desc = "auts_t17"
                },
                [18] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "ks_ext_naf_available_t18"
                },
                [19] = {
                    codec = {
                        length = 256,
                        name = "IBISimSecAuthKsExtNaf",
                    },
                    type_desc = "ks_ext_naf_t19"
                },
            },
        },
    },
    [13] = {
        ["name"] = "_ARIMSGDEF_GROUP13_sim_tk",
        [258] = {
            name = "IBISimTkInit",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [260] = {
            name = "IBISimTkRefreshConfirmRsp",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cmd_id_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "transaction_id_t3"
                },
            },
        },
        [261] = {
            name = "IBISimTkRefreshFcnRsp",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBISimTkProactiveCause",
                    },
                    type_desc = "proactive_cause_t2"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "IBISimTkTransactionId",
                    },
                    type_desc = "simtk_transaction_id_t3"
                },
            },
        },
        [262] = {
            name = "IBISimTkRefreshQueryRsp",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBISimTkProactiveCause",
                    },
                    type_desc = "proactive_cause_t2"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "IBISimTkTransactionId",
                    },
                    type_desc = "simtk_transaction_id_t3"
                },
            },
        },
        [263] = {
            name = "IBISimTkImsCallControlReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 257,
                        name = "IBISimTkImsCcData",
                    },
                    type_desc = "ims_cc_data_t3"
                },
            },
        },
        [264] = {
            name = "IBISimTkConfigureStkCmdReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBISimTkProactiveCmdHandler",
                    },
                    type_desc = "setup_call_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimTkProactiveCmdHandler",
                    },
                    type_desc = "send_sms_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimTkProactiveCmdHandler",
                    },
                    type_desc = "send_ss_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBISimTkProactiveCmdHandler",
                    },
                    type_desc = "send_ussd_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBISimTkProactiveCmdHandler",
                    },
                    type_desc = "send_dtmf_t6"
                },
            },
        },
        [265] = {
            name = "IBISimTkEnvelopeCommandReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimTkEnvelopeType",
                    },
                    type_desc = "envelope_type_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "item_id_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "request_help_t5"
                },
                [6] = {
                    codec = {
                        length = 276,
                        name = "IBISimTkCallControlParam",
                    },
                    type_desc = "call_control_param_t6"
                },
                [9] = {
                    codec = {
                        length = 24,
                        name = "IBISimTkLocationInfo",
                    },
                    type_desc = "location_info_t9"
                },
                [11] = {
                    codec = {
                        length = 42,
                        name = "IBISimTkAddress",
                    },
                    type_desc = "address1_t11"
                },
                [12] = {
                    codec = {
                        length = 42,
                        name = "IBISimTkAddress",
                    },
                    type_desc = "address2_t12"
                },
                [13] = {
                    codec = {
                        length = 24,
                        name = "IBISimTkLocationInfo",
                    },
                    type_desc = "location_info_t13"
                },
                [14] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "transaction_id_t14"
                },
                [15] = {
                    codec = {
                        length = 42,
                        name = "IBISimTkAddress",
                    },
                    type_desc = "address_t15"
                },
                [17] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "transaction_id_t17"
                },
                [18] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "call_direction_t18"
                },
                [19] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "num_trans_id_t19"
                },
                [20] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "transaction_id_t20"
                },
                [24] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "language_t24"
                },
                [25] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_near_end_disconnect_t25"
                },
                [32] = {
                    codec = {
                        length = 249,
                        name = "IBISimTkImsRegistrationStatus",
                    },
                    type_desc = "ims_reg_status_t32"
                },
            },
        },
        [266] = {
            name = "IBISimTkTerminalResponse",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBISimTkProactiveCmdType",
                    },
                    type_desc = "cmd_type_t2"
                },
                [3] = {
                    codec = {
                        length = 8,
                        name = "IBISimTkCommonRspParam",
                    },
                    type_desc = "setup_event_list_t3"
                },
                [4] = {
                    codec = {
                        length = 1068,
                        name = "IBISimTkSetupCallRspParam",
                    },
                    type_desc = "setup_call_t4"
                },
                [5] = {
                    codec = {
                        length = 1068,
                        name = "IBISimTkSendSsRspParam",
                    },
                    type_desc = "send_ss_t5"
                },
                [6] = {
                    codec = {
                        length = 1068,
                        name = "IBISimTkSendUssdRspParam",
                    },
                    type_desc = "send_ussd_t6"
                },
                [7] = {
                    codec = {
                        length = 8,
                        name = "IBISimTkCommonRspParam",
                    },
                    type_desc = "send_sms_t7"
                },
                [8] = {
                    codec = {
                        length = 8,
                        name = "IBISimTkCommonRspParam",
                    },
                    type_desc = "send_dtmf_t8"
                },
                [9] = {
                    codec = {
                        length = 8,
                        name = "IBISimTkCommonRspParam",
                    },
                    type_desc = "play_tone_t9"
                },
                [10] = {
                    codec = {
                        length = 8,
                        name = "IBISimTkCommonRspParam",
                    },
                    type_desc = "display_text_t10"
                },
                [11] = {
                    codec = {
                        length = 268,
                        name = "IBISimTkGetInkeyRspParam",
                    },
                    type_desc = "get_inkey_t11"
                },
                [12] = {
                    codec = {
                        length = 268,
                        name = "IBISimTkGetInputRspParam",
                    },
                    type_desc = "get_input_t12"
                },
                [13] = {
                    codec = {
                        length = 12,
                        name = "IBISimTkSelectItemRspParam",
                    },
                    type_desc = "select_item_t13"
                },
                [14] = {
                    codec = {
                        length = 8,
                        name = "IBISimTkCommonRspParam",
                    },
                    type_desc = "setup_menu_t14"
                },
                [15] = {
                    codec = {
                        length = 24,
                        name = "IBISimTkProvideLocalInfoRspParam",
                    },
                    type_desc = "provide_local_info_t15"
                },
                [16] = {
                    codec = {
                        length = 8,
                        name = "IBISimTkCommonRspParam",
                    },
                    type_desc = "setup_idle_mode_text_t16"
                },
                [17] = {
                    codec = {
                        length = 8,
                        name = "IBISimTkCommonRspParam",
                    },
                    type_desc = "language_notification_t17"
                },
                [18] = {
                    codec = {
                        length = 264,
                        name = "IBISimTkRunAtCommandRspParam",
                    },
                    type_desc = "run_at_command_t18"
                },
                [19] = {
                    codec = {
                        length = 260,
                        name = "IBISimTkUnknownCmdRsp",
                    },
                    type_desc = "unknown_cmd_t19"
                },
                [20] = {
                    codec = {
                        length = 8,
                        name = "IBISimTkCommonRspParam",
                    },
                    type_desc = "common_response_t20"
                },
                [21] = {
                    codec = {
                        length = 8,
                        name = "IBISimTkCommonRspParam",
                    },
                    type_desc = "common_response_t21"
                },
                [22] = {
                    codec = {
                        length = 8,
                        name = "IBISimTkCommonRspParam",
                    },
                    type_desc = "common_response_t22"
                },
                [23] = {
                    codec = {
                        length = 8,
                        name = "IBISimTkCommonRspParam",
                    },
                    type_desc = "common_response_t23"
                },
            },
        },
        [267] = {
            name = "IBISimTkSetRequiredFcnListReq",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "file_list_length_t3"
                },
                [4] = {
                    codec = {
                        length = 21,
                        name = "IBISimTkFileIdentifier",
                    },
                    type_desc = "file_list_t4"
                },
            },
        },
        [268] = {
            name = "IBISimTkExecStkCmdRsp",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 8,
                        name = "IBISimTkCommonRspParam",
                    },
                    type_desc = "common_response_t2"
                },
            },
        },
        [519] = {
            name = "IBISimTkImsCallControlRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimTkCallControlResult",
                    },
                    type_desc = "call_control_result_t3"
                },
                [4] = {
                    codec = {
                        length = 257,
                        name = "IBISimTkImsCcData",
                    },
                    type_desc = "ims_cc_data_t4"
                },
                [5] = {
                    codec = {
                        length = 248,
                        name = "IBISimTkAlphaIdentifier",
                    },
                    type_desc = "alpha_identifier_t5"
                },
            },
        },
        [520] = {
            name = "IBISimTkConfigureStkCmdRspCb",
            mtlvs = {1, 3, 4, 5, 6, 7, 8},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimTkProactiveCmdHandler",
                    },
                    type_desc = "setup_call_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBISimTkProactiveCmdHandler",
                    },
                    type_desc = "send_sms_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBISimTkProactiveCmdHandler",
                    },
                    type_desc = "send_ss_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBISimTkProactiveCmdHandler",
                    },
                    type_desc = "send_ussd_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBISimTkProactiveCmdHandler",
                    },
                    type_desc = "send_dtmf_t8"
                },
            },
        },
        [521] = {
            name = "IBISimTkEnvelopeCommandRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 952,
                        name = "IBISimTkEnvelopeRsp",
                    },
                    type_desc = "envelope_rsp_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimApduCmdResultType",
                    },
                    type_desc = "uicc_result_t4"
                },
            },
        },
        [523] = {
            name = "IBISimTkSetRequiredFcnListRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [771] = {
            name = "IBISimTkExecStkCmdIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBISimTkProactiveCmdType",
                    },
                    type_desc = "cmd_type_t2"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "IBISimTkTransactionId",
                    },
                    type_desc = "simtk_transaction_id_t3"
                },
                [4] = {
                    codec = {
                        length = 248,
                        name = "IBISimTkAlphaIdentifier",
                    },
                    type_desc = "confirmation_alpha_id_t4"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "command_qualifier_t6"
                },
                [8] = {
                    codec = {
                        length = 42,
                        name = "IBISimTkAddress",
                    },
                    type_desc = "destination_address_t8"
                },
                [9] = {
                    codec = {
                        length = 41,
                        name = "IBISimTkSubAddress",
                    },
                    type_desc = "sub_address_t9"
                },
                [10] = {
                    codec = {
                        length = 248,
                        name = "IBISimTkAlphaIdentifier",
                    },
                    type_desc = "setup_alpha_id_t10"
                },
                [12] = {
                    codec = {
                        length = 41,
                        name = "IBISimTkDtmfString",
                    },
                    type_desc = "dtmf_command_t12"
                },
                [13] = {
                    codec = {
                        length = 188,
                        name = "IBISimTkUssdString",
                    },
                    type_desc = "ussd_string_t13"
                },
                [14] = {
                    codec = {
                        length = 42,
                        name = "IBISimTkSsString",
                    },
                    type_desc = "ss_string_t14"
                },
            },
        },
        [772] = {
            name = "IBISimTkProactiveCmdIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBISimTkProactiveCmdType",
                    },
                    type_desc = "cmd_type_t2"
                },
                [3] = {
                    codec = {
                        length = 34,
                        name = "IBISimTkProactiveCmdSetupEventList",
                    },
                    type_desc = "setup_eventlist_t3"
                },
                [4] = {
                    codec = {
                        length = 636,
                        name = "IBISimTkProactiveCmdSetupCall",
                    },
                    type_desc = "setup_call_t4"
                },
                [5] = {
                    codec = {
                        length = 308,
                        name = "IBISimTkProactiveCmdSendSs",
                    },
                    type_desc = "send_ss_t5"
                },
                [6] = {
                    codec = {
                        length = 452,
                        name = "IBISimTkProactiveCmdSendUssd",
                    },
                    type_desc = "send_ussd_t6"
                },
                [7] = {
                    codec = {
                        length = 484,
                        name = "IBISimTkProactiveCmdSendSms",
                    },
                    type_desc = "send_sms_t7"
                },
                [8] = {
                    codec = {
                        length = 308,
                        name = "IBISimTkProactiveCmdSendDtmf",
                    },
                    type_desc = "send_dtmf_t8"
                },
                [9] = {
                    codec = {
                        length = 276,
                        name = "IBISimTkProactiveCmdPlayTone",
                    },
                    type_desc = "play_tone_t9"
                },
                [10] = {
                    codec = {
                        length = 284,
                        name = "IBISimTkProactiveCmdDisplayText",
                    },
                    type_desc = "display_text_t10"
                },
                [11] = {
                    codec = {
                        length = 280,
                        name = "IBISimTkProactiveCmdGetInkey",
                    },
                    type_desc = "get_inkey_t11"
                },
                [12] = {
                    codec = {
                        length = 532,
                        name = "IBISimTkProactiveCmdGetInput",
                    },
                    type_desc = "get_input_t12"
                },
                [13] = {
                    codec = {
                        length = 548,
                        name = "IBISimTkProactiveCmdSelectItem",
                    },
                    type_desc = "select_item_t13"
                },
                [14] = {
                    codec = {
                        length = 548,
                        name = "IBISimTkProactiveCmdSetupMenu",
                    },
                    type_desc = "setup_menu_t14"
                },
                [15] = {
                    codec = {
                        length = 8,
                        name = "IBISimTkProactiveCmdProvideLocalInfo",
                    },
                    type_desc = "provide_local_info_t15"
                },
                [16] = {
                    codec = {
                        length = 272,
                        name = "IBISimTkProactiveCmdSetupIdleModeText",
                    },
                    type_desc = "setup_idle_mode_text_t16"
                },
                [17] = {
                    codec = {
                        length = 5,
                        name = "IBISimTkProactiveCmdLanguageNotification",
                    },
                    type_desc = "language_notification_t17"
                },
                [18] = {
                    codec = {
                        length = 520,
                        name = "IBISimTkProactiveCmdRunAt",
                    },
                    type_desc = "run_at_command_t18"
                },
                [19] = {
                    codec = {
                        length = 260,
                        name = "IBISimTkProactiveCmdUnknown",
                    },
                    type_desc = "unknown_cmd_t19"
                },
                [20] = {
                    codec = {
                        length = 268,
                        name = "IBISimTkProactiveCmdOpenChannel",
                    },
                    type_desc = "open_channel_t20"
                },
                [21] = {
                    codec = {
                        length = 268,
                        name = "IBISimTkProactiveCmdCloseChannel",
                    },
                    type_desc = "close_channel_t21"
                },
                [22] = {
                    codec = {
                        length = 268,
                        name = "IBISimTkProactiveCmdReceiveData",
                    },
                    type_desc = "receive_data_t22"
                },
                [23] = {
                    codec = {
                        length = 268,
                        name = "IBISimTkProactiveCmdSendData",
                    },
                    type_desc = "send_data_t23"
                },
                [24] = {
                    codec = {
                        length = 780,
                        name = "IBISimTkProactiveCmdSelectItem_V1",
                    },
                    type_desc = "select_item_V1_t24"
                },
                [25] = {
                    codec = {
                        length = 780,
                        name = "IBISimTkProactiveCmdSetupMenu_V1",
                    },
                    type_desc = "setup_menu_V1_t25"
                },
                [26] = {
                    codec = {
                        length = 540,
                        name = "IBISimTkProactiveCmdGetInput_V1",
                    },
                    type_desc = "get_input_V1_t26"
                },
                [27] = {
                    codec = {
                        length = 748,
                        name = "IBISimTkProactiveCmdSendSms_V1",
                    },
                    type_desc = "send_sms_V1_t27"
                },
            },
        },
        [774] = {
            name = "IBISimTkRefreshConfirmIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 2,
                        name = "IBISimTkTransactionId",
                    },
                    type_desc = "simtk_transaction_id_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "refresh_performed_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimAccessAppType",
                    },
                    type_desc = "app_type_t4"
                },
            },
        },
        [777] = {
            name = "IBISimTkRefreshFcnIndCb",
            mtlvs = {1, 2, 3, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 2,
                        name = "IBISimTkTransactionId",
                    },
                    type_desc = "simtk_transaction_id_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "file_count_t3"
                },
                [4] = {
                    codec = {
                        length = 21,
                        name = "IBISimTkFileIdentifier",
                    },
                    type_desc = "file_list_t4"
                },
                [5] = {
                    codec = {
                        length = 17,
                        name = "IBISimApplicationId",
                    },
                    type_desc = "app_id_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBISimAccessAppType",
                    },
                    type_desc = "app_type_t6"
                },
            },
        },
        [778] = {
            name = "IBISimTkRefreshQueryIndCb",
            mtlvs = {1, 2, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 2,
                        name = "IBISimTkTransactionId",
                    },
                    type_desc = "simtk_transaction_id_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "command_qualifier_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "file_count_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBISimAccessAppType",
                    },
                    type_desc = "app_type_t5"
                },
            },
        },
    },
    [14] = {
        ["name"] = "_ARIMSGDEF_GROUP14_sim_pb",
        [258] = {
            name = "IBISimPbReadEntryReq",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimPbLocation",
                    },
                    type_desc = "location_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "record_number_t4"
                },
            },
        },
        [261] = {
            name = "IBISimPbWriteEntryReq",
            mtlvs = {1, 3, 4, 5, 6, 7, 8},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimPbLocation",
                    },
                    type_desc = "location_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "uid_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "next_valid_rec_number_t5"
                },
                [6] = {
                    codec = {
                        length = 300,
                        name = "IBISimPbBaseEntry",
                    },
                    type_desc = "pb_base_data_t6"
                },
                [7] = {
                    codec = {
                        length = 486,
                        name = "IBISimPbUsimEntry",
                    },
                    type_desc = "usim_data_t7"
                },
                [8] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "slice_t8"
                },
            },
        },
        [263] = {
            name = "IBISimPbGetMetaInformationReq_V1",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimPbLocationInfo",
                    },
                    type_desc = "location_request_t3"
                },
            },
        },
        [264] = {
            name = "IBISimPbLocationReq_V1",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [265] = {
            name = "IBISimPbUsimPbSelectReq_V1",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimPbUsimPbLocation",
                    },
                    type_desc = "usim_pb_location_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "fill_cache_t4"
                },
            },
        },
        [514] = {
            name = "IBISimPbReadEntryRspCb",
            mtlvs = {1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimPbResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimPbLocation",
                    },
                    type_desc = "location_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "uid_t5"
                },
                [6] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "next_valid_rec_number_t6"
                },
                [7] = {
                    codec = {
                        length = 300,
                        name = "IBISimPbBaseEntry",
                    },
                    type_desc = "pb_base_data_t7"
                },
                [8] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "slice_t8"
                },
                [9] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "valid_flags_t9"
                },
                [10] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "grp_index_list_t10"
                },
                [11] = {
                    codec = {
                        length = 2,
                        name = "IBISimPbControlRecord",
                    },
                    type_desc = "pbc_t11"
                },
                [12] = {
                    codec = {
                        length = 1,
                        name = "IBISimPbEccValue",
                    },
                    type_desc = "ecc_category_t12"
                },
            },
        },
        [517] = {
            name = "IBISimPbWriteEntryRspCb",
            mtlvs = {1, 3, 4, 5, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimPbResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBISimPbLocation",
                    },
                    type_desc = "location_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "uid_t5"
                },
                [6] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "valid_flags_t6"
                },
                [7] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "record_number_t7"
                },
            },
        },
        [519] = {
            name = "IBISimPbGetMetaInformationRspCb_V1",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [520] = {
            name = "IBISimPbGetLocationRspCb_V1",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [521] = {
            name = "IBISimPbUsimPbSelectRspCb_V1",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [769] = {
            name = "IBISimPbUsimPbReadyIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBISimPbUsimPbLocation",
                    },
                    type_desc = "usim_pb_location_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimPbResult",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [770] = {
            name = "IBISimPbCacheLoadIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBISimPbCacheStatus",
                    },
                    type_desc = "cacheStatus_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimPbResult",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [774] = {
            name = "IBISimPbGetMetaInformationIndCb_V1",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBISimPbResult",
                    },
                    type_desc = "result_t2"
                },
                [3] = {
                    codec = {
                        length = 120,
                        name = "IBISimPb2gDescriptor",
                    },
                    type_desc = "sim_phone_book_t3"
                },
                [4] = {
                    codec = {
                        length = 1008,
                        name = "IBISimPb3gDescriptor",
                    },
                    type_desc = "global_phone_book_t4"
                },
                [5] = {
                    codec = {
                        length = 1008,
                        name = "IBISimPb3gDescriptor",
                    },
                    type_desc = "local_phone_book_t5"
                },
            },
        },
        [775] = {
            name = "IBISimPbLocationIndCb_V1",
            mtlvs = {1, 2, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBISimPbResult",
                    },
                    type_desc = "result_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimPbLocationInfo",
                    },
                    type_desc = "pb_location_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "usim_global_pb_exists_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "usim_appl_pb_exists_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "sim_2g_pb_cache_completed_t6"
                },
            },
        },
        [776] = {
            name = "IBISimPbUsimPbSelectIndCb_V1",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBISimPbUsimPbLocation",
                    },
                    type_desc = "usim_pb_location_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimPbResult",
                    },
                    type_desc = "result_t3"
                },
            },
        },
    },
    [15] = {
        ["name"] = "_ARIMSGDEF_GROUP15_cps",
        [257] = {
            name = "IBICpsConfigureCellularPowerReportReq",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "be_activated_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "reporting_period_t4"
                },
            },
        },
        [258] = {
            name = "IBIMSimGetConfigReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [259] = {
            name = "IBIMSimGetSimStackMappingReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [260] = {
            name = "IBIMSimConfigReq",
            mtlvs = {2, 3},
            tlvs = {
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIMSimConfigMode",
                    },
                    type_desc = "mode_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISimSlotId",
                    },
                    type_desc = "slot_id_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "power_both_slots_t4"
                },
            },
        },
        [261] = {
            name = "IBICpsHealthActivityReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICpsHealthActivityType",
                    },
                    type_desc = "health_activity_type_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICpsHealthActivityStatus",
                    },
                    type_desc = "health_activity_status_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBICpsHealthActivityLocationType",
                    },
                    type_desc = "health_activity_location_type_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBICpsHealthActivitySwimLocationType",
                    },
                    type_desc = "health_activity_swim_location_type_t6"
                },
            },
        },
        [262] = {
            name = "IBICpsSetCambioStateReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_cambio_state_t3"
                },
            },
        },
        [263] = {
            name = "CsiMSimGetSimStackMappingStatusReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [264] = {
            name = "IBIMSimSetCurrentDataSimReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIMSimSetCurrentDataSimCauseType",
                    },
                    type_desc = "cause_t3"
                },
            },
        },
        [513] = {
            name = "IBICpsConfigureCellularPowerReportRsp",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [514] = {
            name = "IBIMSimGetConfigRspCb",
            mtlvs = {2, 3},
            tlvs = {
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIMsimConfigStatus",
                    },
                    type_desc = "status_t2"
                },
                [3] = {
                    codec = {
                        length = 12,
                        name = "IBIMSimConfigParam",
                    },
                    type_desc = "config_t3"
                },
            },
        },
        [515] = {
            name = "IBIMSimGetSimStackMappingRspCb",
            mtlvs = {2, 3},
            tlvs = {
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_t2"
                },
                [3] = {
                    codec = {
                        length = 20,
                        name = "IBIMSimSimStackMappingParam",
                    },
                    type_desc = "sim_stack_config_t3"
                },
            },
        },
        [516] = {
            name = "IBIMSimConfigRspCb",
            mtlvs = {2},
            tlvs = {
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIMsimConfigStatus",
                    },
                    type_desc = "result_t2"
                },
            },
        },
        [517] = {
            name = "IBICpsHealthActivityRsp",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [518] = {
            name = "IBICpsSetCambioStateRsp",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [519] = {
            name = "CsiMSimGetSimStackMappingStatusRspCb",
            mtlvs = {2},
            tlvs = {
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "sim_stack_mapping_status_t2"
                },
            },
        },
        [520] = {
            name = "IBIMSimSetCurrentDataSimRsp",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [769] = {
            name = "IBICpsCellularPowerReportInd",
            mtlvs = {1, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "tx_power_hist_duration_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICpsCellularPowerReportState",
                    },
                    type_desc = "power_state_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "tx_power_hist_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_voice_call_active_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cltm_max_power_percentile_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cltm_duty_cycle_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "cltm_ppm_mw_t9"
                },
            },
        },
        [770] = {
            name = "IBIMSimRemapStatusIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIMSimRemapStatus",
                    },
                    type_desc = "status_t1"
                },
            },
        },
        [771] = {
            name = "IBIMSimSimStackMappingIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sim_slot_id_length_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBISimSlotId",
                    },
                    type_desc = "sim_slot_id_t2"
                },
            },
        },
        [772] = {
            name = "IBIMSimConfigIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIMsimConfigStatus",
                    },
                    type_desc = "status_t1"
                },
                [2] = {
                    codec = {
                        length = 12,
                        name = "IBIMSimConfigParam",
                    },
                    type_desc = "config_t2"
                },
            },
        },
        [773] = {
            name = "IBICpsMaxCellularPowerForRatInd",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIRat",
                    },
                    type_desc = "serving_rat_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_serving_rat_tdd_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "power_ceiling_mw_t4"
                },
            },
        },
    },
    [16] = {
        ["name"] = "_ARIMSGDEF_GROUP16_call_cs_voims",
        [257] = {
            name = "IBICallCsVoimsSessionTransferReq",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "no_of_session_t3"
                },
                [4] = {
                    codec = {
                        length = 108,
                        name = "IBICallCsVoimsSessionInfo",
                    },
                    type_desc = "call_transfer_list_t4"
                },
            },
        },
        [258] = {
            name = "IBIMsCallCsVoimsProvideMMTelSessionStatusReq",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsVoimsMMTelSessionType",
                    },
                    type_desc = "session_type_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsVoimsMMTelSessionStatus",
                    },
                    type_desc = "session_status_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_emergency_t5"
                },
            },
        },
        [513] = {
            name = "IBICallCsVoimsSessionTransferRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "no_of_valid_entry_t3"
                },
                [4] = {
                    codec = {
                        length = 8,
                        name = "IBICallCsVoimsSessionTransferResult",
                    },
                    type_desc = "transfer_result_t4"
                },
            },
        },
        [514] = {
            name = "IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [769] = {
            name = "IBICallCsVoimsSrvccHoStatusIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsVoimsSrvccHoStatus",
                    },
                    type_desc = "srvcc_ho_status_t2"
                },
                [3] = {
                    codec = {
                        length = 652,
                        name = "IBICallCsVoimsCallStatusParam",
                    },
                    type_desc = "call_status_info_t3"
                },
            },
        },
        [770] = {
            name = "IBICallCsVoimsCallRetryInitiatedIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsVoimsRetryCause",
                    },
                    type_desc = "cause_t2"
                },
            },
        },
        [771] = {
            name = "IBICallCsVoimsCallRetrySetupIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsCallId",
                    },
                    type_desc = "call_id_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "phone_no_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBICallCsType",
                    },
                    type_desc = "call_type_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBICallCsEccValue",
                    },
                    type_desc = "ecc_category_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBINetDcServiceDomain",
                    },
                    type_desc = "domain_t6"
                },
            },
        },
        [772] = {
            name = "IBICallCsVoimsCallRetryFailureIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
    },
    [17] = {
        ["name"] = "_ARIMSGDEF_GROUP17_ims_me",
        [257] = {
            name = "IBIImsMEGetMediaCapabilityReq",
            mtlvs = {3},
            tlvs = {
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEMediaType",
                    },
                    type_desc = "media_type_t3"
                },
            },
        },
        [258] = {
            name = "IBIImsMEStartMediaReq",
            mtlvs = {3},
            tlvs = {
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t3"
                },
            },
        },
        [259] = {
            name = "IBIImsMEStopMediaReq",
            mtlvs = {3},
            tlvs = {
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t3"
                },
            },
        },
        [260] = {
            name = "IBIImsMETerminateMediaSessionReq",
            mtlvs = {3},
            tlvs = {
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t3"
                },
            },
        },
        [261] = {
            name = "IBIImsMEStartDTMFCodeReq",
            mtlvs = {3, 4},
            tlvs = {
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEDTMFCodes",
                    },
                    type_desc = "dtmf_code_t4"
                },
            },
        },
        [262] = {
            name = "IBIImsMEStopDTMFCodeReq",
            mtlvs = {3},
            tlvs = {
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t3"
                },
            },
        },
        [263] = {
            name = "IBIImsMECreateAudioMediaSessionReq",
            mtlvs = {1, 3, 4, 5, 6, 7, 8, 9, 10},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "members_set_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "primary_pdp_cid_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "local_ip_length_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "local_ip_t6"
                },
                [7] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "local_rtp_port_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEMediaDirection",
                    },
                    type_desc = "direction_t8"
                },
                [9] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "min_packetization_interval_t9"
                },
                [10] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "max_packetization_interval_t10"
                },
                [11] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "active_rtp_payload_type_ul_t11"
                },
                [12] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "tel_event_payload_id_t12"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEAudioChannelModes",
                    },
                    type_desc = "audio_channel_mode_t13"
                },
                [14] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "remote_ip_length_t14"
                },
                [15] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "remote_ip_t15"
                },
                [16] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "remote_rtp_port_t16"
                },
                [17] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "rtp_timeout_t17"
                },
                [18] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "rtcp_timeout_t18"
                },
                [19] = {
                    codec = {
                        length = 284,
                        name = "IBIImsMERtcpProfile",
                    },
                    type_desc = "rtcp_profile_t19"
                },
                [20] = {
                    codec = {
                        length = 12,
                        name = "IBIImsMEEcnAttr",
                    },
                    type_desc = "ecn_attr_t20"
                },
                [21] = {
                    codec = {
                        length = 12,
                        name = "IBIImsMERtpInfo",
                    },
                    type_desc = "rtp_session_info_t21"
                },
                [22] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "codecs_length_t22"
                },
                [23] = {
                    codec = {
                        length = 48,
                        name = "IBIImsMEAudioCodec",
                    },
                    type_desc = "codecs_t23"
                },
                [24] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "evs_codecs_length_t24"
                },
                [25] = {
                    codec = {
                        length = 80,
                        name = "IBIImsMEAudioEVSCodec",
                    },
                    type_desc = "evs_codecs_t25"
                },
                [26] = {
                    codec = {
                        length = 6,
                        name = "IBIImsMEEvsPrimaryCMR",
                    },
                    type_desc = "evs_ul_cmr_t26"
                },
                [27] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "enable_incoming_dtmf_t27"
                },
                [28] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "evs_max_redundancy_duration_t28"
                },
                [29] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "evs_start_br_ul_t29"
                },
                [30] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "evs_start_bw_ul_t30"
                },
                [31] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMeRtcpXrProfile",
                    },
                    type_desc = "rtcp_xr_profile_t31"
                },
            },
        },
        [264] = {
            name = "IBIImsMEConfigureAudioMediaReq",
            mtlvs = {3, 4},
            tlvs = {
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "members_set_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "local_rtp_port_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEMediaDirection",
                    },
                    type_desc = "direction_t6"
                },
                [7] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "min_packetization_interval_t7"
                },
                [8] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "max_packetization_interval_t8"
                },
                [11] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "active_rtp_payload_type_ul_t11"
                },
                [12] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "tel_event_payload_id_t12"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEAudioChannelModes",
                    },
                    type_desc = "audio_channel_mode_t13"
                },
                [14] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "remote_ip_length_t14"
                },
                [15] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "remote_ip_t15"
                },
                [16] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "remote_rtp_port_t16"
                },
                [17] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "rtp_timeout_t17"
                },
                [18] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "rtcp_timeout_t18"
                },
                [19] = {
                    codec = {
                        length = 284,
                        name = "IBIImsMERtcpProfile",
                    },
                    type_desc = "rtcp_profile_t19"
                },
                [20] = {
                    codec = {
                        length = 12,
                        name = "IBIImsMEEcnAttr",
                    },
                    type_desc = "ecn_attr_t20"
                },
                [21] = {
                    codec = {
                        length = 12,
                        name = "IBIImsMERtpInfo",
                    },
                    type_desc = "rtp_session_info_t21"
                },
                [22] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "codecs_length_t22"
                },
                [23] = {
                    codec = {
                        length = 48,
                        name = "IBIImsMEAudioCodec",
                    },
                    type_desc = "codecs_t23"
                },
                [24] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "evs_codecs_length_t24"
                },
                [25] = {
                    codec = {
                        length = 80,
                        name = "IBIImsMEAudioEVSCodec",
                    },
                    type_desc = "evs_codecs_t25"
                },
                [26] = {
                    codec = {
                        length = 6,
                        name = "IBIImsMEEvsPrimaryCMR",
                    },
                    type_desc = "evs_ul_cmr_t26"
                },
                [27] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "evs_max_redundancy_duration_t27"
                },
                [28] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "evs_start_br_ul_t28"
                },
                [29] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "evs_start_bw_ul_t29"
                },
                [30] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMeRtcpXrProfile",
                    },
                    type_desc = "rtcp_xr_profile_t30"
                },
            },
        },
        [265] = {
            name = "IBISipMessageInjectToCpTrace",
            mtlvs = {3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13},
            tlvs = {
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISipCallDirection",
                    },
                    type_desc = "direction_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "sdp_info_present_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBISipMsgId",
                    },
                    type_desc = "message_id_t5"
                },
                [6] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "response_code_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "app_call_id_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sip_call_id_len_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sip_call_id_t9"
                },
                [10] = {
                    codec = {
                        length = 4,
                        name = "IBISipEventId",
                    },
                    type_desc = "event_id_t10"
                },
                [11] = {
                    codec = {
                        length = 4,
                        name = "IBICallType",
                    },
                    type_desc = "call_type_t11"
                },
                [12] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "msg_length_t12"
                },
                [13] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "msg_t13"
                },
            },
        },
        [266] = {
            name = "IBIImsMECreateRTTMediaSessionReq",
            mtlvs = {1, 3, 4, 5, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "members_set_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "primary_pdp_cid_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "local_ip_length_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "local_ip_t6"
                },
                [7] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "local_rtp_port_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "active_rtp_payload_type_ul_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "remote_ip_length_t9"
                },
                [10] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "remote_ip_t10"
                },
                [11] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "remote_rtp_port_t11"
                },
                [12] = {
                    codec = {
                        length = 284,
                        name = "IBIImsMERtcpProfile",
                    },
                    type_desc = "rtcp_profile_t12"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "audio_media_session_id_t13"
                },
                [14] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMERttSessionTtyMode",
                    },
                    type_desc = "tty_mode_t14"
                },
                [15] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "codecs_length_t15"
                },
                [16] = {
                    codec = {
                        length = 16,
                        name = "IBIImsMERTTCodec",
                    },
                    type_desc = "codecs_t16"
                },
            },
        },
        [267] = {
            name = "IBIImsMEConfigureRTTMediaReq",
            mtlvs = {3, 4},
            tlvs = {
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "members_set_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "local_rtp_port_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "active_rtp_payload_type_ul_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "remote_ip_length_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "remote_ip_t8"
                },
                [9] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "remote_rtp_port_t9"
                },
                [10] = {
                    codec = {
                        length = 284,
                        name = "IBIImsMERtcpProfile",
                    },
                    type_desc = "rtcp_profile_t10"
                },
                [11] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "audio_media_session_id_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMERttSessionTtyMode",
                    },
                    type_desc = "tty_mode_t12"
                },
                [13] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "codecs_length_t13"
                },
                [14] = {
                    codec = {
                        length = 16,
                        name = "IBIImsMERTTCodec",
                    },
                    type_desc = "codecs_t14"
                },
            },
        },
        [268] = {
            name = "IBISipMsgInjectToCpIMSTraceReq",
            mtlvs = {1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBISipCallDirection",
                    },
                    type_desc = "direction_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "sdp_info_present_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBISipMsgId",
                    },
                    type_desc = "message_id_t5"
                },
                [6] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "response_code_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "app_call_id_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sip_call_id_len_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sip_call_id_t9"
                },
                [10] = {
                    codec = {
                        length = 4,
                        name = "IBISipEventId",
                    },
                    type_desc = "event_id_t10"
                },
                [11] = {
                    codec = {
                        length = 4,
                        name = "IBICallType",
                    },
                    type_desc = "call_type_t11"
                },
                [12] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "msg_length_t12"
                },
                [13] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "msg_t13"
                },
                [14] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "srvcc_flag_t14"
                },
            },
        },
        [513] = {
            name = "IBIImsMEGetMediaCapabilityRspCb",
            mtlvs = {3, 4},
            tlvs = {
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 1692,
                        name = "IBIImsMEMediaCapability",
                    },
                    type_desc = "media_cap_t4"
                },
            },
        },
        [514] = {
            name = "IBIImsMEStartMediaRspCb",
            mtlvs = {3, 4},
            tlvs = {
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t4"
                },
            },
        },
        [515] = {
            name = "IBIImsMEStopMediaRspCb",
            mtlvs = {3, 4},
            tlvs = {
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t4"
                },
            },
        },
        [516] = {
            name = "IBIImsMETerminateMediaSessionRspCb",
            mtlvs = {3, 4},
            tlvs = {
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t4"
                },
            },
        },
        [517] = {
            name = "IBIImsMEStartDTMFCodeRspCb",
            mtlvs = {3, 4, 5},
            tlvs = {
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEDTMFCodes",
                    },
                    type_desc = "dtmf_code_t5"
                },
            },
        },
        [518] = {
            name = "IBIImsMEStopDTMFCodeRspCb",
            mtlvs = {3, 4, 5},
            tlvs = {
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEDTMFCodes",
                    },
                    type_desc = "dtmf_code_t5"
                },
            },
        },
        [519] = {
            name = "IBIImsMECreateAudioMediaSessionRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t4"
                },
            },
        },
        [520] = {
            name = "IBIImsMEConfigureAudioMediaRspCb",
            mtlvs = {3, 4},
            tlvs = {
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t4"
                },
            },
        },
        [522] = {
            name = "IBIImsMECreateRTTMediaSessionRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t4"
                },
            },
        },
        [523] = {
            name = "IBIImsMEConfigureRTTMediaRspCb",
            mtlvs = {3, 4},
            tlvs = {
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t4"
                },
            },
        },
        [524] = {
            name = "IBISipMsgInjectToCpIMSTraceRsbCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [769] = {
            name = "IBIImsMEMediaSessionErrIndCb",
            mtlvs = {2, 3},
            tlvs = {
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMEMediaSessionErrCodes",
                    },
                    type_desc = "status_t3"
                },
            },
        },
        [770] = {
            name = "IBIImsMERtcpSenderReportIndCb",
            mtlvs = {2, 3, 4, 5, 6, 7, 8, 9},
            tlvs = {
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMeRtcpSourceType",
                    },
                    type_desc = "source_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "ssrc_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "hi_ntp_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "lo_ntp_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "rtp_ts_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "pkts_sent_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "octets_sent_t9"
                },
            },
        },
        [771] = {
            name = "IBIImsMERtcpReceiverReportIndCb",
            mtlvs = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12},
            tlvs = {
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMeRtcpSourceType",
                    },
                    type_desc = "source_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "ssrc_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "s_ssrc_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "frac_lost_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "total_lost_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "last_seq_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "est_jittter_t9"
                },
                [10] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "lsr_t10"
                },
                [11] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "dslr_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "rtt_t12"
                },
            },
        },
        [772] = {
            name = "IBIImsMERtcpSDESReportIndCb",
            mtlvs = {2, 3, 4, 5, 6, 7, 8},
            tlvs = {
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMESessionID",
                    },
                    type_desc = "media_session_id_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMeRtcpSourceType",
                    },
                    type_desc = "source_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "final_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "ssrc_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIImsMERtcpSdesItemType",
                    },
                    type_desc = "sdes_item_type_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sdes_item_len_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "sdes_item_t8"
                },
            },
        },
    },
    [18] = {
        ["name"] = "_ARIMSGDEF_GROUP18_sys_res",
        [257] = {
            name = "CsiIdcGetCellConfigReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [258] = {
            name = "CsiIdcSetRTConfigReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 20,
                        name = "UtaIdcRTConfig",
                    },
                    type_desc = "param_t2"
                },
                [3] = {
                    codec = {
                        length = 392,
                        name = "IBIIdcRTConfigEx",
                    },
                    type_desc = "param_t3"
                },
            },
        },
        [259] = {
            name = "CsiIdcRTSetLinkQualityReportConfigReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 12,
                        name = "UtaIdcRTLinkQConfig",
                    },
                    type_desc = "param_t2"
                },
            },
        },
        [260] = {
            name = "CsiIdcRTGetLinkQualityReportReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [261] = {
            name = "CsiIdcRTSetScanFreqReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 96,
                        name = "UtaIdcRTScanFreqConfig",
                    },
                    type_desc = "param_t2"
                },
            },
        },
        [262] = {
            name = "CsiIdcRTSetArbiterStatsConfigReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 2,
                        name = "UtaIdcRTRArbiterStatsConfig",
                    },
                    type_desc = "param_t2"
                },
            },
        },
        [263] = {
            name = "CsiIdcRTGetArbiterStatsReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [264] = {
            name = "CsiIdcControlEventReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaIdcEventType",
                    },
                    type_desc = "event_bitmap_t2"
                },
            },
        },
        [265] = {
            name = "CsiIdcTestModeCmdReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "CsiIdcTestModeCmd",
                    },
                    type_desc = "cmd_t1"
                },
                [2] = {
                    codec = {
                        length = 28,
                        name = "CsiIdcTestModeParam",
                    },
                    type_desc = "param_t2"
                },
            },
        },
        [266] = {
            name = "CsiIdcRTControlWci2UartReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaBool",
                    },
                    type_desc = "ignore_t1"
                },
            },
        },
        [267] = {
            name = "CsiIdcRTUartActivityStatsConfigReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "stats_accum_period_t2"
                },
            },
        },
        [268] = {
            name = "CsiIdcRTGetUartActivityStatsReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [269] = {
            name = "CsiIdcSetWifiStatusReq",
            mtlvs = {1, 2, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "wifi_center_freq_MHz_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "wifi_tx_power_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "UtaIdcWifiBandWidth",
                    },
                    type_desc = "wifi_bw_t4"
                },
            },
        },
        [270] = {
            name = "CsiIdcUartType4StatsConfigReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "stats_accum_period_t2"
                },
            },
        },
        [271] = {
            name = "CsiIdcGetUartType4StatsReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [272] = {
            name = "CsiIdcSetTxPowerLimitReq",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "UtaInt8",
                    },
                    type_desc = "host_power_threshold_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "host_RB_threshold_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "UtaInt8",
                    },
                    type_desc = "wci2_power_threshold_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "wci2_RB_threshold_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "wci2_power_limiting_timer_ms_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "UL_HARQ_nack_ratio_threshold_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "UtaBool",
                    },
                    type_desc = "host_power_limiting_enable_t8"
                },
            },
        },
        [273] = {
            name = "CsiIdcSetLaaConfigReq",
            mtlvs = {1, 2, 3, 4, 5, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaBool",
                    },
                    type_desc = "laa_coex_enable_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "idc_laa_protect_cqi_period_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "laa_threshod_in_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "laa_threshod_out_t5"
                },
                [6] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "laa_deact_timer_t6"
                },
                [7] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "laa_deact_stop_timer_t7"
                },
            },
        },
        [274] = {
            name = "CsiIdcSetRadio1Req",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIIdcRadio1Param",
                    },
                    type_desc = "data_t2"
                },
            },
        },
        [275] = {
            name = "CsiIdcSetGnssStatusReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIIdcGnssStatus",
                    },
                    type_desc = "data_t2"
                },
            },
        },
        [513] = {
            name = "CsiIdcGetCellConfigRspCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
                [3] = {
                    codec = {
                        length = 672,
                        name = "UtaIdcCellConfig",
                    },
                    type_desc = "data_t3"
                },
                [4] = {
                    codec = {
                        length = 32,
                        name = "UtaIdcCellConfigExt",
                    },
                    type_desc = "ext_data_t4"
                },
                [5] = {
                    codec = {
                        length = 288,
                        name = "IBIIdcCellConfigExtCfg",
                    },
                    type_desc = "extcfg_data_t5"
                },
            },
        },
        [514] = {
            name = "CsiIdcSetRTConfigRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
            },
        },
        [515] = {
            name = "CsiIdcRTSetLinkQualityReportRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
            },
        },
        [516] = {
            name = "CsiIdcRTGetLinkQualityReportRspCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
                [3] = {
                    codec = {
                        length = 11,
                        name = "UtaIdcRTLinkQReport",
                    },
                    type_desc = "data_t3"
                },
            },
        },
        [517] = {
            name = "CsiIdcRTSetScanFreqRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
            },
        },
        [518] = {
            name = "CsiIdcRTSetArbiterStatsConfigRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
            },
        },
        [519] = {
            name = "CsiIdcRTArbiterStatsRspCb",
            mtlvs = {1, 2, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
                [3] = {
                    codec = {
                        length = 40,
                        name = "UtaIdcRTArbiterStats",
                    },
                    type_desc = "data_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "WiFi_BT_both_asserted_subframes_t4"
                },
            },
        },
        [520] = {
            name = "CsiIdcControlEventRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
            },
        },
        [521] = {
            name = "CsiIdcTestModeCmdRsp",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 8,
                        name = "CsiIdcTestModeResult",
                    },
                    type_desc = "test_result_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "CsiIdcTestModeCmd",
                    },
                    type_desc = "cmd_issued_t3"
                },
            },
        },
        [522] = {
            name = "CsiIdcRTControlWci2UartRsp",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [523] = {
            name = "CsiIdcRTUartActivityStatsConfigRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
            },
        },
        [524] = {
            name = "CsiIdcRTUartActivityStatsRspCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8, 9},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaBool",
                    },
                    type_desc = "uart_msg_counting_report_valid_t3"
                },
                [4] = {
                    codec = {
                        length = 8,
                        name = "UtaIdcRxTxCounter",
                    },
                    type_desc = "wci2_msg0_t4"
                },
                [5] = {
                    codec = {
                        length = 8,
                        name = "UtaIdcRxTxCounter",
                    },
                    type_desc = "wci2_msg1_t5"
                },
                [6] = {
                    codec = {
                        length = 8,
                        name = "UtaIdcRxTxCounter",
                    },
                    type_desc = "wci2_msg3_t6"
                },
                [7] = {
                    codec = {
                        length = 8,
                        name = "UtaIdcRxTxCounter",
                    },
                    type_desc = "wci2_msg4_t7"
                },
                [8] = {
                    codec = {
                        length = 8,
                        name = "UtaIdcRxTxCounter",
                    },
                    type_desc = "wci2_msg6_t8"
                },
                [9] = {
                    codec = {
                        length = 8,
                        name = "UtaIdcRxTxCounter",
                    },
                    type_desc = "wci2_msg7_t9"
                },
            },
        },
        [525] = {
            name = "CsiIdcSetWifiStatusRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
            },
        },
        [526] = {
            name = "CsiIdcUartType4StatsConfigRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
            },
        },
        [527] = {
            name = "CsiIdcUartType4StatsRspCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "type4_bin_t3"
                },
            },
        },
        [528] = {
            name = "CsiIdcSetTxPowerLimitRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
            },
        },
        [529] = {
            name = "CsiIdcSetLaaConfigRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
            },
        },
        [530] = {
            name = "CsiIdcSetRadio1RspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t2"
                },
            },
        },
        [531] = {
            name = "CsiIdcSetGnssStatusRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t2"
                },
            },
        },
        [769] = {
            name = "CsiIdcCellConfigEventIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
                [3] = {
                    codec = {
                        length = 672,
                        name = "UtaIdcCellConfig",
                    },
                    type_desc = "data_t3"
                },
                [4] = {
                    codec = {
                        length = 32,
                        name = "UtaIdcCellConfigExt",
                    },
                    type_desc = "ext_data_t4"
                },
                [5] = {
                    codec = {
                        length = 288,
                        name = "IBIIdcCellConfigExtCfg",
                    },
                    type_desc = "extcfg_data_t5"
                },
            },
        },
        [770] = {
            name = "CsiIdcRTLinkQualityReportEventIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
                [3] = {
                    codec = {
                        length = 11,
                        name = "UtaIdcRTLinkQReport",
                    },
                    type_desc = "data_t3"
                },
            },
        },
        [771] = {
            name = "CsiIdcRTArbiterStatsEventIndCb",
            mtlvs = {1, 2, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
                [3] = {
                    codec = {
                        length = 40,
                        name = "UtaIdcRTArbiterStats",
                    },
                    type_desc = "data_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "WiFi_BT_both_asserted_subframes_t4"
                },
            },
        },
        [772] = {
            name = "CsiIdcRTUartActivityStatsEventIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8, 9},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaBool",
                    },
                    type_desc = "uart_msg_counting_report_valid_t3"
                },
                [4] = {
                    codec = {
                        length = 8,
                        name = "UtaIdcRxTxCounter",
                    },
                    type_desc = "wci2_msg0_t4"
                },
                [5] = {
                    codec = {
                        length = 8,
                        name = "UtaIdcRxTxCounter",
                    },
                    type_desc = "wci2_msg1_t5"
                },
                [6] = {
                    codec = {
                        length = 8,
                        name = "UtaIdcRxTxCounter",
                    },
                    type_desc = "wci2_msg3_t6"
                },
                [7] = {
                    codec = {
                        length = 8,
                        name = "UtaIdcRxTxCounter",
                    },
                    type_desc = "wci2_msg4_t7"
                },
                [8] = {
                    codec = {
                        length = 8,
                        name = "UtaIdcRxTxCounter",
                    },
                    type_desc = "wci2_msg6_t8"
                },
                [9] = {
                    codec = {
                        length = 8,
                        name = "UtaIdcRxTxCounter",
                    },
                    type_desc = "wci2_msg7_t9"
                },
            },
        },
        [773] = {
            name = "CsiIdcUartType4StatsEventIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t2"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "type4_bin_t3"
                },
            },
        },
    },
    [19] = {
        ["name"] = "_ARIMSGDEF_GROUP19_cls",
        [256] = {
            name = "IBIMsLpMeasurePositionMeasurementsRsp",
            mtlvs = {1, 3, 4, 5, 6, 7, 8},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "responseType_t4"
                },
                [5] = {
                    codec = {
                        length = 12,
                        name = "IBILpSessionInfo",
                    },
                    type_desc = "sessionInfo_t5"
                },
                [6] = {
                    codec = {
                        length = 456,
                        name = "IBILpGpsMeasurements",
                    },
                    type_desc = "gpsMeasurements_t6"
                },
                [7] = {
                    codec = {
                        length = 1660,
                        name = "IBILpGanssMeasurements",
                    },
                    type_desc = "ganssMeasurements_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "moreGanssMeasurements_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "isMeasInCdmaTime_t9"
                },
            },
        },
        [257] = {
            name = "IBIMsLpMeasurePositionMeasurementsShortRsp",
            mtlvs = {1, 3, 4, 5, 6, 7, 8},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "responseType_t4"
                },
                [5] = {
                    codec = {
                        length = 12,
                        name = "IBILpSessionInfo",
                    },
                    type_desc = "sessionInfo_t5"
                },
                [6] = {
                    codec = {
                        length = 456,
                        name = "IBILpGpsMeasurements",
                    },
                    type_desc = "gpsMeasurements_t6"
                },
                [7] = {
                    codec = {
                        length = 3224,
                        name = "IBILpGanssMeasurementsShort",
                    },
                    type_desc = "ganssMeasurements_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "moreGanssMeasurements_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "isMeasInCdmaTime_t9"
                },
            },
        },
        [258] = {
            name = "IBIMsLpMeasurePositionLocationInfoRsp",
            mtlvs = {1, 3, 4, 5, 6, 7, 8, 9},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "responseType_t4"
                },
                [5] = {
                    codec = {
                        length = 12,
                        name = "IBILpSessionInfo",
                    },
                    type_desc = "sessionInfo_t5"
                },
                [6] = {
                    codec = {
                        length = 72,
                        name = "IBILpLocationInfo",
                    },
                    type_desc = "locationInfo_t6"
                },
                [7] = {
                    codec = {
                        length = 124,
                        name = "IBILpGanssLocationInfo",
                    },
                    type_desc = "ganssLocationInfo_t7"
                },
                [8] = {
                    codec = {
                        length = 208,
                        name = "IBILpLocEstimate",
                    },
                    type_desc = "locEstimate_t8"
                },
                [9] = {
                    codec = {
                        length = 28,
                        name = "IBILpVelocityEstimate",
                    },
                    type_desc = "velocityEstimate_t9"
                },
            },
        },
        [259] = {
            name = "IBIMsLpMeasurePositionAssistanceRequestRsp",
            mtlvs = {1, 3, 4, 5, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "responseType_t4"
                },
                [5] = {
                    codec = {
                        length = 12,
                        name = "IBILpSessionInfo",
                    },
                    type_desc = "sessionInfo_t5"
                },
                [6] = {
                    codec = {
                        length = 38,
                        name = "IBISsLcsGpsAssistanceRequest",
                    },
                    type_desc = "assistanceRequest_t6"
                },
                [7] = {
                    codec = {
                        length = 1836,
                        name = "IBILpGanssAssistanceRequest",
                    },
                    type_desc = "ganssAssistanceRequest_t7"
                },
            },
        },
        [260] = {
            name = "IBIMsLpGnssAbortCnf",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t5"
                },
            },
        },
        [261] = {
            name = "IBIMsCellTimeStampReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICtsNetworkType",
                    },
                    type_desc = "networkType_t3"
                },
            },
        },
        [262] = {
            name = "IBIMsLpWlanMeasurementRsp",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 12,
                        name = "IBILpSessionInfo",
                    },
                    type_desc = "sessionInfo_t4"
                },
                [5] = {
                    codec = {
                        length = 1048,
                        name = "IBILpWlanMeasurements",
                    },
                    type_desc = "wlanMeasurements_t5"
                },
            },
        },
        [263] = {
            name = "IBIMsLpMeasurePositionMeasurementsAndEstimateRsp",
            mtlvs = {1, 3, 4, 5, 6, 7, 8},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "responseType_t4"
                },
                [5] = {
                    codec = {
                        length = 12,
                        name = "IBILpSessionInfo",
                    },
                    type_desc = "sessionInfo_t5"
                },
                [6] = {
                    codec = {
                        length = 456,
                        name = "IBILpGpsMeasurements",
                    },
                    type_desc = "gpsMeasurements_t6"
                },
                [7] = {
                    codec = {
                        length = 48,
                        name = "IBILpIs801LocationInd",
                    },
                    type_desc = "locationIndication_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBILpMeasurementAndEstimateAFLT",
                    },
                    type_desc = "afltConfiguration_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "isMeasInCdmaTime_t9"
                },
            },
        },
        [512] = {
            name = "IBIMsLpMeasurePositionMeasurementsRspAckCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "status_t3"
                },
                [4] = {
                    codec = {
                        length = 12,
                        name = "IBILpSessionInfo",
                    },
                    type_desc = "sessionInfo_t4"
                },
            },
        },
        [513] = {
            name = "IBIMsLpMeasurePositionMeasurementsShortRspAckCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "status_t3"
                },
                [4] = {
                    codec = {
                        length = 12,
                        name = "IBILpSessionInfo",
                    },
                    type_desc = "sessionInfo_t4"
                },
            },
        },
        [514] = {
            name = "IBIMsLpMeasurePositionLocationInfoRspAckCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "status_t3"
                },
                [4] = {
                    codec = {
                        length = 12,
                        name = "IBILpSessionInfo",
                    },
                    type_desc = "sessionInfo_t4"
                },
            },
        },
        [515] = {
            name = "IBIMsLpMeasurePositionAssistanceRequestRspAckCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "status_t3"
                },
                [4] = {
                    codec = {
                        length = 12,
                        name = "IBILpSessionInfo",
                    },
                    type_desc = "sessionInfo_t4"
                },
            },
        },
        [516] = {
            name = "IBIMsLpGnssAbortCnfAckCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 12,
                        name = "IBILpSessionInfo",
                    },
                    type_desc = "sessionInfo_t3"
                },
            },
        },
        [517] = {
            name = "IBIMsCellTimeStampReqAckCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "status_t3"
                },
            },
        },
        [518] = {
            name = "IBIMsLpWlanMeasurementRspAckCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "status_t3"
                },
                [4] = {
                    codec = {
                        length = 12,
                        name = "IBILpSessionInfo",
                    },
                    type_desc = "sessionInfo_t4"
                },
            },
        },
        [519] = {
            name = "IBIMsLpMeasurePositionMeasurementsAndEstimateRspAckCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "status_t3"
                },
                [4] = {
                    codec = {
                        length = 12,
                        name = "IBILpSessionInfo",
                    },
                    type_desc = "sessionInfo_t4"
                },
            },
        },
        [768] = {
            name = "IBIMsLpMeasurePositionReqCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "interval_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBILpMethodType",
                    },
                    type_desc = "method_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "responseTime_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "horizontalAccuracy_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "protocol_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "velocityRequested_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "gpsCellTimingWanted_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "horizontalConfidence_t9"
                },
                [10] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "verticalAccuracy_t10"
                },
                [11] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "verticalConfidence_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "lppInUse_t12"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "verticalRequested_t13"
                },
                [14] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "assistanceAvailability_t14"
                },
                [15] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "requestedGnss_t15"
                },
                [16] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "carrierPhaseMeasRequested_t16"
                },
                [17] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "multiFreqMeasRequested_t17"
                },
                [18] = {
                    codec = {
                        length = 4,
                        name = "IBILpEnvironment",
                    },
                    type_desc = "environment_t18"
                },
                [19] = {
                    codec = {
                        length = 4,
                        name = "IBILpAdditionalInfo",
                    },
                    type_desc = "addnlInfo_t19"
                },
                [20] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "locCordinateTypeAllowed_t20"
                },
                [21] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "velocityTypes_t21"
                },
                [22] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "reportAmount_t22"
                },
                [23] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t23"
                },
                [24] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t24"
                },
            },
        },
        [769] = {
            name = "IBIMsLpGpsReferenceTimeIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "gpsTow_t2"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "gpsWeek_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "gpsTimeUncertainty_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "utranGpsDrift_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBILpUtranSfnGpsUncertainty",
                    },
                    type_desc = "utranSfnTowUncertainty_t6"
                },
                [7] = {
                    codec = {
                        length = 748,
                        name = "IBILpCellTimeAssistance",
                    },
                    type_desc = "cellTimeAssistance_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "nrOfSats_t8"
                },
                [9] = {
                    codec = {
                        length = 16,
                        name = "IBILpTowAssist",
                    },
                    type_desc = "towAssist_t9"
                },
                [10] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "gpsWeekCycleNumber_t10"
                },
                [11] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t12"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t13"
                },
            },
        },
        [770] = {
            name = "IBIMsLpGpsReferenceLocationIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "shapeType_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "hemisphere_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "altitude_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "latitude_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "longitude_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "directionOfAlt_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "semiMajorUncert_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "semiMinorUncert_t9"
                },
                [10] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "majorAxis_t10"
                },
                [11] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "altUncert_t11"
                },
                [12] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "confidence_t12"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t13"
                },
                [14] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t14"
                },
                [15] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t15"
                },
            },
        },
        [771] = {
            name = "IBIMsLpGpsDgpsCorrectionsIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "gpsTow_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBILpDgpsStatus",
                    },
                    type_desc = "status_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "nrOfSats_t4"
                },
                [5] = {
                    codec = {
                        length = 6,
                        name = "IBILpDgpsElement",
                    },
                    type_desc = "dgpsInformation_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t8"
                },
            },
        },
        [772] = {
            name = "IBIMsLpGpsNavigationModelIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "nrOfSats_t2"
                },
                [3] = {
                    codec = {
                        length = 96,
                        name = "IBILpGpsEphemeris",
                    },
                    type_desc = "ephemeris_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t6"
                },
            },
        },
        [773] = {
            name = "IBIMsLpGpsIonosphericModelIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "alpha0_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "alpha1_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "alpha2_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "alpha3_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "beta0_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "beta1_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "beta2_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "beta3_t9"
                },
                [10] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t10"
                },
                [11] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t12"
                },
            },
        },
        [774] = {
            name = "IBIMsLpGpsUtcModelIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "a1_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "a0_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "tot_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "wnt_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "wnlsf_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "deltaTls_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "dayNumber_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "deltaTlsf_t9"
                },
                [10] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t10"
                },
                [11] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t12"
                },
            },
        },
        [775] = {
            name = "IBIMsLpGpsAlmanacIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "wna_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "nrOfSats_t3"
                },
                [4] = {
                    codec = {
                        length = 24,
                        name = "IBILpGpsAlmanacElement",
                    },
                    type_desc = "almanac_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "completeAlmanacProvided_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t8"
                },
            },
        },
        [776] = {
            name = "IBIMsLpGpsAcquisitionAssistanceIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8, 9},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "gpsTow_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "nrOfSats_t3"
                },
                [4] = {
                    codec = {
                        length = 748,
                        name = "IBILpCellTimeAssistance",
                    },
                    type_desc = "cellTimeAssistance_t4"
                },
                [5] = {
                    codec = {
                        length = 20,
                        name = "IBILpGpsAcquisitionElement",
                    },
                    type_desc = "acquisition_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "confidence_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t9"
                },
            },
        },
        [777] = {
            name = "IBIMsLpGpsRealTimeIntegrityIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "badSvId_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "numOfSats_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t6"
                },
            },
        },
        [778] = {
            name = "IBIMsLpGanssAcquisitionAssistanceIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBILpGanssId",
                    },
                    type_desc = "ganssId_t2"
                },
                [3] = {
                    codec = {
                        length = 1288,
                        name = "IBILpGanssAcquisitionAssistanceInfo",
                    },
                    type_desc = "ganssAcquisitionInfo_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t6"
                },
            },
        },
        [779] = {
            name = "IBIMsLpGanssRealTimeIntegrityIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBILpGanssId",
                    },
                    type_desc = "ganssId_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "badSatInfoCount_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBILpGanssBadSatelliteInfo",
                    },
                    type_desc = "badSatInfo_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t7"
                },
            },
        },
        [780] = {
            name = "IBIMsLpGanssTimeModelIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBILpGanssId",
                    },
                    type_desc = "ganssId_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "ganssTimeModelDataListCount_t3"
                },
                [4] = {
                    codec = {
                        length = 24,
                        name = "IBILpGanssTimeModelData",
                    },
                    type_desc = "ganssTimeModelDataList_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t7"
                },
            },
        },
        [781] = {
            name = "IBIMsLpGanssAuxiliaryInfoIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBILpGanssId",
                    },
                    type_desc = "ganssId_t2"
                },
                [3] = {
                    codec = {
                        length = 193,
                        name = "IBILpGanssAuxiliaryData",
                    },
                    type_desc = "ganssAuxiliaryData_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t6"
                },
            },
        },
        [782] = {
            name = "IBIMsLpGanssAddUtcModelIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBILpGanssId",
                    },
                    type_desc = "ganssId_t2"
                },
                [3] = {
                    codec = {
                        length = 16,
                        name = "IBILpAddUtcModelSet",
                    },
                    type_desc = "ganssAddUtcModelSet_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t6"
                },
            },
        },
        [783] = {
            name = "IBIMsLpGanssReferenceLocationIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "shapeType_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "hemisphere_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "altitude_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "latitude_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "longitude_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "directionOfAlt_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "semiMajorUncert_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "semiMinorUncert_t9"
                },
                [10] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "majorAxis_t10"
                },
                [11] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "altUncert_t11"
                },
                [12] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "confidence_t12"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t13"
                },
                [14] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t14"
                },
                [15] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t15"
                },
            },
        },
        [784] = {
            name = "IBIMsLpGanssReferenceTimeIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "ganssDay_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "ganssTod_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "ganssTodFrac_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "ganssTodUncertainty_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBILpGnssTimeId",
                    },
                    type_desc = "timeId_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "notificationOfLeapSecond_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "utranGanssDrift_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "geranFrameDrift_t9"
                },
                [10] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "timeCellFramesUtran_t10"
                },
                [11] = {
                    codec = {
                        length = 748,
                        name = "IBILpCellTimeAssistance",
                    },
                    type_desc = "cellTimeAssistance_t11"
                },
                [12] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "ganssDayCycleNumber_t12"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t13"
                },
                [14] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t14"
                },
                [15] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t15"
                },
            },
        },
        [785] = {
            name = "IBIMsLpGanssAdditionalIonosphericModelIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "dataId_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "alfa0_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "alfa1_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "alfa2_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "alfa3_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "beta0_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "beta1_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "beta2_t9"
                },
                [10] = {
                    codec = {
                        length = 1,
                        name = "IBIInt8",
                    },
                    type_desc = "beta3_t10"
                },
                [11] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t12"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t13"
                },
            },
        },
        [786] = {
            name = "IBIMsLpGlonassAlmanacIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 12,
                        name = "IBILpGanssCommonAlmanacData",
                    },
                    type_desc = "commonAlmanac_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "glonassAlmanacElementCount_t3"
                },
                [4] = {
                    codec = {
                        length = 32,
                        name = "IBILpGlonassAlmanacElement",
                    },
                    type_desc = "glonassAlmanacElement_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t7"
                },
            },
        },
        [787] = {
            name = "IBIMsLpGlonassNavigationModelIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "nbi_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "navDataGlonassCount_t3"
                },
                [4] = {
                    codec = {
                        length = 56,
                        name = "IBILpGanssNavDataGlonass",
                    },
                    type_desc = "navDataGlonass_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t7"
                },
            },
        },
        [788] = {
            name = "IBIMsLpAssistanceDataErrorIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 12,
                        name = "IBILpSessionInfo",
                    },
                    type_desc = "sessionInfo_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBILpLocationServerErrorCause",
                    },
                    type_desc = "errorCause_t3"
                },
            },
        },
        [789] = {
            name = "IBIMsLpResetGnssAssistanceDataCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "resetGpsOnly_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "positionMethod_t4"
                },
            },
        },
        [790] = {
            name = "IBIMsLpGnssAbortReqCb",
            mtlvs = {1, 2, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBILpAbortReason",
                    },
                    type_desc = "abortReason_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "overRidingPositionMethod_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "overRidingMethodType_t7"
                },
            },
        },
        [791] = {
            name = "IBIMsLpGnssSuspendIndCb",
            mtlvs = {1, 2, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBILpPosProtocol",
                    },
                    type_desc = "posProtocol_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBILpSessionProtocol",
                    },
                    type_desc = "sessionProtocol_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "sessionId_t4"
                },
            },
        },
        [794] = {
            name = "IBIMsLpDiscardedPosSessionIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 12,
                        name = "IBILpSessionInfo",
                    },
                    type_desc = "sessionInfo_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBILpDiscardedPosMsgType",
                    },
                    type_desc = "posMsgType_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "positionMethod_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "methodType_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBILpDiscardReason",
                    },
                    type_desc = "discardReason_t6"
                },
            },
        },
        [795] = {
            name = "IBIMsLpPosLocationRequestStatusIndCb",
            mtlvs = {1, 2, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 12,
                        name = "IBILpSessionInfo",
                    },
                    type_desc = "sessionInfo_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "positionMethodBitmap_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBILpLocationRequestStatus",
                    },
                    type_desc = "locationRequestStatus_t4"
                },
            },
        },
        [796] = {
            name = "IBIMsCellTimeStampIndCb",
            mtlvs = {1, 2, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "returnCode_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICtsNetworkType",
                    },
                    type_desc = "networkType_t3"
                },
                [4] = {
                    codec = {
                        length = 28,
                        name = "IBICtsCellTimeData",
                    },
                    type_desc = "timeStampData_t4"
                },
            },
        },
        [797] = {
            name = "IBIMsLpPosIs801GpsLocationIndCb",
            mtlvs = {1, 2, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 12,
                        name = "IBILpSessionInfo",
                    },
                    type_desc = "sessionInfo_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBILpIs801LocationIndStatus",
                    },
                    type_desc = "locationStatus_t3"
                },
                [4] = {
                    codec = {
                        length = 48,
                        name = "IBILpIs801LocationInd",
                    },
                    type_desc = "locationIndication_t4"
                },
            },
        },
        [798] = {
            name = "IBIMsLpWlanMeasurementReqCb",
            mtlvs = {1, 2, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 12,
                        name = "IBILpSessionInfo",
                    },
                    type_desc = "sessionInfo_t2"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "responseTime_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBILpWlanReqInfo",
                    },
                    type_desc = "wlanReqInfo_t4"
                },
            },
        },
    },
    [20] = {
        ["name"] = "_ARIMSGDEF_GROUP20_sys_diag",
        [259] = {
            name = "CsiIpcCtrlPathTestInitReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [260] = {
            name = "CsiIpcCtrlPathTestUnInitReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [261] = {
            name = "CsiIpcCtrlPathTestSrcCfgReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 16,
                        name = "CsiIpcCtrlPathTestSrcCfgReqParams",
                    },
                    type_desc = "SrcCfgParam_t1"
                },
            },
        },
        [262] = {
            name = "CsiIpcCtrlPathTestSendDataReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 3076,
                        name = "CsiIpcCtrlPathTestDataSendReqParam",
                    },
                    type_desc = "param_t1"
                },
            },
        },
        [264] = {
            name = "CsiIpcCtrlPathTestDataOpReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "CsiIpcCtrIPathTestDataReqOp",
                    },
                    type_desc = "operation_t1"
                },
            },
        },
        [265] = {
            name = "CsiIpcCtrlPathTestSrcReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "CsiIpcCtrIPathTestStaticsReqParams",
                    },
                    type_desc = "operation_t1"
                },
            },
        },
        [515] = {
            name = "CsiIpcCtrlPathTestInitRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [516] = {
            name = "CsiIpcCtrlPathTestUnInitRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [517] = {
            name = "CsiIpcCtrlPathTestSrcCfgRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "CsiIpcCtrlPathTestSrcCfgRspCbParam",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [518] = {
            name = "CsiIpcCtrlPathTestSendDataRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "CsiIpcCtrlPathTestDataSendRspCbParam",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [520] = {
            name = "CsiIpcCtrlPathTestDataOpRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "CsiIpcCtrlPathTestDataOpRspCbParam",
                    },
                    type_desc = "operation_t1"
                },
            },
        },
        [521] = {
            name = "CsiIpcCtrlPathTestSrcRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 28,
                        name = "CsiIpcCtrIPathTestStaticsRspCbParams",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [775] = {
            name = "CsiIpcCtrlPathTestDataIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 3076,
                        name = "CsiIpcCtrlPathTestDataIndCbParam",
                    },
                    type_desc = "param_t1"
                },
            },
        },
    },
    [21] = {
        ["name"] = "_ARIMSGDEF_GROUP21_ss_lcs",
        [256] = {
            name = "IBIMsSsLcsMtlrNotificationRsp",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 8,
                        name = "IBISsLcsMtlrNotificationRspParams",
                    },
                    type_desc = "params_t2"
                },
            },
        },
        [257] = {
            name = "IBIMsSsLcsPositioningCapabilityReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 16,
                        name = "IBIMsSsLcsPositioningCapabilityReqParam",
                    },
                    type_desc = "params_t2"
                },
            },
        },
        [512] = {
            name = "IBIMsSsLcsMtlrNotificationRspAckCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [513] = {
            name = "IBIMsSsLcsPositioningCapabilityRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 20,
                        name = "IBIMsSsLcsPositioningCapabilityRspParam",
                    },
                    type_desc = "params_t2"
                },
            },
        },
        [768] = {
            name = "IBIMsSsLcsMtlrNotificationIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 328,
                        name = "IBISsLcsMtlrNotificationIndCbParams",
                    },
                    type_desc = "params_t2"
                },
            },
        },
        [769] = {
            name = "IBIMsSsLcsMtlrRejectIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 8,
                        name = "IBIMsSsLcsMtlrRejectIndParam",
                    },
                    type_desc = "params_t2"
                },
            },
        },
    },
    [22] = {
        ["name"] = "_ARIMSGDEF_GROUP22_xcc",
        [256] = {
            name = "IBIXccClockControlReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 8,
                        name = "IBIXccClockControlReqParams",
                    },
                    type_desc = "params_t1"
                },
            },
        },
        [257] = {
            name = "IBIXccLtlReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIXccPeripheral",
                    },
                    type_desc = "peripheral_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIXccLtlInfoType",
                    },
                    type_desc = "ltl_info_type_t3"
                },
            },
        },
        [512] = {
            name = "IBIXccClockControlRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 24,
                        name = "IBIXccClockControlRspCbParams",
                    },
                    type_desc = "params_t1"
                },
            },
        },
        [513] = {
            name = "IBIXccLtlRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "status_code_t1"
                },
            },
        },
        [768] = {
            name = "IBIXccClockIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 24,
                        name = "IBIXccClockControlIndCbParams",
                    },
                    type_desc = "params_t1"
                },
            },
        },
        [769] = {
            name = "IBIXccLtlIndCb",
            mtlvs = {1, 2, 25, 26},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "status_code_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIXccLtlInfoType",
                    },
                    type_desc = "ltl_info_type_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "coeff_c5_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "coeff_c4_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "coeff_c3_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "coeff_c2_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "coeff_c1_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "coeff_c0_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "ltl_cleanup_factor_t9"
                },
                [10] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "hwid_t10"
                },
                [11] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "clkid_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "ltl_update_cnt_t12"
                },
                [13] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "ltl_cleanup_cnt_t13"
                },
                [14] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "s_curve_val_t14"
                },
                [15] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "s_curve_history_t15"
                },
                [16] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "coeff_calibrated_t16"
                },
                [17] = {
                    codec = {
                        length = 2,
                        name = "IBIInt16",
                    },
                    type_desc = "ref_temp_t17"
                },
                [18] = {
                    codec = {
                        length = 2,
                        name = "IBIInt16",
                    },
                    type_desc = "correction_factor_t18"
                },
                [19] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "prod_version_t19"
                },
                [20] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "post_cal_version_t20"
                },
                [21] = {
                    codec = {
                        length = 2,
                        name = "IBIInt16",
                    },
                    type_desc = "adc_gain_t21"
                },
                [22] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "adc_offset_t22"
                },
                [23] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "adc_gain_ext_t23"
                },
                [24] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "adc_offset_ext_t24"
                },
                [25] = {
                    codec = {
                        length = 4,
                        name = "IBIXccLtlIndType",
                    },
                    type_desc = "ind_type_t25"
                },
                [26] = {
                    codec = {
                        length = 4,
                        name = "IBIXccPeripheral",
                    },
                    type_desc = "peripheral_t26"
                },
                [27] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "ref_temp_mc_t27"
                },
                [28] = {
                    codec = {
                        length = 4,
                        name = "IBIInt32",
                    },
                    type_desc = "correction_factor_1ppm_t28"
                },
            },
        },
    },
    [23] = {
        ["name"] = "_ARIMSGDEF_GROUP23_trc_info",
        [257] = {
            name = "CsiTraceProfileInitReq",
            mtlvs = {1, 2, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "active_length_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "UtaChar",
                    },
                    type_desc = "active_profile_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "sleep_length_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "UtaChar",
                    },
                    type_desc = "sleep_string_t4"
                },
            },
        },
        [258] = {
            name = "CsiTraceModeInitReq",
            mtlvs = {1, 2, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "trace_enable_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "trace_mode_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "high_watermark_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "low_watermark_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "timeout_to_trace_t5"
                },
            },
        },
        [259] = {
            name = "CsiTraceProfileSelectReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "trace_enable_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "active_sleep_t2"
                },
            },
        },
        [260] = {
            name = "CsiTraceAddMasksReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "config_length_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "UtaChar",
                    },
                    type_desc = "config_string_t2"
                },
            },
        },
        [261] = {
            name = "CsiTraceProfilePacketsReq",
            mtlvs = {1, 2, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "profile_id_t1"
                },
                [2] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "pkt_seq_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "total_length_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "pkt_offset_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "pkt_length_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "UtaChar",
                    },
                    type_desc = "pkt_t6"
                },
            },
        },
        [273] = {
            name = "CsiXsioSetReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "handle_t1"
                },
            },
        },
        [274] = {
            name = "CsiXsioGetReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [513] = {
            name = "CsiTraceProfileInitRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_code_t1"
                },
            },
        },
        [514] = {
            name = "CsiTraceModeInitRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_code_t1"
                },
            },
        },
        [515] = {
            name = "CsiTraceProfileSelectRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_code_t1"
                },
            },
        },
        [516] = {
            name = "CsiTraceAddMasksRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_code_t1"
                },
            },
        },
        [517] = {
            name = "CsiTraceProfilePacketsRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_code_t1"
                },
            },
        },
        [529] = {
            name = "CsiXsioSetRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_code_t1"
                },
            },
        },
        [530] = {
            name = "CsiXsioGetRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "handle_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_code_t2"
                },
            },
        },
    },
    [29] = {
        ["name"] = "_ARIMSGDEF_GROUP29_ogrs",
        [257] = {
            name = "IBIOgrsActivationReq",
            mtlvs = {1, 3, 4, 5, 6, 8},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsActivationType",
                    },
                    type_desc = "Type_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIOgrsInterfaceId",
                    },
                    type_desc = "LocalInterfaceID_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIOgrsUserId",
                    },
                    type_desc = "LocalUserID_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "NumDiscoveryListEntries_t6"
                },
                [7] = {
                    codec = {
                        length = 52,
                        name = "IBIRemotePeerConfiguration_t",
                    },
                    type_desc = "DiscoveryList_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsDiscoveryMode",
                    },
                    type_desc = "Mode_t8"
                },
            },
        },
        [258] = {
            name = "IBIOgrsDeactivationReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [259] = {
            name = "IBIOgrsDedicatedDiscoveryReq",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "InterfaceID_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "EmergencyIndicator_t4"
                },
            },
        },
        [260] = {
            name = "IBIOgrsPresenceDiscoveryReq",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "ReportingInterval_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "SearchInterval_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "NumSearchListEntries_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIOgrsInterfaceId",
                    },
                    type_desc = "SearchList_t6"
                },
            },
        },
        [261] = {
            name = "IBIOgrsPresenceDiscoveryStopReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [262] = {
            name = "IBIOgrsDiscoveryReleaseReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "NumUsers_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIOgrsInterfaceId",
                    },
                    type_desc = "ReleaseList_t4"
                },
            },
        },
        [263] = {
            name = "IBIOgrsTxDiscardReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "NumUsers_t3"
                },
                [4] = {
                    codec = {
                        length = 16,
                        name = "IBIUserList_t",
                    },
                    type_desc = "UserList_t4"
                },
            },
        },
        [265] = {
            name = "IBIOgrsInterfaceStartReq",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIOgrsInterfaceId",
                    },
                    type_desc = "InterfaceID_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIChar",
                    },
                    type_desc = "terminal_name_t4"
                },
            },
        },
        [266] = {
            name = "IBIOgrsInterfaceStopReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "NumContextIDs_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "ContextID_List_t4"
                },
            },
        },
        [267] = {
            name = "IBIOgrsEmergencyTransmissionReq",
            mtlvs = {1, 3, 4, 5, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIOgrsUserId",
                    },
                    type_desc = "EmergencyUserID_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "Count_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "Periodicity_t5"
                },
                [6] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "Length_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "Message_t7"
                },
            },
        },
        [268] = {
            name = "IBIOgrsEmergencyTransmissionStopReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [269] = {
            name = "IBIOgrsDiscoveryStatusReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [270] = {
            name = "IBIOgrsEventFilterReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "NumUsers_t3"
                },
                [4] = {
                    codec = {
                        length = 16,
                        name = "IBIUserList_t",
                    },
                    type_desc = "UserList_t4"
                },
            },
        },
        [271] = {
            name = "IBIOgrsSetParameterReq",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "ParameterConfigPresenceBitmask_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsMasterLikelihood",
                    },
                    type_desc = "MasterLikelihood_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsRelayLikelihood",
                    },
                    type_desc = "RelayLikelihood_t5"
                },
            },
        },
        [513] = {
            name = "IBIOgrsActivationRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "Result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsFailureCause",
                    },
                    type_desc = "FailureCause_t4"
                },
            },
        },
        [514] = {
            name = "IBIOgrsDeactivationRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "Result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsFailureCause",
                    },
                    type_desc = "FailureCause_t4"
                },
            },
        },
        [515] = {
            name = "IBIOgrsDedicatedDiscoveryRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "Result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsFailureCause",
                    },
                    type_desc = "FailureCause_t4"
                },
            },
        },
        [516] = {
            name = "IBIOgrsPresenceDiscoveryRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "Result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsFailureCause",
                    },
                    type_desc = "FailureCause_t4"
                },
            },
        },
        [517] = {
            name = "IBIOgrsPresenceDiscoveryStopRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "Result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsFailureCause",
                    },
                    type_desc = "FailureCause_t4"
                },
            },
        },
        [518] = {
            name = "IBIOgrsDiscoveryReleaseRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "Result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsFailureCause",
                    },
                    type_desc = "FailureCause_t4"
                },
            },
        },
        [519] = {
            name = "IBIOgrsTxDiscardRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "Result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsFailureCause",
                    },
                    type_desc = "FailureCause_t4"
                },
            },
        },
        [521] = {
            name = "IBIOgrsInterfaceStartRspCb",
            mtlvs = {1, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "Result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsFailureCause",
                    },
                    type_desc = "FailureCause_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "DataContextID_t5"
                },
            },
        },
        [522] = {
            name = "IBIOgrsInterfaceStopRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "Result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsFailureCause",
                    },
                    type_desc = "FailureCause_t4"
                },
            },
        },
        [523] = {
            name = "IBIOgrsEmergencyTransmissionRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "Result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsFailureCause",
                    },
                    type_desc = "FailureCause_t4"
                },
            },
        },
        [524] = {
            name = "IBIOgrsEmergencyTransmissionStopRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "Result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsFailureCause",
                    },
                    type_desc = "FailureCause_t4"
                },
            },
        },
        [525] = {
            name = "IBIOgrsDiscoveryStatusRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "Result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsFailureCause",
                    },
                    type_desc = "FailureCause_t4"
                },
            },
        },
        [526] = {
            name = "IBIOgrsEventFilterRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "Result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsFailureCause",
                    },
                    type_desc = "FailureCause_t4"
                },
            },
        },
        [527] = {
            name = "IBIOgrsSetParameterRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "Result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsFailureCause",
                    },
                    type_desc = "FailureCause_t4"
                },
            },
        },
        [769] = {
            name = "IBIOgrsStatusIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsSystemStatus",
                    },
                    type_desc = "State_t2"
                },
            },
        },
        [770] = {
            name = "IBIOgrsDeactivationIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIOgrsDeactivationCause",
                    },
                    type_desc = "DeactivationCause_t2"
                },
            },
        },
        [771] = {
            name = "IBIOgrsDiscoveryStatusIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "NumUsers_t2"
                },
                [3] = {
                    codec = {
                        length = 28,
                        name = "IBIOgrsDiscListParam",
                    },
                    type_desc = "DiscoveryStatusList_t3"
                },
            },
        },
        [772] = {
            name = "IBIOgrsTxDiscardIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "InterfaceID_t2"
                },
            },
        },
        [773] = {
            name = "IBIOgrsInterfaceStatusIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "NumPDP_Contexts_t2"
                },
                [3] = {
                    codec = {
                        length = 12,
                        name = "IBIPDP_ContextList_t",
                    },
                    type_desc = "PDP_ContextList_t3"
                },
            },
        },
        [774] = {
            name = "IBIOgrsEmergencyTransmissionIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIEmergencyTransmissionResult",
                    },
                    type_desc = "result_t2"
                },
            },
        },
        [775] = {
            name = "IBIOgrsEmergencyReceptionIndCb",
            mtlvs = {1, 2, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIOgrsUserId",
                    },
                    type_desc = "UserID_t2"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "Length_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "Message_t4"
                },
            },
        },
    },
    [31] = {
        ["name"] = "_ARIMSGDEF_GROUP31_embms",
        [257] = {
            name = "IBIEmbmsSetServiceReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIEmbmsServiceSupport",
                    },
                    type_desc = "embms_service_support_t3"
                },
            },
        },
        [258] = {
            name = "IBIEmbmsGetServiceReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [259] = {
            name = "IBIEmbmsGetServicesListReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIEmbmsServiceType",
                    },
                    type_desc = "service_type_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "earfcn_t4"
                },
            },
        },
        [260] = {
            name = "IBIEmbmsSessionConfigReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "embms_session_activate_t3"
                },
                [4] = {
                    codec = {
                        length = 6,
                        name = "IBIEmbmsTMGIInfoParam",
                    },
                    type_desc = "tmgi_info_t4"
                },
            },
        },
        [261] = {
            name = "IBIEmbmsSetInterestedTMGIListReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "tmgi_info_list_length_t3"
                },
                [4] = {
                    codec = {
                        length = 6,
                        name = "IBIEmbmsTMGIInfoParam",
                    },
                    type_desc = "tmgi_info_list_t4"
                },
            },
        },
        [262] = {
            name = "IBIEmbmsGetInterestedTMGIListReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [263] = {
            name = "IBIEmbmsGetSAIListReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIEmbmsGetSAIType",
                    },
                    type_desc = "sai_type_t3"
                },
            },
        },
        [264] = {
            name = "IBIEmbmsSetInterestedSAIFreqReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "earfcn_list_length_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "earfcn_list_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "embms_priority_flag_t5"
                },
                [6] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "interested_sai_list_length_t6"
                },
                [7] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "interested_sai_list_t7"
                },
            },
        },
        [513] = {
            name = "IBIEmbmsSetServiceRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [514] = {
            name = "IBIEmbmsGetServiceRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIEmbmsServiceSupport",
                    },
                    type_desc = "embms_service_support_t4"
                },
            },
        },
        [515] = {
            name = "IBIEmbmsGetServicesListRspCb",
            mtlvs = {1, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIEmbmsServiceType",
                    },
                    type_desc = "service_type_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "total_num_of_embms_services_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "earfcn_t6"
                },
            },
        },
        [516] = {
            name = "IBIEmbmsSessionConfigRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [517] = {
            name = "IBIEmbmsSetInterestedTMGIListRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBICommonReturnCodes",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [518] = {
            name = "IBIEmbmsGetInterestedTMGIListRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "tmgi_info_list_length_t3"
                },
                [4] = {
                    codec = {
                        length = 6,
                        name = "IBIEmbmsTMGIInfoParam",
                    },
                    type_desc = "tmgi_info_list_t4"
                },
            },
        },
        [519] = {
            name = "IBIEmbmsGetSAIListRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIEmbmsGetSAIType",
                    },
                    type_desc = "sai_type_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "inter_freq_info_length_t4"
                },
                [5] = {
                    codec = {
                        length = 136,
                        name = "IBIEmbmsInterFreqInfo",
                    },
                    type_desc = "inter_freq_info_t5"
                },
                [6] = {
                    codec = {
                        length = 130,
                        name = "IBIEmbmsIntraFreqInfo",
                    },
                    type_desc = "intra_freq_info_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "embms_priority_flag_t7"
                },
                [8] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "earfcn_list_length_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "earfcn_list_t9"
                },
                [10] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "interested_sai_list_length_t10"
                },
                [11] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "interested_sai_list_t11"
                },
            },
        },
        [520] = {
            name = "IBIEmbmsSetInterestedSAIFreqRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIEmbmsRejectCause",
                    },
                    type_desc = "reject_cause_t4"
                },
            },
        },
        [769] = {
            name = "IBIEmbmsServiceIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIEmbmsServiceSupport",
                    },
                    type_desc = "embms_service_support_t2"
                },
            },
        },
        [770] = {
            name = "IBIEmbmsMBSFNAreaIndCb",
            mtlvs = {1, 2, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIEmbmsMBSFNAreaAvailability",
                    },
                    type_desc = "mbsfn_area_availability_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "mbsfn_area_id_list_length_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "mbsfn_area_id_list_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "earfcn_t5"
                },
            },
        },
        [771] = {
            name = "IBIEmbmsServicesListIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "total_num_of_embms_services_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIEmbmsServiceType",
                    },
                    type_desc = "service_type_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "services_list_length_t4"
                },
                [5] = {
                    codec = {
                        length = 8,
                        name = "IBIEmbmsServiceInfo",
                    },
                    type_desc = "services_list_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "earfcn_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_final_t7"
                },
            },
        },
        [772] = {
            name = "IBIEmbmsSAIListIndCb",
            mtlvs = {1, 2, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "inter_freq_info_length_t2"
                },
                [3] = {
                    codec = {
                        length = 136,
                        name = "IBIEmbmsInterFreqInfo",
                    },
                    type_desc = "inter_freq_info_t3"
                },
                [4] = {
                    codec = {
                        length = 130,
                        name = "IBIEmbmsIntraFreqInfo",
                    },
                    type_desc = "intra_freq_info_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "embms_priority_flag_t5"
                },
            },
        },
        [773] = {
            name = "IBIEmbmsServiceLossIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "earfcn_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIEmbmsServiceLossCause",
                    },
                    type_desc = "embms_loss_cause_t3"
                },
            },
        },
        [774] = {
            name = "IBIEmbmsGetServicesListIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "total_num_of_embms_services_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIEmbmsServiceType",
                    },
                    type_desc = "service_type_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "services_list_length_t4"
                },
                [5] = {
                    codec = {
                        length = 8,
                        name = "IBIEmbmsServiceInfo",
                    },
                    type_desc = "services_list_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "earfcn_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_final_t7"
                },
            },
        },
    },
    [33] = {
        ["name"] = "_ARIMSGDEF_GROUP33_pri",
        [258] = {
            name = "IBIPriWriteReq_V2",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "pri_size_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "length_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "signature_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cb_name_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "bypass_t7"
                },
            },
        },
        [259] = {
            name = "IBIPriRefreshReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [514] = {
            name = "IBIPriWriteRspCb_V2",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIPriGriWriteResp",
                    },
                    type_desc = "result_t3"
                },
            },
        },
        [515] = {
            name = "IBIPriRefreshRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "success_t3"
                },
            },
        },
        [769] = {
            name = "IBIPriWriteStatusIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIPriGriWriteResp",
                    },
                    type_desc = "pri_write_rsp_t2"
                },
            },
        },
        [770] = {
            name = "IBIPriRefreshStatusIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIPriRefreshStatus",
                    },
                    type_desc = "refresh_status_t2"
                },
            },
        },
    },
    [34] = {
        ["name"] = "_ARIMSGDEF_GROUP34_ice_ipc",
        [257] = {
            name = "CsiIpcGetLogBufferListReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [258] = {
            name = "CsiIpcGetLogBufferReq",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "buf_index_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "buf_offset_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "length_t3"
                },
            },
        },
        [513] = {
            name = "CsiIpcGetLogBufferListRsp",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 24,
                        name = "CsiIceIpcLogBufferList",
                    },
                    type_desc = "list_t2"
                },
            },
        },
        [514] = {
            name = "CsiIpcGetLogBufferRsp",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
    },
    [50] = {
        ["name"] = "_ARIMSGDEF_GROUP50_ibi_vinyl",
        [257] = {
            name = "IBIVinylGetEidReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [258] = {
            name = "IBIVinylGetDataReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "is_num_of_profile_needed_t3"
                },
            },
        },
        [260] = {
            name = "IBIVinylTapeReq",
            mtlvs = {1, 3, 4, 5, 6, 7, 8},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIVinylTapeCmd",
                    },
                    type_desc = "cmd_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "final_seg_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "total_seg_t5"
                },
                [6] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "cur_seg_t6"
                },
                [7] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "length_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "payload_t8"
                },
            },
        },
        [261] = {
            name = "IBIVinylInitPsoReq",
            mtlvs = {1, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "p1_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "p2_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sim_req_len_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sim_req_data_t6"
                },
            },
        },
        [262] = {
            name = "IBIVinylAuthPsoReq",
            mtlvs = {1, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "p1_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "p2_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sim_req_len_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sim_req_data_t6"
                },
            },
        },
        [263] = {
            name = "IBIVinylFinalizePsoReq",
            mtlvs = {1, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "p1_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "p2_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sim_req_len_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sim_req_data_t6"
                },
            },
        },
        [264] = {
            name = "IBIVinylValidatePsoReq",
            mtlvs = {1, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "total_seg_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "cur_seg_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sim_req_len_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sim_req_data_t6"
                },
            },
        },
        [267] = {
            name = "IBIVinylTapeCapsReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [268] = {
            name = "IBIVinylSwitchModeReq",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "is_reset_sim_t3"
                },
            },
        },
        [269] = {
            name = "IBIVinylInstallVadReq",
            mtlvs = {1, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "total_seg_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "cur_seg_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sim_req_len_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sim_req_data_t6"
                },
            },
        },
        [270] = {
            name = "IBIVinylInstallFwReq",
            mtlvs = {1, 3, 4, 5, 6, 7},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "total_seg_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "cur_seg_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "num_of_apdu_t5"
                },
                [6] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sim_req_len_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sim_req_data_t7"
                },
            },
        },
        [271] = {
            name = "IBIVinylStatusReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
            },
        },
        [272] = {
            name = "IBIVinylLPASigningReq",
            mtlvs = {1, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "total_seg_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "cur_seg_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sim_req_len_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sim_req_data_t6"
                },
            },
        },
        [513] = {
            name = "IBIVinylGetEidRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIVinylResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "eid_t4"
                },
            },
        },
        [514] = {
            name = "IBIVinylGetDataRspCb",
            mtlvs = {1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIVinylResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "is_pso_supported_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sw1_sw2_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "eid_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "op_mode_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "current_fw_version_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "main_nonce_t9"
                },
                [10] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "gold_nonce_t10"
                },
                [11] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "main_mac_t11"
                },
                [12] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "main_fw_version_t12"
                },
                [13] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "main_pcf_challenge_t13"
                },
                [14] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "main_fw_size_t14"
                },
                [15] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "gold_mac_t15"
                },
                [16] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "gold_fw_version_t16"
                },
                [17] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "gold_pcf_challenge_t17"
                },
                [18] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "gold_fw_size_t18"
                },
                [19] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "profile_version_t19"
                },
                [20] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "current_mac_t20"
                },
                [21] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "loader_version_t21"
                },
                [22] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "key_id_t22"
                },
                [23] = {
                    codec = {
                        length = 2,
                        name = "IBIInt16",
                    },
                    type_desc = "num_of_user_profile_t23"
                },
                [24] = {
                    codec = {
                        length = 2,
                        name = "IBIInt16",
                    },
                    type_desc = "num_of_btstrap_profile_t24"
                },
                [25] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "chip_id_t25"
                },
            },
        },
        [516] = {
            name = "IBIVinylTapeRspCb",
            mtlvs = {1, 3, 4, 5, 6, 7, 8, 9},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIVinylTapeCmd",
                    },
                    type_desc = "cmd_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "IBIVinylResult",
                    },
                    type_desc = "result_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sw1_sw2_t5"
                },
                [6] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "total_seg_t6"
                },
                [7] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "cur_seg_t7"
                },
                [8] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "length_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "payload_t9"
                },
            },
        },
        [517] = {
            name = "IBIVinylInitPsoRspCb",
            mtlvs = {1, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIVinylResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sw1_sw2_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sim_rsp_len_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sim_rsp_data_t6"
                },
            },
        },
        [518] = {
            name = "IBIVinylAuthPsoRspCb",
            mtlvs = {1, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIVinylResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sw1_sw2_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sim_rsp_len_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sim_rsp_data_t6"
                },
            },
        },
        [519] = {
            name = "IBIVinylFinalizePsoRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIVinylResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sw1_sw2_t4"
                },
            },
        },
        [520] = {
            name = "IBIVinylValidatePsoRspCb",
            mtlvs = {1, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIVinylResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sw1_sw2_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sim_rsp_len_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sim_rsp_data_t6"
                },
            },
        },
        [523] = {
            name = "IBIVinylTapeCapsRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIVinylResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "gsm_rel_t4"
                },
                [5] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "utran_rel_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cdma_1x_rel_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cdma_hrpd_rel_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "cdma_ehrpd_rel_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "eutran_rel_t9"
                },
            },
        },
        [524] = {
            name = "IBIVinylSwitchModeRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIVinylResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sw1_sw2_t4"
                },
            },
        },
        [525] = {
            name = "IBIVinylInstallVadRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIVinylResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sw1_sw2_t4"
                },
            },
        },
        [526] = {
            name = "IBIVinylInstallFwRspCb",
            mtlvs = {1, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIVinylResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sw1_sw2_t4"
                },
            },
        },
        [527] = {
            name = "IBIVinylStatusRspCb",
            mtlvs = {1, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIVinylSupport",
                    },
                    type_desc = "support_t3"
                },
            },
        },
        [528] = {
            name = "IBIVinylLPASigningRspCb",
            mtlvs = {1, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIVinylResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sw1_sw2_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sim_rsp_len_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "sim_rsp_data_t6"
                },
            },
        },
        [769] = {
            name = "IBIVinylStatusIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIVinylSupport",
                    },
                    type_desc = "support_t2"
                },
            },
        },
        [770] = {
            name = "IBIVinylTapeIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nInstance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIVinylTapeCmd",
                    },
                    type_desc = "cmd_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIVinylResult",
                    },
                    type_desc = "result_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "sw1_sw2_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "total_seg_t5"
                },
                [6] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "cur_seg_t6"
                },
                [7] = {
                    codec = {
                        length = 2,
                        name = "IBIUInt16",
                    },
                    type_desc = "length_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "IBIUInt8",
                    },
                    type_desc = "payload_t8"
                },
            },
        },
    },
    [51] = {
        ["name"] = "_ARIMSGDEF_GROUP51_ice_awds",
        [401] = {
            name = "CsiAwdsGlobalSwitchReq",
            mtlvs = {1, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "status_t1"
                },
                [5] = {
                    codec = {
                        length = 8,
                        name = "UtaUInt64",
                    },
                    type_desc = "current_time_ms_t5"
                },
            },
        },
        [402] = {
            name = "CsiAwdsPiiLocConfigReq",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "ARIAppId",
                    },
                    type_desc = "app_id_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "pii_allowed_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "location_allowed_t3"
                },
            },
        },
        [405] = {
            name = "CsiAwdsAddConfigReq",
            mtlvs = {1, 2, 3, 4, 5, 6, 8},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "ARIAppId",
                    },
                    type_desc = "app_id_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "config_type_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "total_length_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "packet_length_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "packet_num_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "last_packet_t6"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "config_payload_t8"
                },
            },
        },
        [406] = {
            name = "CsiAwdsDeleteConfigReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "ARIAppId",
                    },
                    type_desc = "app_id_t1"
                },
            },
        },
        [409] = {
            name = "CsiAwdsQueryReq",
            mtlvs = {1, 2, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "ARIAppId",
                    },
                    type_desc = "app_id_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "trigger_reference_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "trigger_type_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "trigger_id_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "profile_id_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "metric_id_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "component_id_t7"
                },
            },
        },
        [410] = {
            name = "CsiAwdsMetricSubSwitchReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "ARIAppId",
                    },
                    type_desc = "app_id_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "submit_status_t2"
                },
            },
        },
        [657] = {
            name = "CsiAwdsGlobalSwitchRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "status_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_code_t2"
                },
            },
        },
        [658] = {
            name = "CsiAwdsPiiLocConfigRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "ARIAppId",
                    },
                    type_desc = "app_id_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_code_t2"
                },
            },
        },
        [661] = {
            name = "CsiAwdsAddConfigRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "ARIAppId",
                    },
                    type_desc = "app_id_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_code_t2"
                },
            },
        },
        [662] = {
            name = "CsiAwdsDeleteConfigRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "ARIAppId",
                    },
                    type_desc = "app_id_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_code_t2"
                },
            },
        },
        [665] = {
            name = "CsiAwdsQueryRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "ARIAppId",
                    },
                    type_desc = "app_id_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_code_t2"
                },
            },
        },
        [666] = {
            name = "CsiAwdsMetricSubSwitchRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "ARIAppId",
                    },
                    type_desc = "app_id_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_code_t2"
                },
            },
        },
        [923] = {
            name = "CsiAwdsMetricSubTriggerInd",
            mtlvs = {1, 2, 3, 4, 5},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "ARIAppId",
                    },
                    type_desc = "app_id_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "trigger_reference_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "trigger_type_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "trigger_id_t4"
                },
                [5] = {
                    codec = {
                        length = 8,
                        name = "UtaUInt64",
                    },
                    type_desc = "trigger_time_ms_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "component_id_t6"
                },
            },
        },
        [924] = {
            name = "CsiAwdsMetricSubInd",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "ARIAppId",
                    },
                    type_desc = "app_id_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "trigger_reference_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "profile_id_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "metric_id_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "packet_length_t5"
                },
                [6] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "packet_num_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "last_packet_t7"
                },
                [8] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "last_segment_t8"
                },
                [9] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "pii_submitted_t9"
                },
                [10] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "location_submitted_t10"
                },
                [11] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "payload_t11"
                },
                [12] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "trigger_id_t12"
                },
            },
        },
    },
    [60] = {
        ["name"] = "_ARIMSGDEF_GROUP60_ice_audio",
        [257] = {
            name = "CsiIceAudSetDeviceReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "downlink_trans_type_t1"
                },
                [2] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "uplink_trans_type_t2"
                },
            },
        },
        [258] = {
            name = "CsiIceAudSetI2SReq",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "i2s_mode_t1"
                },
                [2] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "i2s_samplerate_t2"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "i2s_chan_t3"
                },
            },
        },
        [259] = {
            name = "CsiIceAudEnableAudioReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "src_dst_mask_t1"
                },
            },
        },
        [260] = {
            name = "CsiIceAudDisableAudioReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "src_dst_mask_t1"
                },
            },
        },
        [261] = {
            name = "CsiIceAudLoopbackReq",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "control_t1"
                },
                [2] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "hw_id_t2"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "loopback_id_t3"
                },
            },
        },
        [262] = {
            name = "CsiIceAudEnableLoopbackHWReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "samplerate_t1"
                },
            },
        },
        [263] = {
            name = "CsiIceAudDisableLoopbackHWReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [264] = {
            name = "CsiIceAudVocoderInfoReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [265] = {
            name = "CsiIceAudDeviceInfoReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [266] = {
            name = "CsiIceAudToneStartReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 6,
                        name = "CsiIceAudToneConfig",
                    },
                    type_desc = "tone_config_t1"
                },
            },
        },
        [267] = {
            name = "CsiIceAudToneStopReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [268] = {
            name = "CsiIceAudCallEventReq",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "call_event_t1"
                },
                [2] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "call_type_t2"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "call_id_t3"
                },
            },
        },
        [269] = {
            name = "CsiIceAudSetAudioLoggingReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "enable_flag_t1"
                },
            },
        },
        [513] = {
            name = "CsiIceAudSetDeviceRespCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [514] = {
            name = "CsiIceAudSetI2SRespCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [515] = {
            name = "CsiIceAudEnableAudioRespCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [516] = {
            name = "CsiIceAudDisableAudioRespCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [517] = {
            name = "CsiIceAudLoopbackRespCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [518] = {
            name = "CsiIceAudEnableLoopbackHWRespCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [519] = {
            name = "CsiIceAudDisableLoopbackHWRespCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [520] = {
            name = "CsiIceAudVocoderInfoRespCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "vocoder_type_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "vocoder_samplerate_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "device_samplerate_t3"
                },
            },
        },
        [521] = {
            name = "CsiIceAudDeviceInfoRespCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "device_samplerate_t1"
                },
            },
        },
        [522] = {
            name = "CsiIceAudToneStartRespCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [523] = {
            name = "CsiIceAudToneStopRespCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [524] = {
            name = "CsiIceAudCallEventRespCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [525] = {
            name = "CsiIceAudSetAudioLoggingRespCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [776] = {
            name = "CsiIceAudVocoderInfoIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "vocoder_type_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "vocoder_samplerate_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "device_samplerate_t3"
                },
            },
        },
        [777] = {
            name = "CsiIceAudDeviceInfoIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "device_samplerate_t1"
                },
            },
        },
        [779] = {
            name = "CsiIceAudToneEndIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "tone_category_t1"
                },
                [2] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "tone_id_t2"
                },
            },
        },
        [782] = {
            name = "CsiIceAudInterfaceInfoIndCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "interface_type_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "interface_state_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "interface_samplerate_t3"
                },
            },
        },
        [783] = {
            name = "CsiIceAudStatsInfoIndCb",
            mtlvs = {1, 2, 3, 4, 5, 6, 7, 8},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "rat_type_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "direction_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "vocoder_type_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "vocoder_samplerate_t4"
                },
                [5] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "vocoder_mode_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "total_num_frames_t6"
                },
                [7] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "active_num_frames_t7"
                },
                [8] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "silence_num_frames_t8"
                },
                [9] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "bad_num_frames_t9"
                },
                [10] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "lost_num_frames_t10"
                },
            },
        },
        [784] = {
            name = "CsiIceAudDistortionInfoIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "distortion_type_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "distortion_time_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "distortion_duration_t3"
                },
            },
        },
    },
    [61] = {
        ["name"] = "_ARIMSGDEF_GROUP61_rf_power_sar_nbd",
        [257] = {
            name = "CsiIceHearingAidReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaBool",
                    },
                    type_desc = "on_off_t1"
                },
            },
        },
        [258] = {
            name = "CsiIceAntennaPrefReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "antenna_pref_t1"
                },
            },
        },
        [259] = {
            name = "CsiIceAccessoryStateReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "accessory_state_t1"
                },
            },
        },
        [260] = {
            name = "CsiIceCltmReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "max_power_percentile_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "duty_cycle_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "ppm_mw_t3"
                },
                [4] = {
                    codec = {
                        length = 8,
                        name = "IBI_CPMS_POWER_BUDGET",
                    },
                    type_desc = "cpms_power_budget_t4"
                },
            },
        },
        [261] = {
            name = "CsiIceSarReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "sar_selection_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "ant_tuner_state_t2"
                },
            },
        },
        [262] = {
            name = "CsiIceSarWaitTimeReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "wait_time_ms_t1"
                },
            },
        },
        [263] = {
            name = "CsiIceTemperatureReq",
            mtlvs = {1, 2, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "id_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "type_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "format_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "period_ms_t4"
                },
            },
        },
        [264] = {
            name = "CsiIceTemperatureCloseReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "id_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "type_t2"
                },
            },
        },
        [266] = {
            name = "CsiIceSarEnableReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaBool",
                    },
                    type_desc = "sar_enable_t1"
                },
            },
        },
        [268] = {
            name = "CsiIceBBTxStateIndEnableReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaBool",
                    },
                    type_desc = "tx_state_ind_enable_t1"
                },
            },
        },
        [269] = {
            name = "CsiIceArtdSettingReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "rat_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaBool",
                    },
                    type_desc = "on_off_t2"
                },
            },
        },
        [270] = {
            name = "CsiIceGetAntennaStateReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [271] = {
            name = "CsiIceArfcnLockReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "arfcn_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "rat_t2"
                },
            },
        },
        [272] = {
            name = "CsiIceRxDiversityReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "rx_diversity_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "rat_t2"
                },
            },
        },
        [273] = {
            name = "CsiIceBBSleepEnableReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "sleep_en_t1"
                },
            },
        },
        [274] = {
            name = "CsiIceWakeupReasonReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [275] = {
            name = "CsiIceCaEnableReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "ca_enable_t1"
                },
            },
        },
        [276] = {
            name = "CsiIceGetCaEnableReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [277] = {
            name = "CsiIceGetRxDiversityReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "rat_t1"
                },
            },
        },
        [278] = {
            name = "CsiIceGetArfcnLockReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [279] = {
            name = "CsiIceSetTxAntennaReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "eCSI_ICE_TS_ANTENNA_STATE",
                    },
                    type_desc = "tx_antenna_t1"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "non_nvm_based_t3"
                },
            },
        },
        [280] = {
            name = "CsiIceGetTxAntennaReq",
            mtlvs = {},
            tlvs = {
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "non_nvm_based_t2"
                },
            },
        },
        [281] = {
            name = "CsiIceGetArtdSettingReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "rat_t1"
                },
            },
        },
        [282] = {
            name = "CsiIceAccessoryStateArtdReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "accessory_state_t1"
                },
            },
        },
        [283] = {
            name = "CsiIceSpeakerStateReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "eCSI_ICE_SPEAKER_STATE",
                    },
                    type_desc = "speaker_state_t1"
                },
            },
        },
        [284] = {
            name = "CsiPowSleepSetSleepBlockerReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "CsiPowSleepBlockingState",
                    },
                    type_desc = "state_t1"
                },
            },
        },
        [285] = {
            name = "CsiIceGripStateReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "eCSI_ICE_GRIP_STATE",
                    },
                    type_desc = "grip_state_t1"
                },
            },
        },
        [286] = {
            name = "CsiIceGpsStateReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaBool",
                    },
                    type_desc = "gps_state_t1"
                },
            },
        },
        [287] = {
            name = "CsiIcePowerSourceStateReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "eCSI_ICE_PS_STATE",
                    },
                    type_desc = "ps_state_t1"
                },
            },
        },
        [288] = {
            name = "CsiIceWristStateReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "eCSI_ICE_STATE_ONOFF",
                    },
                    type_desc = "wrist_state_t1"
                },
            },
        },
        [290] = {
            name = "IBIMccSettingReq",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "mcc_sku_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "mcc_pos_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "override_t3"
                },
            },
        },
        [291] = {
            name = "IBICPMSPowerQueryReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [298] = {
            name = "CsiIceRFFilerWriteReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "instance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "file_size_t2"
                },
            },
        },
        [513] = {
            name = "CsiIceHearingAidRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [514] = {
            name = "CsiIceAntennaPrefRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [515] = {
            name = "CsiIceAccessoryStateRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [516] = {
            name = "CsiIceCltmRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [517] = {
            name = "CsiIceSarRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [518] = {
            name = "CsiIceSarWaitTimeRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [519] = {
            name = "CsiIceTemperatureRspCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "id_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "data_t3"
                },
            },
        },
        [520] = {
            name = "CsiIceTemperatureCloseRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [522] = {
            name = "CsiIceSarEnableRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [524] = {
            name = "CsiIceBBTxStateIndEnableRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [525] = {
            name = "CsiIceArtdSettingRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [526] = {
            name = "CsiIceGetAntennaStateRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "antenna_state_t2"
                },
            },
        },
        [527] = {
            name = "CsiIceArfcnLockRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [528] = {
            name = "CsiIceRxDiversityRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [529] = {
            name = "CsiIceBBSleepEnableRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [530] = {
            name = "CsiIceWakeupReasonRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 140,
                        name = "CSI_ICE_IPC_MEM_HOST_WAKE_REASON_INFO",
                    },
                    type_desc = "wakeup_info_t2"
                },
            },
        },
        [531] = {
            name = "CsiIceCaEnableRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [532] = {
            name = "CsiIceGetCaEnableRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "eCSI_ICE_BSP_ENABLE",
                    },
                    type_desc = "ca_enable_t2"
                },
            },
        },
        [533] = {
            name = "CsiIceGetRxDiversityRspCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "rat_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "eCSI_ICE_RX_DIVERSITY",
                    },
                    type_desc = "rx_diversity_t3"
                },
            },
        },
        [534] = {
            name = "CsiIceGetArfcnLockRspCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "eCSI_ICE_RAT",
                    },
                    type_desc = "rat_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "arfcn_t3"
                },
            },
        },
        [535] = {
            name = "CsiIceSetTxAntennaRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [536] = {
            name = "CsiIceGetTxAntennaRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "eCSI_ICE_TS_ANTENNA_STATE",
                    },
                    type_desc = "tx_antenna_t2"
                },
            },
        },
        [537] = {
            name = "CsiIceGetArtdSettingRspCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "rat_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "eCSI_ICE_ARTD_ONOFF",
                    },
                    type_desc = "on_off_t3"
                },
            },
        },
        [538] = {
            name = "CsiIceAccessoryStateArtdRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [539] = {
            name = "CsiIceSpeakerStateRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [540] = {
            name = "CsiPowSleepSetSleepBlockerRspCb",
            mtlvs = {},
            tlvs = {
            },
        },
        [541] = {
            name = "CsiIceGripStateRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [542] = {
            name = "CsiIceGpsStateRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [543] = {
            name = "CsiIcePowerSourceStateRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [544] = {
            name = "CsiIceWristStateRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [546] = {
            name = "IBIMccSettingRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [547] = {
            name = "IBICPMSPowerQueryRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 8,
                        name = "IBI_CPMS_POWER_BUDGET",
                    },
                    type_desc = "cpms_power_budget_t1"
                },
            },
        },
        [554] = {
            name = "CsiIceRFFilerWriteRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "instance_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t2"
                },
            },
        },
        [775] = {
            name = "CsiIceTemperatureIndCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "id_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "data_t3"
                },
            },
        },
        [779] = {
            name = "CsiIceBBTxStateInd",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "tx_state_t1"
                },
            },
        },
        [780] = {
            name = "IBICpmsPowermWInd",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "received_mw_t1"
                },
            },
        },
    },
    [62] = {
        ["name"] = "_ARIMSGDEF_GROUP62_bspnbd",
        [257] = {
            name = "CsiBspSetNvItemsToStateReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "nv_item_t1"
                },
            },
        },
        [258] = {
            name = "CsiBspGetCalibrationStatusReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [260] = {
            name = "CsiIceFilerReadReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [261] = {
            name = "CsiIceFilerWriteReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "size_t1"
                },
                [2] = {
                    codec = {
                        length = 3072,
                        name = "CsiIceFilerDataParam",
                    },
                    type_desc = "data_t2"
                },
            },
        },
        [262] = {
            name = "CsiFpRegister",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaBool",
                    },
                    type_desc = "enable_t1"
                },
            },
        },
        [263] = {
            name = "CsiFpSnapshot",
            mtlvs = {1, 2, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaNvmDataType",
                    },
                    type_desc = "nvm_type_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaFlashPluginTrigger",
                    },
                    type_desc = "trigger_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "seq_id_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "UtaBool",
                    },
                    type_desc = "force_t4"
                },
            },
        },
        [264] = {
            name = "CsiFpUpdateAck",
            mtlvs = {},
            tlvs = {
            },
        },
        [265] = {
            name = "CsiFpUpdateHeader",
            mtlvs = {},
            tlvs = {
            },
        },
        [266] = {
            name = "CsiFpGetStatus",
            mtlvs = {},
            tlvs = {
            },
        },
        [267] = {
            name = "CsiIceAtReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 3076,
                        name = "CsiIceAtStringPayload",
                    },
                    type_desc = "p_at_payload_t1"
                },
            },
        },
        [268] = {
            name = "CsiMonMemoryStatusReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "memory_id_t1"
                },
            },
        },
        [269] = {
            name = "CsiBspShutdownReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "shutdown_type_t1"
                },
            },
        },
        [270] = {
            name = "CsiBspSwTrapReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "trap_id_t1"
                },
            },
        },
        [272] = {
            name = "CsiCddGetDebugLogReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [273] = {
            name = "CsiCddGetParamDumpReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [274] = {
            name = "CsiSahGetCrashReportReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [275] = {
            name = "CsiSahClearExceptionStoreReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [276] = {
            name = "CsiSahGetDebugLogReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [277] = {
            name = "CsiIceAtExtReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 3084,
                        name = "CsiIceAtExtStringPayload",
                    },
                    type_desc = "p_at_ext_payload_t1"
                },
            },
        },
        [278] = {
            name = "CsiIceBspSetApWakeIntervalReq",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaBool",
                    },
                    type_desc = "enable_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "ms_interval_t2"
                },
            },
        },
        [281] = {
            name = "CsiBspNvmGroupEnumListReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [282] = {
            name = "CsiBspNvmReadGroupReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "group_t1"
                },
            },
        },
        [283] = {
            name = "CsiBspNvmReadGroupBlockReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "group_t1"
                },
            },
        },
        [284] = {
            name = "CsiBspSwTrapReq_v2",
            mtlvs = {1, 2, 3, 4},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "trap_id_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "delay_ms_t2"
                },
                [3] = {
                    codec = {
                        length = 1,
                        name = "UtaChar",
                    },
                    type_desc = "buf_t3"
                },
                [4] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "buf_size_t4"
                },
            },
        },
        [513] = {
            name = "CsiBspSetNvItemsToStateRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [514] = {
            name = "CsiBspGetCalibrationStatusRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "status_t2"
                },
            },
        },
        [516] = {
            name = "CsiIceFilerReadRspCb",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "uta_result_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "size_t2"
                },
                [3] = {
                    codec = {
                        length = 3072,
                        name = "CsiIceFilerDataParam",
                    },
                    type_desc = "data_t3"
                },
            },
        },
        [517] = {
            name = "CsiIceFilerWriteRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "uta_result_t1"
                },
            },
        },
        [518] = {
            name = "CsiFpRegisterRsp",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "CSI_FP_RESULT",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [519] = {
            name = "CsiFpSnapshotRsp",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "CSI_FP_RESULT",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaBool",
                    },
                    type_desc = "update_pending_t2"
                },
            },
        },
        [520] = {
            name = "CsiFpUpdateAckRsp",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "CSI_FP_RESULT",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaBool",
                    },
                    type_desc = "update_pending_t2"
                },
            },
        },
        [521] = {
            name = "CsiFpUpdateHeaderData",
            mtlvs = {1, 2, 3},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "CSI_FP_RESULT",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 80,
                        name = "CsiFlashPluginHeader",
                    },
                    type_desc = "p_header_array_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "length_t3"
                },
            },
        },
        [522] = {
            name = "CsiFpGetStatusRsp",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "CSI_FP_RESULT",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 72,
                        name = "CsiFlashPluginStatusAll",
                    },
                    type_desc = "status_all_t2"
                },
            },
        },
        [523] = {
            name = "CsiIceAtRsp",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "CSI_ICE_AT_RESULT",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 3076,
                        name = "CsiIceAtStringPayload",
                    },
                    type_desc = "p_at_payload_t2"
                },
            },
        },
        [524] = {
            name = "CsiMonMemoryStatusRspCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "memory_status_t1"
                },
                [2] = {
                    codec = {
                        length = 24,
                        name = "CSI_ICE_MON_MEMORY_INFO_T",
                    },
                    type_desc = "memory_info_t2"
                },
            },
        },
        [525] = {
            name = "CsiBspShutdownRspCb",
            mtlvs = {},
            tlvs = {
            },
        },
        [526] = {
            name = "CsiBspSwTrapRspCb",
            mtlvs = {},
            tlvs = {
            },
        },
        [528] = {
            name = "CsiCddGetDebugLogRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 8,
                        name = "CsiCddDumpLogInfo",
                    },
                    type_desc = "debug_log_data_t1"
                },
            },
        },
        [529] = {
            name = "CsiCddGetParamDumpRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 8,
                        name = "CsiCddParamDumpInfo",
                    },
                    type_desc = "param_dump_data_t1"
                },
            },
        },
        [530] = {
            name = "CsiSahGetCrashReportRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 8,
                        name = "CsiSahCrashReportInfo",
                    },
                    type_desc = "report_data_t1"
                },
            },
        },
        [531] = {
            name = "CsiSahClearCrashResportRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [532] = {
            name = "CsiSahGetDebugLogRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4104,
                        name = "CsiSahDebugLogInfo",
                    },
                    type_desc = "debug_log_data_t1"
                },
            },
        },
        [533] = {
            name = "CsiIceAtExtRsp",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "CSI_ICE_AT_RESULT",
                    },
                    type_desc = "result_t1"
                },
                [2] = {
                    codec = {
                        length = 3084,
                        name = "CsiIceAtExtStringPayload",
                    },
                    type_desc = "p_at_ext_payload_t2"
                },
            },
        },
        [534] = {
            name = "CsiIceBspSetApWakeIntervalRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [537] = {
            name = "CsiBspNvmGroupEnumListRespCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "return_value_t1"
                },
                [2] = {
                    codec = {
                        length = 3504,
                        name = "CsiBspNvmGroupDataType",
                    },
                    type_desc = "list_t2"
                },
            },
        },
        [538] = {
            name = "CsiBspNvmReadGroupRespCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "return_value_t1"
                },
            },
        },
        [539] = {
            name = "CsiBspNvmReadGroupBlockRespCb",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaInt32",
                    },
                    type_desc = "return_value_t1"
                },
                [2] = {
                    codec = {
                        length = 3504,
                        name = "CsiBspNvmGroupDataType",
                    },
                    type_desc = "data_t2"
                },
            },
        },
        [540] = {
            name = "CsiBspSwTrapRspCb_v2",
            mtlvs = {},
            tlvs = {
            },
        },
        [791] = {
            name = "CsiIceBspWakeInd",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "counter_t1"
                },
            },
        },
        [792] = {
            name = "CsiFpPrioSyncReqInd",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "counter_t1"
                },
            },
        },
        [793] = {
            name = "CsiIceBspShutdownInd",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "counter_t1"
                },
            },
        },
    },
    [63] = {
        ["name"] = "_ARIMSGDEF_GROUP63_security",
        [257] = {
            name = "CsiIceStartProvisionReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4000,
                        name = "CsiIceProvisionPubkeyType",
                    },
                    type_desc = "pubkey_t1"
                },
            },
        },
        [258] = {
            name = "CsiIceFinishProvisionReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 3074,
                        name = "CsiIceProvisionManifestType",
                    },
                    type_desc = "manifest_t1"
                },
            },
        },
        [259] = {
            name = "CsiIceGetManifestStatusReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [260] = {
            name = "CsiSecGetChipIdReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [261] = {
            name = "CsiSecGetPkHashReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [262] = {
            name = "CsiIceGetFactoryDebugEnabledReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [263] = {
            name = "CsiIceSecActivationRegisterReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "register__t1"
                },
            },
        },
        [264] = {
            name = "CsiIceSecActivationTicketSetReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 2050,
                        name = "CsiIceSecActivationManifestType",
                    },
                    type_desc = "activation_manifest_t1"
                },
            },
        },
        [265] = {
            name = "CsiIceSecSendRFSelfTestTicketReq",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 1026,
                        name = "CsiIceSecRFSelfTestTicketType",
                    },
                    type_desc = "manifest_t1"
                },
            },
        },
        [266] = {
            name = "CsiSecGetRFSelfTestNonceReq",
            mtlvs = {},
            tlvs = {
            },
        },
        [513] = {
            name = "CsiIceStartProvisionResp",
            mtlvs = {1, 2, 3, 4, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "chipid_t1"
                },
                [2] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "existing_manifest_t2"
                },
                [3] = {
                    codec = {
                        length = 18,
                        name = "CsiIceProvisionSNUMType",
                    },
                    type_desc = "snum_t3"
                },
                [4] = {
                    codec = {
                        length = 18,
                        name = "CsiIceProvisionIMEIType",
                    },
                    type_desc = "imei_t4"
                },
                [5] = {
                    codec = {
                        length = 1026,
                        name = "CsiIceProvisionEncSessionKeyType",
                    },
                    type_desc = "session_key_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "status_t6"
                },
                [7] = {
                    codec = {
                        length = 18,
                        name = "CsiIceProvisionMEIDType",
                    },
                    type_desc = "meid_t7"
                },
                [8] = {
                    codec = {
                        length = 130,
                        name = "CsiIceProvisionIMEIMultipleType",
                    },
                    type_desc = "imei_multiple_t8"
                },
            },
        },
        [514] = {
            name = "CsiIceFinishProvisionResp",
            mtlvs = {1, 2},
            tlvs = {
                [1] = {
                    codec = {
                        length = 18,
                        name = "CsiIceProvisionIMEIType",
                    },
                    type_desc = "imei_t1"
                },
                [2] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "status_t2"
                },
                [3] = {
                    codec = {
                        length = 18,
                        name = "CsiIceProvisionMEIDType",
                    },
                    type_desc = "meid_t3"
                },
                [4] = {
                    codec = {
                        length = 130,
                        name = "CsiIceProvisionIMEIMultipleType",
                    },
                    type_desc = "imei_multiple_t4"
                },
            },
        },
        [515] = {
            name = "CsiIceGetManifestStatusResp",
            mtlvs = {1, 3, 5, 6},
            tlvs = {
                [1] = {
                    codec = {
                        length = 130,
                        name = "CsiIceProvisionSKeyHashType",
                    },
                    type_desc = "skey_hash_t1"
                },
                [2] = {
                    codec = {
                        length = 130,
                        name = "CsiIceProvisionCKeyHashType",
                    },
                    type_desc = "ckey_hash_t2"
                },
                [3] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "provision_status_t3"
                },
                [4] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "activation_status_t4"
                },
                [5] = {
                    codec = {
                        length = 2,
                        name = "UtaUInt16",
                    },
                    type_desc = "calibration_status_t5"
                },
                [6] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "status_t6"
                },
            },
        },
        [516] = {
            name = "CsiSecGetChipIdRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "chipid_t1"
                },
            },
        },
        [517] = {
            name = "CsiSecGetPkHashRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 34,
                        name = "CsiSecPkHashInfo",
                    },
                    type_desc = "PkHash_info_t1"
                },
            },
        },
        [518] = {
            name = "CsiIceGetFactoryDebugEnabledResp",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaBool",
                    },
                    type_desc = "fde_enabled_t1"
                },
            },
        },
        [519] = {
            name = "CsiIceSecActivationRegisterRespCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [520] = {
            name = "CsiIceSecActivationTicketSetRespCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [521] = {
            name = "CsiIceSecSendRFSelfTestTicketRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
        [522] = {
            name = "CsiSecGetRFSelfTestNonceRspCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 36,
                        name = "CsiSecNonce",
                    },
                    type_desc = "nonce_t1"
                },
            },
        },
        [775] = {
            name = "CsiIceSecActivationRegisterIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "activation_state_t1"
                },
                [2] = {
                    codec = {
                        length = 130,
                        name = "CsiIceSecActivationPubkeyHashType",
                    },
                    type_desc = "activation_pubkey_hash_t2"
                },
                [3] = {
                    codec = {
                        length = 130,
                        name = "CsiIceSecFactoryActivationPubkeyHashType",
                    },
                    type_desc = "factory_activation_pubkey_hash_t3"
                },
                [4] = {
                    codec = {
                        length = 18,
                        name = "CsiIceProvisionIMEIType",
                    },
                    type_desc = "imei_t4"
                },
                [5] = {
                    codec = {
                        length = 10,
                        name = "CsiIceSecActivationVersionType",
                    },
                    type_desc = "activation_version_t5"
                },
                [6] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "hacktivation_state_t6"
                },
                [7] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "factory_debug_flag_t7"
                },
                [8] = {
                    codec = {
                        length = 10,
                        name = "CsiIceSecPriVersionType",
                    },
                    type_desc = "pri_version_slot1_t8"
                },
                [9] = {
                    codec = {
                        length = 10,
                        name = "CsiIceSecPriVersionType",
                    },
                    type_desc = "pri_version_slot2_t9"
                },
                [10] = {
                    codec = {
                        length = 26,
                        name = "CsiIceSecIccidType",
                    },
                    type_desc = "iccid_slot1_t10"
                },
                [11] = {
                    codec = {
                        length = 26,
                        name = "CsiIceSecImsiType",
                    },
                    type_desc = "imsi_slot1_t11"
                },
                [12] = {
                    codec = {
                        length = 26,
                        name = "CsiIceSecGidType",
                    },
                    type_desc = "gid1_slot1_t12"
                },
                [13] = {
                    codec = {
                        length = 26,
                        name = "CsiIceSecGidType",
                    },
                    type_desc = "gid2_slot1_t13"
                },
                [14] = {
                    codec = {
                        length = 26,
                        name = "CsiIceSecIccidType",
                    },
                    type_desc = "iccid_slot2_t14"
                },
                [15] = {
                    codec = {
                        length = 26,
                        name = "CsiIceSecImsiType",
                    },
                    type_desc = "imsi_slot2_t15"
                },
                [16] = {
                    codec = {
                        length = 26,
                        name = "CsiIceSecGidType",
                    },
                    type_desc = "gid1_slot2_t16"
                },
                [17] = {
                    codec = {
                        length = 26,
                        name = "CsiIceSecGidType",
                    },
                    type_desc = "gid2_slot2_t17"
                },
                [18] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "activation_mode_t18"
                },
                [19] = {
                    codec = {
                        length = 4,
                        name = "UtaUInt32",
                    },
                    type_desc = "failure_reason_t19"
                },
                [20] = {
                    codec = {
                        length = 12,
                        name = "CsiIceSecMoringaDataType",
                    },
                    type_desc = "moringa_data_t20"
                },
                [21] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "ota_service_provisioned_card_slot1_t21"
                },
                [22] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "ota_service_provisioned_card_slot2_t22"
                },
                [23] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "manifest_result_t23"
                },
                [24] = {
                    codec = {
                        length = 18,
                        name = "CsiIceProvisionIMEIType",
                    },
                    type_desc = "imei2_t24"
                },
                [25] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "dsds_allowed_t25"
                },
                [26] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "slot1_accepted_t26"
                },
                [27] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "slot2_accepted_t27"
                },
                [28] = {
                    codec = {
                        length = 18,
                        name = "CsiIceProvisionMEIDType",
                    },
                    type_desc = "meid_t28"
                },
                [29] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "slot1_is_embedded_t29"
                },
                [30] = {
                    codec = {
                        length = 1,
                        name = "UtaUInt8",
                    },
                    type_desc = "slot2_is_embedded_t30"
                },
            },
        },
        [776] = {
            name = "CsiSecRFSelfTestCompletionIndCb",
            mtlvs = {1},
            tlvs = {
                [1] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "result_t1"
                },
            },
        },
    },
}
