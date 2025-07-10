properties   =   {
   geom   =   {
      nameTpl   =   "don_72_malamute_scout_trailer_res"
   }
   prop_truck_view_controller   =   {
      engineFiringDelay   =   1000
   }
   prop_truck_view   =   {
      truckName   =   "don_72malamute_scout_trailer_new"
      truckType   =   "scout"
      truckVisibilityInFogOfWar   =   100
   }
   prop_truck_rb   =   {
      suspensionAxleCollection   =   [
         {
            min   =   -0.28
            max   =   0.65
            height   =   0.15
            strength   =   0.025
            damping   =   0.15
         },
         {
            min   =   -0.28
            max   =   0.65
            height   =   0.15
            strength   =   0.03
            damping   =   0.15
         }
      ]
      softContactSettings   =   {
         maxPenetrationDepth   =   3
         forceScale   =   0.015
      }
      suspensionCollectionMap   =   {
         Front   =   {
            __value   =   0
         }
         Rear   =   {
            __value   =   1
         }
      }
      engine   =   {
         params   =   {
            torque   =   95000
            brakesDelay   =   0.4
            maxDeltaAngVel   =   0.01
            responsiveness   =   0.35
            jerkingScale   =   0.2
            jerkingPeriod   =   0.15
            rpmDropTime   =   4.5
            rpmDropTimeOnHandbrake   =   2
            __type   =   "TruckEngineParams"
         }
         __type   =   "TruckEngine"
      }
      gearbox   =   {
         params   =   {
            gears   =   [
               {
                  sslModule   =   "physics.truck.truck_components"
                  angularVelocity   =   3
                  gearRatio   =   3.5
                  targetSpeedRangeKmh   =   {
                     y   =   16
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  sslModule   =   "physics.truck.truck_components"
                  angularVelocity   =   5
                  gearRatio   =   2.5
                  targetSpeedRangeKmh   =   {
                     x   =   16
                     y   =   24
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  sslModule   =   "physics.truck.truck_components"
                  angularVelocity   =   8
                  gearRatio   =   2
                  targetSpeedRangeKmh   =   {
                     x   =   24
                     y   =   29
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   14
                  gearRatio   =   1.7
                  targetSpeedRangeKmh   =   {
                     x   =   29
                     y   =   36
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   20
                  gearRatio   =   1.5
                  targetSpeedRangeKmh   =   {
                     x   =   36
                     y   =   60
                     __type   =   "Vector2dRnd"
                  }
               }
            ]
            reverseGear   =   {
               angularVelocity   =   1
               gearRatio   =   4
               __type   =   "TruckSingleGearParams"
            }
            highGear   =   {
               angularVelocity   =   10
               __type   =   "TruckSingleGearParams"
            }
            lowRangeGear   =   {
               angularVelocity   =   0.25
               gearRatio   =   4.2
               __type   =   "TruckSingleGearParams"
            }
            isLowRangeModeReverseEnabled   =   True
            isLowRangeModeClutchingEnabled   =   False
            clutchSwitchTime   =   0.1
            defaultGearSwitchDelay   =   0.1
            upperGearSwitchDelayBase   =   0.1
            upperGearSwitchDelayGearNumMultiplier   =   0.45
            downGearSwitchDelay   =   1
            neutralGearSwitchingDelay   =   3
            __type   =   "TruckGearboxParams"
         }
         __type   =   "TruckGearbox"
      }
      maxSteerSpeed   =   0.03
      backSteerSpeed   =   0.06
      pedalsResponsiveness   =   0.2
      isNeutralGearWheelResistanceEnabled   =   False
      isReverseWheelResistanceEnabled   =   True
      isUnlockDiffAvrVelocity   =   True
      unlockDiffAvrVelocityMinTorque   =   0.2
      projectCallbacks   =   {
         __type   =   "TruckRoadbuilderCallbacks"
      }
      slopeAngleFrictionMult   =   {
         spline   =   [
            0,
            1,
            30,
            1,
            65,
            0.9,
            75,
            0.35
         ]
         __type   =   "SplineCurve1d"
      }
      wheelsSubstanceResistanceMult   =   {
         spline   =   [
            0,
            0.6,
            0.5,
            0.65,
            1,
            0.7
         ]
         __type   =   "SplineCurve1d"
      }
      steerRotateEngineControl   =   False
      wheelSlotWithDescs   =   [
         {
            geomName   =   "wheel_front_right"
            parentFrame   =   "BoneChassis_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            handbrakeStrength   =   0.003
            suspensionCollectionAxleIndex   =   0
            enableLateralForce   =   True
            editableWheel   =   "Wheel"
         },
         {
            geomName   =   "wheel_front_left"
            parentFrame   =   "BoneChassis_cdt"
            torqueType   =   "defaults"
            handbrakeStrength   =   0.003
            suspensionCollectionAxleIndex   =   0
            enableLateralForce   =   True
            editableWheel   =   "Wheel"
         },
         {
            geomName   =   "wheel_rear_right"
            parentFrame   =   "BoneHingeZ_cdt"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "full"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            enableLateralForce   =   True
            editableWheel   =   "Wheel"
         },
         {
            geomName   =   "wheel_rear_left"
            parentFrame   =   "BoneHingeZ_cdt"
            isRear   =   True
            torqueType   =   "full"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            enableLateralForce   =   True
            editableWheel   =   "Wheel"
         }
      ]
      wheelPool   =   {
         Wheel   =   {
            __value   =   "auto_wheel_don_72malamute_scout_trailer_new_wheel"
         }
      }
      controllableSteeringConstraints   =   [
         {
            constraintName   =   "steering"
            angularSpeed   =   50
            minAngle   =   -25
            maxAngle   =   25
         }
      ]
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
                  }
                  OnEngineStarting   =   [
                     "TruckShaker_Dcqg5d3u/Play",
                     "TruckShaker_Dcqgb8fa/Stop",
                     "SetSoundSwitch/SetSwitchState"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarting"
               }
               OnEngineStarted   =   {
                  viewData   =   {
                     x   =   3340.561
                     y   =   4850
                  }
                  OnEngineStarted   =   [
                     "PlaySound_1/Play",
                     "PlaySound_Eam9Gw3U/Play"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown   =   {
                  viewData   =   {
                     x   =   3338.561
                     y   =   5000
                  }
                  OnEngineShutdown   =   [
                     "PlaySound/Play",
                     "TruckShaker_Dcqg5d3u/Stop",
                     "TruckShaker_Dcqgb8fa/Play"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               OnEngineAcceleration   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5300
                  }
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5450
                  }
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               OnBrakePull   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5600
                  }
                  __type   =   "BlueprintNodeOnBrakePull"
               }
               OnBrakeRelease   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5750
                  }
                  __type   =   "BlueprintNodeOnBrakeRelease"
               }
               OnHandbrakeStateChanged   =   {
                  viewData   =   {
                     x   =   3335.334
                     y   =   5900
                  }
                  OnHandbrakeOn   =   [
                     "PlaySound_2_1/Play"
                  ]
                  OnHandbrakeOff   =   [
                     "PlaySound_2_2/Play"
                  ]
                  __type   =   "BlueprintNodeOnHandbrakeStateChanged"
               }
               BlueprintNodeOnHornStateChanged   =   {
                  viewData   =   {
                     x   =   3336.342
                     y   =   6050
                  }
               }
               BlueprintNodeOnEngineInertia   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   6199.618
                  }
               }
               PlaySound_7   =   {
                  viewData   =   {
                     x   =   4150
                     y   =   4700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_don_72malamute_engine_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               SetSoundSwitch   =   {
                  viewData   =   {
                     x   =   3750
                     y   =   4700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "PlaySound_7/Play"
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
               PlaySound   =   {
                  viewData   =   {
                     x   =   4150
                     y   =   5000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1/Stop",
                     "PlaySound_7/Stop",
                     "PlaySound_Eam9Gw3U/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_don_72malamute_engine_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1   =   {
                  viewData   =   {
                     x   =   4900
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_don_72malamute_engine"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_1   =   {
                  viewData   =   {
                     x   =   3750
                     y   =   5750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_don_72malamute_handbrake_on"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_2   =   {
                  viewData   =   {
                     x   =   3750
                     y   =   6150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_don_72malamute_handbrake_off"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnGearUpdate   =   {
                  viewData   =   {
                     x   =   5850
                     y   =   4550
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
                     "SetSoundParameter_1/SetParameter"
                  ]
                  GetLastGear   =   [
                     "SetSoundParameter_1/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               GetTruckRpm   =   {
                  viewData   =   {
                     x   =   5850
                     y   =   5300
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
                     x   =   5850
                     y   =   5200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "Schedule_1/Start"
                  ]
                  __type   =   "BlueprintCommonLibraryOninit"
               }
               Schedule_1   =   {
                  viewData   =   {
                     x   =   6047.742
                     y   =   5200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_1_1/SetParameter",
                     "SetSoundParameter_1_1_1/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               TruckVelocity_1   =   {
                  viewData   =   {
                     x   =   5850
                     y   =   5400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetLinearVelocity   =   [
                     "SetSoundParameter_1_1_1/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               SetSoundParameter_1   =   {
                  viewData   =   {
                     x   =   6650
                     y   =   4750
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
               SetSoundParameter_1_1   =   {
                  viewData   =   {
                     x   =   6500
                     y   =   5200
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
               SetSoundParameter_1_1_1   =   {
                  viewData   =   {
                     x   =   6500
                     y   =   5350
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
               OnEngineAcceleration_2   =   {
                  viewData   =   {
                     x   =   5850
                     y   =   5850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAcceleration   =   [
                     "SetSoundParameter_1_1_1_1/SetParameter"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               SetSoundParameter_1_1_1_1   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   5850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "rtpc_vehicle_acceleration"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  valueRef   =   {
                     def   =   1
                     __type   =   "FloatRefParam"
                  }
                  skipIfNotChangedRef   =   {
                     def   =   False
                     __type   =   "BoolRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               SetSoundParameter_1_1_1_1_1   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   6050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "rtpc_vehicle_acceleration"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  skipIfNotChangedRef   =   {
                     def   =   False
                     __type   =   "BoolRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               OnEngineInertia   =   {
                  viewData   =   {
                     x   =   5850
                     y   =   6050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnInertia   =   [
                     "SetSoundParameter_1_1_1_1_1/SetParameter"
                  ]
                  __type   =   "BlueprintNodeOnEngineInertia"
               }
               OnWinchStateChanged   =   {
                  viewData   =   {
                     x   =   5850
                     y   =   6800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAttached   =   [
                     "PlaySound_2_1_1_1/Play"
                  ]
                  OnDetached   =   [
                     "PlaySound_2_1_1_2/Play"
                  ]
                  OnReattached   =   [
                     "PlaySound_2_1_1_1/Play"
                  ]
                  OnStartPulling   =   [
                     "PlaySound_2_1_1_1_1/Play"
                  ]
                  OnStopPulling   =   [
                     "PlaySound_2_1_1_2_1/Play",
                     "PlaySound_2_1_1_1_1/Stop"
                  ]
                  __type   =   "BlueprintNodeOnWinchStateChanged"
               }
               PlaySound_2_1_1_1   =   {
                  viewData   =   {
                     x   =   6650
                     y   =   6500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_common_winch_attach"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_1_1_2   =   {
                  viewData   =   {
                     x   =   6650
                     y   =   6700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_common_winch_detach"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_1_1_1_1   =   {
                  viewData   =   {
                     x   =   6650
                     y   =   6900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_common_winch_move_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_1_1_2_1   =   {
                  viewData   =   {
                     x   =   6650
                     y   =   7100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_common_winch_move_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               TruckShaker_Dcqg5d3u   =   {
                  viewData   =   {
                     x   =   3750
                     y   =   4900
                  }
                  duration   =   3.2
                  shakerName   =   "EngineStart"
                  maxRPM   =   False
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_Dcqgb8fa   =   {
                  viewData   =   {
                     x   =   3750
                     y   =   5100
                  }
                  duration   =   2
                  shakerName   =   "EngineShutdown"
                  maxRPM   =   True
                  __type   =   "BlueprintNodeTruckShaker"
               }
               CloneSoundEmitter_1_Ea38Kk9e   =   {
                  viewData   =   {
                     x   =   3800
                     y   =   5950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_1/emitterRef/cb",
                     "PlaySound_2_2/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_switch_handbrake"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_Eam9Gw3U   =   {
                  viewData   =   {
                     x   =   4900
                     y   =   5050
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
               OnEngineRunningOnInit_F72bXHfb   =   {
                  viewData   =   {
                     x   =   3050
                     y   =   5000
                  }
                  OnEngineRunning   =   [
                     "TruckShaker_Dcqg5d3u/Stop",
                     "TruckShaker_Dcqgb8fa/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineRunningOnInit"
               }
            }
            groups   =   {
               "[SOUND] acceleration input"   =   {
                  x   =   5800
                  y   =   5700
                  width   =   1600
                  height   =   550
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] rpm and speed"   =   {
                  x   =   5800
                  y   =   5050
                  width   =   1600
                  height   =   550
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] gear update"   =   {
                  x   =   5800
                  y   =   4400
                  width   =   1600
                  height   =   546
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               Comment   =   {
                  x   =   4182.529
                  y   =   4971.833
                  width   =   0
                  height   =   196
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] winch"   =   {
                  x   =   5800
                  y   =   6350
                  width   =   1600
                  height   =   1050
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
                  zeroBorderEnergy   =   2000
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
                     def   =   30
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
                  zeroBorder   =   0.05
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
               OnTPLAnimationBegin_E5fh0U5F   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1650
                  }
                  OnAnimStart   =   [
                     "PlaySound_E5fh0U5F2/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnBegin"
               }
               OnTPLAnimationEnd_E5fh0U5F1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1850
                  }
                  OnAnimStop   =   [
                     "PlaySound_E5fh0U5F3/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnEnd"
               }
               PlaySound_E5fh0U5F2   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1650
                  }
                  OnSoundStart   =   [
                     "PlaySound_F1tdIj79/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_wipers_forward"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_E5fh0U5F3   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1850
                  }
                  OnSoundStart   =   [
                     "PlaySound_F1tdIj791/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_wipers_backward"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnGearUpdate_Ec486l4p   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   2400
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
                     "PlaySound_Ec486l4p2/Play"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               PlaySound_Ec486l4p2   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   2350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_gear_scout"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_Ec486l4p3   =   {
                  viewData   =   {
                     x   =   4400
                     y   =   2100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ec486l4p2/emitterRef/cb",
                     "SetSoundSwitch_E6chg5eW/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_gear_stick"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_F1tdHpeg   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   1650
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_F1tdIj79/emitterRef/cb",
                     "PlaySound_F1tdIj791/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneAnim_Wipers_R2"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_F1tdHpeg1   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   1850
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E5fh0U5F2/emitterRef/cb",
                     "PlaySound_E5fh0U5F3/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneAnim_Wipers_L2"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_F1tdIj79   =   {
                  viewData   =   {
                     x   =   6000
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
               PlaySound_F1tdIj791   =   {
                  viewData   =   {
                     x   =   6000
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
               PlaySound   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "Schedule_1/Start"
                  ]
                  OnSoundEnd   =   [
                     "Schedule_1/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_cockpit_steering_wheel"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               GetInfoElementCockpitForSoundWithSchedule   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound/Play"
                  ]
                  OnStop   =   [
                     "PlaySound/Stop"
                  ]
                  nameBoneBro   =   "ctrl_steering_wheel"
                  isWheel   =   True
                  GetCurrentSteerSpeed   =   [
                     "SetSoundParameter/valueRef/cb"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  startDelay   =   {
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithSchedule"
               }
               Schedule_1   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               SetSoundParameter   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "rtpc_vehicle_steering_wheel"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               CloneSoundEmitter   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound/emitterRef/cb",
                     "SetSoundParameter/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_steering_wheel"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        z   =   0.1
                        __type   =   "null"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               GetInfoElementCockpitForSoundWithEvent_Ea392b5n   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ea392b5n1/Play"
                  ]
                  nameBoneBro   =   "ctrl_switch_difflock"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_Ea392b5n1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   4400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_cockpit_joystick"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1_Ea392b5n2   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_cockpit_joystick"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               GetInfoElementCockpitForSoundWithEvent_Ea392b5n3   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_1_Ea392b5n2/Play"
                  ]
                  nameBoneBro   =   "ctrl_gear_stick_low"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               CloneSoundEmitter_Ea392b5n4   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea392b5n1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_switch_difflock"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_1_Ea392b5n5   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_1_Ea392b5n2/emitterRef/cb"
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
               PlaySound_1_EadiW24a   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   4100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_cockpit_switch"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               GetInfoElementCockpitForSoundWithEvent_EadiW24a1   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_1_EadiW24a/Play"
                  ]
                  nameBoneBro   =   "ctrl_switch_key"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               CloneSoundEmitter_1_EadiW24a2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_1_EadiW24a/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_switch_key"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_1_EaimPaeq   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   4700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_cockpit_switch"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               GetInfoElementCockpitForSoundWithEvent_EaimPaeq1   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_1_EaimPaeq/Play"
                  ]
                  nameBoneBro   =   "ctrl_switch_awd"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               CloneSoundEmitter_1_EaimPaeq2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_1_EaimPaeq/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_switch_awd"
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
               OnWinchStateChanged   =   {
                  viewData   =   {
                     x   =   4500
                     y   =   6600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAttached   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1/Input"
                  ]
                  OnDetached   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1/Input"
                  ]
                  OnStartPulling   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1_1/Input"
                  ]
                  OnStopPulling   =   [
                     "DeactivateForceFeedback/Input"
                  ]
                  __type   =   "BlueprintNodeOnWinchStateChanged"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   6600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "winch"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeActivateForcefeedbackIfTruckIsCurrent"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   6700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "winch"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeActivateForcefeedbackIfTruckIsCurrent"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1_1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   6800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "winch_pulling"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeActivateForcefeedbackIfTruckIsCurrent"
               }
               DeactivateForceFeedback   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   6900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "winch_pulling"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeDeactivateForcefeedbackPreset"
               }
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         SFX   =   {
            nodes   =   {
               OnEngineStarted   =   {
                  viewData   =   {
                     x   =   11600
                     y   =   5300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineStarted   =   [
                     "VFXRestart_1/Input",
                     "VFXRestart_1_1/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown   =   {
                  viewData   =   {
                     x   =   11588.56
                     y   =   5450
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
               VFXStop   =   {
                  viewData   =   {
                     x   =   12100
                     y   =   5550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "VFXStop_E9giJ28j/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_1   =   {
                  viewData   =   {
                     x   =   12100
                     y   =   5450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_1_1   =   {
                  viewData   =   {
                     x   =   12100
                     y   =   5300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "VFXRestart_1_E9giIS8O/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_exhaust_small_cars_gas_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_1_E9giIS8O   =   {
                  viewData   =   {
                     x   =   12650
                     y   =   5300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_small_cars_neutral_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9giJ28j   =   {
                  viewData   =   {
                     x   =   12650
                     y   =   5550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_small_cars_neutral_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               OnEngineAcceleration_E9giJya0   =   {
                  viewData   =   {
                     x   =   11600
                     y   =   5800
                  }
                  OnAcceleration   =   [
                     "VFXRestart_1_E9giK90W/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9giKp2u/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse_E9giJI8x   =   {
                  viewData   =   {
                     x   =   11600
                     y   =   6000
                  }
                  OnEngineReverse   =   [
                     "VFXRestart_1_E9giK90W/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9giKp2u/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               VFXRestart_1_E9giK90W   =   {
                  viewData   =   {
                     x   =   12100
                     y   =   5850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_small_cars_new_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9giKp2u   =   {
                  viewData   =   {
                     x   =   12100
                     y   =   5950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_small_cars_new_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               OnEngineStarting_EagaHD5c   =   {
                  viewData   =   {
                     x   =   11633.23
                     y   =   6175.326
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineStarting   =   [
                     "VFXRestart_EagaHD5c1/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarting"
               }
               VFXRestart_EagaHD5c1   =   {
                  viewData   =   {
                     x   =   12233.23
                     y   =   6175.326
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_oil"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
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
               __type   =   "SavableTruckUniqIdPropDesc"
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
               __type   =   "CargoConstraintSavablePropDesc"
            }
         }
      ]
   }
   prop_replicated   =   {
      repEntityBrand   =   {
         type   =   {
            __type   =   "AutoDon72malamuteScoutTrailerNewReplicated"
         }
         __type   =   "RepEntityBrand"
      }
   }
   prop_lwi_cdt_poi_rb   =   {
      poiRadius   =   48
      trackerOffset   =   {
         __type   =   "Vector3d"
      }
   }
   prop_truck_gearbox_controller   =   {
      awdMode   =   "ALWAYS_ON"
      difflockMode   =   "CONTROLLED"
      isLowGearAvailable   =   True
   }
   prop_fuel_tank   =   {
      maxFuelTankVolume   =   85
      startFuelTankVolume   =   85
      fuelConsumption   =   0.04
      reverseFuelConsumptionCoeff   =   1.1
      awdFuelConsumptionCoeff   =   1.4
      lowRangeFuelConsumptionCoeff   =   1.3
   }
   prop_truck_teleporter   =   {
      waterHeightDelta   =   1.5
      teleportOffset   =   {
         __type   =   "Vector3d"
      }
   }
   sound_emitter   =   {
      enableOcclusion   =   False
      maxOcclusionDistance   =   0
      __onlyOn   =   "visual"
   }
   prop_truck_under_water_cheker   =   {
      rootOffsetPosition   =   {
         y   =   0.45
         z   =   0.7
         __type   =   "Vector3d"
      }
      chekerAttachBody   =   "BoneCabin_cdt"
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
                  z   =   0.3
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
   prop_truck_steering_wheel   =   {
      properties   =   {
         baseFriction   =   0.1
         additionalMudFriction   =   0.15
         frictionMaxVelocityCoeff   =   0.3
         springOffsetSpeed   =   0.5
         springCoeff   =   0.3
         vibrationBaseDelay   =   300
         vibrationMaxVelocityDelay   =   150
         tiltMaxVelocityCoeff   =   0.55
         tiltMaxVelocity   =   2.5
         tiltAngle   =   50
         collisionMaxVelocityForce   =   0.65
         __type   =   "TruckSteeringWheelProperties"
      }
      frictionMap   =   {
         asphalt   =   {
            __value   =   0.5
         }
         sand   =   {
            __value   =   0.6
         }
         grass   =   {
            __value   =   0.45
         }
         sub_mud   =   {
            __value   =   0.55
         }
         mud_grass   =   {
            __value   =   0.7
         }
         mud   =   {
            __value   =   0.7
         }
      }
   }
   prop_tagged   =   {
      tag   =   "UID_MODULE_SCOUT_TRANSPORT"
   }
   sfx   =   {
      list   =   {
         part_water_impact_long_02   =   {
            emitters2   =   {
               Liquid_Splash_01   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                           sdr   =   {
                              power   =   {
                                 constExpr   =   [
                                    1,
                                    1
                                 ]
                                 __type   =   "local__ageSpline"
                              }
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.85,
                           1.25
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               Liquid_Column_01   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                           sdr   =   {
                              power   =   {
                                 constExpr   =   [
                                    1,
                                    1
                                 ]
                                 __type   =   "local__ageSpline"
                              }
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.85,
                           1.25
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_22   =   {
                  emission   =   {
                     type   =   {
                        explosion   =   {
                           numPartsToEmit   =   [
                              40,
                              60
                           ]
                        }
                        __type   =   "local__externalControl"
                     }
                  }
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               Liquid_Column_01_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                           sdr   =   {
                              power   =   {
                                 constExpr   =   [
                                    1,
                                    1
                                 ]
                                 __type   =   "local__ageSpline"
                              }
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.85,
                           1.25
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               Liquid_Column_01_2   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                           sdr   =   {
                              power   =   {
                                 constExpr   =   [
                                    1,
                                    1
                                 ]
                                 __type   =   "local__ageSpline"
                              }
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.85,
                           1.25
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               Liquid_Splash_01_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                           sdr   =   {
                              power   =   {
                                 constExpr   =   [
                                    1,
                                    1
                                 ]
                                 __type   =   "local__ageSpline"
                              }
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.85,
                           1.25
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_38   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_sand_2   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particle_water_falloff_01   =   {
            emitters2   =   {
               CPU_Liquid   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_10   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_11   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 255,
                                 255,
                                 255
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                        transforms   =   {
                           ratioDependency   =   {
                              ratioXY   =   {
                                 constExpr   =   [
                                    1,
                                    9
                                 ]
                                 __type   =   "local__ageSpline"
                              }
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_12   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_13   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 255,
                                 255,
                                 255
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                        transforms   =   {
                           ratioDependency   =   {
                              ratioXY   =   {
                                 constExpr   =   [
                                    1,
                                    9
                                 ]
                                 __type   =   "local__ageSpline"
                              }
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_14   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 255,
                                 255,
                                 255
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                        transforms   =   {
                           ratioDependency   =   {
                              ratioXY   =   {
                                 constExpr   =   [
                                    1,
                                    5
                                 ]
                                 __type   =   "local__ageSpline"
                              }
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_15   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_16   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particle_water_slow_falloff_01   =   {
            emitters2   =   {
               CPU_Liquid_11   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 255,
                                 255,
                                 255
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                        transforms   =   {
                           ratioDependency   =   {
                              ratioXY   =   {
                                 constExpr   =   [
                                    1,
                                    5
                                 ]
                                 __type   =   "local__ageSpline"
                              }
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_13   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 255,
                                 255,
                                 255
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                        transforms   =   {
                           ratioDependency   =   {
                              ratioXY   =   {
                                 constExpr   =   [
                                    1,
                                    9
                                 ]
                                 __type   =   "local__ageSpline"
                              }
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_16   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_water_sm_01   =   {
            emitters2   =   {
               CPU_Liquid_51   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_52   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_53   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_54   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_57   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               lwi_med_on_01   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_62   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               splash_i_med_on_01   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_water_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_water   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               lwi_sml_off_01_1   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               splash_i_sml_off_01_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               water_diterber   =   {
                  emission   =   {
                     source   =   {
                        geomPrimitive   =   {
                           primitiveData   =   {
                              plane   =   {
                                 position   =   [
                                    0,
                                    0,
                                    0
                                 ]
                                 rotation   =   [
                                    0,
                                    0,
                                    0
                                 ]
                              }
                              sphere   =   {
                                 position   =   [
                                    3,
                                    0,
                                    0
                                 ]
                              }
                              __type   =   "local__plane"
                           }
                           emitDir   =   "y+"
                        }
                        parentArea   =   {
                           isUnitEmission   =   True
                        }
                        __type   =   "local__externalControl"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_hard_surface   =   {
            emitters2   =   {
               CPU_Smoke   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_dry_asphalt   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_sand_02   =   {
            emitters2   =   {
               CPU_Dirt_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Smoke_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Debris_2   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Debris_3   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Dirt_2   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_sand   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_sand_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_sand_dry_01   =   {
            emitters2   =   {
               CPU_Smoke   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Debris   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               Pieces_Small   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.095,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Debris_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_sand   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_sand_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_mud_sand_dry_01   =   {
            emitters2   =   {
               CPU_Smoke_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Debris_2   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               Pieces_Small_1   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.095,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Debris_3   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               part_sml_off_01   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               part_sml_off_02   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_sand   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_sand_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               part_sml_on_01   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               part_sml_on_02   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_gravel_02   =   {
            emitters2   =   {
               CPU_Smoke_2   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Rocks_6   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0.25,
                              0.15,
                              1,
                              0.6
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 -8,
                                 1,
                                 -9.126249
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_dry_asphalt   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_brick_01   =   {
            emitters2   =   {
               CPU_Smoke   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Debris   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               Pieces_Small   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.095,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Debris_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Smoke_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_sand   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_sand_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Rocks_6   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0.25,
                              0.15,
                              1,
                              0.6
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 -8,
                                 1,
                                 -9.126249
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_garbage_01   =   {
            emitters2   =   {
               CPU_Smoke   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Debris   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               Pieces_Small   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.095,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Debris_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Smoke_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_sand   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_sand_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Rocks_6   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0.25,
                              0.15,
                              1,
                              0.6
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 -8,
                                 1,
                                 -9.126249
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_mud_down_02   =   {
            emitters2   =   {
               CPU_Geo_Pieces_01_1   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Geo_Pieces_01   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_9   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -1.176802,
                                 0.4914245,
                                 -2.781538,
                                 0.6959246,
                                 -4.493249,
                                 0.85,
                                 -6.953825
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Smoke_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Dirt_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_ground_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_ground   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_mud_dirt_dry_01   =   {
            emitters2   =   {
               CPU_Smoke   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Debris   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               Pieces_Small   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.095,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Debris_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               Pieces_Small_1   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.095,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_3   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -1.176802,
                                 0.4914245,
                                 -2.781538,
                                 0.6959246,
                                 -4.493249,
                                 0.85,
                                 -6.953825
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Geo_Pieces_01_3   =   {
                  typeParams   =   {
                     lwiGeom   =   {
                        typeInst   =   {
                           range   =   {
                              typeInstRange   =   [
                                 0,
                                 2
                              ]
                           }
                           __type   =   "local__enumeration"
                        }
                     }
                     __type   =   "local__lwiGeom"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Geo_Pieces_01_4   =   {
                  typeParams   =   {
                     lwiGeom   =   {
                        typeInst   =   {
                           range   =   {
                              typeInstRange   =   [
                                 0,
                                 2
                              ]
                           }
                           __type   =   "local__enumeration"
                        }
                     }
                     __type   =   "local__lwiGeom"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 -6.97526,
                                 0.2101784,
                                 -7.245069,
                                 0.502542,
                                 -7.881227,
                                 0.7626002,
                                 -8.681569,
                                 1,
                                 -9.8
                              ]
                              dispRange   =   [
                                 -0.6,
                                 0.7
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Pieces_01_6   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Pieces_01_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Dirt_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Dirt_2   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -4.707229,
                                 0.4914245,
                                 -11.1262,
                                 0.6959246,
                                 -17.97306,
                                 0.85,
                                 -27.81544
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_mud_dirt_wet_01   =   {
            emitters2   =   {
               CPU_Smoke   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Debris   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               Pieces_Small   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.095,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Debris_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               Pieces_Small_1   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.095,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_3   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -1.176802,
                                 0.4914245,
                                 -2.781538,
                                 0.6959246,
                                 -4.493249,
                                 0.85,
                                 -6.953825
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Geo_Pieces_01_3   =   {
                  typeParams   =   {
                     lwiGeom   =   {
                        typeInst   =   {
                           range   =   {
                              typeInstRange   =   [
                                 0,
                                 2
                              ]
                           }
                           __type   =   "local__enumeration"
                        }
                     }
                     __type   =   "local__lwiGeom"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Geo_Pieces_01_4   =   {
                  typeParams   =   {
                     lwiGeom   =   {
                        typeInst   =   {
                           range   =   {
                              typeInstRange   =   [
                                 0,
                                 2
                              ]
                           }
                           __type   =   "local__enumeration"
                        }
                     }
                     __type   =   "local__lwiGeom"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 -6.97526,
                                 0.2101784,
                                 -7.245069,
                                 0.502542,
                                 -7.881227,
                                 0.7626002,
                                 -8.681569,
                                 1,
                                 -9.8
                              ]
                              dispRange   =   [
                                 -0.6,
                                 0.7
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Pieces_01_6   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Pieces_01_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Dirt_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Dirt_2   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -4.707229,
                                 0.4914245,
                                 -11.1262,
                                 0.6959246,
                                 -17.97306,
                                 0.85,
                                 -27.81544
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_small_particles_ground_01   =   {
            emitters2   =   {
               CPU_Liquid_12   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -1.176802,
                                 0.4914245,
                                 -2.781538,
                                 0.6959246,
                                 -4.493249,
                                 0.85,
                                 -6.953825
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Dirt_2   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Smoke_2   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Geo_Pieces_01_4   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Geo_Pieces_01_6   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Geo_Pieces_01_7   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -4.707229,
                                 0.4914245,
                                 -11.1262,
                                 0.6959246,
                                 -17.97306,
                                 0.85,
                                 -27.81544
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_grass_01   =   {
            emitters2   =   {
               CPU_Geo_Pieces_01_1   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Geo_Pieces_01   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_9   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -1.176802,
                                 0.4914245,
                                 -2.781538,
                                 0.6959246,
                                 -4.493249,
                                 0.85,
                                 -6.953825
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Smoke_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Dirt_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_10   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.1
                           ]
                           dispRange   =   [
                              0,
                              0
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -4.707229,
                                 0.4914245,
                                 -11.1262,
                                 0.6959246,
                                 -17.97306,
                                 0.85,
                                 -27.81544
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_mud_grass_02   =   {
            emitters2   =   {
               CPU_Smoke   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Geo_Pieces_01_2   =   {
                  typeParams   =   {
                     lwiGeom   =   {
                        typeInst   =   {
                           range   =   {
                              typeInstRange   =   [
                                 0,
                                 2
                              ]
                           }
                           __type   =   "local__default"
                        }
                     }
                     __type   =   "local__lwiGeom"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Pieces_01_6   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_3   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -1.176802,
                                 0.4914245,
                                 -2.781538,
                                 0.6959246,
                                 -4.493249,
                                 0.85,
                                 -6.953825
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Geo_Pieces_01_4   =   {
                  typeParams   =   {
                     lwiGeom   =   {
                        typeInst   =   {
                           range   =   {
                              typeInstRange   =   [
                                 0,
                                 2
                              ]
                           }
                           __type   =   "local__default"
                        }
                     }
                     __type   =   "local__lwiGeom"
                  }
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.2
                           ]
                           dispRange   =   [
                              -0.05,
                              0.05
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_9   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -1.176802,
                                 0.4914245,
                                 -2.781538,
                                 0.6959246,
                                 -4.493249,
                                 0.85,
                                 -6.953825
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -4.707229,
                                 0.4914245,
                                 -11.1262,
                                 0.6959246,
                                 -17.97306,
                                 0.85,
                                 -27.81544
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_2   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -4.707229,
                                 0.4914245,
                                 -11.1262,
                                 0.6959246,
                                 -17.97306,
                                 0.85,
                                 -27.81544
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -4.707229,
                                 0.4914245,
                                 -11.1262,
                                 0.6959246,
                                 -17.97306,
                                 0.85,
                                 -27.81544
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_water_puddle_01   =   {
         }
         wheel_particles_oil_01   =   {
            emitters2   =   {
               CPU_Liquid_27   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_28   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_29   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Smoke_2   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_46   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_oil   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_oil_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_hard_surface_wet_01   =   {
            emitters2   =   {
               CPU_Smoke   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Smoke_1   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Debris_1   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_wet_asphalt   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_sand_wet   =   {
            emitters2   =   {
               CPU_Pieces_01_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_sand_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_sand   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -4.707229,
                                 0.4914245,
                                 -11.1262,
                                 0.6959246,
                                 -17.97306,
                                 0.85,
                                 -27.81544
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_mud_sand_01   =   {
            emitters2   =   {
               CPU_Liquid_5   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Debris_2   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Dirt_3   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Dirt_4   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 -6.976067,
                                 0.2856599,
                                 -7.333039,
                                 0.545605,
                                 -8.068997,
                                 0.7801419,
                                 -8.892578,
                                 1,
                                 -9.8
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Debris_3   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_sand_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_sand   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -4.707229,
                                 0.4914245,
                                 -11.1262,
                                 0.6959246,
                                 -17.97306,
                                 0.85,
                                 -27.81544
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_gravel_wet_02   =   {
            emitters2   =   {
               CPU_Rocks   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 255,
                                 0,
                                 230
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0.25,
                              0.15,
                              1,
                              0.6
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Rocks_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 255,
                                 0,
                                 230
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0.25,
                              0.15,
                              1,
                              0.6
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Rocks_4   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0.25,
                              0.15,
                              1,
                              0.6
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_wet_asphalt   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_mud_down_small_01   =   {
            emitters2   =   {
               CPU_Liquid_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Geo_Pieces_01_3   =   {
                  typeParams   =   {
                     lwiGeom   =   {
                        typeInst   =   {
                           range   =   {
                              typeInstRange   =   [
                                 0,
                                 2
                              ]
                           }
                           __type   =   "local__enumeration"
                        }
                     }
                     __type   =   "local__lwiGeom"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Geo_Pieces_01_4   =   {
                  typeParams   =   {
                     lwiGeom   =   {
                        typeInst   =   {
                           range   =   {
                              typeInstRange   =   [
                                 0,
                                 2
                              ]
                           }
                           __type   =   "local__enumeration"
                        }
                     }
                     __type   =   "local__lwiGeom"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 -6.97526,
                                 0.2101784,
                                 -7.245069,
                                 0.502542,
                                 -7.881227,
                                 0.7626002,
                                 -8.681569,
                                 1,
                                 -9.8
                              ]
                              dispRange   =   [
                                 -0.6,
                                 0.7
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Pieces_01_6   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_9   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -1.176802,
                                 0.4914245,
                                 -2.781538,
                                 0.6959246,
                                 -4.493249,
                                 0.85,
                                 -6.953825
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_10   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -1.176802,
                                 0.4914245,
                                 -2.781538,
                                 0.6959246,
                                 -4.493249,
                                 0.85,
                                 -6.953825
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Pieces_01_9   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Pieces_01_11   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_2   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_3   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Geo_Pieces_01_5   =   {
                  typeParams   =   {
                     lwiGeom   =   {
                        typeInst   =   {
                           enumeration   =   {
                              typeInstEnum   =   "1 3 4 6 7 8 9 11 14 15"
                           }
                           range   =   {
                              typeInstRange   =   [
                                 0,
                                 2
                              ]
                           }
                           __type   =   "local__default"
                        }
                     }
                     __type   =   "local__lwiGeom"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 -6.97526,
                                 0.2101784,
                                 -7.245069,
                                 0.502542,
                                 -7.881227,
                                 0.7626002,
                                 -8.681569,
                                 1,
                                 -9.8
                              ]
                              dispRange   =   [
                                 -0.6,
                                 0.7
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_11   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -1.176802,
                                 0.4914245,
                                 -2.781538,
                                 0.6959246,
                                 -4.493249,
                                 0.85,
                                 -6.953825
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Geo_Pieces_01_6   =   {
                  typeParams   =   {
                     lwiGeom   =   {
                        typeInst   =   {
                           range   =   {
                              typeInstRange   =   [
                                 0,
                                 2
                              ]
                           }
                           __type   =   "local__enumeration"
                        }
                     }
                     __type   =   "local__lwiGeom"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 -6.97526,
                                 0.2101784,
                                 -7.245069,
                                 0.502542,
                                 -7.881227,
                                 0.7626002,
                                 -8.681569,
                                 1,
                                 -9.8
                              ]
                              dispRange   =   [
                                 -0.6,
                                 0.7
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_wet_mud_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_wet_mud   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -4.707229,
                                 0.4914245,
                                 -11.1262,
                                 0.6959246,
                                 -17.97306,
                                 0.85,
                                 -27.81544
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_grass_01_1   =   {
            emitters2   =   {
               CPU_Geo_Pieces_01_1   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Geo_Pieces_01   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_9   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -1.176802,
                                 0.4914245,
                                 -2.781538,
                                 0.6959246,
                                 -4.493249,
                                 0.85,
                                 -6.953825
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Smoke_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Dirt_1   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_10   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.1
                           ]
                           dispRange   =   [
                              0,
                              0
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -4.707229,
                                 0.4914245,
                                 -11.1262,
                                 0.6959246,
                                 -17.97306,
                                 0.85,
                                 -27.81544
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
            __type   =   "wheel_particles_grass_01"
         }
         wheel_small_particles_mud_grass_wet_01   =   {
            emitters2   =   {
               CPU_Liquid_3   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -1.176802,
                                 0.4914245,
                                 -2.781538,
                                 0.6959246,
                                 -4.493249,
                                 0.85,
                                 -6.953825
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Geo_Pieces_01_3   =   {
                  typeParams   =   {
                     lwiGeom   =   {
                        typeInst   =   {
                           range   =   {
                              typeInstRange   =   [
                                 0,
                                 2
                              ]
                           }
                           __type   =   "local__enumeration"
                        }
                     }
                     __type   =   "local__lwiGeom"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Geo_Pieces_01_4   =   {
                  typeParams   =   {
                     lwiGeom   =   {
                        typeInst   =   {
                           range   =   {
                              typeInstRange   =   [
                                 0,
                                 2
                              ]
                           }
                           __type   =   "local__enumeration"
                        }
                     }
                     __type   =   "local__lwiGeom"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.1,
                           0.3
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 -6.97526,
                                 0.2101784,
                                 -7.245069,
                                 0.502542,
                                 -7.881227,
                                 0.7626002,
                                 -8.681569,
                                 1,
                                 -9.8
                              ]
                              dispRange   =   [
                                 -0.6,
                                 0.7
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Pieces_01_9   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_9   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -1.176802,
                                 0.4914245,
                                 -2.781538,
                                 0.6959246,
                                 -4.493249,
                                 0.85,
                                 -6.953825
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_10   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 233,
                                 233,
                                 233
                              ]
                              __type   =   "local__ageSpline"
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -1.176802,
                                 0.4914245,
                                 -2.781538,
                                 0.6959246,
                                 -4.493249,
                                 0.85,
                                 -6.953825
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  physics   =   {
                     partGravity   =   {
                        gravityY   =   {
                           spline   =   {
                              spline   =   [
                                 0,
                                 0,
                                 0.2224929,
                                 -4.707229,
                                 0.4914245,
                                 -11.1262,
                                 0.6959246,
                                 -17.97306,
                                 0.85,
                                 -27.81544
                              ]
                           }
                           __type   =   "local__constant"
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_water_puddle_01_1   =   {
            emitters2   =   {
               CPU_Liquid_13   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_21   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_22   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_45   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_water_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_water   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Smoke_1   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
            __type   =   "wheel_particles_water_puddle_01"
         }
         wheel_particles_oil_01_1   =   {
            emitters2   =   {
               CPU_Liquid_27   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_28   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_29   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Smoke_2   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.05,
                           0.07
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  optimization   =   {
                     degOverdraw   =   {
                        overdrawStart   =   2
                        scaleIntens   =   0
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Liquid_46   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.15,
                           0.4
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_oil   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_oil_1   =   {
                  particleParams   =   {
                     size   =   {
                        ageSize   =   {
                           spline   =   [
                              0,
                              0.3,
                              0.9986739,
                              0.9109324
                           ]
                           dispRange   =   [
                              -0.1,
                              0.15
                           ]
                        }
                        __type   =   "local__constExprRange"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
            __type   =   "wheel_particles_oil_01"
         }
         part_exhaust_small_cars   =   {
            emitters2   =   {
               CPU_Smoke   =   {
                  emission   =   {
                     type   =   {
                        constantFlow   =   {
                           x   =   15
                           y   =   25
                        }
                        __type   =   "local__dynamicFlow"
                     }
                     source   =   {
                        point   =   {
                           emitDir   =   "y+"
                        }
                        __type   =   "local__parentArea"
                     }
                  }
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           1,
                           1
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow   =   {
                  emission   =   {
                     type   =   {
                        constantFlow   =   {
                           x   =   25
                           y   =   25
                        }
                        __type   =   "local__dynamicFlow"
                     }
                     source   =   {
                        point   =   {
                           emitDir   =   "y+"
                        }
                        __type   =   "local__parentArea"
                     }
                  }
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           1,
                           1
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Burst   =   {
                  emission   =   {
                     source   =   {
                        point   =   {
                           emitDir   =   "y+"
                        }
                        __type   =   "local__parentArea"
                     }
                  }
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 255,
                                 255,
                                 255
                              ]
                              __type   =   "local__ageSpline"
                           }
                           sdr   =   {
                              power   =   {
                                 constExpr   =   [
                                    0.5,
                                    0.5
                                 ]
                                 __type   =   "local__ageSpline"
                              }
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_1   =   {
                  emission   =   {
                     type   =   {
                        dynamicFlow   =   {
                           intensitySpline   =   [
                              0,
                              33,
                              0.2932529,
                              30.26233,
                              0.4630855,
                              21.69172,
                              0.7392274,
                              18.27213,
                              1.116301,
                              18.16221,
                              1.561337,
                              23.44477,
                              1.957992,
                              27.73011,
                              4.957993,
                              25.70433
                           ]
                        }
                        __type   =   "local__constantFlow"
                     }
                     source   =   {
                        point   =   {
                           emitDir   =   "y+"
                        }
                        __type   =   "local__parentArea"
                     }
                  }
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           1,
                           1
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               wind_expl_01_5   =   {
                  emission   =   {
                     type   =   {
                        constantFlow   =   {
                           x   =   3
                           y   =   4
                        }
                        explosion   =   {
                           numPartsToEmit   =   [
                              1,
                              5
                           ]
                        }
                        __type   =   "local__dynamicFlow"
                     }
                     source   =   {
                        geomPrimitive   =   {
                           primitiveData   =   {
                              sphere   =   {
                                 position   =   [
                                    3,
                                    0,
                                    0
                                 ]
                              }
                              __type   =   "local__plane"
                           }
                        }
                        parentArea   =   {
                           isUnitEmission   =   True
                        }
                        __type   =   "local__geomPrimitive"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               new_CPU_Smoke_1   =   {
                  emission   =   {
                     type   =   {
                        constantFlow   =   {
                           x   =   15
                           y   =   25
                        }
                        __type   =   "local__dynamicFlow"
                     }
                     source   =   {
                        point   =   {
                           emitDir   =   "y+"
                        }
                        __type   =   "local__parentArea"
                     }
                  }
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           1,
                           1
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               new_Smoke_Flow_2   =   {
                  emission   =   {
                     type   =   {
                        constantFlow   =   {
                           x   =   25
                           y   =   25
                        }
                        __type   =   "local__dynamicFlow"
                     }
                     source   =   {
                        point   =   {
                           emitDir   =   "y+"
                        }
                        __type   =   "local__parentArea"
                     }
                  }
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           1,
                           1
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               new_Smoke_Burst_1   =   {
                  emission   =   {
                     source   =   {
                        point   =   {
                           emitDir   =   "y+"
                        }
                        __type   =   "local__parentArea"
                     }
                  }
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 255,
                                 255,
                                 255
                              ]
                              __type   =   "local__ageSpline"
                           }
                           sdr   =   {
                              power   =   {
                                 constExpr   =   [
                                    0.5,
                                    0.5
                                 ]
                                 __type   =   "local__ageSpline"
                              }
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  __type   =   "CPU_EMITTER"
               }
               new_Smoke_Flow_3   =   {
                  emission   =   {
                     type   =   {
                        dynamicFlow   =   {
                           intensitySpline   =   [
                              0,
                              33,
                              0.2932529,
                              30.26233,
                              0.4630855,
                              21.69172,
                              0.7392274,
                              18.27213,
                              1.116301,
                              18.16221,
                              1.561337,
                              23.44477,
                              1.957992,
                              27.73011,
                              4.957993,
                              25.70433
                           ]
                        }
                        __type   =   "local__constantFlow"
                     }
                     source   =   {
                        point   =   {
                           emitDir   =   "y+"
                        }
                        __type   =   "local__parentArea"
                     }
                  }
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           1,
                           1
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               new_wind_expl_01_6   =   {
                  emission   =   {
                     type   =   {
                        constantFlow   =   {
                           x   =   3
                           y   =   4
                        }
                        explosion   =   {
                           numPartsToEmit   =   [
                              1,
                              5
                           ]
                        }
                        __type   =   "local__dynamicFlow"
                     }
                     source   =   {
                        geomPrimitive   =   {
                           primitiveData   =   {
                              plane   =   {
                                 position   =   [
                                    0,
                                    0,
                                    0
                                 ]
                                 rotation   =   [
                                    0,
                                    0,
                                    0
                                 ]
                              }
                              sphere   =   {
                                 position   =   [
                                    3,
                                    0,
                                    0
                                 ]
                              }
                              __type   =   "local__plane"
                           }
                           emitDir   =   "y+"
                        }
                        __type   =   "local__parentArea"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         part_radiator_haze   =   {
            emitters2   =   {
               CPU_Haze   =   {
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           sdr   =   {
                              power   =   {
                                 constExpr   =   [
                                    0.5,
                                    0.5
                                 ]
                                 __type   =   "local__ageSpline"
                              }
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           1,
                           1
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Smoke_Burst   =   {
                  emission   =   {
                     source   =   {
                        point   =   {
                           emitDir   =   "y+"
                        }
                        __type   =   "local__parentArea"
                     }
                  }
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 255,
                                 255,
                                 255
                              ]
                              __type   =   "local__ageSpline"
                           }
                           sdr   =   {
                              power   =   {
                                 constExpr   =   [
                                    0.5,
                                    0.5
                                 ]
                                 __type   =   "local__ageSpline"
                              }
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         part_exhaust_oil   =   {
            emitters2   =   {
               CPU_Fountain   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.0095,
                           0.0125
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               CPU_Fountain_1   =   {
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           0.0095,
                           0.0125
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         part_exhaust_up_01   =   {
            emitters2   =   {
               CPU_Smoke   =   {
                  emission   =   {
                     type   =   {
                        constantFlow   =   {
                           x   =   15
                           y   =   25
                        }
                        __type   =   "local__dynamicFlow"
                     }
                     source   =   {
                        point   =   {
                           emitDir   =   "y+"
                        }
                        __type   =   "local__parentArea"
                     }
                  }
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           1,
                           1
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow   =   {
                  emission   =   {
                     type   =   {
                        dynamicFlow   =   {
                           intensitySpline   =   [
                              0,
                              33,
                              0.2932529,
                              30.26233,
                              0.4630855,
                              21.69172,
                              0.7392274,
                              18.27213,
                              1.116301,
                              18.16221,
                              1.561337,
                              23.44477,
                              1.957992,
                              27.73011,
                              4.957993,
                              25.70433
                           ]
                        }
                        __type   =   "local__constantFlow"
                     }
                     source   =   {
                        point   =   {
                           emitDir   =   "y+"
                        }
                        __type   =   "local__parentArea"
                     }
                  }
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
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
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           1,
                           1
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Burst   =   {
                  emission   =   {
                     source   =   {
                        point   =   {
                           emitDir   =   "y+"
                        }
                        __type   =   "local__parentArea"
                     }
                  }
                  typeParams   =   {
                     default   =   {
                        visuals   =   {
                           color   =   {
                              constExpr   =   [
                                 255,
                                 255,
                                 255,
                                 255
                              ]
                              __type   =   "local__ageSpline"
                           }
                           sdr   =   {
                              power   =   {
                                 constExpr   =   [
                                    0.5,
                                    0.5
                                 ]
                                 __type   =   "local__ageSpline"
                              }
                           }
                        }
                     }
                     __type   =   "local__default"
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         part_track_acceleration_single_exh_up_01   =   {
            emitters2   =   {
               Smoke_Flow_2   =   {
                  emission   =   {
                     speedNorm   =   {
                        constExpr   =   [
                           1,
                           5
                        ]
                        __type   =   "local__timeSpline"
                     }
                     type   =   {
                        constantFlow   =   {
                           x   =   15
                           y   =   25
                        }
                        explosion   =   {
                           numPartsToEmit   =   [
                              30,
                              30
                           ]
                        }
                        __type   =   "local__dynamicFlow"
                     }
                     source   =   {
                        point   =   {
                           emitDir   =   "y+"
                        }
                        __type   =   "local__parentArea"
                     }
                  }
                  particleParams   =   {
                     size   =   {
                        constExprRange   =   [
                           1,
                           1
                        ]
                        __type   =   "local__ageSize"
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         part_exhaust_small_cars_neutral_01   =   {
         }
         part_exhaust_small_cars_gas_01   =   {
         }
         part_exhaust_small_cars_gas_old_01   =   {
         }
         part_exhaust_med_cars_01   =   {
         }
         part_exhaust_med_cars_gas_01   =   {
         }
         part_exhaust_med_cars_gas_old_01   =   {
         }
         part_exhaust_med_cars_neutral_01   =   {
         }
         part_exhaust_small_cars_new_01   =   {
         }
         part_exhaust_med_cars_gas_02   =   {
         }
         part_exhaust_med_cars_acceleration_tuz_new   =   {
         }
         part_exhaust_med_cars_acceleration_tuz_old   =   {
         }
         part_exhaust_med_cars_gas_tuz_01   =   {
         }
         part_exhaust_med_cars_gas_tuz_old   =   {
         }
         part_exhaust_met_cars_neutral_tuz_01   =   {
         }
         wheel_particles_oil_sm_01   =   {
         }
         wheel_particles_mud_down_02_wet   =   {
            emitters2   =   {
               covering_med_car_mud_1_ON   =   {
                  physics   =   {
                     cdt   =   {
                        coveringInteraction   =   {
                           layer2Add   =   0.5
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_ON   =   {
                  physics   =   {
                     cdt   =   {
                        coveringInteraction   =   {
                           layer2Add   =   0.05
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_ON_5   =   {
                  physics   =   {
                     cdt   =   {
                        coveringInteraction   =   {
                           layer2Add   =   0.07
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_ON_6   =   {
                  physics   =   {
                     cdt   =   {
                        coveringInteraction   =   {
                           layer1Clear   =   0
                           layer2Add   =   0.05
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
            __type   =   "wheel_particles_mud_down_02"
         }
      }
      __onlyOn   =   "visual"
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
      minVelocityForSplash   =   4
      minVelocityForLongParticles   =   2
   }
   prop_truck_water_interaction   =   {
      noiseScaleLow   =   0.15
      noiseScaleHigh   =   0.05
   }
   prop_driver   =   {
      boneOffset   =   {
         __type   =   "Vector3d"
      }
   }
   prop_pre_soft_keyframe_updater   =   {
      syncBodyNames   =   [
         "BoneHingeZ_cdt"
      ]
   }
   prop_winchable   =   {
      winchSocketPoints   =   [
         {
            bodyName   =   "BoneChassis_cdt"
            offsetInBodySpace   =   {
               x   =   -1.227
               y   =   0.548
               z   =   2.106
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneChassis_cdt"
            offsetInBodySpace   =   {
               x   =   1.227
               y   =   0.548
               z   =   2.106
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTrailer_cdt"
            offsetInBodySpace   =   {
               x   =   1.229
               y   =   0.411
               z   =   0.55
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTrailer_cdt"
            offsetInBodySpace   =   {
               x   =   -1.229
               y   =   0.411
               z   =   0.55
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneChassis_cdt"
            offsetInBodySpace   =   {
               y   =   0.043
               z   =   2.809
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTrailer_cdt"
            offsetInBodySpace   =   {
               y   =   -0.062
               z   =   -1.347
               __type   =   "Vector3d"
            }
         }
      ]
      rotationFactor   =   1.5
      amountOfWinchPoints   =   4
   }
   prop_truck_default_camera_equipment_state   =   {
   }
   prop_truck_camera_preset   =   {
      preset   =   {
         cameraFocusPointOffset   =   {
            y   =   0
            z   =   0.3
            __type   =   "Vector3d"
         }
         attachmentBone   =   "_third_person_camera"
         minSpeedToFollow   =   3.5
         firstLaunchCameraAngles   =   {
            x   =   20
            __type   =   "Vector2d"
         }
         followChangeDirectionSpeedThreshold   =   3.5
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
                  y   =   1.7
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
                  y   =   2.2
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
                  y   =   2.7
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
         cameraGamepadSensitivity   =   0.6
         eyeOffset   =   {
            y   =   0.05
            __type   =   "Vector3d"
         }
         rotationLimitsX   =   {
            x   =   40
            y   =   -20
            __type   =   "Vector2dRnd"
         }
         rotationLimitsY   =   {
            x   =   -170
            y   =   180
            __type   =   "Vector2dRnd"
         }
         forwardAngleOffset   =   {
            x   =   5
            y   =   -5
            __type   =   "Vector2d"
         }
         leftSideRearView   =   {
            isEnabled   =   True
            transitionStart   =   95
            baseRotation   =   {
               __type   =   "Vector2dRnd"
            }
            eyeOffset   =   {
               x   =   0.6
               y   =   0.1
               z   =   0
               __type   =   "Vector3d"
            }
            rollAngle   =   -5
            rotationLimitsX   =   {
               x   =   -20
               y   =   40
               __type   =   "Vector2dRnd"
            }
            __type   =   "RbCockpitCameraRearViewParams"
         }
         rightSideRearView   =   {
            isEnabled   =   True
            transitionStart   =   110
            transitionEnd   =   170
            baseRotation   =   {
               __type   =   "Vector2dRnd"
            }
            eyeOffset   =   {
               x   =   -0.25
               __type   =   "Vector3d"
            }
            rollAngle   =   -1
            rotationLimitsX   =   {
               x   =   -20
               y   =   20
               __type   =   "Vector2dRnd"
            }
            __type   =   "RbCockpitCameraRearViewParams"
         }
         elasticParams   =   {
            stabilizerLength   =   {
               x   =   0
               y   =   0.01
               z   =   0
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
                  y   =   40
                  __type   =   "Vector2dRnd"
               }
               __type   =   "RbCockpitCameraFollowTurnParams"
            }
            rightTurnParams   =   {
               turnSpeedRange   =   {
                  y   =   40
                  __type   =   "Vector2dRnd"
               }
               maxYAngle   =   25
               __type   =   "RbCockpitCameraFollowTurnParams"
            }
            timeout   =   0.5
            __type   =   "RbCockpitCameraFollowParams"
         }
         rotationLimitsRearViewX   =   {
            x   =   -25
            y   =   180
            __type   =   "Vector2dRnd"
         }
         rearViewEyeOffset   =   {
            x   =   1
            y   =   0
            __type   =   "Vector3d"
         }
         __type   =   "RbCockpitCameraParams"
      }
   }
   prop_truck_cockpit_under_water_checker   =   {
      vehicleChecker   =   {
         checkerAttachBody   =   "_cockpit_camera"
         points   =   {
            Default_Point   =   {
               x   =   -1
               y   =   -0.2
               z   =   0.7
               __type   =   "Vector3d"
            }
            Vector3d   =   {
               x   =   0.2
               y   =   -0.2
               z   =   0.7
            }
            Vector3d_1   =   {
               x   =   -1
               y   =   -0.2
               z   =   -1
               __type   =   "Vector3d"
            }
            Vector3d_2   =   {
               x   =   0.2
               y   =   -0.2
               z   =   -1
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
               "BoneChassis_cdt",
               "BoneHingeY_l_IK_a",
               "BoneHingeY_l_IK_b"
            ]
            ikConstraints   =   [
               {
                  type   =   "HINGE"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
                  limitType   =   "DEGREE"
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     1,
                     0,
                     0
                  ]
                  limitType   =   "DEGREE"
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneHingeY_cdt"
                  bodyIKName   =   "BoneHingeY_l_IK_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneChassis_cdt",
               "BoneHingeY_r_IK_a",
               "BoneHingeY_r_IK_b"
            ]
            ikConstraints   =   [
               {
                  type   =   "HINGE"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
                  limitType   =   "DEGREE"
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
                  bodyPhysName   =   "BoneHingeY_cdt"
                  bodyIKName   =   "BoneHingeY_r_IK_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHingeX_cdt",
               "BoneHingeX_IK_a",
               "BoneHingeX_IK_b"
            ]
            ikConstraints   =   [
               {
                  type   =   "HINGE"
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  limitType   =   "DEGREE"
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
                  bodyPhysName   =   "BoneHingeY_cdt"
                  bodyIKName   =   "BoneHingeX_IK_b"
               }
            ]
         }
      ]
   }
   vfx   =   {
      vfxSkeleton   =   {
         vfxBones   =   [
            {
               name   =   "BoxCapsule"
               bone   =   "_BoxCapsule"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.014,
                        0.965,
                        2.826
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
               waterParams   =   {
                  needToSpawnParticles   =   True
                  particlesVelocityScale   =   1
                  particlesMaxVelocity   =   11
                  particlesSpawnFrequencyScale   =   0.5
               }
            },
            {
               name   =   "BoxCapsule1"
               bone   =   "_BoxCapsule1"
               boneOffset   =   [
                  1.15,
                  -0.24,
                  -0.12
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.3410001,
                        0.583,
                        2.103
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   2
            },
            {
               name   =   "BoxCapsule2"
               bone   =   "_BoxCapsule1"
               boneOffset   =   [
                  -1.15,
                  -0.24,
                  -0.12
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.3410001,
                        0.583,
                        2.103
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   2
            },
            {
               name   =   "BoxCapsule3"
               bone   =   "_BoxCapsule5"
               boneOffset   =   [
                  0,
                  0.36,
                  0.08
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.965,
                        0.541,
                        1.741
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule4"
               bone   =   "_BoxCapsule6"
               boneOffset   =   [
                  0,
                  0,
                  -0.55
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.725,
                        0.749,
                        3.451
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
               waterParams   =   {
                  needToSpawnParticles   =   True
                  particlesVelocityScale   =   1
                  particlesMaxVelocity   =   11
                  particlesSpawnFrequencyScale   =   0.5
               }
            },
            {
               name   =   "BoxCapsule5"
               bone   =   "_BoxCapsule8"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.411,
                        0.359,
                        1.72
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule6"
               bone   =   "_BoxCapsule12"
               boneOffset   =   [
                  1.07,
                  -0.24,
                  -0.84
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.4210001,
                        0.663,
                        2.503
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   2
            },
            {
               name   =   "BoxCapsule7"
               bone   =   "_BoxCapsule12"
               boneOffset   =   [
                  -1.07,
                  -0.24,
                  -0.84
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.4210001,
                        0.663,
                        2.503
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   2
            },
            {
               name   =   "BoxCapsule8"
               bone   =   "_BoxCapsule17"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.589,
                        0.368,
                        0.849
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "right_box_fast_grass"
               bone   =   "root"
               boneOffset   =   [
                  -2,
                  0.3,
                  0.2
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        2,
                        0.7,
                        1
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   8
               grassParams   =   {
                  influence   =   0.1
                  fadeDistance   =   0
                  speedMultiplier   =   0.4
               }
            },
            {
               name   =   "left_box_fast_grass"
               bone   =   "root"
               boneOffset   =   [
                  2,
                  0.3,
                  0.2
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        2,
                        0.7,
                        1
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   8
               grassParams   =   {
                  influence   =   0.1
                  fadeDistance   =   0
                  speedMultiplier   =   0.4
               }
            },
            {
               name   =   "BoxCapsule_grass1"
               bone   =   "_BoxCapsule"
               boneOffset   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        2.2,
                        1.1,
                        2.9
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   8
               grassParams   =   {
                  need_fast   =   False
                  need_lasting   =   True
                  influence   =   2
                  speedMultiplier   =   1
               }
            },
            {
               name   =   "BoxCapsule_grass2"
               bone   =   "BoneCabin_cdt"
               boneOffset   =   [
                  0,
                  0.16,
                  0.24
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        2,
                        1.2,
                        3.571
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   8
               grassParams   =   {
                  need_fast   =   False
                  need_lasting   =   True
                  influence   =   2
                  speedMultiplier   =   1
               }
            },
            {
               name   =   "shadow"
               bone   =   "root"
               boneOffset   =   [
                  0,
                  1.28,
                  0.8099999
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   2.19
                     radius   =   0.5
                     scaleX   =   1.6
                  }
                  capsule   =   {
                     height   =   3.16
                     radius   =   0.82
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow1"
               bone   =   "root"
               boneOffset   =   [
                  0,
                  1.84,
                  0.16
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   1.04
                     radius   =   0.47
                     scaleX   =   1.68
                  }
                  capsule   =   {
                     height   =   0.5600001
                     radius   =   0.76
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow2"
               bone   =   "_BoxCapsule"
               boneOffset   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   1.67
                     radius   =   0.58
                     scaleX   =   1.6
                  }
                  capsule   =   {
                     height   =   3.16
                     radius   =   0.82
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
      mirrorParams   =   {
         mirror_left   =   {
            centerLocatorName   =   "pip_camera_left"
            objName   =   "_hp_cab_interior_mirror_left"
            __type   =   "MirrorParams"
         }
         mirror_right   =   {
            centerLocatorName   =   "pip_camera_right"
            objName   =   "_hp_cab_interior_mirror_right"
            __type   =   "MirrorParams"
         }
      }
   }
   prop_usable   =   {
      smartsEntryPoints   =   {
         MalfuctionSmartPoint   =   {
            __type   =   "SmartEntryPointMalfunction"
         }
      }
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
   prop_phys_substance_target   =   {
      waterDragMultiplier   =   4.25
      oilDragMultiplier   =   8.5
      bodies   =   [
         "BoneCabin_cdt"
      ]
   }
   prop_truck_view_winch_controller   =   {
      winch   =   {
         maxLength   =   24
         minLength   =   1
         pullStrength   =   20000
         __type   =   "RbTruckWinch"
      }
      winchPullSpeed   =   0.25
      winchSourcePoints   =   [
         {
            bodyName   =   "BoneChassis_cdt"
            offsetInBodySpace   =   {
               y   =   0.043
               z   =   2.809
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTrailer_cdt"
            offsetInBodySpace   =   {
               y   =   -0.062
               z   =   -1.347
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneChassis_cdt"
            offsetInBodySpace   =   {
               y   =   0.043
               z   =   2.809
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTrailer_cdt"
            offsetInBodySpace   =   {
               y   =   -0.062
               z   =   -1.347
               __type   =   "Vector3d"
            }
         }
      ]
      winchPointMarkerName   =   "winchSourcePointMarker"
   }
   prop_truck_axles_controller   =   {
      dependentAxles   =   [
         {
            frame   =   "BoneAxle1"
            rightWheelID   =   -1
            leftWheelID   =   -1
         },
         {
            frame   =   "BoneAxle2"
            rightWheelID   =   -1
            leftWheelID   =   -1
         }
      ]
   }
   prop_cardan_shaft   =   {
      shafts   =   [
         {
            shaftActorDesc   =   {
               properties   =   {
                  geom   =   {
                     nameTpl   =   "shaft_don_71"
                  }
               }
               __type   =   "shaft_view"
            }
            bonesA   =   [
               {
                  boneName   =   "BoneChassis_cdt"
                  weight   =   1
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneAxle1"
                  weight   =   1
               }
            ]
            shaftFasteningPositionA   =   "shaft1_a"
            shaftFasteningPositionB   =   "shaft1_b"
         },
         {
            shaftActorDesc   =   {
               properties   =   {
                  geom   =   {
                     nameTpl   =   "shaft_don_71"
                  }
               }
               __type   =   "shaft_view"
            }
            bonesA   =   [
               {
                  boneName   =   "BoneChassis_cdt"
                  weight   =   1
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneChassis_cdt"
                  weight   =   1
               }
            ]
            shaftFasteningPositionA   =   "shaft2_a"
            shaftFasteningPositionB   =   "shaft2_b"
         },
         {
            shaftActorDesc   =   {
               properties   =   {
                  geom   =   {
                     nameTpl   =   "shaft_don_71"
                  }
               }
               __type   =   "shaft_view"
            }
            bonesA   =   [
               {
                  boneName   =   "BoneChassis_cdt"
                  weight   =   1
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneHingeX_cdt"
                  weight   =   1
               }
            ]
            shaftFasteningPositionA   =   "shaft3_a"
            shaftFasteningPositionB   =   "shaft3_b"
         },
         {
            shaftActorDesc   =   {
               properties   =   {
                  geom   =   {
                     nameTpl   =   "shaft_don_71"
                  }
               }
               __type   =   "shaft_view"
            }
            bonesA   =   [
               {
                  boneName   =   "BoneHingeZ_cdt"
                  weight   =   1
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneAxle2"
                  weight   =   1
               }
            ]
            shaftFasteningPositionA   =   "shaft4_a"
            shaftFasteningPositionB   =   "shaft4_b"
         }
      ]
   }
   prop_cargo_constraint   =   {
      constraintAreaSize   =   {
         x   =   4
         y   =   4
         z   =   4.5
         __type   =   "Vector3d"
      }
      internalConstraintAreaSize   =   {
         x   =   1.366
         y   =   2.5
         z   =   2.055
         __type   =   "Vector3d"
      }
      internalConstraintAreaOffset   =   {
         x   =   -0.683
         y   =   0
         z   =   -1.0275
         __type   =   "Vector3d"
      }
      truckConstarintAreaSize   =   {
         __type   =   "Vector3d"
      }
      truckConstraintAreaOffset   =   {
         __type   =   "Vector3d"
      }
      beltZPositions   =   [
         0.898,
         0.206,
         -0.486,
         -1.178
      ]
      upBorderOffset   =   {
         x   =   0.86
         y   =   0.712
         __type   =   "Vector2d"
      }
      downBorderOffset   =   {
         x   =   0.86
         y   =   0.675
         __type   =   "Vector2d"
      }
      internalBorderOffset   =   {
         x   =   0.683
         y   =   0.073
         __type   =   "Vector2d"
      }
      rightMidpointBoardXOffset   =   -0.01
      leftMidpointBoardXOffset   =   -0.01
      beltBonesOffset   =   0.04
      constraintBone   =   "BoneTrailer_cdt"
      beltHandleDesc   =   {
         type   =   {
            properties   =   {
               geom   =   {
                  isHidden   =   False
               }
            }
            __type   =   "belt_handle"
         }
         __type   =   "IactorDesc"
      }
      constraintBeltDesc   =   {
         __type   =   "IactorDesc"
      }
      constraintInternalBeltDesc   =   {
         __type   =   "IactorDesc"
      }
      hookDesc   =   {
         __type   =   "IactorDesc"
      }
   }
   prop_truck_constraint   =   {
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
   }
   prop_truck_customization   =   {
   }
   prop_customization_materials   =   {
      defaultMaterial   =   "customization_material_00"
   }
   prop_cockpit_dashboard   =   {
      elements   =   {
         "0"   =   {
            nameBone   =   "ctrl_dashboard_speed"
            axis   =   "Y"
            maxRotationAngle   =   240
            dashboardSubtype   =   "SPEED"
            __type   =   "DashboardElementCockpit"
         }
         "1"   =   {
            nameBone   =   "ctrl_dashboard_rpm"
            axis   =   "Y"
            maxRotationAngle   =   100
            dashboardSubtype   =   "RPM"
            damping   =   0.1
            increase   =   -80
            __type   =   "DashboardElementCockpit"
         }
         "2"   =   {
            nameBone   =   "ctrl_dashboard_fuel"
            axis   =   "Y"
            maxRotationAngle   =   85
            dashboardSubtype   =   "FUEL"
            damping   =   0.005
            __type   =   "DashboardElementCockpit"
         }
         "3"   =   {
            nameBone   =   "ctrl_dashboard_engine_1"
            axis   =   "Y"
            maxRotationAngle   =   35
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.005
            __type   =   "DashboardElementCockpit"
         }
         "4"   =   {
            nameBone   =   "ctrl_pedal_drive"
            axis   =   "Y"
            maxRotationAngle   =   15
            dashboardSubtype   =   "RPM"
            damping   =   0.1
            increase   =   -15
            __type   =   "DashboardElementCockpit"
         }
         "5"   =   {
            nameBone   =   "ctrl_steering_wheel"
            axis   =   "Y"
            minRotationAngle   =   -360
            maxRotationAngle   =   360
            steeringSubtype   =   "WHEEL"
            __type   =   "SteerigElementCockpit"
         }
         "6"   =   {
            nameBone   =   "ctrl_gear_stick_low"
            axis   =   "Y"
            maxRotationAngle   =   30
            speed   =   90
            switcherSubtype   =   "LOW_GEAR"
            __type   =   "SwitcherElementCockpit"
         }
         "7"   =   {
            nameBone   =   "ctrl_switch_difflock"
            axis   =   "Y"
            maxRotationAngle   =   15
            speed   =   45
            switcherSubtype   =   "DIFFLOCK"
            __type   =   "SwitcherElementCockpit"
         }
         "8"   =   {
            nameBone   =   "ctrl_switch_handbrake"
            axis   =   "Y"
            maxRotationAngle   =   40
            switcherSubtype   =   "HANDBRAKE"
            __type   =   "SwitcherElementCockpit"
         }
         "9"   =   {
            nameBone   =   "ctrl_switch_awd"
            axis   =   "X"
            maxRotationAngle   =   10
            speed   =   10
            switcherSubtype   =   "AWD"
            __type   =   "SwitcherElementCockpit"
         }
         "10"   =   {
            nameBone   =   "ctrl_gear_stick"
            rotationSpeed   =   45
            states   =   {
               AUTO   =   {
                  primary   =   {
                     angle   =   15
                     __type   =   "InfoGearState"
                  }
                  secondary   =   {
                     axis   =   "Y"
                     angle   =   15
                     __type   =   "InfoGearState"
                  }
                  __type   =   "GearStateItem"
               }
               REVERSE   =   {
                  primary   =   {
                     angle   =   -15
                     __type   =   "InfoGearState"
                  }
                  secondary   =   {
                     axis   =   "Y"
                     angle   =   -15
                     __type   =   "InfoGearState"
                  }
                  __type   =   "GearStateItem"
               }
            }
            __type   =   "GearStickElementCockpit"
         }
      }
   }
   prop_truck_view_actions_mapper   =   {
      firstControlSectionUiName   =   "UID_HUD_FIRST_SECTION_SCOUT_SCANNER"
      secondControlSectionUiName   =   "UID_HUD_SECOND_SECTION_SCOUT_WINCH"
      axisControls   =   [
         {
            uiActionDescription   =   "UID_HUD_WINCH_ATTACH"
            actionData   =   {
               actionType   =   "TRY_ATTACH_WINCH"
               canWorkWithEngineOff   =   True
               __type   =   "AxisActionData"
            }
            activationInputType   =   "RIGHT_MOUSE_BUTTON"
            axisDirectionType   =   "ALL_AXIS"
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
         },
         {
         }
      ]
      alternativeActions   =   [
         {
            actionMappingType   =   "GENERIC_ACTION"
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
         }
      ]
      firstAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         uiActionDescription   =   "UID_HUD_WINCH_PULL"
         namedActionType   =   "ACTIVATE_PULL_WINCH"
         canWorkWithEngineOff   =   True
         __type   =   "ActionMapping"
      }
      secondAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         uiActionDescription   =   "UID_HUD_WINCH_DETACH"
         namedActionType   =   "DEACTIVATE_WINCH"
         canWorkWithEngineOff   =   True
         __type   =   "ActionMapping"
      }
      thirdAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         uiActionDescription   =   "UID_HUD_ACTIVATE_OBJECTIVE_SCANNER"
         namedActionType   =   "ACTIVATE_OBJECTIVE_SCANNER"
         canWorkWithEngineOff   =   True
         __type   =   "ActionMapping"
      }
      fourthAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         uiActionDescription   =   "UID_HUD_CHANGE_EXTRUSION_SCANNER_VISIBILITY"
         namedActionType   =   "SWITCH_EXTRUSION_SCANNER"
         canWorkWithEngineOff   =   True
         __type   =   "ActionMapping"
      }
      fifthAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         uiActionDescription   =   "UID_HUD_CARGO_CONSTRAINT_ATTACH"
         isToggleable   =   True
         altUiActionDescription   =   "UID_HUD_CARGO_CONSTRAINT_DETACH"
         namedActionType   =   "CONSTRAINT_CARGO"
         canWorkWithEngineOff   =   True
         __type   =   "ActionMapping"
      }
      sixthAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
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
      legacyActionsInDefaultMode   =   [
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
         },
         {
         },
         {
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
      steeringThreshold   =   15
      reverseAngleThreshold   =   0
      velocityScale   =   1
      stuckVelocityThreshold   =   2
      stuckScaleChange   =   0.5
      velocityPedalControl   =   {
         spline   =   [
            -2.949255,
            -0.979774,
            -3.616398,
            -3.189548,
            -2.555923,
            0.3285307,
            0,
            0,
            0,
            0,
            0,
            0,
            3,
            0.9999998,
            0,
            0.9960949,
            11.30876,
            0.8238423
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
         __type   =   "Vector3d"
      }
   }
   prop_truck_upside_down_checker   =   {
   }
   prop_wheel_particles_base   =   {
      waterSfxWheels   =   {
         particleName   =   "wheel_particles_water_sm_01"
         __type   =   "CustomSfxEmitter"
      }
      waterSfxTrack   =   {
         __type   =   "CustomSfxEmitter"
      }
      oilSfxWheels   =   {
         particleName   =   "wheel_particles_oil_sm_01"
         __type   =   "CustomSfxEmitter"
      }
      waterWheelSettings   =   {
         particleTenacity   =   3
         baseDepth   =   0.1
         spreadAngleProb   =   0.4
         maxParticleVelocity   =   2.5
         __type   =   "WheelParticleMaterialSettings"
      }
      wheelDrySfxs   =   [
         {
            material   =   "asphalt"
            emitter   =   {
               particleName   =   "wheel_particles_hard_surface"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   2
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   60
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "sand"
            emitter   =   {
               particleName   =   "wheel_particles_sand_02"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   0.7
               baseDepth   =   0.1
               maxParticleVelocity   =   2.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "sand_dry"
            emitter   =   {
               particleName   =   "wheel_particles_sand_dry_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   0.7
               baseDepth   =   0.1
               maxParticleVelocity   =   2.5
               spreadAngle   =   45
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "mud_sand"
            emitter   =   {
               particleName   =   "wheel_particles_mud_sand_dry_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   1
               baseDepth   =   0.1
               maxParticleVelocity   =   3
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "stone"
            emitter   =   {
               particleName   =   "wheel_particles_hard_surface"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   2
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   60
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "gravel_small"
            emitter   =   {
               particleName   =   "wheel_particles_gravel_02"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   0.6
               baseDepth   =   0.1
               maxParticleVelocity   =   2.5
               spreadAngle   =   60
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "brick"
            emitter   =   {
               particleName   =   "wheel_particles_brick_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   0.5
               maxParticleVelocity   =   2.5
               spreadAngle   =   60
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "garbage"
            emitter   =   {
               particleName   =   "wheel_particles_garbage_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   0.5
               baseDepth   =   0.1
               maxParticleVelocity   =   2.5
               spreadAngle   =   60
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "ground"
            emitter   =   {
               particleName   =   "wheel_particles_mud_down_02"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   1
               baseDepth   =   0.1
               maxParticleVelocity   =   3.5
               spreadAngle   =   15
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "dirt"
            emitter   =   {
               particleName   =   "wheel_particles_mud_dirt_dry_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   1
               baseDepth   =   0.1
               maxParticleVelocity   =   2
               spreadAngle   =   10
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "mud"
            emitter   =   {
               particleName   =   "wheel_small_particles_ground_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   1
               baseDepth   =   0.1
               maxParticleVelocity   =   3.5
               spreadAngle   =   15
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "grass"
            emitter   =   {
               particleName   =   "wheel_particles_grass_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   1
               baseDepth   =   0.1
               maxParticleVelocity   =   3.5
               spreadAngle   =   15
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "mud_grass"
            emitter   =   {
               particleName   =   "wheel_particles_mud_grass_02"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   1
               baseDepth   =   0.1
               maxParticleVelocity   =   2.5
               spreadAngle   =   15
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "water_puddle"
            emitter   =   {
               particleName   =   "wheel_particles_water_puddle_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   0.5
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   60
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "oil"
            emitter   =   {
               particleName   =   "wheel_particles_oil_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   5
               baseDepth   =   1
               maxParticleVelocity   =   4.5
               spreadAngle   =   0
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "default"
            emitter   =   {
               particleName   =   "wheel_particles_hard_surface"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   2
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   60
               __type   =   "WheelParticleMaterialSettings"
            }
         }
      ]
      wheelWetSfxs   =   [
         {
            material   =   "asphalt"
            emitter   =   {
               particleName   =   "wheel_particles_hard_surface_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               baseDepth   =   0.1
               maxParticleVelocity   =   2.5
               spreadAngle   =   60
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "sand"
            emitter   =   {
               particleName   =   "wheel_particles_sand_wet"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   1
               baseDepth   =   0.1
               maxParticleVelocity   =   2.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "mud_sand"
            emitter   =   {
               particleName   =   "wheel_particles_mud_sand_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   2
               baseDepth   =   0.1
               maxParticleVelocity   =   3
               spreadAngle   =   15
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "gravel_small"
            emitter   =   {
               particleName   =   "wheel_particles_gravel_wet_02"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               baseDepth   =   0.1
               maxParticleVelocity   =   2.5
               spreadAngle   =   60
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "ground"
            emitter   =   {
               particleName   =   "wheel_particles_mud_down_02_wet"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   1
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   60
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "dirt"
            emitter   =   {
               particleName   =   "wheel_particles_mud_dirt_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   1
               baseDepth   =   0.1
               maxParticleVelocity   =   2
               spreadAngle   =   10
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "mud"
            emitter   =   {
               particleName   =   "wheel_particles_mud_down_small_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   2.5
               baseDepth   =   0.1
               maxParticleVelocity   =   2
               spreadAngle   =   15
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "grass"
            emitter   =   {
               particleName   =   "wheel_small_particles_mud_grass_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   1
               baseDepth   =   0.1
               maxParticleVelocity   =   3.5
               spreadAngle   =   15
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "mud_grass"
            emitter   =   {
               particleName   =   "wheel_small_particles_mud_grass_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   2.5
               baseDepth   =   0.1
               maxParticleVelocity   =   2.5
               spreadAngle   =   30
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "water_puddle"
            emitter   =   {
               particleName   =   "wheel_particles_water_puddle_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   60
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "oil"
            emitter   =   {
               particleName   =   "wheel_particles_oil_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   5
               baseDepth   =   1
               maxParticleVelocity   =   4.5
               spreadAngle   =   0
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "default"
            emitter   =   {
               particleName   =   "wheel_particles_hard_surface_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               baseDepth   =   0.1
               maxParticleVelocity   =   2.5
               spreadAngle   =   60
               __type   =   "WheelParticleMaterialSettings"
            }
         }
      ]
   }
   prop_truck_warning_notification   =   {
   }
   prop_truck_shaker_native_controller   =   {
      shakers   =   {
         EngineStart   =   {
            shakerBone   =   "root"
            frequency   =   50
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
               0.001051,
               0.393002,
               0.243593,
               0.984934,
               0.997887,
               0.010996
            ]
         }
         EngineShutdown   =   {
            shakerBone   =   "root"
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
         Exhaust   =   {
            shakerBone   =   "BoneExhaust"
            frequency   =   20
            maxPositionOffsetScale   =   1
            minOffset   =   [
               -0.005,
               -0.005,
               -0.005
            ]
            maxOffset   =   [
               0.005,
               0.005,
               0.005
            ]
            positionMultiplier   =   [
               0,
               0.4,
               1,
               1
            ]
            shakeOnStartTimeMs   =   20
            dampingStep   =   15
            frequencyMultiplier   =   [
               0,
               0.8,
               1,
               1
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
      searchWaveSpeed   =   15
      resourcesDisplayDuration   =   5
      resourcesHighlightEmissive   =   8
      objectiveScanner   =   {
         center   =   {
            posOffset   =   {
               __type   =   "Vector3d"
            }
            __type   =   "Tracker"
         }
         radius   =   55
         __type   =   "ScannerTag"
      }
      scannerVfxActorDesc   =   {
         type   =   {
            __type   =   "sfx_radar_objective_sphere"
         }
         __type   =   "IactorDesc"
      }
      vfxActorOffset   =   {
         y   =   0.6
         __type   =   "Vector3d"
      }
   }
   prop_truck_extrusion_scanner   =   {
      scannerSfxActorDesc   =   {
         __type   =   "IactorDesc"
      }
      sfxActorOffset   =   {
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
   prop_malfunction   =   {
   }
   prop_vehicle_lights_material   =   {
      lights   =   {
         "0"   =   {
            defaultName   =   "default"
            geomNames   =   [
               "reflector_headlight"
            ]
            __type   =   "Headlights"
         }
         "1"   =   {
            defaultName   =   "default"
            geomNames   =   [
               "stop_lights"
            ]
            __type   =   "BrakeHeadlights"
         }
         "2"   =   {
            defaultName   =   "default"
            geomNames   =   [
               "reverse_lights"
            ]
            __type   =   "ReverseHeadlights"
         }
         "3"   =   {
            defaultName   =   "default"
            lightName   =   "lights_emissive"
            geomNames   =   [
               "marker_lights",
               "marker_lights_trailer"
            ]
            __type   =   "Headlights"
         }
         "4"   =   {
            defaultName   =   "default"
            lightName   =   "lights_emissive"
            geomNames   =   [
               "_hp_cab_interior_gauges"
            ]
            __type   =   "CockpitLights"
         }
      }
   }
   prop_truck_mirror   =   {
      mirrors   =   [
         {
            name   =   "mirror_case_left"
            angleRotateX   =   0.3
            angleRotateY   =   -5.6
         },
         {
            name   =   "mirror_case_right"
            angleRotateX   =   2.7
            angleRotateY   =   -9.1
            angleRotateZ   =   0
         }
      ]
   }
}
__type   =   "truck_view"
