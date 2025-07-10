properties   =   {
   geom   =   {
      nameTpl   =   "mtk_md76_wood_grapple_res"
   }
   prop_truck_view_controller   =   {
      engineFiringDelay   =   1000
   }
   prop_truck_view   =   {
      truckName   =   "mtk_md76_wood_grapple_res"
      truckType   =   "tracked_heavy"
      truckVisibilityInFogOfWar   =   60
   }
   prop_truck_rb   =   {
      suspensionSet   =   {
         front   =   {
            max   =   0
            strength   =   0.9
            damping   =   0.85
         }
         rearDiffers   =   True
         rear   =   {
            min   =   -0.35
            max   =   0.175
            height   =   0.1
            strength   =   0.05
            damping   =   0.85
         }
      }
      engine   =   {
         params   =   {
            torque   =   140000
            brakesDelay   =   0.5
            maxDeltaAngVel   =   0.01
            responsiveness   =   0.7
            __type   =   "TruckEngineParams"
         }
         __type   =   "TruckEngine"
      }
      gearbox   =   {
         params   =   {
            gears   =   [
               {
                  angularVelocity   =   0.6
                  gearRatio   =   6
                  targetSpeedRangeKmh   =   {
                     x   =   0
                     y   =   6
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   1.9
                  gearRatio   =   5.5
                  targetSpeedRangeKmh   =   {
                     x   =   6
                     y   =   10
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   5
                  gearRatio   =   5.2
                  targetSpeedRangeKmh   =   {
                     x   =   10
                     y   =   20
                     __type   =   "Vector2dRnd"
                  }
               }
            ]
            reverseGear   =   {
               angularVelocity   =   0.6
               gearRatio   =   3.6
               __type   =   "TruckSingleGearParams"
            }
            highGear   =   {
               angularVelocity   =   2
               __type   =   "TruckSingleGearParams"
            }
            lowRangeGear   =   {
               angularVelocity   =   0.2
               gearRatio   =   3.6
               __type   =   "TruckSingleGearParams"
            }
            isLowRangeModeReverseEnabled   =   True
            isLowRangeModeClutchingEnabled   =   False
            clutchSwitchTime   =   0
            defaultGearSwitchDelay   =   0.25
            upperGearSwitchDelayBase   =   1
            upperGearSwitchDelayGearNumMultiplier   =   0.45
            downGearSwitchDelay   =   0.2
            neutralGearSwitchingDelay   =   0
            lowRangeMultiplier   =   0.5
            __type   =   "TruckGearboxParams"
         }
         __type   =   "TruckGearbox"
      }
      isBackSteerIgnored   =   True
      backSteerSpeed   =   1.5
      pedalsResponsiveness   =   0.4
      isNeutralGearWheelResistanceEnabled   =   False
      isReverseWheelResistanceEnabled   =   True
      trackControls   =   {
         steeringInputToInnerTrackTorqueMult   =   {
            spline   =   [
               0,
               1,
               0.15,
               0,
               1.004563,
               -1
            ]
            __type   =   "SplineCurve1d"
         }
         linearVelocityToInnerTrackTorqueMult   =   {
            spline   =   [
               0,
               1,
               3,
               1,
               7,
               0.5
            ]
            __type   =   "SplineCurve1d"
         }
         __type   =   "TruckTrackControls"
      }
      decals   =   {
         singleDecalDesc   =   {
            components   =   {
               EcsComponentTransform   =   {
               }
               EcsComponentLwiDynDataDecalCoef   =   {
               }
               EcsComponentSingleMeshDecalAttach   =   {
               }
            }
            __type   =   "EcsEntityDesc"
         }
         mediumAreaSize   =   0.003
         smallRandomTreshold   =   1
         bigDecalRandomOffsetMult   =   0.9
         bigDecalSize   =   1.5
         mediumDecalMaxSize   =   1
         decalTypes   =   [
            {
               meshName   =   "mud_mesh_decal_01"
               yTransformScale   =   0.5
            },
            {
               meshName   =   "mud_mesh_decal_02"
               yTransformScale   =   0.4
            },
            {
               meshName   =   "mud_mesh_decal_03"
               yTransformScale   =   0.4
            }
         ]
         angleBetweenPanelsTreshold   =   0.2
         __type   =   "TruckEcsMeshDecals"
      }
      slopeAngleFrictionMult   =   {
         spline   =   [
            0,
            1,
            25,
            1,
            40,
            0
         ]
         __type   =   "SplineCurve1d"
      }
      wheelsSubstanceResistanceMult   =   {
         spline   =   [
            0,
            0.8,
            0.5,
            0.65,
            1,
            0.65
         ]
         __type   =   "SplineCurve1d"
      }
      wheelSlotWithDescs   =   [
         {
            geomName   =   "BoneWheelRearRight"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "RearWheel"
         },
         {
            geomName   =   "BoneWheelRight5"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "BoneWheelRight4"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "BoneWheelRight3"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "MiddleWheelSound"
         },
         {
            geomName   =   "BoneWheelRight2"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "BoneWheelRight1"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "BoneWheelFrontRight"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "FrontWheel"
         },
         {
            geomName   =   "BoneWheelFrontLeft"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "FrontWheel"
         },
         {
            geomName   =   "BoneWheelLeft1"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "BoneWheelLeft2"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "BoneWheelLeft3"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "MiddleWheelSound"
         },
         {
            geomName   =   "BoneWheelLeft4"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "BoneWheelLeft5"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "BoneWheelRearLeft"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "RearWheel"
         },
         {
            geomName   =   "FakeWheelRight1"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "FakeWheelRight2"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "FakeMiddleWheel"
         },
         {
            geomName   =   "FakeWheelRight3"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "FakeMiddleWheel"
         },
         {
            geomName   =   "FakeWheelLeft1"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "FakeWheelLeft2"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "FakeMiddleWheel"
         },
         {
            geomName   =   "FakeWheelLeft3"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "FakeMiddleWheel"
         }
      ]
      wheelsWithTrail   =   {
         BoneWheelRight1   =   {
            __type   =   "WheelTrailDesc"
         }
         BoneWheelLeft1   =   {
            __type   =   "WheelTrailDesc"
         }
         BoneWheelRight5   =   {
            isRear   =   True
            __type   =   "WheelTrailDesc"
         }
         BoneWheelLeft5   =   {
            isRear   =   True
            __type   =   "WheelTrailDesc"
         }
      }
      wheelPool   =   {
         FrontWheel   =   {
            __value   =   "auto_wheel_mtk_md76_wood_grapple_res_frontwheel"
         }
         MiddleWheel   =   {
            __value   =   "auto_wheel_mtk_md76_wood_grapple_res_middlewheel"
         }
         RearWheel   =   {
            __value   =   "auto_wheel_mtk_md76_wood_grapple_res_rearwheel"
         }
         FakeWheel   =   {
            __value   =   "auto_wheel_mtk_md76_wood_grapple_res_fakewheel"
         }
         FakeMiddleWheel   =   {
            __value   =   "auto_wheel_mtk_md76_wood_grapple_res_fakemiddlewheel"
         }
         MiddleWheelSound   =   {
            __value   =   "auto_wheel_mtk_md76_wood_grapple_res_middlewheelsound"
         }
      }
      deformSyncData   =   {
         __type   =   "DeformSyncData"
      }
   }
   prop_blueprints   =   {
      blueprints   =   {
         Engine   =   {
            nodes   =   {
               OnEngineStarting   =   {
                  viewData   =   {
                     x   =   3336.56
                     y   =   4729.146
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineStarting   =   [
                     "TruckShaker_Dct2T00W/Play",
                     "TruckShaker_Dct2T00W1/Stop",
                     "SetSoundSwitch/SetSwitchState"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarting"
               }
               OnEngineStarted   =   {
                  viewData   =   {
                     x   =   3340.561
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineStarted   =   [
                     "PlaySound_1/Play"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown   =   {
                  viewData   =   {
                     x   =   3338.561
                     y   =   5000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineShutdown   =   [
                     "PlaySound/Play",
                     "TruckShaker_Dct2T00W1/Play",
                     "TruckShaker_Dct2T00W/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               OnEngineAcceleration   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAcceleration   =   [
                     "PlaySound_7/Play"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineReverse   =   [
                     "PlaySound_7/Play"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               OnBrakePull   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnBrakePulled   =   [
                     "PlaySound_2/Play"
                  ]
                  __type   =   "BlueprintNodeOnBrakePull"
               }
               OnBrakeRelease   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnBrakeReleased   =   [
                     "PlaySound_2_1/Play"
                  ]
                  __type   =   "BlueprintNodeOnBrakeRelease"
               }
               OnHandbrakeStateChanged   =   {
                  viewData   =   {
                     x   =   3335.334
                     y   =   5900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnHandbrakeOn   =   [
                     "PlaySound_6/Play",
                     "TriggerEvent_E27k8z281/TriggerBlueprintEvent"
                  ]
                  OnHandbrakeOff   =   [
                     "PlaySound_6_1/Play",
                     "TriggerEvent_E27k8z28/TriggerBlueprintEvent"
                  ]
                  __type   =   "BlueprintNodeOnHandbrakeStateChanged"
               }
               BlueprintNodeOnHornStateChanged   =   {
                  viewData   =   {
                     x   =   3336.342
                     y   =   6050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
               }
               BlueprintNodeOnEngineInertia   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   6199.618
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
               }
               SetSoundSwitch   =   {
                  viewData   =   {
                     x   =   3750
                     y   =   4600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "PlaySound_9/Play"
                  ]
                  switchGroup   =   {
                     def   =   "fuel"
                     __type   =   "SoundSwitchGroupStringRefParam"
                  }
                  switchState   =   {
                     def   =   "filled"
                     __type   =   "SoundSwitchStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundSwitch"
               }
               PlaySound_9   =   {
                  viewData   =   {
                     x   =   4100
                     y   =   4600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mtk_md76_engine_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound   =   {
                  viewData   =   {
                     x   =   4100
                     y   =   5000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1/Stop",
                     "PlaySound_Eafeas7h/Stop",
                     "PlaySound_9/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mtk_md76_engine_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1   =   {
                  viewData   =   {
                     x   =   4100
                     y   =   4800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_Eafeas7h/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mtk_md76_engine"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_7   =   {
                  viewData   =   {
                     x   =   4100
                     y   =   5200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mtk_md76_acc"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_6   =   {
                  viewData   =   {
                     x   =   4100
                     y   =   5800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mtk_md76_handbrake_on"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_6_1   =   {
                  viewData   =   {
                     x   =   4100
                     y   =   6200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mtk_md76_handbrake_off"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2   =   {
                  viewData   =   {
                     x   =   4100
                     y   =   5400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mtk_md76_brake_pull"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_1   =   {
                  viewData   =   {
                     x   =   4100
                     y   =   5600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mtk_md76_brake_release"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               GetTruckRpm   =   {
                  viewData   =   {
                     x   =   5700
                     y   =   4900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  Get   =   [
                     "SetSoundParameter_1_1/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetTruckRpm"
               }
               OnInit_1   =   {
                  viewData   =   {
                     x   =   5694.049
                     y   =   4800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "Schedule_1_1/Start"
                  ]
                  __type   =   "BlueprintCommonLibraryOninit"
               }
               Schedule_1_1   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   4800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_1_1/SetParameter",
                     "SetSoundParameter_1_1_1_1/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               TruckVelocity_1   =   {
                  viewData   =   {
                     x   =   5694.049
                     y   =   5000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetLinearVelocity   =   [
                     "FloatMultiplication/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               SetSoundParameter_1_1   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   4800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "rtpc_vehicle_rpm"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  skipIfNotChangedRef   =   {
                     def   =   False
                     __type   =   "BoolRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               SetSoundParameter_1_1_1_1   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   4950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "rtpc_vehicle_speed"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  skipIfNotChangedRef   =   {
                     def   =   False
                     __type   =   "BoolRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               FloatMultiplication   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   5000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  bFloat   =   {
                     def   =   3
                     __type   =   "FloatRefParam"
                  }
                  Float   =   [
                     "SetSoundParameter_1_1_1_1/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatmultiplication"
               }
               TruckShaker_Dct2T00W   =   {
                  viewData   =   {
                     x   =   3750
                     y   =   4900
                  }
                  duration   =   3.2
                  shakerName   =   "EngineStart"
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_Dct2T00W1   =   {
                  viewData   =   {
                     x   =   3750
                     y   =   5100
                  }
                  duration   =   2.8
                  shakerName   =   "EngineShutdown"
                  maxRPM   =   True
                  __type   =   "BlueprintNodeTruckShaker"
               }
               OnEngineAcceleration_E27jtG7i   =   {
                  viewData   =   {
                     x   =   5700
                     y   =   5400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAcceleration   =   [
                     "Schedule_E27jtG7i2/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineInertia_E27jtG7i1   =   {
                  viewData   =   {
                     x   =   5700
                     y   =   5700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnInertia   =   [
                     "Schedule_E27jtG7i2/Start"
                  ]
                  __type   =   "BlueprintNodeOnEngineInertia"
               }
               Schedule_E27jtG7i2   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   5550
                  }
                  OnPeriod   =   [
                     "PlaySound_E27jtG7i3/Play"
                  ]
                  period   =   {
                     def   =   8
                     __type   =   "FloatRefParam"
                  }
                  startDelay   =   {
                     def   =   8
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               PlaySound_E27jtG7i3   =   {
                  viewData   =   {
                     x   =   6200
                     y   =   5550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mtk_md76_brake_release"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnEngineShutdown_E27jtG7i4   =   {
                  viewData   =   {
                     x   =   5700
                     y   =   5550
                  }
                  OnEngineShutdown   =   [
                     "Schedule_E27jtG7i2/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               TriggerEvent_E27k8z28   =   {
                  viewData   =   {
                     x   =   4100
                     y   =   6100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  eventUid   =   {
                     def   =   "snd_track_on"
                     __type   =   "StringRefParam"
                  }
                  __type   =   "BlueprintNodeTriggerCustomEvent"
               }
               TriggerEvent_E27k8z281   =   {
                  viewData   =   {
                     x   =   4100
                     y   =   6000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  eventUid   =   {
                     def   =   "snd_track_off"
                     __type   =   "StringRefParam"
                  }
                  __type   =   "BlueprintNodeTriggerCustomEvent"
               }
               PlaySound_E27kak0z   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   4050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "Schedule_E27kak0z6/Start"
                  ]
                  OnSoundEnd   =   [
                     "Schedule_E27kak0z6/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_track_excavator_right"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_E27kak0z1   =   {
                  viewData   =   {
                     x   =   6100
                     y   =   4050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_E27kak0z/Play"
                  ]
                  OnSoundEnd   =   [
                     "PlaySound_E27kak0z/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_track_excavator_left"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               HandleEvent_E27kak0z2   =   {
                  viewData   =   {
                     x   =   5689.063
                     y   =   4047.046
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnHandle   =   [
                     "PlaySound_2_E27kak0z1/Play"
                  ]
                  eventUidRefParam   =   {
                     def   =   "snd_track_on"
                     __type   =   "StringRefParam"
                  }
                  __type   =   "BlueprintNodeHandleEvent"
               }
               HandleEvent_E27kak0z3   =   {
                  viewData   =   {
                     x   =   5690.464
                     y   =   4147.046
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnHandle   =   [
                     "PlaySound_2_E27kak0z1/Stop"
                  ]
                  eventUidRefParam   =   {
                     def   =   "snd_track_off"
                     __type   =   "StringRefParam"
                  }
                  __type   =   "BlueprintNodeHandleEvent"
               }
               SetSoundParameter_1_E27kak0z4   =   {
                  viewData   =   {
                     x   =   8240.464
                     y   =   4047.046
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "rpm_r"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               SetSoundParameter_1_E27kak0z5   =   {
                  viewData   =   {
                     x   =   7840.464
                     y   =   4047.046
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "SetSoundParameter_1_E27kak0z4/SetParameter"
                  ]
                  nameRef   =   {
                     def   =   "rpm_l"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               Schedule_E27kak0z6   =   {
                  viewData   =   {
                     x   =   7490.316
                     y   =   4047.046
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_1_E27kak0z5/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               GetTruckTrackSlidingVelocity_E27kak0z7   =   {
                  viewData   =   {
                     x   =   7300
                     y   =   4400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSlidingVelocity   =   [
                     "FloatAbs_E27kak0zb/value/cb"
                  ]
                  __type   =   "BlueprintNodeTruckTrackGetSlidingVelocity"
               }
               GetTruckTrackSlidingVelocity_E27kak0z8   =   {
                  viewData   =   {
                     x   =   7700
                     y   =   4400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  side   =   {
                     def   =   "RIGHT"
                     __type   =   "TrackSideRefParam"
                  }
                  GetSlidingVelocity   =   [
                     "FloatAbs_E27kak0zc/value/cb"
                  ]
                  __type   =   "BlueprintNodeTruckTrackGetSlidingVelocity"
               }
               FloatAbs_E27kak0zb   =   {
                  viewData   =   {
                     x   =   7700
                     y   =   4300
                  }
                  Abs   =   [
                     "SetSoundParameter_1_E27kak0z5/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatabs"
               }
               FloatAbs_E27kak0zc   =   {
                  viewData   =   {
                     x   =   8050
                     y   =   4300
                  }
                  Abs   =   [
                     "SetSoundParameter_1_E27kak0z4/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatabs"
               }
               CloneSoundEmitter_E27klX72   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   4350
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_E27kak0z1/emitterRef/cb",
                     "SetSoundParameter_1_E27kak0z5/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneWheelLeft3"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_E27klX721   =   {
                  viewData   =   {
                     x   =   6550
                     y   =   4350
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E27kak0z/emitterRef/cb",
                     "SetSoundParameter_1_E27kak0z4/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneWheelRight3"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_Eafeas7h   =   {
                  viewData   =   {
                     x   =   4850
                     y   =   4800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_underneath"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnEngineRunningOnInit_F72c8BcN   =   {
                  viewData   =   {
                     x   =   3100
                     y   =   5000
                  }
                  OnEngineRunning   =   [
                     "TruckShaker_Dct2T00W/Stop",
                     "TruckShaker_Dct2T00W1/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineRunningOnInit"
               }
               CloneSoundEmitter_E8ed8v4D   =   {
                  viewData   =   {
                     x   =   4800
                     y   =   5200
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_9/emitterRef/cb",
                     "PlaySound/emitterRef/cb",
                     "PlaySound_1/emitterRef/cb",
                     "SetSoundParameter_1_1/emitterRef/cb",
                     "SetSoundParameter_1_1_1_1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneCraneSeg_1_3"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        y   =   0
                        z   =   0
                        __type   =   "Vector3d"
                     }
                     __type   =   "Tracker"
                  }
                  trackerLocalRotation   =   {
                     x   =   -180
                     __type   =   "Vector3d"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               OnGearUpdate_Ea54z66I   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   6350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  subscribeOnInitRef   =   {
                     def   =   True
                     __type   =   "BoolRefParam"
                  }
                  OnGearUpdated   =   [
                     "SetSoundParameter_1_Ea54z66I1/SetParameter",
                     "PlaySound_Ea54z66I2/Play"
                  ]
                  GetLastGear   =   [
                     "SetSoundParameter_1_Ea54z66I1/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               SetSoundParameter_1_Ea54z66I1   =   {
                  viewData   =   {
                     x   =   6400
                     y   =   6350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "rtpc_vehicle_gear"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  skipIfNotChangedRef   =   {
                     def   =   False
                     __type   =   "BoolRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               PlaySound_Ea54z66I2   =   {
                  viewData   =   {
                     x   =   6400
                     y   =   6150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_gear_truck"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_Ea54DB7B   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   6150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea54z66I2/emitterRef/cb",
                     "SetSoundParameter_1_Ea54z66I1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneCraneSeg_1_1"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
            }
            groups   =   {
               "[SOUND] rpm and speed"   =   {
                  x   =   5600
                  y   =   4650
                  width   =   1300
                  height   =   550
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] brake release"   =   {
                  x   =   5600
                  y   =   5250
                  width   =   1300
                  height   =   600
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] Tracks - Playback"   =   {
                  x   =   5600
                  y   =   3850
                  width   =   3021.24
                  height   =   690.1797
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] gear update LOCAL2"   =   {
                  x   =   5600
                  y   =   5950
                  width   =   1497
                  height   =   650
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         Body   =   {
            nodes   =   {
               OnTruckCollision   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   2550
                  }
                  zeroBorderEnergy   =   32000
                  timeInterval   =   200
                  OnCollision   =   [
                     "SetSoundSwitch/SetSwitchState"
                  ]
                  GetEnergy   =   [
                     "FloatAbs/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeOnTruckCollision"
               }
               SetSoundSwitch   =   {
                  viewData   =   {
                     x   =   5600
                     y   =   2550
                  }
                  OnExit   =   [
                     "SetSoundParameter/SetParameter"
                  ]
                  switchGroup   =   {
                     def   =   "switch_vhc_type"
                     __type   =   "SoundSwitchGroupStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundSwitch"
               }
               SetSoundParameter   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   2550
                  }
                  OnExit   =   [
                     "PlaySound/Play"
                  ]
                  nameRef   =   {
                     def   =   "rtpc_vehicle_collision_energy"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               PlaySound   =   {
                  viewData   =   {
                     x   =   6350
                     y   =   2550
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_collision_type"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               GetTruckType   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   2650
                  }
                  GetTruckType   =   [
                     "SetSoundSwitch/switchState/cb"
                  ]
                  __type   =   "BlueprintNodeGetTruckType"
               }
               FloatAbs   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   2700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  aFloat   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetFloat   =   [
                     "FloatDivision/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeFloatAbs"
               }
               FloatDivision   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   2700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  bFloat   =   {
                     def   =   1000
                     __type   =   "FloatRefParam"
                  }
                  Float   =   [
                     "FloatMultiplication/aFloat/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatdivision"
               }
               FloatMultiplication   =   {
                  viewData   =   {
                     x   =   5700
                     y   =   2700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  bFloat   =   {
                     def   =   1.55
                     __type   =   "FloatRefParam"
                  }
                  Float   =   [
                     "SetSoundParameter/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatmultiplication"
               }
               SuspensionOscillations_1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   3150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  zeroBorder   =   0.02
                  diffMultiplier   =   10
                  OnOscillationsStarted   =   [
                     "SetSoundSwitch_1/SetSwitchState",
                     "SetSoundParameter_E6bfi66T/SetParameter"
                  ]
                  GetDifference   =   [
                     "SetSoundParameter_E6bfi66T/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeSuspensionOscillations"
               }
               PlaySound_4_1   =   {
                  viewData   =   {
                     x   =   6000
                     y   =   3150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_suspension_type"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               SetSoundSwitch_1   =   {
                  viewData   =   {
                     x   =   5600
                     y   =   3150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "PlaySound_4_1/Play"
                  ]
                  switchGroup   =   {
                     def   =   "switch_vhc_type"
                     __type   =   "SoundSwitchGroupStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundSwitch"
               }
               GetTruckType_1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   3250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetTruckType   =   [
                     "SetSoundSwitch_1/switchState/cb"
                  ]
                  __type   =   "BlueprintNodeGetTruckType"
               }
               BlueprintNodeOnHornStateChanged_Dcr8nt1R   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   3500
                  }
                  OnHornPressed   =   [
                     "SetSoundSwitch_Dcr8o87g/SetSwitchState"
                  ]
                  OnHornReleased   =   [
                     "PlaySound_Dcr8pb0P/Stop"
                  ]
                  __type   =   "BlueprintNodeOnHornStateChanged"
               }
               SetSoundSwitch_Dcr8o87g   =   {
                  viewData   =   {
                     x   =   5600
                     y   =   3500
                  }
                  OnExit   =   [
                     "PlaySound_Dcr8pb0P/Play"
                  ]
                  switchGroup   =   {
                     def   =   "ssw_vhc_name"
                     __type   =   "SoundSwitchGroupStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundSwitch"
               }
               PlaySound_Dcr8pb0P   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   3500
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_honk_on"
                        maxCountSameLoopSounds   =   -1
                        overridePropSoundParams   =   True
                        fadeOutTime   =   0.3
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               GetTruckName_E1oc31dy   =   {
                  viewData   =   {
                     x   =   5250
                     y   =   3650
                  }
                  GetTruckType   =   [
                     "SetSoundSwitch_Dcr8o87g/switchState/cb"
                  ]
                  __type   =   "BlueprintNodeGetTruckName"
               }
               OnEnterTruck_E4fenVbh   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   2200
                  }
                  OnEnter   =   [
                     "If_E7gbDo0a/Input"
                  ]
                  __type   =   "BlueprintNodeOnEnterTruck"
               }
               SetSoundSwitch_E4fenVbh1   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   2200
                  }
                  switchGroup   =   {
                     def   =   "switch_vhc_type"
                     __type   =   "SoundSwitchGroupStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundSwitch"
               }
               GetTruckType_E4fenVbh2   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   2300
                  }
                  GetTruckType   =   [
                     "SetSoundSwitch_E4fenVbh1/switchState/cb"
                  ]
                  __type   =   "BlueprintNodeGetTruckType"
               }
               SetSoundParameter_E6bfi66T   =   {
                  viewData   =   {
                     x   =   5600
                     y   =   3000
                  }
                  nameRef   =   {
                     def   =   "rtpc_truck_suspension"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               SetSoundSwitch_E6chg5eW   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   2050
                  }
                  switchGroup   =   {
                     def   =   "switch_vhc_condition"
                     __type   =   "SoundSwitchGroupStringRefParam"
                  }
                  switchState   =   {
                     def   =   "new"
                     __type   =   "SoundSwitchStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundSwitch"
               }
               If_E7gbDo0a   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   2200
                  }
                  OnTrue   =   [
                     "SetSoundSwitch_E6chg5eW/SetSwitchState",
                     "SetSoundSwitch_E4fenVbh1/SetSwitchState"
                  ]
                  __type   =   "BlueprintNodeIf"
               }
               IsCurrentTruck_E7gbDo0a1   =   {
                  viewData   =   {
                     x   =   5150
                     y   =   2300
                  }
                  IsCurrentTruck   =   [
                     "If_E7gbDo0a/condition/cb"
                  ]
                  __type   =   "BlueprintNodeTruckIsCurrent"
               }
               OnRain_E8ffcg6D   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3900
                  }
                  OnStartRain   =   [
                     "PlaySound_E8ffcg6D1/Play"
                  ]
                  OnStopRain   =   [
                     "PlaySound_E8ffcg6D2/Play"
                  ]
                  __type   =   "BlueprintNodeWeatherOnRain"
               }
               PlaySound_E8ffcg6D1   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   3900
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "amb_rain_drops_car"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_E8ffcg6D2   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   4100
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "amb_rain_drops_car_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               RainPower_E8ffcg6D4   =   {
                  viewData   =   {
                     x   =   5250
                     y   =   4125
                  }
                  GetRainPower   =   [
                     "SetSoundParameter_E8ffcg6D5/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeWeatherRainPower"
               }
               SetSoundParameter_E8ffcg6D5   =   {
                  viewData   =   {
                     x   =   5400
                     y   =   4050
                  }
                  setGlobal   =   True
                  nameRef   =   {
                     def   =   "rtpc_rain_intencity"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               OnTick_E8ffcg6D6   =   {
                  viewData   =   {
                     x   =   5200
                     y   =   4050
                  }
                  OnTick   =   [
                     "SetSoundParameter_E8ffcg6D5/SetParameter"
                  ]
                  __type   =   "BlueprintLibraryOntick"
               }
               IsRaining_E8mdK1eP   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   4050
                  }
                  IsRaining   =   [
                     "OnTick_E8ffcg6D6/isActive/cb"
                  ]
                  __type   =   "BlueprintNodeWeatherIsRaining"
               }
               OnSandstorm_Ebd8zmao   =   {
                  viewData   =   {
                     x   =   5041.692
                     y   =   4515.852
                  }
                  OnStartSandstorm   =   [
                     "PlaySound_Ebd8zmao5/Play"
                  ]
                  OnStopSandstorm   =   [
                     "PlaySound_Ebd8zmao6/Play"
                  ]
                  __type   =   "BlueprintNodeWeatherOnSandstorm"
               }
               IsSandstorming_Ebd8zmao1   =   {
                  viewData   =   {
                     x   =   5091.692
                     y   =   4635.862
                  }
                  IsSandstorming   =   [
                     "OnTick_Ebd8zmao3/isActive/cb"
                  ]
                  __type   =   "BlueprintNodeWeatherIsSandstorming"
               }
               SandstormPower_Ebd8zmao2   =   {
                  viewData   =   {
                     x   =   5241.692
                     y   =   4785.862
                  }
                  GetSandstormPower   =   [
                     "SetSoundParameter_Ebd8zmao4/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeWeatherSandstormPower"
               }
               OnTick_Ebd8zmao3   =   {
                  viewData   =   {
                     x   =   5241.692
                     y   =   4635.862
                  }
                  OnTick   =   [
                     "SetSoundParameter_Ebd8zmao4/SetParameter"
                  ]
                  __type   =   "BlueprintLibraryOntick"
               }
               SetSoundParameter_Ebd8zmao4   =   {
                  viewData   =   {
                     x   =   5443.38
                     y   =   4634.3
                  }
                  setGlobal   =   True
                  nameRef   =   {
                     def   =   "rtpc_sand_intencity"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               PlaySound_Ebd8zmao5   =   {
                  viewData   =   {
                     x   =   5936.359
                     y   =   4496.06
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "amb_sand_drops_car"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_Ebd8zmao6   =   {
                  viewData   =   {
                     x   =   5941.692
                     y   =   4685.862
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "amb_sand_drops_car_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnTPLAnimationBegin_E4jdN8fB   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1650
                  }
                  OnAnimStart   =   [
                     "PlaySound_E4jdN8fB2/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnBegin"
               }
               OnTPLAnimationEnd_E4jdN8fB1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1850
                  }
                  OnAnimStop   =   [
                     "PlaySound_E4jdN8fB3/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnEnd"
               }
               PlaySound_E4jdN8fB2   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1650
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_wipers_forward"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_E4jdN8fB3   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1850
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_wipers_backward"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               IntCheck_E4jdN8fB4   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  compareValRef   =   {
                     def   =   1
                     __type   =   "IntRefParam"
                  }
                  compareType   =   "Greater|Equal"
                  OnTrue   =   [
                     "PlaySound_E4jdN8fB6/Play"
                  ]
                  __type   =   "BlueprintLibraryCheckint"
               }
               OnHandbrakeStateChanged_E4jdN8fB5   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1400
                  }
                  OnHandbrakeOn   =   [
                     "IntCheck_E4jdN8fB4/Input"
                  ]
                  __type   =   "BlueprintNodeOnHandbrakeStateChanged"
               }
               PlaySound_E4jdN8fB6   =   {
                  viewData   =   {
                     x   =   5785.13
                     y   =   1400
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_wheel_braking_torque"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               GetTruckVelocity_E4jdN8fB7   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1500
                  }
                  GetLinearVelocity   =   [
                     "IntCheck_E4jdN8fB4/intToCheck/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               CloneSoundEmitter_E8rbj79z   =   {
                  viewData   =   {
                     x   =   4386.763
                     y   =   1850
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E4jdN8fB2/emitterRef/cb",
                     "PlaySound_E4jdN8fB3/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneAnim_Wiper_2"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
            }
            groups   =   {
               suspension   =   {
                  x   =   5000
                  y   =   2949.938
                  width   =   1650
                  height   =   394.0622
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               honk   =   {
                  x   =   5000
                  y   =   3450
                  width   =   1650
                  height   =   350
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               Sound_rain_drops_car   =   {
                  x   =   5000
                  y   =   3850
                  width   =   1450
                  height   =   450
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               Sound_sand_drops_car   =   {
                  x   =   5000
                  y   =   4350
                  width   =   1591.692
                  height   =   635.8623
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         Cockpit   =   {
            nodes   =   {
               OnActivateCockpitCamera   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   2700
                  }
                  OnActivate   =   [
                     "If/Input"
                  ]
                  __type   =   "BlueprintNodeOnActivateCockpitCamera"
               }
               OnDeactivateCockpitCamera   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   2900
                  }
                  OnDeactivate   =   [
                     "If_1/Input"
                  ]
                  __type   =   "BlueprintNodeOnDeactivateCockpitCamera"
               }
               OnLookIntoCockpit   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3100
                  }
                  OnLookIntoCockpit   =   [
                     "If_1_1/Input"
                  ]
                  __type   =   "BlueprintNodeOnLookIntoCockpit"
               }
               OnLookOutFromCockpit   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3300
                  }
                  OnLookOutFromCockpit   =   [
                     "If_1_1_1/Input"
                  ]
                  __type   =   "BlueprintNodeOnLookOutFromCockpit"
               }
               If   =   {
                  viewData   =   {
                     x   =   4700
                     y   =   2700
                  }
                  OnTrue   =   [
                     "SetSoundState/SetSoundState"
                  ]
                  __type   =   "BlueprintNodeIf"
               }
               IsCurrentTruck   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   2800
                  }
                  IsCurrentTruck   =   [
                     "If/condition/cb"
                  ]
                  __type   =   "BlueprintNodeTruckIsCurrent"
               }
               SetSoundState   =   {
                  viewData   =   {
                     x   =   4900
                     y   =   2700
                  }
                  stateGroup   =   {
                     def   =   "cockpit_view_toggle"
                     __type   =   "SoundStateGroupStringRefParam"
                  }
                  state   =   {
                     def   =   "cockpit_view_on"
                     __type   =   "SoundStateStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundState"
               }
               If_1   =   {
                  viewData   =   {
                     x   =   4700
                     y   =   2900
                  }
                  OnTrue   =   [
                     "SetSoundState_1/SetSoundState"
                  ]
                  __type   =   "BlueprintNodeIf"
               }
               IsCurrentTruck_1   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   3000
                  }
                  IsCurrentTruck   =   [
                     "If_1/condition/cb"
                  ]
                  __type   =   "BlueprintNodeTruckIsCurrent"
               }
               SetSoundState_1   =   {
                  viewData   =   {
                     x   =   4900
                     y   =   2900
                  }
                  stateGroup   =   {
                     def   =   "cockpit_view_toggle"
                     __type   =   "SoundStateGroupStringRefParam"
                  }
                  state   =   {
                     def   =   "cockpit_view_off"
                     __type   =   "SoundStateStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundState"
               }
               If_1_1   =   {
                  viewData   =   {
                     x   =   4700
                     y   =   3100
                  }
                  OnTrue   =   [
                     "SetSoundState_1_1/SetSoundState"
                  ]
                  __type   =   "BlueprintNodeIf"
               }
               IsCurrentTruck_1_1   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   3200
                  }
                  IsCurrentTruck   =   [
                     "If_1_1/condition/cb"
                  ]
                  __type   =   "BlueprintNodeTruckIsCurrent"
               }
               SetSoundState_1_1   =   {
                  viewData   =   {
                     x   =   4900
                     y   =   3100
                  }
                  stateGroup   =   {
                     def   =   "cockpit_view_toggle"
                     __type   =   "SoundStateGroupStringRefParam"
                  }
                  state   =   {
                     def   =   "cockpit_view_look_in"
                     __type   =   "SoundStateStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundState"
               }
               If_1_1_1   =   {
                  viewData   =   {
                     x   =   4700
                     y   =   3300
                  }
                  OnTrue   =   [
                     "SetSoundState_1_1_1/SetSoundState"
                  ]
                  __type   =   "BlueprintNodeIf"
               }
               IsCurrentTruck_1_1_1   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   3400
                  }
                  IsCurrentTruck   =   [
                     "If_1_1_1/condition/cb"
                  ]
                  __type   =   "BlueprintNodeTruckIsCurrent"
               }
               SetSoundState_1_1_1   =   {
                  viewData   =   {
                     x   =   4900
                     y   =   3300
                  }
                  stateGroup   =   {
                     def   =   "cockpit_view_toggle"
                     __type   =   "SoundStateGroupStringRefParam"
                  }
                  state   =   {
                     def   =   "cockpit_view_look_out"
                     __type   =   "SoundStateStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundState"
               }
               GetInfoElementCockpitForSoundWithEvent_DcjbAJd8   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_DcjbAJd81/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_Dclb2C4P/Play"
                  ]
                  nameBoneBro   =   "ctrl_steering_left"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_DcjbAJd81   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mtk_md76_cockpit_steering_arm_left_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_DcjbAJd82   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_DcjbAJd81/emitterRef/cb",
                     "PlaySound_Dclb2C4P/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_steering_left"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               GetInfoElementCockpitForSoundWithEvent_DcjbAJd83   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_DcjbAJd84/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_Dclb2W2d/Play"
                  ]
                  nameBoneBro   =   "ctrl_steering_right"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_DcjbAJd84   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mtk_md76_cockpit_steering_arm_right_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_DcjbAJd85   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_DcjbAJd84/emitterRef/cb",
                     "PlaySound_Dclb2W2d/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_steering_right"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_Dclb2C4P   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3700
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mtk_md76_cockpit_steering_arm_left_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_Dclb2W2d   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   4100
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mtk_md76_cockpit_steering_arm_right_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               GetInfoElementCockpitForSoundWithEvent_Ea78oybi   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ea78oybi1/Play"
                  ]
                  nameBoneBro   =   "ctrl_grapple_left"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_Ea78oybi1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   4300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_cockpit_lever"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_Ea78oybi2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea78oybi1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_grapple_left"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               GetInfoElementCockpitForSoundWithEvent_Ea78oybi3   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ea78oybi4/Play"
                  ]
                  nameBoneBro   =   "ctrl_grapple_right"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_Ea78oybi4   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   4600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_cockpit_lever"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_Ea78oybi5   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea78oybi4/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_grapple_right"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               GetInfoElementCockpitForSoundWithEvent_EbqfRp0H   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_EbqfRp0H1/Play"
                  ]
                  nameBoneBro   =   "ctrl_gear_stick_low"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_EbqfRp0H1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   4900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_cockpit_lever"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_EbqfRp0H2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   5000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_EbqfRp0H1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_gear_stick_low"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         ForceFeedback   =   {
            nodes   =   {
               OnGearUpdate_1   =   {
                  viewData   =   {
                     x   =   4540
                     y   =   5900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  subscribeOnInitRef   =   {
                     def   =   True
                     __type   =   "BoolRefParam"
                  }
                  OnGearUpdated   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent/Input"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               OnEngineStarting_1   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   6050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineStarting   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarting"
               }
               OnEngineShutdown_1   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   6150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineShutdown   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_1/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               OnTruckCollision_1   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   6350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  zeroBorderEnergy   =   2000
                  timeInterval   =   250
                  withResources   =   False
                  withQuestObjects   =   False
                  withPhysPlants   =   False
                  withTruckWheels   =   True
                  notCollideBodiesOnlyWithTerrain   =   False
                  exceptionalBodyNames   =   [
                     "BoneCraneSeg_7_cdt",
                     "BoneCraneClaw_R_cdt",
                     "BoneCraneClaw_L_cdt"
                  ]
                  OnCollision   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2/Input"
                  ]
                  GetEnergy   =   [
                     "FloatAbs_1/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeOnTruckCollision"
               }
               FloatAbs_1   =   {
                  viewData   =   {
                     x   =   4850
                     y   =   6450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  aFloat   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetFloat   =   [
                     "FloatDivision_1/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeFloatAbs"
               }
               FloatDivision_1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   6450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  bFloat   =   {
                     def   =   100000
                     __type   =   "FloatRefParam"
                  }
                  Float   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2/strengthRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatdivision"
               }
               ActivateForceFeedbackIfTruckIsCurrent   =   {
                  viewData   =   {
                     x   =   4900
                     y   =   5900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "gear_update"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeActivateForcefeedbackIfTruckIsCurrent"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1   =   {
                  viewData   =   {
                     x   =   4800
                     y   =   6050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "engine_start"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeActivateForcefeedbackIfTruckIsCurrent"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_1   =   {
                  viewData   =   {
                     x   =   4800
                     y   =   6200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "engine_shutdown"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeActivateForcefeedbackIfTruckIsCurrent"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2   =   {
                  viewData   =   {
                     x   =   5300
                     y   =   6350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "hit"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeActivateForcefeedbackIfTruckIsCurrent"
               }
               OnTruckWarningMessage_1   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   6650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  type   =   "UNDER_WATER"
                  underWaterState   =   2
                  OnWarning   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_3/Input"
                  ]
                  __type   =   "BlueprintNodeTruckWarning"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_3   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   6650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "warning_message"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeActivateForcefeedbackIfTruckIsCurrent"
               }
               GetTruckFloodingProgress   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   6750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  Get   =   [
                     "FloatSum/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeGetFloodingProgress"
               }
               FloatSum   =   {
                  viewData   =   {
                     x   =   4800
                     y   =   6750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  bFloat   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  Float   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_3/strengthRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatsum"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1_E4bm6h7d   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   6900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "claws"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeActivateForcefeedbackIfTruckIsCurrent"
               }
               OnSequentialChainConstraintStateChange_E4bm6h7d1   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   6900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStartOpeningChain   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1_E4bm6h7d/Input"
                  ]
                  OnStartClosingChain   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1_E4bm6h7d/Input"
                  ]
                  inputChainNameRef   =   {
                     def   =   [
                        "Claw_L"
                     ]
                  }
                  __type   =   "BlueprintNodeOnSequentialChainConstraintStateChanged"
               }
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         SFX   =   {
            nodes   =   {
               OnEngineStarted   =   {
                  viewData   =   {
                     x   =   3750
                     y   =   6400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineStarted   =   [
                     "VFXRestart_1/Input",
                     "VFXRestart_2/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown   =   {
                  viewData   =   {
                     x   =   3748
                     y   =   6484
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineShutdown   =   [
                     "VFXStop/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               OnEngineAcceleration   =   {
                  viewData   =   {
                     x   =   3750
                     y   =   6800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAcceleration   =   [
                     "VFXRestart/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9ojkPf6/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse   =   {
                  viewData   =   {
                     x   =   3750
                     y   =   7000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineReverse   =   [
                     "VFXRestart/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9ojkPf6/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               VFXRestart   =   {
                  viewData   =   {
                     x   =   4150
                     y   =   6850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_1   =   {
                  viewData   =   {
                     x   =   4150
                     y   =   6500
                  }
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop   =   {
                  viewData   =   {
                     x   =   4150
                     y   =   6600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "VFXStop_E9ojlm0w/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_2   =   {
                  viewData   =   {
                     x   =   4150
                     y   =   6400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "VFXRestart_E9ojleft/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_gas_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9ojkPf6   =   {
                  viewData   =   {
                     x   =   4150
                     y   =   6950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_E9ojleft   =   {
                  viewData   =   {
                     x   =   4700
                     y   =   6400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_neutral_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9ojlm0w   =   {
                  viewData   =   {
                     x   =   4700
                     y   =   6600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_neutral_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         Addon   =   {
            nodes   =   {
               PlaySound_E3nbLO1s   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   6300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_grabber_claws_open"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_E3nbLO1s1   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   6450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_grabber_claws_close"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_E3nbLO1s2   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   6500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E3nbLO1s/emitterRef/cb",
                     "PlaySound_E3nbLO1s1/emitterRef/cb",
                     "PlaySound_E3nbLO1s4/emitterRef/cb",
                     "PlaySound_E3nbLO1s5/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneCraneSeg_7"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               OnLogCranesClawsRotationChanged_E3nbLO1s3   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   6750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "OneEventOfTwoPerFrame_E3nbLO1s7/First"
                  ]
                  OnStop   =   [
                     "OneEventOfTwoPerFrame_E3nbLO1s7/Second"
                  ]
                  __type   =   "BlueprintNodeOnCranesClawsRotationChanged"
               }
               PlaySound_E3nbLO1s4   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   6700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_grabber_claws_rotate_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_E3nbLO1s5   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   6850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_grabber_claws_rotate_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnSequentialChainConstraintStateChange_E3nbLO1s6   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   6300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStartOpeningChain   =   [
                     "PlaySound_E3nbLO1s/Play",
                     "PlaySound_E3nbLO1s1/Stop"
                  ]
                  OnStartClosingChain   =   [
                     "PlaySound_E3nbLO1s1/Play",
                     "PlaySound_E3nbLO1s/Stop"
                  ]
                  inputChainNameRef   =   {
                     def   =   [
                        "Claw_L"
                     ]
                  }
                  __type   =   "BlueprintNodeOnSequentialChainConstraintStateChanged"
               }
               OneEventOfTwoPerFrame_E3nbLO1s7   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   6750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnFirst   =   [
                     "PlaySound_E3nbLO1s4/Play"
                  ]
                  OnSecond   =   [
                     "PlaySound_E3nbLO1s5/Play",
                     "PlaySound_E3nbLO1s4/Stop"
                  ]
                  __type   =   "BlueprintNodeOneEventOfTwoPerFrame"
               }
               CraneAxisControlSoundNode_E3nbLO1s8   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   7050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  __type   =   "BlueprintFunctionCraneAxisControlSoundNode"
               }
               GetSoundDesc_E3nbLO1s9   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   7100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_grabber_move_x_start"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  GetSoundDesc   =   [
                     "CraneAxisControlSoundNode_E3nbLO1s8/logic/nodes/PlaySound_10_3/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_E3nbLO1sa   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   7150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_grabber_move_x_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  GetSoundDesc   =   [
                     "CraneAxisControlSoundNode_E3nbLO1s8/logic/nodes/PlaySound_10_1_2/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_E3nbLO1sb   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   7200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_grabber_move_y_start"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  GetSoundDesc   =   [
                     "CraneAxisControlSoundNode_E3nbLO1s8/logic/nodes/PlaySound_10_2_1_1/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_E3nbLO1sc   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   7250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_grabber_move_y_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  GetSoundDesc   =   [
                     "CraneAxisControlSoundNode_E3nbLO1s8/logic/nodes/PlaySound_10_1_1_1_1/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_E3nbLO1sd   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   7300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_grabber_move_z_start"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  GetSoundDesc   =   [
                     "CraneAxisControlSoundNode_E3nbLO1s8/logic/nodes/PlaySound_10_2_2/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_E3nbLO1se   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   7350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_grabber_move_z_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  GetSoundDesc   =   [
                     "CraneAxisControlSoundNode_E3nbLO1s8/logic/nodes/PlaySound_10_1_1_2/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               OnCraneArrowChanged_1_E3nbLO1sf   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   6950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnUpdated   =   [
                     "CraneAxisControlSoundNode_E3nbLO1s8/logic/nodes/Pipe/Input"
                  ]
                  GetX   =   [
                     "CraneAxisControlSoundNode_E3nbLO1s8/logic/nodes/CraneValueMovement_3_1/newValueRef/cb"
                  ]
                  GetY   =   [
                     "CraneAxisControlSoundNode_E3nbLO1s8/logic/nodes/CraneValueMovement_1_1_1/newValueRef/cb"
                  ]
                  GetZ   =   [
                     "CraneAxisControlSoundNode_E3nbLO1s8/logic/nodes/CraneValueMovement_2_1_1/newValueRef/cb"
                  ]
                  type   =   "LOG_CRANE_TRUCK"
                  rootBodyName   =   "BoneBody_cdt"
                  hookBodyName   =   "BoneCraneSeg_7_cdt"
                  xConstraintName   =   "segment_1"
                  __type   =   "BlueprintNodeOnCraneArrowPositionChanged"
               }
               OnTruckModuleReset_E3nbLO1sg   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   7950
                  }
                  OnReseted   =   [
                     "PlaySound_E3nbLO1sh/Play"
                  ]
                  __type   =   "BlueprintNodeOnTruckModuleReset"
               }
               PlaySound_E3nbLO1sh   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   7900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_restore"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_E3nbLO1si   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   7450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "CraneAxisControlSoundNode_E3nbLO1s8/logic/nodes/PlaySound_10_3/emitterRef/cb",
                     "CraneAxisControlSoundNode_E3nbLO1s8/logic/nodes/PlaySound_10_1_2/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneCraneSeg_1_2"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_E3nbUTg4   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   7650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "CraneAxisControlSoundNode_E3nbLO1s8/logic/nodes/PlaySound_10_2_1_1/emitterRef/cb",
                     "CraneAxisControlSoundNode_E3nbLO1s8/logic/nodes/PlaySound_10_1_1_1_1/emitterRef/cb",
                     "CraneAxisControlSoundNode_E3nbLO1s8/logic/nodes/PlaySound_10_2_2/emitterRef/cb",
                     "CraneAxisControlSoundNode_E3nbLO1s8/logic/nodes/PlaySound_10_1_1_2/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneCraneSeg_2_1"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_E3ncgB4b   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   6100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E3p8nK7d/emitterRef/cb",
                     "PlaySound_E3p8nK7d1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneCraneSeg_4_1"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_E3p8nK7d   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   5900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_grabber_claws_move_down"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_E3p8nK7d1   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   6050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_grabber_claws_move_up"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnSequentialChainConstraintStateChange_E3p8nK7d2   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   5900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStartOpeningChain   =   [
                     "PlaySound_E3p8nK7d/Play",
                     "PlaySound_E3p8nK7d1/Stop"
                  ]
                  OnStartClosingChain   =   [
                     "PlaySound_E3p8nK7d1/Play",
                     "PlaySound_E3p8nK7d/Stop"
                  ]
                  inputChainNameRef   =   {
                     def   =   [
                        "Grapple"
                     ]
                  }
                  __type   =   "BlueprintNodeOnSequentialChainConstraintStateChanged"
               }
            }
            groups   =   {
               "[SOUND] addon - crane & claws"   =   {
                  x   =   5400
                  y   =   5700
                  width   =   2096
                  height   =   2551
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
      }
   }
   prop_savable_object   =   {
      savablePropDescs   =   [
         {
            desc   =   {
               __type   =   "SavableUidPropDesc"
            }
         },
         {
            desc   =   {
               __type   =   "TruckCheckingFirstUseSavablePropDesc"
            }
         },
         {
            desc   =   {
               __type   =   "TruckFuelSavablePropDesc"
            }
         },
         {
            desc   =   {
               __type   =   "TruckStorablePropDesc"
            }
         },
         {
            desc   =   {
               __type   =   "TruckDeployInfoPropDesc"
            }
         },
         {
            desc   =   {
               __type   =   "TruckPhantomModePropDesc"
            }
         },
         {
            desc   =   {
               __type   =   "TruckGeomSavablePropDesc"
            }
         },
         {
            desc   =   {
               __type   =   "DiscoverableSavablePropDesc"
            }
         },
         {
            desc   =   {
               __type   =   "TruckInputsSavablePropDesc"
            }
         },
         {
            desc   =   {
               __type   =   "TruckCustomizationPropDesc"
            }
         },
         {
            desc   =   {
               __type   =   "TruckPhysSystemSavablePropDesc"
            }
         },
         {
            desc   =   {
               __type   =   "TagsSavablePropDesc"
            }
         },
         {
            desc   =   {
               __type   =   "RouteFollowingSavablePropDesc"
            }
         },
         {
            desc   =   {
               __type   =   "TruckConstraintsSavablePropDesc"
            }
         },
         {
            desc   =   {
               __type   =   "LogCraneSavablePropDesc"
            }
         }
      ]
   }
   prop_replicated   =   {
      repEntityBrand   =   {
         type   =   {
            __type   =   "AutoMtkMd76WoodGrappleResReplicated"
         }
         __type   =   "RepEntityBrand"
      }
   }
   prop_lwi_cdt_poi_rb   =   {
      poiRadius   =   48
      interactiveActivationRadius   =   15
   }
   prop_truck_gearbox_controller   =   {
      isLowGearAvailable   =   True
   }
   prop_fuel_tank   =   {
      maxFuelTankVolume   =   640
      startFuelTankVolume   =   640
      fuelConsumption   =   0.32
      reverseFuelConsumptionCoeff   =   1.2
      lowRangeFuelConsumptionCoeff   =   1.4
   }
   prop_truck_constraint_view   =   {
      constraintSequentialChains   =   {
         Claw_L   =   {
            links   =   {
               ChainLink   =   {
                  constraints   =   [
                     {
                        constraintName   =   "Claw_L"
                        angularSpeed   =   100
                        maxAngle   =   70
                     }
                  ]
                  __type   =   "TruckConstraintSequentialChainLink"
               }
            }
            __type   =   "TruckConstraintSequentialChain"
         }
         Claw_R   =   {
            links   =   {
               ChainLink   =   {
                  constraints   =   [
                     {
                        constraintName   =   "Claw_R"
                        angularSpeed   =   100
                        maxAngle   =   70
                     }
                  ]
                  __type   =   "TruckConstraintSequentialChainLink"
               }
            }
            __type   =   "TruckConstraintSequentialChain"
         }
         Grapple   =   {
            links   =   {
               ChainLink   =   {
                  constraints   =   [
                     {
                        constraintName   =   "grapple"
                        angularSpeed   =   90
                        maxAngle   =   130
                     }
                  ]
                  __type   =   "TruckConstraintSequentialChainLink"
               }
            }
            __type   =   "TruckConstraintSequentialChain"
         }
      }
   }
   prop_truck_teleporter   =   {
      waterHeightDelta   =   1.5
   }
   sound_emitter   =   {
      enableOcclusion   =   False
      maxOcclusionDistance   =   0
      __onlyOn   =   "visual"
   }
   prop_truck_under_water_cheker   =   {
      rootOffsetPosition   =   {
         x   =   0.3
         y   =   1.4
         z   =   -2
         __type   =   "Vector3d"
      }
      chekerAttachBody   =   "BoneCraneSeg_1_cdt"
   }
   prop_truck_orientation   =   {
      truckFallenThreshold   =   80
   }
   prop_game_camera_user   =   {
      defaultActivationLogic   =   {
         info   =   {
            cameraUid   =   "game_camera_vehicle_new"
            transitionUid   =   "to_truck_camera_transition"
            attachmentRule   =   {
               jointName   =   "_third_person_camera"
               jointOffset   =   {
                  y   =   0.95
                  z   =   0.7
                  __type   =   "Vector3d"
               }
               __type   =   "GameCameraAttachmentRuleJoint"
            }
            __type   =   "GameCameraActivationInfo"
         }
         __type   =   "GameCameraActivationLogicProject"
      }
      additionalActivationLogics   =   {
         cockpit   =   {
            info   =   {
               cameraUid   =   "game_camera_vehicle_cockpit"
               transitionUid   =   "to_truck_camera_transition"
               attachmentRule   =   {
                  jointName   =   "_cockpit_camera"
                  __type   =   "GameCameraAttachmentRuleJoint"
               }
               __type   =   "GameCameraActivationInfo"
            }
            __type   =   "GameCameraActivationLogicProject"
         }
         equipment   =   {
            info   =   {
               cameraUid   =   "game_camera_vehicle_equipment"
               transitionUid   =   "to_truck_camera_transition"
               attachmentRule   =   {
                  jointName   =   "_equipment_camera"
                  jointOffset   =   {
                     y   =   -1
                     __type   =   "Vector3d"
                  }
                  __type   =   "GameCameraAttachmentRuleJoint"
               }
               __type   =   "GameCameraActivationInfo"
            }
            __type   =   "GameCameraActivationLogicProject"
         }
      }
   }
   prop_outline   =   {
      rules   =   {
         OutlineRuleTruckHighlightInEagleMode   =   {
            outline   =   {
               highlightColor   =   {
                  r   =   224
                  g   =   152
                  b   =   26
                  __type   =   "Color"
               }
               occludedColor   =   {
                  r   =   224
                  g   =   151
                  b   =   26
                  __type   =   "Color"
               }
               __type   =   "OutlineDesc"
            }
            outlineIfCurrent   =   {
               highlightColor   =   {
                  r   =   54
                  g   =   255
                  b   =   25
                  __type   =   "Color"
               }
               occludedColor   =   {
                  r   =   54
                  g   =   255
                  b   =   25
                  __type   =   "Color"
               }
               __type   =   "OutlineDesc"
            }
         }
         OutlineRuleTruckSelectedForRoadPlan   =   {
            outline   =   {
               highlightColor   =   {
                  r   =   92
                  g   =   140
                  b   =   245
                  __type   =   "Color"
               }
               occludedColor   =   {
                  r   =   92
                  g   =   140
                  b   =   245
                  __type   =   "Color"
               }
               __type   =   "OutlineDesc"
            }
         }
      }
   }
   prop_markers   =   {
      markers   =   {
         AiTruckOnRoute   =   {
            marker   =   {
               assetPoolLink   =   "AiTruckOnRouteMarkerPool"
               isCullByDistance   =   False
               nearFarDist   =   {
                  x   =   10
                  y   =   200
                  __type   =   "Vector2d"
               }
               nearFarScale   =   {
                  x   =   2
                  y   =   1
                  __type   =   "Vector2d"
               }
               isLimitBySafeZone   =   False
               __type   =   "UiMarker2D"
            }
            positionTracker   =   {
               posOffset   =   {
                  y   =   2
                  __type   =   "Vector3d"
               }
               __type   =   "Tracker"
            }
            viewController   =   {
               __type   =   "UiAiTruckOnRouteMarkerController"
            }
            visibilityRules   =   {
               IsEagleMode   =   {
                  __type   =   "MarkerVisibilityRuleIsEagleMode"
               }
               AiTruckOnRoute   =   {
                  __type   =   "MarkerVisibilityRuleIsTruckOnRoute"
               }
               NotInGarage   =   {
                  __type   =   "MarkerVisibilityRuleNotInGarage"
               }
               NotInGarageCustomization   =   {
                  __type   =   "MarkerVisibilityRuleNotInGarageCustomization"
               }
            }
            __type   =   "UiUniversalMarker"
         }
      }
   }
   prop_truck_steering_wheel   =   {
      properties   =   {
         baseFriction   =   0.1
         additionalMudFriction   =   0.05
         frictionMaxVelocityCoeff   =   0.15
         springCoeff   =   0.25
         vibrationBaseDelay   =   300
         vibrationMaxVelocityDelay   =   150
         tiltMaxVelocityCoeff   =   0.45
         tiltMaxVelocity   =   1.5
         collisionMaxVelocity   =   4
         __type   =   "TruckSteeringWheelProperties"
      }
      frictionMap   =   {
         asphalt   =   {
            __value   =   0.15
         }
         sand   =   {
            __value   =   0.15
         }
         grass   =   {
            __value   =   0.15
         }
         ground   =   {
            __value   =   0.15
         }
         sub_mud   =   {
            __value   =   0.25
         }
         mud_grass   =   {
            __value   =   0.25
         }
         mud   =   {
            __value   =   0.25
         }
         mud_sand   =   {
            __value   =   0.25
         }
      }
   }
   prop_tagged   =   {
      tag   =   "UID_MODULE_WOOD_GRABBER"
   }
   sfx   =   {
      list   =   {
         part_water_impact_long_02   =   {
         }
         wheel_particle_water_falloff_01   =   {
         }
         wheel_particle_water_slow_falloff_01   =   {
         }
         track_particles_water_02   =   {
         }
         track_particles_hard_surface_01   =   {
         }
         track_particles_sand_01   =   {
         }
         track_particles_sand_02   =   {
         }
         track_particles_sand_dry_01   =   {
         }
         track_particles_sand_dry_02   =   {
         }
         track_particles_hard_surface   =   {
         }
         track_particles_gravel   =   {
         }
         track_particles_brick_01   =   {
         }
         track_particles_garbage_01   =   {
         }
         track_particles_ground   =   {
         }
         track_particles_dirt_01   =   {
         }
         track_particles_dirt_02   =   {
         }
         track_particles_mud   =   {
         }
         track_particles_mud_down_02   =   {
         }
         track_particles_ground_up_01   =   {
         }
         track_particles_ground_down_01   =   {
         }
         track_particles_mud_01   =   {
         }
         track_particles_mud_down_01   =   {
         }
         track_particles_water_puddle_01   =   {
         }
         track_particles_oil_puddle_01   =   {
         }
         track_particles_hard_surface_wet_01   =   {
         }
         track_particles_sand_wet_02   =   {
         }
         track_particles_sand_wet   =   {
         }
         track_particles_gravel_wet_01   =   {
         }
         part_radiator_haze   =   {
         }
         part_track_exhaust_02   =   {
         }
         part_track_acceleration_01   =   {
         }
         part_exhaust_steam   =   {
         }
         part_exhaust_oil   =   {
         }
         track_particles_smoke_ground   =   {
            emitters2   =   {
               CPU_Smoke   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              ageSpline   =   [
                                 0.0159,
                                 0,
                                 137,
                                 100,
                                 63,
                                 0.312108,
                                 255,
                                 137,
                                 100,
                                 63,
                                 0.712236,
                                 255,
                                 137,
                                 100,
                                 63,
                                 1,
                                 0,
                                 137,
                                 100,
                                 63
                              ]
                              constExpr   =   [
                                 255,
                                 255,
                                 255,
                                 255
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
            __type   =   "track_particles_smoke"
         }
         part_track_acceleration_single_exh_up_01   =   {
            emitters2   =   {
               Smoke_Flow_2   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         part_exhaust_up_01   =   {
            emitters2   =   {
               Smoke_Flow_3   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_7   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_8   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_11   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               PA_Normal_01   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
               PA_Normal_02   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
               PA_Normal_03   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
               PA_Normal_04   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         part_saw_chips_01   =   {
         }
         part_chips_center_01   =   {
         }
         part_chips_lower_01   =   {
         }
         part_chips_upper_01   =   {
         }
         part_sawdust_01   =   {
         }
         track_particles_wet_mud_down_01   =   {
         }
         track_particles_wet_dirt_02   =   {
         }
         part_exhaust_up_gas_01   =   {
            emitters2   =   {
               Smoke_Flow_7   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_8   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               PA_Normal_01   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
               PA_Normal_02   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         part_exhaust_up_gas_old_01   =   {
         }
         part_exhaust_up_neutral_01   =   {
         }
         part_exhaust_up_old   =   {
         }
         track_particles_oil_02   =   {
         }
         track_particles_mud_01_wet   =   {
            emitters2   =   {
               covering_med_car_mud   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_WET_ON   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_2   =   {
                  physics   =   {
                     cdt   =   {
                        coveringInteraction   =   {
                           layer2Add   =   0.05
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_3   =   {
                  physics   =   {
                     cdt   =   {
                        coveringInteraction   =   {
                           layer2Add   =   0.05
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
            __type   =   "track_particles_mud_01"
         }
         track_particles_dirt_01_wet   =   {
            emitters2   =   {
               covering_med_car_mud_1   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_WET_ON   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_2   =   {
                  physics   =   {
                     cdt   =   {
                        coveringInteraction   =   {
                           layer2Add   =   0.05
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_3   =   {
                  physics   =   {
                     cdt   =   {
                        coveringInteraction   =   {
                           layer2Add   =   0.05
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
            __type   =   "track_particles_dirt_01"
         }
      }
      __onlyOn   =   "visual"
   }
   prop_truck_rotator_native_controller   =   {
      rotators   =   {
         Fan   =   {
            rotatorStartStopCondition   =   {
               __type   =   "RotatorStartStopConditionEngineOnOffNative"
            }
            isSmoothStart   =   True
            rotatorBone   =   "BoneFanRotator"
            accelerationOverTime   =   [
               0,
               0,
               5,
               1
            ]
            deccelerationOverTime   =   [
               0,
               1,
               5,
               0
            ]
            velocityScalers   =   {
               Speed   =   {
                  value   =   500
               }
            }
            axis   =   [
               1,
               0,
               0
            ]
            __type   =   "TruckRotatorNative"
         }
         grapple_left   =   {
            rotatorVelocityCondition   =   {
               constraintName   =   "segment_2"
               __type   =   "RotatorConditionConstraintNative"
            }
            isStartedOnInit   =   True
            rotatorBone   =   "ctrl_grapple_left"
            velocityScalers   =   {
               scale   =   {
                  value   =   5
               }
            }
            axis   =   [
               1,
               0,
               0
            ]
            __type   =   "TruckRotatorNative"
         }
         grapple_left_head_spin_rotator   =   {
            rotatorVelocityCondition   =   {
               constraintName   =   "grapple"
               __type   =   "RotatorConditionConstraintNative"
            }
            isStartedOnInit   =   True
            rotatorBone   =   "ctrl_grapple_left_head_spin"
            velocityScalers   =   {
               scale   =   {
                  value   =   5
               }
            }
            axis   =   [
               0,
               1,
               0
            ]
            __type   =   "TruckRotatorNative"
         }
         grapple_right_rotator   =   {
            rotatorVelocityCondition   =   {
               constraintName   =   "segment_3"
               __type   =   "RotatorConditionConstraintNative"
            }
            isStartedOnInit   =   True
            rotatorBone   =   "ctrl_grapple_right"
            velocityScalers   =   {
               scale   =   {
                  value   =   5
               }
            }
            axis   =   [
               -1,
               0,
               0
            ]
            __type   =   "TruckRotatorNative"
         }
         grapple_right_claw_rotator   =   {
            rotatorVelocityCondition   =   {
               constraintName   =   "Claw_R"
               __type   =   "RotatorConditionConstraintNative"
            }
            isStartedOnInit   =   True
            rotatorBone   =   "ctrl_grapple_right_claw"
            velocityScalers   =   {
               scale   =   {
                  value   =   5
               }
            }
            axis   =   [
               0,
               -1,
               0
            ]
            __type   =   "TruckRotatorNative"
         }
      }
   }
   prop_water_falloff   =   {
      particleWaterFalloff   =   {
         particleName   =   "wheel_particle_water_falloff_01"
         __type   =   "CustomSfxEmitter"
      }
      particleWaterSlowFalloff   =   {
         particleName   =   "wheel_particle_water_slow_falloff_01"
         __type   =   "CustomSfxEmitter"
      }
      particlesCount   =   60
      startFrequency   =   6
      switchFrequency   =   4
   }
   prop_water_impact_scatter   =   {
      particleWaterSerf   =   {
         particleName   =   "part_water_impact_long_02"
         __type   =   "CustomSfxEmitter"
      }
      location   =   {
         posOffset   =   {
            __type   =   "Vector3d"
         }
         __type   =   "Tracker"
      }
      minVelocityForSplash   =   3
      minVelocityForLongParticles   =   2
   }
   prop_truck_water_interaction   =   {
      noiseScaleLow   =   0.15
      noiseScaleHigh   =   0.05
   }
   prop_driver   =   {
      boneName   =   "BoneCraneSeg_1_cdt"
      boneOffset   =   {
         x   =   1.1
         y   =   0.5
         z   =   0.42
         __type   =   "Vector3d"
      }
   }
   prop_malfunction   =   {
   }
   prop_usable   =   {
      smartsEntryPoints   =   {
         MalfuctionSmartPoint   =   {
            __type   =   "SmartEntryPointMalfunction"
         }
      }
   }
   prop_pre_soft_keyframe_updater   =   {
      syncBodyNames   =   [
         "BoneCraneSeg_1_cdt",
         "BoneCraneSeg_2_cdt",
         "BoneCraneSeg_3_cdt",
         "BoneCraneSeg_4_cdt",
         "BoneCraneSeg_5_cdt",
         "BoneCraneSeg_6_cdt",
         "BoneCraneSeg_7_cdt",
         "BoneCraneClaw_R_cdt",
         "BoneCraneClaw_L_cdt"
      ]
   }
   prop_truck_track   =   {
      tracks   =   [
         {
            section   =   {
               height   =   0.1
               tpl   =   "mtk_md76_res_track"
               segmentLength   =   0.15
               segmentBones   =   [
                  "bone0",
                  "bone1",
                  "bone2",
                  "bone3",
                  "bone4"
               ]
               __type   =   "TruckTrackSection"
            }
            decalDescIndex   =   0
            wheelIds   =   [
               0,
               1,
               2,
               3,
               4,
               5,
               6
            ]
            fakeWheelIds   =   [
               14,
               15,
               16
            ]
         },
         {
            section   =   {
               height   =   0.1
               tpl   =   "mtk_md76_res_track"
               segmentLength   =   0.15
               segmentBones   =   [
                  "bone0",
                  "bone1",
                  "bone2",
                  "bone3",
                  "bone4"
               ]
               __type   =   "TruckTrackSection"
            }
            decalDescIndex   =   0
            wheelIds   =   [
               7,
               8,
               9,
               10,
               11,
               12,
               13
            ]
            fakeWheelIds   =   [
               17,
               18,
               19
            ]
         }
      ]
      decalDescs   =   [
         {
            decalMeshNames   =   [
               "dirt_chunk_05truck"
            ]
            maxGeomScale   =   0.5
            maxDecalPerSegment   =   2
         }
      ]
   }
   prop_truck_track_outline   =   {
   }
   prop_truck_track_fresnel   =   {
   }
   prop_truck_track_hashed_opacity   =   {
   }
   prop_truck_track_phantom   =   {
   }
   prop_winchable   =   {
      winchSocketPoints   =   [
         {
            bodyName   =   "BoneCraneSeg_1_cdt"
            offsetInBodySpace   =   {
               x   =   -1.536
               y   =   0.024
               z   =   0.675
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneCraneSeg_1_cdt"
            offsetInBodySpace   =   {
               x   =   -1.536
               y   =   0.024
               z   =   -2.684
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneCraneSeg_1_cdt"
            offsetInBodySpace   =   {
               x   =   1.536
               y   =   0.024
               z   =   0.675
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneCraneSeg_1_cdt"
            offsetInBodySpace   =   {
               x   =   1.536
               y   =   0.024
               z   =   -2.684
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBody_cdt"
            offsetInBodySpace   =   {
               y   =   -0.05
               z   =   2.2
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneCraneSeg_1_cdt"
            offsetInBodySpace   =   {
               x   =   -1.3
               y   =   0.95
               z   =   -0.65
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneCraneSeg_1_cdt"
            offsetInBodySpace   =   {
               x   =   1.3
               y   =   0.95
               z   =   -0.65
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneCraneSeg_1_cdt"
            offsetInBodySpace   =   {
               y   =   0.85
               z   =   -2.92
               __type   =   "Vector3d"
            }
         }
      ]
      amountOfWinchPoints   =   4
   }
   prop_truck_default_camera_equipment_state   =   {
   }
   prop_truck_camera_preset   =   {
      preset   =   {
         cameraFocusPointOffset   =   {
            y   =   0.95
            z   =   0.7
            __type   =   "Vector3d"
         }
         attachmentBone   =   "_third_person_camera"
         minSpeedToFollow   =   2
         firstLaunchCameraAngles   =   {
            x   =   20
            __type   =   "Vector2d"
         }
         followChangeDirectionSpeedThreshold   =   2
         scrollPoints   =   {
            "0"   =   {
               distance   =   12
               followTerrainOffset   =   3
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "1"   =   {
               distance   =   14
               followTerrainOffset   =   3.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "2"   =   {
               distance   =   16
               followTerrainOffset   =   4
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "3"   =   {
               distance   =   18
               followTerrainOffset   =   4.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "4"   =   {
               distance   =   20
               followTerrainOffset   =   5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "5"   =   {
               distance   =   22
               followTerrainOffset   =   5.25
               __type   =   "RbVehicleCameraScrollPoint"
            }
         }
         interestPoints   =   [
            {
               angles   =   {
                  x   =   270
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   -2
                  __type   =   "Vector3d"
               }
               activationAngle   =   85
               activationDistance   =   30
            },
            {
               angles   =   {
                  x   =   90
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   3
                  z   =   0
                  __type   =   "Vector3d"
               }
               activationAngle   =   50
               activationDistance   =   30
               weight   =   2
            },
            {
               angles   =   {
                  y   =   210
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   -2
                  y   =   0
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   2
            },
            {
               angles   =   {
                  y   =   230
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   -3
                  y   =   0
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   2
            },
            {
               angles   =   {
                  y   =   250
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   -4
                  y   =   0
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   2
            },
            {
               angles   =   {
                  y   =   270
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   -4
                  y   =   0
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   2
            },
            {
               angles   =   {
                  y   =   290
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   -4
                  y   =   0
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   2
            },
            {
               angles   =   {
                  y   =   310
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   -3
                  y   =   0
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   2
            },
            {
               angles   =   {
                  y   =   330
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   -2
                  y   =   0
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   2
            },
            {
               angles   =   {
                  y   =   150
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   2
                  y   =   0
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   2
            },
            {
               angles   =   {
                  y   =   130
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   3
                  y   =   0
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   2
            },
            {
               angles   =   {
                  y   =   110
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   4
                  y   =   0
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   2
            },
            {
               angles   =   {
                  y   =   90
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   4
                  y   =   0
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   2
            },
            {
               angles   =   {
                  y   =   70
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   4
                  y   =   0
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   2
            },
            {
               angles   =   {
                  y   =   50
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   3
                  y   =   0
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   2
            },
            {
               angles   =   {
                  y   =   30
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   2
                  y   =   0
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   2
            },
            {
               angles   =   {
                  x   =   0
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   0
                  z   =   0
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   4
            },
            {
               angles   =   {
                  y   =   180
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   0
                  z   =   -4
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   2
            },
            {
               angles   =   {
                  x   =   40
                  __type   =   "Vector2d"
               }
               position   =   {
                  __type   =   "Vector3d"
               }
               activationAngle   =   80
               activationDistance   =   30
               weight   =   7
            },
            {
               angles   =   {
                  x   =   40
                  y   =   90
                  __type   =   "Vector2d"
               }
               position   =   {
                  __type   =   "Vector3d"
               }
               activationAngle   =   80
               activationDistance   =   30
               weight   =   7
            },
            {
               angles   =   {
                  x   =   40
                  y   =   180
                  __type   =   "Vector2d"
               }
               position   =   {
                  __type   =   "Vector3d"
               }
               activationAngle   =   80
               activationDistance   =   30
               weight   =   7
            },
            {
               angles   =   {
                  x   =   40
                  y   =   270
                  __type   =   "Vector2d"
               }
               position   =   {
                  __type   =   "Vector3d"
               }
               activationAngle   =   80
               activationDistance   =   30
               weight   =   7
            },
            {
               angles   =   {
                  x   =   12
                  y   =   0
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   0
                  y   =   1.2
                  z   =   0
                  __type   =   "Vector3d"
               }
               usePerAxisActivationAngles   =   True
               xActivationAngles   =   {
                  x   =   6
                  y   =   40
                  __type   =   "Vector2d"
               }
               yActivationAngles   =   {
                  x   =   65
                  y   =   65
                  __type   =   "Vector2d"
               }
               activationDistance   =   30
               weight   =   2.4
            },
            {
               angles   =   {
                  x   =   15
                  y   =   0
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   0
                  y   =   2
                  z   =   0
                  __type   =   "Vector3d"
               }
               usePerAxisActivationAngles   =   True
               xActivationAngles   =   {
                  x   =   6
                  y   =   40
                  __type   =   "Vector2d"
               }
               yActivationAngles   =   {
                  x   =   65
                  y   =   65
                  __type   =   "Vector2d"
               }
               activationDistance   =   30
               weight   =   2.2
            },
            {
               angles   =   {
                  x   =   18
                  y   =   0
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   3
                  z   =   0
                  __type   =   "Vector3d"
               }
               usePerAxisActivationAngles   =   True
               xActivationAngles   =   {
                  x   =   6
                  y   =   40
                  __type   =   "Vector2d"
               }
               yActivationAngles   =   {
                  x   =   65
                  y   =   65
                  __type   =   "Vector2d"
               }
               activationDistance   =   30
               weight   =   2.2
            },
            {
               angles   =   {
                  x   =   21
                  y   =   0
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   4
                  z   =   0
                  __type   =   "Vector3d"
               }
               usePerAxisActivationAngles   =   True
               xActivationAngles   =   {
                  x   =   6
                  y   =   40
                  __type   =   "Vector2d"
               }
               yActivationAngles   =   {
                  x   =   65
                  y   =   65
                  __type   =   "Vector2d"
               }
               activationDistance   =   30
               weight   =   2.2
            }
         ]
         transparencyParams   =   {
            poiLocalOffset   =   {
               y   =   0.5
               __type   =   "Vector3d"
            }
            __type   =   "RbVehicleCameraTransparencyParams"
         }
         __type   =   "RbVehicleCameraParams"
      }
   }
   prop_truck_camera_cockpit_preset   =   {
      preset   =   {
         cameraMouseSensitivity   =   0.25
         eyeOffset   =   {
            y   =   -0.1
            __type   =   "Vector3d"
         }
         rotationLimitsX   =   {
            x   =   -40
            y   =   45
            __type   =   "Vector2dRnd"
         }
         rotationLimitsY   =   {
            x   =   -150
            y   =   150
            __type   =   "Vector2dRnd"
         }
         forwardAngleOffset   =   {
            x   =   5
            __type   =   "Vector2d"
         }
         elasticParams   =   {
            stabilizerLength   =   {
               y   =   0.01
               __type   =   "Vector3d"
            }
            __type   =   "RbElasticOffsetParams"
         }
         stabilizedRotationParams   =   {
            lerpSpeed   =   {
               x   =   0.985
               y   =   0.999
               z   =   0.999
               __type   =   "Vector3d"
            }
            angleLimitDeg   =   {
               x   =   14
               y   =   -1
               z   =   -1
               __type   =   "Vector3d"
            }
            __type   =   "RbStabilizedRotationParams"
         }
         followParams   =   {
            yAngleLerpSpeed   =   0.85
            leftTurnParams   =   {
               turnSpeedRange   =   {
                  y   =   30
                  __type   =   "Vector2dRnd"
               }
               __type   =   "RbCockpitCameraFollowTurnParams"
            }
            rightTurnParams   =   {
               turnSpeedRange   =   {
                  y   =   30
                  __type   =   "Vector2dRnd"
               }
               __type   =   "RbCockpitCameraFollowTurnParams"
            }
            timeout   =   0.5
            __type   =   "RbCockpitCameraFollowParams"
         }
         __type   =   "RbCockpitCameraParams"
      }
   }
   prop_truck_cockpit_under_water_checker   =   {
      vehicleChecker   =   {
         checkerAttachBody   =   "_cockpit_camera"
         points   =   {
            Default_Point   =   {
               x   =   -0.5
               y   =   -1.2
               z   =   0.8
               __type   =   "Vector3d"
            }
            Vector3d   =   {
               x   =   0.4
               y   =   -1.2
               z   =   0.8
            }
            Vector3d_1   =   {
               x   =   -0.5
               y   =   -0.5
               z   =   -0.7
               __type   =   "Vector3d"
            }
            Vector3d_2   =   {
               x   =   0.4
               y   =   -0.5
               z   =   -0.7
               __type   =   "Vector3d"
            }
         }
         __type   =   "CockpitUnderwaterChecker"
      }
   }
   prop_truck_cinematic_camera_settings   =   {
   }
   prop_lod_controller   =   {
      lodStepsMinDistance   =   {
         LOW   =   {
            __value   =   40
         }
         MEDIUM   =   {
            __value   =   100
         }
         HIGH   =   {
            __value   =   250
         }
      }
   }
   prop_truck_view_wheel_fresnel   =   {
   }
   prop_truck_storable   =   {
   }
   prop_truck_deploy_info   =   {
   }
   prop_truck_view_phantom_mode_controller   =   {
   }
   prop_ik_system_visual   =   {
      chains   =   [
         {
            ikChainBodies   =   [
               "BoneCraneSeg_1_cdt",
               "Bone_IK_CraneSeg_1_PistonBase",
               "Bone_IK_CraneSeg_1_Piston"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     1,
                     0,
                     0
                  ]
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneCraneSeg_2_cdt"
                  bodyIKName   =   "Bone_IK_CraneSeg_1_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneCraneSeg_2_cdt",
               "Bone_IK_CraneSeg_2_PistonBase",
               "Bone_IK_CraneSeg_2_Piston"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     1,
                     0,
                     0
                  ]
                  min   =   -2
                  max   =   2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneCraneSeg_3_cdt"
                  bodyIKName   =   "Bone_IK_CraneSeg_2_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneCraneSeg_3_cdt",
               "Bone_IK_CraneSeg_3_PistonBase",
               "Bone_IK_CraneSeg_3_Piston"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     1,
                     0,
                     0
                  ]
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneCraneSeg_4_cdt"
                  bodyIKName   =   "Bone_IK_CraneSeg_3_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneCraneSeg_7_cdt",
               "Bone_IK_CraneClaw_R_PistonBase",
               "Bone_IK_CraneClaw_R_Piston"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     1,
                     0,
                     0
                  ]
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneCraneClaw_R_cdt"
                  bodyIKName   =   "Bone_IK_CraneClaw_R_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneCraneSeg_7_cdt",
               "Bone_IK_CraneClaw_L_PistonBase",
               "Bone_IK_CraneClaw_L_Piston"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     1,
                     0,
                     0
                  ]
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneCraneClaw_L_cdt"
                  bodyIKName   =   "Bone_IK_CraneClaw_L_Piston"
               }
            ]
         }
      ]
   }
   vfx   =   {
      vfxSkeleton   =   {
         vfxBones   =   [
            {
               name   =   "body_1_box"
               bone   =   "_body_1_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.098,
                        0.423,
                        4.859
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "body_2_box"
               bone   =   "_body_2_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        3.176,
                        0.29,
                        3.293
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "body_3_box"
               bone   =   "_body_3_box"
               boneOffset   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.02,
                        2.288,
                        1.97
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "track_l_box"
               isActiveByDefault   =   False
               bone   =   "_track_l_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.184,
                        0.698,
                        3.069
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "track_l1_box"
               isActiveByDefault   =   False
               bone   =   "_track_l1_box"
               boneOffset   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.184,
                        0.636,
                        0.863
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "track_l2_box"
               isActiveByDefault   =   False
               bone   =   "_track_l2_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.184,
                        0.649,
                        1.062
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "track_r_box"
               isActiveByDefault   =   False
               bone   =   "_track_r_box"
               boneOffset   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.184,
                        0.698,
                        3.069
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "track_r1_box"
               isActiveByDefault   =   False
               bone   =   "_track_r1_box"
               boneOffset   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.184,
                        0.636,
                        0.863
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "track_r2_box"
               isActiveByDefault   =   False
               bone   =   "_track_r2_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.184,
                        0.649,
                        1.062
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "body_4_l_box"
               bone   =   "_body_4_l_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.3,
                        1,
                        1
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "body_5_back_box"
               bone   =   "_body_5_back_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.2,
                        1.2,
                        0.3
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "body_6_l_box"
               bone   =   "_body_6_l_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.3,
                        0.819,
                        1.434
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "body_7_r_box"
               bone   =   "_body_7_r_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.3,
                        0.812,
                        2.012
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "body_8_r_box"
               bone   =   "_body_8_r_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.3,
                        1,
                        1
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "body_1_box_grass"
               bone   =   "_body_1_box"
               boneOffset   =   [
                  0,
                  -0.15,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        2.098,
                        0.6,
                        4.859
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   8
               grassParams   =   {
                  need_fast   =   False
                  need_lasting   =   True
               }
            },
            {
               name   =   "right_box_fast_grass"
               bone   =   "root"
               boneOffset   =   [
                  -2.1,
                  0.4,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.2,
                        0.5,
                        1
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   8
               grassParams   =   {
                  influence   =   0.25
                  fadeDistance   =   0.1
               }
            },
            {
               name   =   "left_box_fast_grass"
               bone   =   "root"
               boneOffset   =   [
                  2.1,
                  0.4,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.2,
                        0.5,
                        1
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   8
               grassParams   =   {
                  influence   =   0.25
                  fadeDistance   =   0.1
               }
            },
            {
               name   =   "rear_box_grass"
               bone   =   "cdt_BoneTower_3"
               boneOffset   =   [
                  0,
                  -0.45,
                  -0.35
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3,
                        1.5,
                        2
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   8
               grassParams   =   {
                  need_lasting   =   True
                  influence   =   0.5
               }
            },
            {
               name   =   "arrow_1_box"
               bone   =   "_arrow_1_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.53,
                        4.252,
                        0.674
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "arrow_2_box"
               bone   =   "_arrow_2_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.5,
                        3.8,
                        0.4
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "arrow_3_box"
               bone   =   "_arrow_3_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.526,
                        1.883,
                        0.359
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "grapple_box"
               bone   =   "_grapple_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.658,
                        0.779,
                        0.4
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "claw_R_1_box"
               bone   =   "_claw_R_1_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.219,
                        0.458,
                        0.318
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "claw_R_2_box"
               bone   =   "_claw_R_2_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.152,
                        0.55,
                        0.318
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "claw_L_1_box"
               bone   =   "_claw_L_1_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.217,
                        0.463,
                        0.202
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "claw_L_2_box"
               bone   =   "_claw_L_2_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.153,
                        0.554,
                        0.202
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "track_r2_box"
               bone   =   "_body_1_box"
               boneOffset   =   [
                  -1.2,
                  -0.24,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.6,
                        0.943,
                        4.779
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   2
               waterParams   =   {
                  influence   =   0
                  needToSpawnParticles   =   True
                  particlesSpawnFrequencyScale   =   2
               }
            },
            {
               name   =   "track_r3_box"
               bone   =   "_body_1_box"
               boneOffset   =   [
                  1.2,
                  -0.24,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.6,
                        0.943,
                        4.779
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   2
               waterParams   =   {
                  influence   =   0
                  needToSpawnParticles   =   True
                  particlesSpawnFrequencyScale   =   2
               }
            },
            {
               name   =   "body_2_box"
               bone   =   "_body_2_box"
               boneOffset   =   [
                  0,
                  0.43,
                  0.32
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.096,
                        1.16,
                        4.303
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   2
               waterParams   =   {
                  influence   =   0
                  needToSpawnParticles   =   True
                  particlesSpawnFrequencyScale   =   2
               }
            },
            {
               name   =   "shadow_01"
               bone   =   "cdt_BoneBody_1"
               boneOffset   =   [
                  0,
                  -0.08,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   4.5
                     radius   =   0.26
                     scaleX   =   5.11
                  }
                  capsule   =   {
                     height   =   4.5
                     radius   =   0.26
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_06"
               bone   =   "BoneCraneSeg_1_cdt"
               boneOffset   =   [
                  0,
                  0.4,
                  -2.22
               ]
               boneRotation   =   [
                  0,
                  90,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   1.34
                     radius   =   0.94
                     scaleX   =   0.76
                  }
                  capsule   =   {
                     height   =   1.42
                     radius   =   0.98
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_08"
               bone   =   "BoneCraneSeg_1_cdt"
               boneOffset   =   [
                  -0.07,
                  0.24,
                  -0.84
               ]
               boneRotation   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   0.92
                     radius   =   0.66
                     scaleX   =   2.16
                  }
                  capsule   =   {
                     height   =   0.92
                     radius   =   0.66
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_10"
               bone   =   "BoneCraneSeg_1_cdt"
               boneOffset   =   [
                  1.03,
                  0.88,
                  0.52
               ]
               boneRotation   =   [
                  90,
                  90,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   1.08
                     radius   =   0.62
                     scaleX   =   1.32
                  }
                  capsule   =   {
                     height   =   1.32
                     radius   =   0.65
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_11"
               bone   =   "root"
               boneOffset   =   [
                  1.2,
                  0.42,
                  -0.14
               ]
               boneRotation   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   3.71
                     radius   =   0.46
                     scaleX   =   0.6
                  }
                  capsule   =   {
                     height   =   3.87
                     radius   =   0.66
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_12"
               bone   =   "root"
               boneOffset   =   [
                  -1.2,
                  0.42,
                  -0.14
               ]
               boneRotation   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   3.71
                     radius   =   0.46
                     scaleX   =   0.6
                  }
                  capsule   =   {
                     height   =   3.87
                     radius   =   0.66
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            }
         ]
         __type   =   "vfx_skel"
      }
      capsuleShadowsParams   =   {
         enabled   =   True
      }
      __onlyOn   =   "visual"
   }
   prop_rear_view_mirror   =   {
   }
   prop_animation_controller   =   {
      controller   =   {
         animations   =   [
            {
               animation   =   {
                  tplAnimationName   =   "wipers_forward"
                  __type   =   "AnimationInfoTpl"
               }
               speed   =   1.4
               loop   =   False
               playing   =   False
            },
            {
               animation   =   {
                  tplAnimationName   =   "wipers_backward"
                  __type   =   "AnimationInfoTpl"
               }
               speed   =   1.4
               loop   =   False
               playing   =   False
            }
         ]
         updateEvents   =   True
         __type   =   "AnimationController"
      }
   }
   prop_wipers_controller   =   {
      windowNames   =   [
         "_hp_cab_glass_raindrops"
      ]
      forwardAnimation   =   "wipers_forward"
      backwardAnimation   =   "wipers_backward"
      forwardDelay   =   0.5
      backwardDelay   =   0.05
   }
   prop_route_following   =   {
      isBaseTruck   =   False
      supportedBehivours   =   {
         MOVE_STUCK_CANCEL   =   {
            truckSettings   =   {
               maxSteerSpeed   =   1
               backSteerSpeed   =   1.5
               lwiPoiValue   =   7
               __type   =   "AiTruckSettings"
            }
            targetVelocity   =   3
            cinematicVelocity   =   1.5
            targetVelocityPedalControl   =   {
               spline   =   [
                  -3,
                  -1,
                  -52.50547,
                  -82.80575,
                  -2.977876,
                  0.009231,
                  0,
                  0,
                  -0.307522,
                  -0.107692,
                  0.307522,
                  0.107692,
                  2,
                  1,
                  0,
                  1,
                  7.325406,
                  -0.699196
               ]
               __type   =   "SplineBezier1d"
            }
            applyDecelerationScaleByDistanceSquared   =   {
               spline   =   [
                  0,
                  1,
                  100,
                  1,
                  400,
                  0
               ]
               __type   =   "SplineCurve1d"
            }
            decelerationScaleByAngle   =   {
               spline   =   [
                  0,
                  1,
                  150,
                  0
               ]
               __type   =   "SplineCurve1d"
            }
            applySteerByDistanceSquared   =   {
               spline   =   [
                  100,
                  1,
                  900,
                  0
               ]
               __type   =   "SplineCurve1d"
            }
            steerByAngle   =   {
               spline   =   [
                  0,
                  1,
                  151.7329,
                  0.722445,
                  180,
                  0.001
               ]
               __type   =   "SplineCurve1d"
            }
            steerScale   =   1.5
            pointMixing   =   {
               spline   =   [
                  0,
                  0
               ]
               __type   =   "SplineCurve1d"
            }
            gearboxSettings   =   {
               __type   =   "AiTruckSettings"
            }
            __type   =   "MoveByPointsStuckCancelRouteBehaviourDesc"
         }
         MOVE_BY_POINTS   =   {
            truckSettings   =   {
               maxSteerSpeed   =   1
               backSteerSpeed   =   1.5
               lwiPoiValue   =   10
               __type   =   "AiTruckSettings"
            }
            targetVelocity   =   3
            cinematicVelocity   =   1.5
            targetVelocityPedalControl   =   {
               spline   =   [
                  -3,
                  -1,
                  -52.50547,
                  -82.80575,
                  -2.977876,
                  0.009231,
                  0,
                  0,
                  -0.307522,
                  -0.107692,
                  0.307522,
                  0.107692,
                  2,
                  1,
                  0,
                  1,
                  7.325406,
                  -0.699196
               ]
               __type   =   "SplineBezier1d"
            }
            applyDecelerationScaleByDistanceSquared   =   {
               spline   =   [
                  0,
                  1,
                  100,
                  1,
                  400,
                  0
               ]
               __type   =   "SplineCurve1d"
            }
            decelerationScaleByAngle   =   {
               spline   =   [
                  0,
                  1,
                  150,
                  0
               ]
               __type   =   "SplineCurve1d"
            }
            applySteerByDistanceSquared   =   {
               spline   =   [
                  100,
                  1,
                  900,
                  0
               ]
               __type   =   "SplineCurve1d"
            }
            steerByAngle   =   {
               spline   =   [
                  0,
                  1,
                  151.7329,
                  0.722445,
                  180,
                  0.001
               ]
               __type   =   "SplineCurve1d"
            }
            steerScale   =   1.5
            pointMixing   =   {
               spline   =   [
                  0,
                  0
               ]
               __type   =   "SplineCurve1d"
            }
            gearboxSettings   =   {
               __type   =   "AiTruckSettings"
            }
            __type   =   "MoveByPointsRouteBehaviourDesc"
         }
         MOVE_TO_START_POINT_CATERPILLARS   =   {
            truckSettings   =   {
               maxSteerSpeed   =   1
               backSteerSpeed   =   1.5
               lwiPoiValue   =   10
               __type   =   "AiTruckSettings"
            }
            firstPointOffset   =   -10
            thresholdDistSquare   =   1
            cosThreshold   =   0.06
            pedal   =   1
            steerScale   =   1.5
            minSteer   =   0.65
            __type   =   "MoveToStartPointCaterpillarsRouteBehaviourDesc"
         }
         MOVE_FROM_GARAGE_ON_START   =   {
            truckSettings   =   {
               awd   =   False
               overrideSteerSpeed   =   False
               maxSteerSpeed   =   1
               backSteerSpeed   =   1.5
               lwiPoiValue   =   10
               __type   =   "AiTruckSettings"
            }
            nodePassSquaredDistance   =   36
            __type   =   "MoveFromGarageBehaviourDesc"
         }
         MOVE_TO_GARAGE_ON_FINISH   =   {
            truckSettings   =   {
               awd   =   False
               overrideSteerSpeed   =   False
               maxSteerSpeed   =   1
               backSteerSpeed   =   1.5
               lwiPoiValue   =   10
               __type   =   "AiTruckSettings"
            }
            nodePassSquaredDistance   =   36
            immediatelyEnterGarageAngle   =   30
            turnZone   =   100
            __type   =   "MoveToGarageBehaviourDesc"
         }
      }
   }
   prop_phantom_truck_scanner   =   {
      scannerInfos   =   [
         {
         }
      ]
   }
   prop_phys_substance_target   =   {
      waterDragMultiplier   =   4.25
      oilDragMultiplier   =   8.5
      bodies   =   [
         "BoneBody_cdt",
         "BoneCraneSeg_1_cdt",
         "BoneCraneSeg_2_cdt",
         "BoneCraneSeg_3_cdt"
      ]
   }
   prop_truck_axles_controller   =   {
      independentAxles   =   [
         {
            frame   =   "BoneWheelRight1"
            singleWheelID   =   -1
         },
         {
            frame   =   "BoneWheelRight2"
            singleWheelID   =   -1
         },
         {
            frame   =   "BoneWheelRight3"
            singleWheelID   =   -1
         },
         {
            frame   =   "BoneWheelRight4"
            singleWheelID   =   -1
         },
         {
            frame   =   "BoneWheelRight5"
            singleWheelID   =   -1
         },
         {
            frame   =   "BoneWheelLeft1"
            singleWheelID   =   -1
         },
         {
            frame   =   "BoneWheelLeft2"
            singleWheelID   =   -1
         },
         {
            frame   =   "BoneWheelLeft3"
            singleWheelID   =   -1
         },
         {
            frame   =   "BoneWheelLeft4"
            singleWheelID   =   -1
         },
         {
            frame   =   "BoneWheelLeft5"
            singleWheelID   =   -1
         }
      ]
   }
   prop_ik   =   {
      movementspeedXZ   =   2.25
      movementspeedY   =   1.75
      maxTargetPositionError   =   0.2
      bodyNames   =   [
         "BoneBody_cdt",
         "BoneCraneSeg_1_cdt",
         "BoneCraneSeg_2_cdt",
         "BoneCraneSeg_3_cdt"
      ]
      effectorAttachOffset   =   {
         x   =   -3.292
         z   =   1.529
         __type   =   "Vector3d"
      }
      blockedZones   =   [
         {
            blockedZoneAttach   =   "BoneBody_cdt"
            blockedZoneAttachOffset   =   {
               y   =   -0.6
               __type   =   "Vector3d"
            }
            blockedZoneSize   =   {
               x   =   3.2
               y   =   1.8
               z   =   5
               __type   =   "Vector3d"
            }
         }
      ]
      constraintInertiaStabilizationAmount   =   0.2
      ikSystem   =   {
         syncMode   =   "SYNC_IK_TO_PHYSICS"
         numIterations   =   1
         maxPrismaticConstraintVelocity   =   2
         maxHingeConstraintVelocityInDegPerSecond   =   30
         __type   =   "PhysIkSystem"
      }
   }
   prop_truck_view_log_crane_controller   =   {
      clawChains   =   [
         "Claw_L",
         "Claw_R"
      ]
      clawRotationConstraintName   =   "segment_7"
      movementLerpCoef   =   4
      constraintAreaOffset   =   {
         x   =   0
         y   =   0
         z   =   0
         __type   =   "Vector3d"
      }
      resourcesConstraintZoneSize   =   {
         x   =   0
         y   =   0
         z   =   0
         __type   =   "Vector3d"
      }
   }
   prop_truck_constraint   =   {
      isNeedWheelLocks   =   False
      wheelLock   =   {
         __type   =   "TruckWheelDesc"
      }
      hookDesc   =   {
         type   =   {
            properties   =   {
               geom   =   {
                  nameTpl   =   "vehicle_hook_01"
               }
               prop_strap_hook   =   {
                  strapOffset   =   {
                     z   =   0.05
                     __type   =   "Vector3d"
                  }
               }
            }
            __type   =   "strap_hook"
         }
         __type   =   "IactorDesc"
      }
      strapDesc   =   {
         type   =   {
            __type   =   "chain_trail_01"
         }
         __type   =   "IactorDesc"
      }
      strapName   =   "chain_trail_01"
      strapPoints   =   [
         {
            x   =   0.639
            y   =   -0.327
            z   =   2.171
         },
         {
            x   =   -0.639
            y   =   -0.327
            z   =   2.171
         },
         {
            x   =   -0.494
            y   =   -0.357
            z   =   -2.394
         },
         {
            x   =   0.494
            y   =   -0.357
            z   =   -2.394
         }
      ]
   }
   prop_truck_reset_module_controller   =   {
      moduleRootBody   =   "BoneCraneSeg_1_cdt"
      chainsToReset   =   [
         "Grapple"
      ]
   }
   prop_truck_customization   =   {
   }
   prop_customization_materials   =   {
      defaultMaterial   =   "customization_material_00"
   }
   prop_customization_graffiti   =   {
   }
   prop_cockpit_dashboard   =   {
      elements   =   {
         "0"   =   {
            nameBone   =   "ctrl_dashboard_rpm"
            axis   =   "Y"
            maxRotationAngle   =   180
            dashboardSubtype   =   "RPM"
            damping   =   0.06
            increase   =   -20
            __type   =   "DashboardElementCockpit"
         }
         "1"   =   {
            nameBone   =   "ctrl_dashboard_fuel"
            axis   =   "Y"
            maxRotationAngle   =   180
            dashboardSubtype   =   "FUEL"
            __type   =   "DashboardElementCockpit"
         }
         "2"   =   {
            nameBone   =   "ctrl_dashboard_engine_1"
            axis   =   "Y"
            minRotationAngle   =   -5
            maxRotationAngle   =   85
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "3"   =   {
            nameBone   =   "ctrl_dashboard_engine_4"
            axis   =   "Y"
            minRotationAngle   =   0
            maxRotationAngle   =   80
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.0003
            __type   =   "DashboardElementCockpit"
         }
         "4"   =   {
            nameBone   =   "ctrl_dashboard_engine_5"
            axis   =   "Y"
            minRotationAngle   =   117
            maxRotationAngle   =   155
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "5"   =   {
            nameBone   =   "ctrl_dashboard_engine_6"
            axis   =   "Y"
            maxRotationAngle   =   100
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.0003
            __type   =   "DashboardElementCockpit"
         }
         "6"   =   {
            nameBone   =   "ctrl_dashboard_engine_7"
            axis   =   "Y"
            minRotationAngle   =   90
            maxRotationAngle   =   130
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "7"   =   {
            nameBone   =   "ctrl_dashboard_engine_3"
            axis   =   "Y"
            minRotationAngle   =   -60
            maxRotationAngle   =   20
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "8"   =   {
            nameBone   =   "ctrl_dashboard_engine_2"
            axis   =   "Y"
            minRotationAngle   =   -10
            maxRotationAngle   =   200
            dashboardSubtype   =   "SPEED"
            damping   =   0.1
            scale   =   2
            __type   =   "DashboardElementCockpit"
         }
         "9"   =   {
            nameBone   =   "ctrl_steering_right"
            maxRotationAngle   =   30
            steeringSubtype   =   "RL"
            nameBoneSecond   =   "ctrl_steering_left"
            rotationSpeed   =   50
            __type   =   "SteerigElementCockpit"
         }
         "10"   =   {
            nameBone   =   "ctrl_gear_stick_low"
            axis   =   "Y"
            maxRotationAngle   =   80
            speed   =   120
            switcherSubtype   =   "LOW_GEAR"
            __type   =   "SwitcherElementCockpit"
         }
         "11"   =   {
            nameBone   =   "ctrl_pedal_tower_l"
            lastElements   =   [
               {
                  axis   =   "Y"
                  rangeAngle   =   {
                     x   =   0
                     y   =   15
                     __type   =   "Vector2dRnd"
                  }
                  actionType   =   "LOG_CRANE_X"
                  speed   =   30
                  withCenteredPosition   =   True
               }
            ]
            __type   =   "EquipmentChainOrientationInputElementCockpit"
         }
         "12"   =   {
            nameBone   =   "ctrl_pedal_tower_r"
            lastElements   =   [
               {
                  axis   =   "Y"
                  rangeAngle   =   {
                     x   =   -15
                     y   =   0
                     __type   =   "Vector2dRnd"
                  }
                  actionType   =   "LOG_CRANE_X"
                  speed   =   30
                  withCenteredPosition   =   True
               }
            ]
            __type   =   "EquipmentChainOrientationInputElementCockpit"
         }
      }
   }
   prop_truck_view_actions_mapper   =   {
      uiAlternativeModeName   =   "UID_HUD_ALTERNATIVE_CRANE_MODE_LABEL"
      firstControlSectionUiName   =   "UID_HUD_FIRST_SECTION_CRANE"
      secondControlSectionUiName   =   "UID_HUD_SECOND_SECTION_CRANE"
      axisControls   =   [
         {
            uiActionDescription   =   "UID_HUD_LOG_CRANE_X"
            actionData   =   {
               actionType   =   "LOG_CRANE_X"
               __type   =   "AxisActionData"
            }
         },
         {
            uiActionDescription   =   "UID_HUD_LOG_CRANE_Y"
            actionData   =   {
               actionType   =   "LOG_CRANE_Y"
               __type   =   "AxisActionData"
            }
            activationInputType   =   "LEFT_MOUSE_BUTTON"
            axisDirectionType   =   "Y_AXIS"
            controlModeType   =   "WITH_BUTTONS"
         },
         {
            uiActionDescription   =   "UID_HUD_LOG_CRANE_Z"
            actionData   =   {
               actionType   =   "LOG_CRANE_Z"
               __type   =   "AxisActionData"
            }
            axisDirectionType   =   "Y_AXIS"
         },
         {
            uiActionDescription   =   "UID_HUD_LOG_CRANE_ROTATE_CLAW"
            actionData   =   {
               actionType   =   "LOG_CRANE_CLAWS_ROTATE"
               strengthFactor   =   0.02
               __type   =   "AxisActionData"
            }
            activationInputType   =   "LEFT_MOUSE_BUTTON"
            controlModeType   =   "WITH_BUTTONS"
         }
      ]
      staticTruckAxisControls   =   [
         {
            uiActionDescription   =   "UID_HUD_LOG_CRANE_X"
            inputLink   =   {
               inputLink   =   "Game.FirstHorizontalAxis"
               __type   =   "InputLinkVector"
            }
            actionData   =   {
               actionType   =   "LOG_CRANE_X"
               __type   =   "AxisActionData"
            }
         },
         {
            uiActionDescription   =   "UID_HUD_LOG_CRANE_Y"
            inputLink   =   {
               inputLink   =   "Game.SecondVerticalAxis"
               __type   =   "InputLinkVector"
            }
            axisDirectionType   =   "Y_AXIS"
            actionData   =   {
               actionType   =   "LOG_CRANE_Y"
               __type   =   "AxisActionData"
            }
         },
         {
            uiActionDescription   =   "UID_HUD_LOG_CRANE_Z"
            inputLink   =   {
               inputLink   =   "Game.FirstVerticalAxis"
               __type   =   "InputLinkVector"
            }
            axisDirectionType   =   "Y_AXIS"
            actionData   =   {
               actionType   =   "LOG_CRANE_Z"
               __type   =   "AxisActionData"
            }
         },
         {
            uiActionDescription   =   "UID_HUD_LOG_CRANE_ROTATE_CLAW"
            inputLink   =   {
               inputLink   =   "Game.ThirdHorizontalAxis"
               __type   =   "InputLinkVector"
            }
            actionData   =   {
               actionType   =   "LOG_CRANE_CLAWS_ROTATE"
               strengthFactor   =   0.02
               __type   =   "AxisActionData"
            }
         }
      ]
      alternativeActionsInCraneControlMode   =   [
         {
         },
         {
         },
         {
         },
         {
         },
         {
         },
         {
            isActionActive   =   False
         },
         {
         },
         {
         },
         {
         }
      ]
      alternativeActionsInDefaultMode   =   [
         {
            isActionActive   =   False
         },
         {
            isActionActive   =   False
         },
         {
         },
         {
         },
         {
         },
         {
         },
         {
         },
         {
         },
         {
         }
      ]
      alternativeActions   =   [
         {
            actionMappingType   =   "CONSTRAINT_ACTION"
            uiActionDescription   =   "UID_HUD_LOG_CRANE_TOGGLE_CLAW"
            constraintType   =   "CONSTRAINT_CHAIN"
            chainConstraintAction   =   {
               constraintNames   =   [
                  "Claw_L",
                  "Claw_R"
               ]
               __type   =   "ChainContraintAction"
            }
         },
         {
            actionMappingType   =   "CONSTRAINT_ACTION"
            uiActionDescription   =   "UID_HUD_LOG_CRANE_ROTATE_GRAPPLE"
            constraintType   =   "CONSTRAINT_CHAIN"
            chainConstraintAction   =   {
               constraintNames   =   [
                  "Grapple"
               ]
               __type   =   "ChainContraintAction"
            }
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
            uiActionDescription   =   "UID_HUD_EQUIPMENT_MODE"
            namedActionType   =   "TOGGLE_EQUIPMENT_CAMERA"
            canWorkWithEngineOff   =   True
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
            uiActionDescription   =   "UID_RESET_MODULE"
            namedActionType   =   "RESET_CONTROLLABLE_MODULE"
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
            uiActionDescription   =   "UID_UCOUPLE_WINCH_INPUT"
            namedActionType   =   "UNCOUPLE_WINCH"
            canWorkWithEngineOff   =   True
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
            holdableAction   =   {
               actionMappingType   =   "STATE_SWITCHER_ACTION"
               isToggleable   =   True
               uiActionDescription   =   "UID_HUD_ALTERNATIVE_MANIPULATION_MODE_ON"
               altUiActionDescription   =   "UID_HUD_ALTERNATIVE_MANIPULATION_MODE_OFF"
               namedActionType   =   "TOGGLE_CRANE_CONTROLS"
               canWorkWithEngineOff   =   False
               __type   =   "HoldableAction"
            }
            holdThreshold   =   1
         }
      ]
      firstAction   =   {
         actionMappingType   =   "CONSTRAINT_ACTION"
         uiActionDescription   =   "UID_HUD_LOG_CRANE_TOGGLE_CLAW"
         constraintType   =   "CONSTRAINT_CHAIN"
         chainConstraintAction   =   {
            constraintNames   =   [
               "Claw_L",
               "Claw_R"
            ]
            __type   =   "ChainContraintAction"
         }
         __type   =   "ActionMapping"
      }
      secondAction   =   {
         actionMappingType   =   "CONSTRAINT_ACTION"
         uiActionDescription   =   "UID_HUD_LOG_CRANE_ROTATE_GRAPPLE"
         constraintType   =   "CONSTRAINT_CHAIN"
         chainConstraintAction   =   {
            constraintNames   =   [
               "Grapple"
            ]
            __type   =   "ChainContraintAction"
         }
         __type   =   "ActionMapping"
      }
      thirdAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         __type   =   "ActionMapping"
      }
      fourthAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         uiActionDescription   =   "UID_HUD_EQUIPMENT_MODE"
         namedActionType   =   "TOGGLE_EQUIPMENT_CAMERA"
         canWorkWithEngineOff   =   True
         __type   =   "ActionMapping"
      }
      fifthAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         __type   =   "ActionMapping"
      }
      sixthAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         uiActionDescription   =   "UID_RESET_MODULE"
         namedActionType   =   "RESET_CONTROLLABLE_MODULE"
         __type   =   "ActionMapping"
      }
      seventhAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         __type   =   "ActionMapping"
      }
      eighthAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         uiActionDescription   =   "UID_UCOUPLE_WINCH_INPUT"
         namedActionType   =   "UNCOUPLE_WINCH"
         canWorkWithEngineOff   =   True
         __type   =   "ActionMapping"
      }
      ninthAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         __type   =   "ActionMapping"
      }
      legacyActionsInCraneControlMode   =   [
         {
         },
         {
         },
         {
         },
         {
            isActionActive   =   False
         },
         {
         },
         {
            isActionActive   =   False
         },
         {
         },
         {
         },
         {
         }
      ]
      legacyActionsInDefaultMode   =   [
         {
            isActionActive   =   False
         },
         {
            isActionActive   =   False
         },
         {
         },
         {
         },
         {
         },
         {
         },
         {
         },
         {
         },
         {
         }
      ]
      legacyCraneActions   =   [
         {
            actionMappingType   =   "CONSTRAINT_ACTION"
            uiActionDescription   =   "UID_HUD_LOG_CRANE_TOGGLE_CLAW"
            constraintType   =   "CONSTRAINT_CHAIN"
            chainConstraintAction   =   {
               constraintNames   =   [
                  "Claw_L",
                  "Claw_R"
               ]
               __type   =   "ChainContraintAction"
            }
         },
         {
            actionMappingType   =   "CONSTRAINT_ACTION"
            uiActionDescription   =   "UID_HUD_LOG_CRANE_ROTATE_GRAPPLE"
            constraintType   =   "CONSTRAINT_CHAIN"
            chainConstraintAction   =   {
               constraintNames   =   [
                  "Grapple"
               ]
               __type   =   "ChainContraintAction"
            }
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
            uiActionDescription   =   "UID_HUD_EQUIPMENT_MODE"
            namedActionType   =   "TOGGLE_EQUIPMENT_CAMERA"
            canWorkWithEngineOff   =   True
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
            uiActionDescription   =   "UID_RESET_MODULE"
            namedActionType   =   "RESET_CONTROLLABLE_MODULE"
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
            uiActionDescription   =   "UID_UCOUPLE_WINCH_INPUT"
            namedActionType   =   "UNCOUPLE_WINCH"
            canWorkWithEngineOff   =   True
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
            holdableAction   =   {
               actionMappingType   =   "STATE_SWITCHER_ACTION"
               isToggleable   =   True
               uiActionDescription   =   "UID_HUD_ALTERNATIVE_MANIPULATION_MODE_ON"
               altUiActionDescription   =   "UID_HUD_ALTERNATIVE_MANIPULATION_MODE_OFF"
               namedActionType   =   "TOGGLE_CRANE_CONTROLS"
               canWorkWithEngineOff   =   False
               __type   =   "HoldableAction"
            }
            holdThreshold   =   1
         }
      ]
      truckInputConfiguration   =   {
         isMainActionsMapped   =   True
         isSecondaryActionsMapped   =   True
         isFirstActionModeNeeded   =   True
         isSecondActionModeNeeded   =   True
         useToggleForFirstMode   =   True
         useToggleForSecondMode   =   True
         __type   =   "TruckInputConfiguration"
      }
   }
   prop_camera_equipment_preset   =   {
      preset   =   {
         cameraFocusPointOffset   =   {
            y   =   -1
            __type   =   "Vector3d"
         }
         attachmentBone   =   "_equipment_camera"
         minSpeedToFollow   =   0
         firstLaunchCameraAngles   =   {
            __type   =   "null"
         }
         followChangeDirectionSpeedThreshold   =   0
         xAngleLimits   =   {
            x   =   33
            y   =   85
            __type   =   "Vector2d"
         }
         scrollPoints   =   {
            "0"   =   {
               distance   =   9
               followTerrainOffset   =   2
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "1"   =   {
               distance   =   11
               followTerrainOffset   =   2.3
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "2"   =   {
               distance   =   13
               followTerrainOffset   =   2.6
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "3"   =   {
               distance   =   15
               followTerrainOffset   =   2.9
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "4"   =   {
               distance   =   17
               followTerrainOffset   =   3.2
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "5"   =   {
               distance   =   19
               followTerrainOffset   =   3.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
         }
         __type   =   "RbVehicleCameraParams"
      }
      equipmentCameraType   =   "CRANE"
      craneCameraVerticalSpeed   =   4
   }
   prop_covering   =   {
      voxelSize   =   0.4
      layer0   =   {
         fadeOutSpeed   =   0.005
      }
      layer1   =   {
         fadeOutSpeed   =   0.0083
      }
      layer2   =   {
         fadeOutSpeed   =   0.01
      }
      layer3   =   {
         fadeOutSpeed   =   0.01
      }
   }
   prop_truck_track_covering   =   {
   }
   prop_truck_fade_controller   =   {
      params   =   {
         fadeDistance   =   1.7
         minOpacity   =   0.38
         __type   =   "ActorFadeControllerParams"
      }
   }
   prop_lod_actor_fade   =   {
   }
   prop_towing   =   {
      steeringThreshold   =   10
      reverseAngleThreshold   =   0
      velocityScale   =   1.5
      stuckVelocityThreshold   =   2
      stuckScaleChange   =   0.5
      steerScaleByAngle   =   {
         spline   =   [
            0,
            1,
            0,
            1,
            0,
            1
         ]
         __type   =   "SplineBezier1d"
      }
      masterConnectType   =   "CENTER"
      masterOffset   =   {
         y   =   1
         __type   =   "Vector3d"
      }
      slaveConnectType   =   "CENTER"
      slaveOffset   =   {
         y   =   1
         z   =   0
         __type   =   "Vector3d"
      }
      isCaterpillars   =   True
   }
   prop_truck_upside_down_checker   =   {
   }
   prop_wheel_particles_base   =   {
      waterSfxWheels   =   {
         __type   =   "CustomSfxEmitter"
      }
      waterSfxTrack   =   {
         particleName   =   "track_particles_water_02"
         __type   =   "CustomSfxEmitter"
      }
      oilSfxTrack   =   {
         particleName   =   "track_particles_oil_02"
         __type   =   "CustomSfxEmitter"
      }
      waterTrackSettings   =   {
         timeToFullChange   =   1
         spreadAngle   =   45
         maxParticleVelocity   =   6.5
         __type   =   "TrackParticleMaterialSettings"
      }
      wetnessThreshold   =   0.8
      tracksDrySfxs   =   [
         {
            material   =   "asphalt"
            emitter   =   {
               particleName   =   "track_particles_hard_surface_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               wrapParticles   =   False
               emitFromBottom   =   True
               bottomSpreadAngle   =   10
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_hard_surface_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "sand"
            emitter   =   {
               particleName   =   "track_particles_sand_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               emitFromBottom   =   True
               bottomSpreadAngle   =   10
               timeToFullChange   =   3.4
               useSpacialBottomParticles   =   True
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_sand_02"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "sand_dry"
            emitter   =   {
               particleName   =   "track_particles_sand_dry_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               emitFromBottom   =   True
               bottomSpreadAngle   =   45
               timeToFullChange   =   3.4
               useSpacialBottomParticles   =   True
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_sand_dry_02"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "mud_sand"
            emitter   =   {
               particleName   =   "track_particles_sand_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               emitFromBottom   =   True
               bottomSpreadAngle   =   0
               timeToFullChange   =   3.4
               useSpacialBottomParticles   =   True
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_sand_02"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "stone"
            emitter   =   {
               particleName   =   "track_particles_hard_surface"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               wrapParticles   =   False
               emitFromBottom   =   True
               bottomSpreadAngle   =   10
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_hard_surface_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "gravel_small"
            emitter   =   {
               particleName   =   "track_particles_gravel"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               emitFromBottom   =   True
               bottomSpreadAngle   =   10
               timeToFullChange   =   3.4
               angleRandRange   =   {
                  x   =   -10
                  y   =   15
                  __type   =   "Vector2d"
               }
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_hard_surface_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "brick"
            emitter   =   {
               particleName   =   "track_particles_brick_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               wrapParticles   =   False
               emitFromBottom   =   True
               bottomSpreadAngle   =   10
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_brick_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "garbage"
            emitter   =   {
               particleName   =   "track_particles_garbage_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               wrapParticles   =   False
               emitFromBottom   =   True
               bottomSpreadAngle   =   10
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_garbage_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "ground"
            emitter   =   {
               particleName   =   "track_particles_mud_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               wrapParticles   =   True
               emitFromBottom   =   True
               bottomSpreadAngle   =   10
               timeToFullChange   =   3.4
               useSpacialBottomParticles   =   True
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_mud_down_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "dirt"
            emitter   =   {
               particleName   =   "track_particles_dirt_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               emitFromBottom   =   True
               bottomSpreadAngle   =   30
               timeToFullChange   =   3.4
               useSpacialBottomParticles   =   True
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_dirt_02"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "mud"
            emitter   =   {
               particleName   =   "track_particles_mud"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               emitFromBottom   =   True
               bottomSpreadAngle   =   10
               timeToFullChange   =   3.4
               useSpacialBottomParticles   =   True
               maxParticleVelocity   =   4.5
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_mud_down_02"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "grass"
            emitter   =   {
               particleName   =   "track_particles_ground_up_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               emitFromBottom   =   True
               bottomSpreadAngle   =   10
               timeToFullChange   =   3.4
               useSpacialBottomParticles   =   True
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_ground_down_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "mud_grass"
            emitter   =   {
               particleName   =   "track_particles_mud_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               emitFromBottom   =   True
               bottomSpreadAngle   =   10
               timeToFullChange   =   3.4
               useSpacialBottomParticles   =   True
               maxParticleVelocity   =   3.5
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_mud_down_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "water_puddle"
            emitter   =   {
               particleName   =   "track_particles_water_puddle_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               wrapParticles   =   False
               emitFromBottom   =   True
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_water_puddle_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "oil"
            emitter   =   {
               particleName   =   "track_particles_oil_puddle_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               wrapParticles   =   False
               emitFromBottom   =   True
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_oil_puddle_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "default"
            emitter   =   {
               particleName   =   "track_particles_hard_surface_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               wrapParticles   =   False
               emitFromBottom   =   True
               bottomSpreadAngle   =   10
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_hard_surface_01"
               __type   =   "CustomSfxEmitter"
            }
         }
      ]
      tracksWetSfxs   =   [
         {
            material   =   "asphalt"
            emitter   =   {
               particleName   =   "track_particles_hard_surface_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               wrapParticles   =   False
               emitFromBottom   =   True
               bottomSpreadAngle   =   10
               maxParticleVelocity   =   4.5
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_hard_surface_wet_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "sand"
            emitter   =   {
               particleName   =   "track_particles_sand_wet_02"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               emitFromBottom   =   True
               bottomSpreadAngle   =   0
               timeToFullChange   =   3.4
               useSpacialBottomParticles   =   True
               angleRandRange   =   {
                  x   =   -10
                  __type   =   "Vector2d"
               }
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_sand_wet"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "mud_sand"
            emitter   =   {
               particleName   =   "track_particles_sand_wet_02"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               emitFromBottom   =   True
               bottomSpreadAngle   =   0
               timeToFullChange   =   3.4
               useSpacialBottomParticles   =   True
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_sand_wet"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "gravel_small"
            emitter   =   {
               particleName   =   "track_particles_gravel_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               wrapParticles   =   True
               emitFromBottom   =   True
               bottomSpreadAngle   =   10
               timeToFullChange   =   3.4
               angleRandRange   =   {
                  x   =   -10
                  y   =   15
                  __type   =   "Vector2d"
               }
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_gravel_wet_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "ground"
            emitter   =   {
               particleName   =   "track_particles_mud_01_wet"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               wrapParticles   =   False
               emitFromBottom   =   True
               bottomSpreadAngle   =   10
               timeToFullChange   =   3.4
               useSpacialBottomParticles   =   True
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_wet_mud_down_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "dirt"
            emitter   =   {
               particleName   =   "track_particles_dirt_01_wet"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               emitFromBottom   =   True
               bottomSpreadAngle   =   30
               timeToFullChange   =   3.4
               useSpacialBottomParticles   =   True
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_wet_dirt_02"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "mud"
            emitter   =   {
               particleName   =   "track_particles_mud_01_wet"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               emitFromBottom   =   True
               bottomSpreadAngle   =   20
               timeToFullChange   =   3.4
               useSpacialBottomParticles   =   True
               maxParticleVelocity   =   3.5
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_wet_mud_down_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "grass"
            emitter   =   {
               particleName   =   "track_particles_mud_01_wet"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               wrapParticles   =   True
               emitFromBottom   =   True
               bottomSpreadAngle   =   10
               timeToFullChange   =   3.4
               useSpacialBottomParticles   =   True
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_wet_mud_down_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "mud_grass"
            emitter   =   {
               particleName   =   "track_particles_mud_01_wet"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               emitFromBottom   =   True
               bottomSpreadAngle   =   20
               timeToFullChange   =   3.4
               useSpacialBottomParticles   =   True
               maxParticleVelocity   =   4.5
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_wet_mud_down_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "water_puddle"
            emitter   =   {
               particleName   =   "track_particles_water_puddle_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               wrapParticles   =   False
               emitFromBottom   =   True
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_water_puddle_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "stone"
            emitter   =   {
               particleName   =   "track_particles_hard_surface"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               wrapParticles   =   False
               emitFromBottom   =   True
               bottomSpreadAngle   =   10
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_hard_surface_wet_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "oil"
            emitter   =   {
               particleName   =   "track_particles_oil_puddle_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               wrapParticles   =   False
               emitFromBottom   =   True
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_oil_puddle_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "default"
            emitter   =   {
               particleName   =   "track_particles_hard_surface_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               wrapParticles   =   False
               emitFromBottom   =   True
               bottomSpreadAngle   =   10
               maxParticleVelocity   =   4.5
               __type   =   "TrackParticleMaterialSettings"
            }
            customBottomParticles   =   {
               particleName   =   "track_particles_hard_surface_wet_01"
               __type   =   "CustomSfxEmitter"
            }
         }
      ]
   }
   prop_truck_warning_notification   =   {
   }
   prop_truck_shaker_native_controller   =   {
      shakers   =   {
         EngineStart   =   {
            shakerBone   =   "BoneBody_cdt"
            frequency   =   60
            maxAngleOffsetScale   =   1
            minAngle   =   [
               -0.02,
               0,
               -0.02
            ]
            maxAngle   =   [
               0.02,
               0,
               0.02
            ]
            angleMultiplier   =   [
               0,
               1,
               0.506172,
               1.007923,
               1,
               0
            ]
            maxPositionOffsetScale   =   1
            minOffset   =   [
               -0.0005,
               0,
               -0.0005
            ]
            maxOffset   =   [
               0.0005,
               0,
               0.0005
            ]
            positionMultiplier   =   [
               0,
               1,
               0.522752,
               1.020356,
               1,
               0
            ]
            shakeOnStartTimeMs   =   0
            dampingStep   =   15
            frequencyMultiplier   =   [
               0.000486,
               0.984934,
               0.261941,
               0.524217,
               0.999501,
               0.002651
            ]
         }
         EngineShutdown   =   {
            shakerBone   =   "BoneBody_cdt"
            frequency   =   50
            maxAngleOffsetScale   =   1
            minAngle   =   [
               -0.03,
               0,
               -0.03
            ]
            maxAngle   =   [
               0.03,
               0,
               0.03
            ]
            angleMultiplier   =   [
               0,
               0.4,
               1,
               1
            ]
            maxPositionOffsetScale   =   1
            positionMultiplier   =   [
               0,
               0.4,
               1,
               1
            ]
            shakeOnStartTimeMs   =   20
            dampingStep   =   15
            frequencyMultiplier   =   [
               0.2,
               0,
               0.5,
               1,
               1,
               0.75
            ]
         }
      }
   }
   prop_terrain_impact_handler   =   {
      impactEffects   =   {
         mud   =   {
            type   =   {
               __type   =   "part_mud_impact"
            }
            __type   =   "IactorDesc"
         }
         grass   =   {
            type   =   {
               __type   =   "part_water_impact"
            }
            __type   =   "IactorDesc"
         }
         sand   =   {
            type   =   {
               __type   =   "part_water_impact"
            }
            __type   =   "IactorDesc"
         }
      }
   }
   prop_objective_scanner   =   {
      resourcesDisplayDuration   =   5
      resourcesHighlightEmissive   =   8
      objectiveScanner   =   {
         center   =   {
            posOffset   =   {
               __type   =   "Vector3d"
            }
            __type   =   "Tracker"
         }
         __type   =   "ScannerTag"
      }
      scannerVfxActorDesc   =   {
         type   =   {
            __type   =   "sfx_radar_objective_sphere"
         }
         __type   =   "IactorDesc"
      }
      vfxActorOffset   =   {
         __type   =   "Vector3d"
      }
   }
   prop_distribution_gpu_spawn_sfx   =   {
      effects   =   {
         sfx_leaves_red_01   =   {
            type   =   {
               __type   =   "sfx_leaves_red_01"
            }
            __type   =   "IactorDesc"
         }
      }
   }
   prop_vehicle_lights_material   =   {
      lights   =   {
         "0"   =   {
            geomNames   =   [
               "reflector_headlight"
            ]
            __type   =   "Headlights"
         }
         "1"   =   {
            geomNames   =   [
               "reverse_lights"
            ]
            __type   =   "ReverseHeadlights"
         }
         "2"   =   {
            defaultName   =   "default"
            lightName   =   "lights_emissive"
            geomNames   =   [
               "_hp_cab_interior_gauges"
            ]
            __type   =   "CockpitLights"
         }
      }
   }
}
__type   =   "truck_view"
