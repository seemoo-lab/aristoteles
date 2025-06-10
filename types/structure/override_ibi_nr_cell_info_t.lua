-- We override:
-- - [9][519].tlvs[54].codec.length
-- - [9][519].tlvs[59].codec.length
-- - [9][775].tlvs[46].codec.length
-- - [9][775].tlvs[51].codec.length
-- We have manually verified that the automatically extracted values are wrong in these cases.
-- Let's find and fix the bug causing our extractor to have the wrong size in these cases.

return {
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
                [8] = {
                    codec = {
                        length = 44,
                        name = "IBINetNRRadioSignalReportingConfiguration",
                    },
                    type_desc = "nr_radio_signal_report_config_t8"
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
        [297] = {
            name = "IBINetRadioConnectionStateReq",
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
        [298] = {
            name = "IBINetBBTurboModeReq",
            mtlvs = {},
            tlvs = {
                [2] = {
                    codec = {
                        length = 4,
                        name = "IBINetTurboModeReason",
                    },
                    type_desc = "reason_t2"
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
                [8] = {
                    codec = {
                        length = 1412,
                        name = "IBINetNRCellInfoList",
                    },
                    type_desc = "nr_list_t8"
                },
                [9] = {
                    codec = {
                        length = 1540,
                        name = "IBINetNRCellInfoListV2",
                    },
                    type_desc = "nr_list_t9"
                },
            },
        },
        [519] = {
            name = "IBINetGetCellInfoRespCb",
            mtlvs = {1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 17, 18, 19, 20, 21, 22, 23, 24},
            tlvs = {
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
                [52] = {
                    codec = {
                        length = 36,
                        name = "IBILteCellInfoR15",
                    },
                    type_desc = "lte_scell_info_r15_t52"
                },
                [53] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nr_scell_info_len_t53"
                },
                [54] = {
                    codec = {
                        length = 104,
                        name = "IBINrCellInfoT",
                    },
                    type_desc = "nr_scell_info_t54"
                },
                [55] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nr_ncell_info_len_t55"
                },
                [56] = {
                    codec = {
                        length = 24,
                        name = "IBINrNeighborCellInfoT",
                    },
                    type_desc = "nr_ncell_info_t56"
                },
                [57] = {
                    codec = {
                        length = 52,
                        name = "IBILteCellInfoR15_V2",
                    },
                    type_desc = "lte_scell_info_r15_v2_t57"
                },
                [58] = {
                    codec = {
                        length = 24,
                        name = "IBILteNeighborCellInfoV2T",
                    },
                    type_desc = "lte_ncell_info_ext_v2_t58"
                },
                [59] = {
                    codec = {
                        length = 120,
                        name = "IBINrCellInfoT_V2",
                    },
                    type_desc = "nr_scell_info_v2_t59"
                },
                [60] = {
                    codec = {
                        length = 32,
                        name = "IBINrNeighborCellInfoT_V2",
                    },
                    type_desc = "nr_ncell_info_v2_t60"
                },
                [61] = {
                    codec = {
                        length = 68,
                        name = "IBINrCellInfoT_V3",
                    },
                    type_desc = "nr_scell_info_v3_t61"
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
                [18] = {
                    codec = {
                        length = 8,
                        name = "IBINetCellId_V1",
                    },
                    type_desc = "cell_id_v1_t18"
                },
                [19] = {
                    codec = {
                        length = 4,
                        name = "IBINetTac_V1",
                    },
                    type_desc = "tac_v1_t19"
                },
                [20] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_sat_system_t20"
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
                [30] = {
                    codec = {
                        length = 24,
                        name = "IBILteNeighborCellInfoV2T",
                    },
                    type_desc = "lte_ncell_info_ext_v2_t30"
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
        [553] = {
            name = "IBINetRadioConnectionStateRespCb",
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
        [554] = {
            name = "IBINetBBTurboModeRspCb",
            mtlvs = {2},
            tlvs = {
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
                [23] = {
                    codec = {
                        length = 8,
                        name = "IBINetCellId_V1",
                    },
                    type_desc = "cell_id_v1_t23"
                },
                [24] = {
                    codec = {
                        length = 4,
                        name = "IBINetTac_V1",
                    },
                    type_desc = "tac_v1_t24"
                },
                [25] = {
                    codec = {
                        length = 4,
                        name = "IBIBool",
                    },
                    type_desc = "is_sat_system_t25"
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
                [9] = {
                    codec = {
                        length = 72,
                        name = "IBINetSignalScellInfo_V1",
                    },
                    type_desc = "scell_info_V1_t9"
                },
                [10] = {
                    codec = {
                        length = 4,
                        name = "IBIRat",
                    },
                    type_desc = "sec_rat_t10"
                },
                [11] = {
                    codec = {
                        length = 52,
                        name = "IBINetRadioSignalSecondaryRatInfo",
                    },
                    type_desc = "sec_rat_info_t11"
                },
            },
        },
        [775] = {
            name = "IBINetGetCellInfoIndCb",
            mtlvs = {1, 2, 4, 6, 9, 12, 15, 18, 21},
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
                [44] = {
                    codec = {
                        length = 36,
                        name = "IBILteCellInfoR15",
                    },
                    type_desc = "lte_scell_info_r15_t44"
                },
                [45] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nr_scell_info_len_t45"
                },
                [46] = {
                    codec = {
                        length = 104,
                        name = "IBINrCellInfoT",
                    },
                    type_desc = "nr_scell_info_t46"
                },
                [47] = {
                    codec = {
                        length = 4,
                        name = "IBIUInt32",
                    },
                    type_desc = "nr_ncell_info_len_t47"
                },
                [48] = {
                    codec = {
                        length = 24,
                        name = "IBINrNeighborCellInfoT",
                    },
                    type_desc = "nr_ncell_info_t48"
                },
                [49] = {
                    codec = {
                        length = 52,
                        name = "IBILteCellInfoR15_V2",
                    },
                    type_desc = "lte_scell_info_r15_v2_t49"
                },
                [50] = {
                    codec = {
                        length = 24,
                        name = "IBILteNeighborCellInfoV2T",
                    },
                    type_desc = "lte_ncell_info_ext_v2_t50"
                },
                [51] = {
                    codec = {
                        length = 120,
                        name = "IBINrCellInfoT_V2",
                    },
                    type_desc = "nr_scell_info_v2_t51"
                },
                [52] = {
                    codec = {
                        length = 32,
                        name = "IBINrNeighborCellInfoT_V2",
                    },
                    type_desc = "nr_ncell_info_v2_t52"
                },
                [53] = {
                    codec = {
                        length = 68,
                        name = "IBINrCellInfoT_V3",
                    },
                    type_desc = "nr_scell_info_v3_t53"
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
                [28] = {
                    codec = {
                        length = 24,
                        name = "IBILteNeighborCellInfoV2T",
                    },
                    type_desc = "lte_ncell_info_ext_v2_t28"
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
        [785] = {
            name = "IBINetNasProcFailedImsRejectIndCb",
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
        [809] = {
            name = "IBINetRadioConnectionStateIndCb",
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
                    type_desc = "is_connected_t2"
                },
                [3] = {
                    codec = {
                        length = 4,
                        name = "IBIRat",
                    },
                    type_desc = "rat_t3"
                },
            },
        },
        [810] = {
            name = "IBINetEmergencyApacsScanFailIndCb",
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
}
