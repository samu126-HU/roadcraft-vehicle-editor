properties   =   {
   geom   =   {
      nameTpl   =   "wheel_loader_sideboard"
   }
   prop_truck_view_controller   =   {
      engineFiringDelay   =   1000
   }
   prop_truck_view   =   {
      truckName   =   "kronenwerk_l34_cargo_dozer_res"
      truckType   =   "truck_heavy"
      truckVisibilityInFogOfWar   =   60
   }
   prop_truck_rb   =   {
      suspensionSet   =   {
         front   =   {
            min   =   -0.1
            max   =   0
            height   =   0.15
            strength   =   0.1
            damping   =   0.85
         }
         rearDiffers   =   True
         rear   =   {
            min   =   -0.2
            max   =   0.3
            height   =   0.05
            strength   =   0.06
            damping   =   0.65
         }
      }
      engine   =   {
         params   =   {
            torque   =   185000
            brakesDelay   =   0.5
            maxDeltaAngVel   =   0.01
            responsiveness   =   0.045
            __type   =   "TruckEngineParams"
         }
         __type   =   "TruckEngine"
      }
      gearbox   =   {
         params   =   {
            gears   =   [
               {
                  angularVelocity   =   0.5
                  gearRatio   =   6.5
                  targetSpeedRangeKmh   =   {
                     y   =   8
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   1.9
                  gearRatio   =   0
                  targetSpeedRangeKmh   =   {
                     x   =   8
                     y   =   16
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   3
                  gearRatio   =   0
                  targetSpeedRangeKmh   =   {
                     x   =   16
                     y   =   21
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   3.2
                  gearRatio   =   0
                  targetSpeedRangeKmh   =   {
                     x   =   21
                     y   =   30
                     __type   =   "Vector2dRnd"
                  }
               }
            ]
            reverseGear   =   {
               angularVelocity   =   0.75
               gearRatio   =   4.5
               __type   =   "TruckSingleGearParams"
            }
            highGear   =   {
               angularVelocity   =   3
               gearRatio   =   4.5
               __type   =   "TruckSingleGearParams"
            }
            lowRangeGear   =   {
               angularVelocity   =   0.15
               gearRatio   =   4.5
               __type   =   "TruckSingleGearParams"
            }
            isLowRangeModeReverseEnabled   =   True
            isLowRangeModeClutchingEnabled   =   False
            clutchSwitchTime   =   0.5
            defaultGearSwitchDelay   =   0.25
            upperGearSwitchDelayBase   =   0.35
            upperGearSwitchDelayGearNumMultiplier   =   0.45
            downGearSwitchDelay   =   2
            neutralGearSwitchingDelay   =   0.1
            __type   =   "TruckGearboxParams"
         }
         __type   =   "TruckGearbox"
      }
      maxSteerSpeed   =   0.015
      backSteerSpeed   =   0.03
      pedalsResponsiveness   =   0.4
      isNeutralGearWheelResistanceEnabled   =   False
      isReverseWheelResistanceEnabled   =   True
      isUnlockDiffAvrVelocity   =   True
      unlockDiffAvrVelocityMinTorque   =   0.18
      projectCallbacks   =   {
         __type   =   "TruckRoadbuilderCallbacks"
      }
      diffLockType   =   "ALWAYS"
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
            geomName   =   "wheel_front_left"
            parentFrame   =   "BoneBodyFront_cdt"
            torqueType   =   "full"
            handbrakeStrength   =   0.5
            enableLateralForce   =   True
            editableWheel   =   "EditableWheel"
         },
         {
            geomName   =   "wheel_front_right"
            parentFrame   =   "BoneBodyFront_cdt"
            isRightSided   =   True
            torqueType   =   "full"
            handbrakeStrength   =   0.5
            enableLateralForce   =   True
            editableWheel   =   "EditableWheel"
         },
         {
            geomName   =   "wheel_middle_left"
            parentFrame   =   "BoneBodyRear_cdt"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.7
            enableLateralForce   =   True
            editableWheel   =   "EditableWheel"
         },
         {
            geomName   =   "wheel_middle_right"
            parentFrame   =   "BoneBodyRear_cdt"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.7
            enableLateralForce   =   True
            editableWheel   =   "EditableWheel"
         },
         {
            geomName   =   "wheel_rear_left"
            parentFrame   =   "BoneBodyRear_cdt"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.7
            enableLateralForce   =   True
            editableWheel   =   "EditableWheel"
         },
         {
            geomName   =   "wheel_rear_right"
            parentFrame   =   "BoneBodyRear_cdt"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.7
            enableLateralForce   =   True
            editableWheel   =   "EditableWheel"
         }
      ]
      wheelPool   =   {
         EditableWheel   =   {
            __value   =   "auto_wheel_kronenwerk_l34_cargo_dozer_res_editablewheel"
         }
      }
      controllableSteeringConstraints   =   [
         {
            constraintName   =   "steering"
            angularSpeed   =   25
            minAngle   =   -28
            maxAngle   =   28
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
                     "TruckShaker_Dct2Lfd3/Play",
                     "TruckShaker_Dct2Lfd31/Stop",
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
                     "PlaySound_9_1/Play"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown   =   {
                  viewData   =   {
                     x   =   3338.561
                     y   =   5000
                  }
                  OnEngineShutdown   =   [
                     "PlaySound_9/Play",
                     "TruckShaker_Dct2Lfd31/Play",
                     "TruckShaker_Dct2Lfd3/Stop",
                     "Schedule_E4q9G18M/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               OnEngineAcceleration   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5300
                  }
                  OnAcceleration   =   [
                     "PlaySound/Play",
                     "Schedule_E4q9G18M/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5450
                  }
                  OnEngineReverse   =   [
                     "PlaySound/Play",
                     "Schedule_E4q9G18M/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               OnBrakePull   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5600
                  }
                  OnBrakePulled   =   [
                     "PlaySound_3_1/Play"
                  ]
                  __type   =   "BlueprintNodeOnBrakePull"
               }
               OnBrakeRelease   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5750
                  }
                  OnBrakeReleased   =   [
                     "PlaySound_3_2/Play"
                  ]
                  __type   =   "BlueprintNodeOnBrakeRelease"
               }
               OnHandbrakeStateChanged   =   {
                  viewData   =   {
                     x   =   3335.334
                     y   =   5900
                  }
                  OnHandbrakeOn   =   [
                     "PlaySound_3_3/Play"
                  ]
                  OnHandbrakeOff   =   [
                     "PlaySound_3_4/Play"
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
                  OnInertia   =   [
                     "Schedule_E4q9G18M/Start"
                  ]
               }
               SetSoundSwitch   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   4650
                  }
                  OnExit   =   [
                     "PlaySound_9_3/Play"
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
               PlaySound_9_1   =   {
                  viewData   =   {
                     x   =   4000
                     y   =   4850
                  }
                  OnSoundStart   =   [
                     "PlaySound_E72bNKfl/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_kronenwerk_l34_engine"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_9_3   =   {
                  viewData   =   {
                     x   =   4000
                     y   =   4650
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_kronenwerk_l34_engine_strat"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_9   =   {
                  viewData   =   {
                     x   =   4000
                     y   =   5050
                  }
                  OnSoundStart   =   [
                     "PlaySound_9_1/Stop",
                     "PlaySound_E72bNKfl/Stop",
                     "PlaySound_9_3/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_kronenwerk_l34_engine_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_1   =   {
                  viewData   =   {
                     x   =   4000
                     y   =   5600
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_kronenwerk_l34_brake_pull"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_2   =   {
                  viewData   =   {
                     x   =   4000
                     y   =   5800
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_kronenwerk_l34_brake_release"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_3   =   {
                  viewData   =   {
                     x   =   4000
                     y   =   6000
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_kronenwerk_l34_handbrake_on"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_4   =   {
                  viewData   =   {
                     x   =   4000
                     y   =   6400
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_kronenwerk_l34_handbrake_off"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound   =   {
                  viewData   =   {
                     x   =   4000
                     y   =   5300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_kronenwerk_l34_acc"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               GetTruckRpm   =   {
                  viewData   =   {
                     x   =   5752.258
                     y   =   4900
                  }
                  Get   =   [
                     "SetSoundParameter_1_1_1/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetTruckRpm"
               }
               OnInit_1   =   {
                  viewData   =   {
                     x   =   5752.258
                     y   =   4800
                  }
                  OnExit   =   [
                     "Schedule_1_1_1/Start"
                  ]
                  __type   =   "BlueprintCommonLibraryOninit"
               }
               Schedule_1_1_1   =   {
                  viewData   =   {
                     x   =   5950
                     y   =   4800
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_1_1_1/SetParameter",
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
                     x   =   5752.258
                     y   =   5000
                  }
                  GetLinearVelocity   =   [
                     "SetSoundParameter_1_1_1_1/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               SetSoundParameter_1_1_1   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   4800
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
               TruckShaker_Dct2Lfd3   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   4900
                  }
                  duration   =   4
                  shakerName   =   "EngineStart"
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_Dct2Lfd31   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   5100
                  }
                  duration   =   2.8
                  shakerName   =   "EngineShutdown"
                  maxRPM   =   True
                  __type   =   "BlueprintNodeTruckShaker"
               }
               Schedule_E4q9G18M   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   5650
                  }
                  OnPeriod   =   [
                     "PlaySound_3_2/Play"
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
               PlaySound_E72bNKfl   =   {
                  viewData   =   {
                     x   =   4750
                     y   =   4850
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
               CloneSoundEmitter_E9kbr77K   =   {
                  viewData   =   {
                     x   =   4100
                     y   =   6200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_3_4/emitterRef/cb",
                     "PlaySound_3_3/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneBodyFront_1"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               OnGearUpdate_Ea3dhoen   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   5450
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
                     "SetSoundParameter_Ea3dhoen1/SetParameter"
                  ]
                  GetLastGear   =   [
                     "SetSoundParameter_Ea3dhoen1/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               SetSoundParameter_Ea3dhoen1   =   {
                  viewData   =   {
                     x   =   6350
                     y   =   5650
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
               OnEngineRunningOnInit_F72c6r7Q   =   {
                  viewData   =   {
                     x   =   3100
                     y   =   4992.627
                  }
                  OnEngineRunning   =   [
                     "TruckShaker_Dct2Lfd3/Stop",
                     "TruckShaker_Dct2Lfd31/Stop",
                     "TruckShaker_F6r9HL50/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineRunningOnInit"
               }
            }
            groups   =   {
               "[SOUND] rpm and speed"   =   {
                  x   =   5600
                  y   =   4600
                  width   =   1399
                  height   =   600
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] gear update"   =   {
                  x   =   5600
                  y   =   5300
                  width   =   1400
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
                  zeroBorderEnergy   =   31250
                  timeInterval   =   200
                  exceptionalBodyNames   =   [
                     "BoneGraderBladeRotate_cdt",
                     "BoneGraderBlade_cdt"
                  ]
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
                     def   =   1.6
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
               OnTPLAnimationBegin_E4jdy0el   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1650
                  }
                  OnAnimStart   =   [
                     "PlaySound_E4jdy0el2/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnBegin"
               }
               OnTPLAnimationEnd_E4jdy0el1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1850
                  }
                  OnAnimStop   =   [
                     "PlaySound_E4jdy0el3/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnEnd"
               }
               PlaySound_E4jdy0el2   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1650
                  }
                  OnSoundStart   =   [
                     "PlaySound_E8mavO7R/Play"
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
               PlaySound_E4jdy0el3   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1850
                  }
                  OnSoundStart   =   [
                     "PlaySound_E8mavO7R1/Play"
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
               IntCheck_E4jdy0el4   =   {
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
                     "PlaySound_E4jdy0el6/Play"
                  ]
                  __type   =   "BlueprintLibraryCheckint"
               }
               OnHandbrakeStateChanged_E4jdy0el5   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1400
                  }
                  OnHandbrakeOn   =   [
                     "IntCheck_E4jdy0el4/Input"
                  ]
                  __type   =   "BlueprintNodeOnHandbrakeStateChanged"
               }
               PlaySound_E4jdy0el6   =   {
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
               GetTruckVelocity_E4jdy0el7   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1500
                  }
                  GetLinearVelocity   =   [
                     "IntCheck_E4jdy0el4/intToCheck/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               OnGearUpdate_Ec4774dT   =   {
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
                     "PlaySound_Ec4774dT2/Play"
                  ]
                  GetLastGear   =   [  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               PlaySound_Ec4774dT2   =   {
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
                        name   =   "vhc_body_gear_truck"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_Ec4774dT3   =   {
                  viewData   =   {
                     x   =   4400
                     y   =   2100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ec4774dT2/emitterRef/cb",
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
               PlaySound_E8mavO7R   =   {
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
               PlaySound_E8mavO7R1   =   {
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
               CloneSoundEmitter_E8maw4bg   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   1650
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E8mavO7R/emitterRef/cb",
                     "PlaySound_E8mavO7R1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneAnim_Wipers_RR2"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_E8maw4bg1   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   1850
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E4jdy0el2/emitterRef/cb",
                     "PlaySound_E4jdy0el3/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneAnim_Wipers_RL2"
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
               PlaySound_E8sen93A   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "Schedule_E8sen93A2/Start"
                  ]
                  OnSoundEnd   =   [
                     "Schedule_E8sen93A2/Stop"
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
               GetInfoElementCockpitForSoundWithSchedule_E8sen93A1   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_E8sen93A/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_E8sen93A/Stop"
                  ]
                  nameBoneBro   =   "ctrl_steering_wheel"
                  isWheel   =   True
                  GetCurrentSteerSpeed   =   [
                     "SetSoundParameter_E8sen93A3/valueRef/cb"
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
               Schedule_E8sen93A2   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_E8sen93A3/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               SetSoundParameter_E8sen93A3   =   {
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
               CloneSoundEmitter_E8sen93A4   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E8sen93A/emitterRef/cb",
                     "SetSoundParameter_E8sen93A3/emitterRef/cb"
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
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_Ea3dIK2E2   =   {
                  viewData   =   {
                     x   =   4950
                     y   =   4400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea3eAX0j1/emitterRef/cb"
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
               OnControllableConstraintStateChange_Ea3ehJbk   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3800
                  }
                  OnStart   =   [
                     "PlaySound_Ea3eqU78/Play"
                  ]
                  name   =   "GraderBlade"
                  isIncrease   =   True
                  __type   =   "BlueprintNodeOnControllableStateChange"
               }
               PlaySound_Ea3eqU78   =   {
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
                        name   =   "vhc_body_cockpit_lever"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnControllableConstraintStateChange_Ea3er7dc   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4000
                  }
                  OnStart   =   [
                     "PlaySound_Ea3eqU78/Play"
                  ]
                  name   =   "GraderBlade"
                  isIncrease   =   False
                  __type   =   "BlueprintNodeOnControllableStateChange"
               }
               CloneSoundEmitter_Ea3erGbE   =   {
                  viewData   =   {
                     x   =   4950
                     y   =   4000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea3eqU78/emitterRef/cb"
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
               OnControllableConstraintStateChange_Ea3eAX0j   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4200
                  }
                  OnStart   =   [
                     "PlaySound_Ea3eAX0j1/Play"
                  ]
                  name   =   "GraderBladeRotate"
                  isIncrease   =   True
                  __type   =   "BlueprintNodeOnControllableStateChange"
               }
               PlaySound_Ea3eAX0j1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   4200
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
               OnControllableConstraintStateChange_Ea3eAX0j2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4400
                  }
                  OnStart   =   [
                     "PlaySound_Ea3eAX0j1/Play"
                  ]
                  name   =   "GraderBladeRotate"
                  __type   =   "BlueprintNodeOnControllableStateChange"
               }
               GetInfoElementCockpitForSoundWithEvent_Eapc390A   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Eapc390A1/Play"
                  ]
                  nameBoneBro   =   "ctrl_switch_awd"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_Eapc390A1   =   {
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
               CloneSoundEmitter_Eapc390A2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Eapc390A1/emitterRef/cb"
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
               GetInfoElementCockpitForSoundWithEvent_EbleIhdo   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_EbleIhdo1/Play"
                  ]
                  nameBoneBro   =   "ctrl_gear_stick_low"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_EbleIhdo1   =   {
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
               CloneSoundEmitter_EbleIhdo2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   5000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_EbleIhdo1/emitterRef/cb"
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
                     "BoneBodyRear_cdt"
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
               OnTruckCollision_1_1   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   6900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  zeroBorderEnergy   =   0.001
                  timeInterval   =   10
                  withResources   =   True
                  withQuestObjects   =   True
                  withPhysPlants   =   True
                  withTerrainParticles   =   False
                  withTrucks   =   True
                  withTruckWheels   =   True
                  notCollideBodiesOnlyWithTerrain   =   False
                  exceptionalBodyNames   =   [
                     "BoneBodyMiddle_cdt",
                     "BoneBodyFront_cdt",
                     "BoneBodyRear_cdt",
                     "BoneLeftMudguard_cdt",
                     "BoneRightMudguard_cdt",
                     "BoneSunshield_R_cdt",
                     "BoneSunshield_L_cdt",
                     "BoneKeyFob_cdt",
                     "BoneKeyFobRing_cdt"
                  ]
                  OnCollision   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1/Input"
                  ]
                  GetEnergy   =   [
                     "FloatAbs_1_1/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeOnTruckCollision"
               }
               FloatAbs_1_1   =   {
                  viewData   =   {
                     x   =   4850
                     y   =   7000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  aFloat   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetFloat   =   [
                     "FloatDivision_1_1/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeFloatAbs"
               }
               FloatDivision_1_1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   7000
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
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1/strengthRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatdivision"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1   =   {
                  viewData   =   {
                     x   =   5300
                     y   =   6900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "high_med"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeActivateForcefeedbackIfTruckIsCurrent"
               }
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         SFX   =   {
            nodes   =   {
               OnEngineStarted   =   {
                  viewData   =   {
                     x   =   8100
                     y   =   3800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineStarted   =   [
                     "VFXRestart/Input",
                     "VFXRestart_1/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown   =   {
                  viewData   =   {
                     x   =   8098
                     y   =   3950
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
                     x   =   8100
                     y   =   4350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAcceleration   =   [
                     "VFXRestart_2/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9ofAS7F/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse   =   {
                  viewData   =   {
                     x   =   8100
                     y   =   4550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineReverse   =   [
                     "VFXRestart_2/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9ofAS7F/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               VFXRestart   =   {
                  viewData   =   {
                     x   =   8550
                     y   =   3950
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
               VFXRestart_1   =   {
                  viewData   =   {
                     x   =   8550
                     y   =   3800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "VFXRestart_E9ofBI0H/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_gas_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_2   =   {
                  viewData   =   {
                     x   =   8550
                     y   =   4400
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
               VFXStop   =   {
                  viewData   =   {
                     x   =   8550
                     y   =   4050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "VFXStop_E9ofBN9n/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXStop_E9ofAS7F   =   {
                  viewData   =   {
                     x   =   8550
                     y   =   4500
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
               VFXRestart_E9ofBI0H   =   {
                  viewData   =   {
                     x   =   9050
                     y   =   3800
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
               VFXStop_E9ofBN9n   =   {
                  viewData   =   {
                     x   =   9050
                     y   =   4050
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
               OnChainConstraintStateChange_E1fi6lfs   =   {
                  viewData   =   {
                     x   =   5950
                     y   =   7650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_9_E1fi6lfs1/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_9_1_E1fi6lfs2/Play"
                  ]
                  inputChainNameRef   =   {
                     def   =   "open"
                     __type   =   "StringRefParam"
                  }
                  __type   =   "BlueprintNodeOnChainConstraintStateChanged"
               }
               PlaySound_9_E1fi6lfs1   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   7600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grader_move_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_9_1_E1fi6lfs2   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   7800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grader_move_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnChainConstraintStateChange_E1fi6lfs3   =   {
                  viewData   =   {
                     x   =   5950
                     y   =   7750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_9_E1fi6lfs1/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_9_1_E1fi6lfs2/Play"
                  ]
                  inputChainNameRef   =   {
                     def   =   "close"
                     __type   =   "StringRefParam"
                  }
                  __type   =   "BlueprintNodeOnChainConstraintStateChanged"
               }
               CloneSoundEmitter_E1fi6lfs7   =   {
                  viewData   =   {
                     x   =   5950
                     y   =   7900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_9_E1fi6lfs1/emitterRef/cb",
                     "PlaySound_9_1_E1fi6lfs2/emitterRef/cb",
                     "PlaySound_3_5_3_1_E4qeO01v/emitterRef/cb",
                     "PlaySound_3_5_1_1_1_E4qeO01v1/emitterRef/cb",
                     "PlaySound_3_5_3_1_E4qeO01v4/emitterRef/cb",
                     "PlaySound_3_5_1_1_1_E4qeO01v5/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneGraderBladeRotate_3"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_3_5_3_1_E4qeO01v   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   8050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_bucket_rotate_left_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_5_1_1_1_E4qeO01v1   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   8200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_bucket_rotate_left_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnControllableConstraintStateChange_E4qeO01v3   =   {
                  viewData   =   {
                     x   =   5950
                     y   =   8150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_3_5_3_1_E4qeO01v/Play",
                     "PlaySound_3_5_1_1_1_E4qeO01v1/Stop",
                     "PlaySound_3_5_3_1_E4qeO01v4/Stop"
                  ]
                  OnStop   =   [
                     "PlaySound_3_5_3_1_E4qeO01v/Stop",
                     "PlaySound_3_5_1_1_1_E4qeO01v1/Play"
                  ]
                  name   =   "GraderBladeRotate"
                  __type   =   "BlueprintNodeOnControllableStateChange"
               }
               PlaySound_3_5_3_1_E4qeO01v4   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   8400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_bucket_rotate_right_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_5_1_1_1_E4qeO01v5   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   8550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_bucket_rotate_right_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnControllableConstraintStateChange_E4qeO01v6   =   {
                  viewData   =   {
                     x   =   5950
                     y   =   8450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_3_5_3_1_E4qeO01v4/Play",
                     "PlaySound_3_5_1_1_1_E4qeO01v5/Stop",
                     "PlaySound_3_5_3_1_E4qeO01v/Stop"
                  ]
                  OnStop   =   [
                     "PlaySound_3_5_3_1_E4qeO01v4/Stop",
                     "PlaySound_3_5_1_1_1_E4qeO01v5/Play"
                  ]
                  name   =   "GraderBladeRotate"
                  isIncrease   =   True
                  __type   =   "BlueprintNodeOnControllableStateChange"
               }
            }
            groups   =   {
               "[SOUND] addon"   =   {
                  x   =   5850
                  y   =   7499.479
                  width   =   1650
                  height   =   1250.521
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         Cargo   =   {
            nodes   =   {
               OnCargoAttachmentChanged_E4qeuv6L   =   {
                  viewData   =   {
                     x   =   10050
                     y   =   5150
                  }
                  OnAttached   =   [
                     "PlaySound_9_E4qeuv6L1/Play"
                  ]
                  OnDetached   =   [
                     "PlaySound_9_E4qeuv6L2/Play"
                  ]
                  __type   =   "BlueprintNodeOnCargoAttachmentChanged"
               }
               PlaySound_9_E4qeuv6L1   =   {
                  viewData   =   {
                     x   =   10850
                     y   =   5150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_cargo_pack"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_9_E4qeuv6L2   =   {
                  viewData   =   {
                     x   =   10850
                     y   =   5350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_cargo_unpack"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_E4qeuv6L3   =   {
                  viewData   =   {
                     x   =   10050
                     y   =   5350
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_9_E4qeuv6L1/emitterRef/cb",
                     "PlaySound_9_E4qeuv6L2/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneBodyRear_1"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
            }
            groups   =   {
               "[SOUND] cargo"   =   {
                  x   =   10000
                  y   =   5000
                  width   =   1496
                  height   =   631.0732
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         DiggingGround   =   {
            nodes   =   {
               Schedule_E4qex48h   =   {
                  viewData   =   {
                     x   =   10650
                     y   =   6500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_E4qex48h4/SetParameter",
                     "SetSoundParameter_E4qex48h5/SetParameter",
                     "SetSoundParameter_E4qex48hb/SetParameter",
                     "SetSoundParameter_E4qex48hc/SetParameter"
                  ]
                  period   =   {
                     def   =   0
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               GetBucketChangingTerrain_E4qex48h1   =   {
                  viewData   =   {
                     x   =   10250
                     y   =   5800
                  }
                  summedMaterials   =   [
                     {
                        materialType   =   "gravel_big"
                     },
                     {
                        materialType   =   "gravel_small"
                     }
                  ]
                  GetVolumeOrRatio   =   [
                     "FloatMultiplication_E4qex48hy/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeBucketChangingTerrain"
               }
               SetSoundParameter_E4qex48h2   =   {
                  viewData   =   {
                     x   =   11950
                     y   =   5350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "rtpc_grader_amount_dirt"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               GetBucketChangingTerrain_E4qex48h3   =   {
                  viewData   =   {
                     x   =   10250
                     y   =   6250
                  }
                  summedMaterials   =   [
                     {
                        materialType   =   "sand"
                     },
                     {
                        materialType   =   "sand_dry"
                     },
                     {
                        materialType   =   "mud_sand"
                     }
                  ]
                  GetVolumeOrRatio   =   [
                     "FloatMultiplication_E4qex48hx/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeBucketChangingTerrain"
               }
               SetSoundParameter_E4qex48h4   =   {
                  viewData   =   {
                     x   =   11300
                     y   =   6000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "rtpc_grader_amount_sand"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               SetSoundParameter_E4qex48h5   =   {
                  viewData   =   {
                     x   =   11300
                     y   =   5800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "SetSoundParameter_E4qex48ha/SetParameter"
                  ]
                  nameRef   =   {
                     def   =   "rtpc_grader_amount_stone"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               PlaySound_1_E4qex48h7   =   {
                  viewData   =   {
                     x   =   11300
                     y   =   8350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grader_dig_sand_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1_E4qex48h8   =   {
                  viewData   =   {
                     x   =   11300
                     y   =   7200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grader_dig_sand_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               SetSoundParameter_E4qex48h9   =   {
                  viewData   =   {
                     x   =   11950
                     y   =   5550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "rtpc_grader_amount_gravel"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               SetSoundParameter_E4qex48ha   =   {
                  viewData   =   {
                     x   =   11950
                     y   =   5800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "rtpc_grader_amount_concrete"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               SetSoundParameter_E4qex48hb   =   {
                  viewData   =   {
                     x   =   11300
                     y   =   5550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "SetSoundParameter_E4qex48h9/SetParameter"
                  ]
                  nameRef   =   {
                     def   =   "rtpc_grader_amount_asphalt"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               SetSoundParameter_E4qex48hc   =   {
                  viewData   =   {
                     x   =   11300
                     y   =   5350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "SetSoundParameter_E4qex48h2/SetParameter"
                  ]
                  nameRef   =   {
                     def   =   "rtpc_grader_amount_ground"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               PlaySound_1_E4qex48hd   =   {
                  viewData   =   {
                     x   =   12050
                     y   =   7550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grader_dig_dirt_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1_E4qex48he   =   {
                  viewData   =   {
                     x   =   11950
                     y   =   6600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grader_dig_dirt_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1_E4qex48hf   =   {
                  viewData   =   {
                     x   =   11300
                     y   =   7550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1_E4qex48hd/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grader_dig_ground_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1_E4qex48hg   =   {
                  viewData   =   {
                     x   =   11300
                     y   =   6600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1_E4qex48he/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grader_dig_ground_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1_E4qex48hh   =   {
                  viewData   =   {
                     x   =   11300
                     y   =   7850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1_E4qex48hl/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grader_dig_asphalt_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1_E4qex48hi   =   {
                  viewData   =   {
                     x   =   11300
                     y   =   6800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1_E4qex48hm/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grader_dig_asphalt_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1_E4qex48hj   =   {
                  viewData   =   {
                     x   =   11300
                     y   =   8100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1_E4qex48hn/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grader_dig_stone_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1_E4qex48hk   =   {
                  viewData   =   {
                     x   =   11300
                     y   =   7000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1_E4qex48ho/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grader_dig_stone_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1_E4qex48hl   =   {
                  viewData   =   {
                     x   =   12050
                     y   =   7850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grader_dig_gravel_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1_E4qex48hm   =   {
                  viewData   =   {
                     x   =   11950
                     y   =   6800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grader_dig_gravel_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1_E4qex48hn   =   {
                  viewData   =   {
                     x   =   12050
                     y   =   8100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grader_dig_concrete_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1_E4qex48ho   =   {
                  viewData   =   {
                     x   =   11950
                     y   =   7000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grader_dig_concrete_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_E4qex48hp   =   {
                  viewData   =   {
                     x   =   10250
                     y   =   6700
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_1_E4qex48hf/emitterRef/cb",
                     "PlaySound_1_E4qex48hd/emitterRef/cb",
                     "PlaySound_1_E4qex48hh/emitterRef/cb",
                     "PlaySound_1_E4qex48hj/emitterRef/cb",
                     "PlaySound_1_E4qex48hl/emitterRef/cb",
                     "PlaySound_1_E4qex48hn/emitterRef/cb",
                     "PlaySound_1_E4qex48hg/emitterRef/cb",
                     "PlaySound_1_E4qex48he/emitterRef/cb",
                     "PlaySound_1_E4qex48hi/emitterRef/cb",
                     "PlaySound_1_E4qex48hk/emitterRef/cb",
                     "PlaySound_1_E4qex48hm/emitterRef/cb",
                     "PlaySound_1_E4qex48ho/emitterRef/cb",
                     "SetSoundParameter_E4qex48hc/emitterRef/cb",
                     "SetSoundParameter_E4qex48h2/emitterRef/cb",
                     "SetSoundParameter_E4qex48hb/emitterRef/cb",
                     "SetSoundParameter_E4qex48h5/emitterRef/cb",
                     "SetSoundParameter_E4qex48h9/emitterRef/cb",
                     "SetSoundParameter_E4qex48ha/emitterRef/cb",
                     "PlaySound_1_E4qex48h7/emitterRef/cb",
                     "PlaySound_1_E4qex48h8/emitterRef/cb",
                     "SetSoundParameter_E4qex48h4/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneGraderBladeRotate_1"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               OnBucketChangingTerrain_E4qex48hq   =   {
                  viewData   =   {
                     x   =   10250
                     y   =   7400
                  }
                  OnStart   =   [
                     "PlaySound_1_E4qex48h8/Play",
                     "PlaySound_1_E4qex48hg/Play",
                     "PlaySound_1_E4qex48hi/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_1_E4qex48h7/Play",
                     "PlaySound_1_E4qex48hf/Play",
                     "PlaySound_1_E4qex48hh/Play"
                  ]
                  threshold   =   0.1
                  __type   =   "BlueprintNodeOnBucketStartChangingTerrain"
               }
               GetBucketChangingTerrain_E4qex48hr   =   {
                  viewData   =   {
                     x   =   10250
                     y   =   5650
                  }
                  summedMaterials   =   [
                     {
                        materialType   =   "asphalt"
                     },
                     {
                        materialType   =   "asphalt_hot"
                     }
                  ]
                  GetVolumeOrRatio   =   [
                     "SetSoundParameter_E4qex48hb/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeBucketChangingTerrain"
               }
               GetBucketChangingTerrain_E4qex48hs   =   {
                  viewData   =   {
                     x   =   10250
                     y   =   5300
                  }
                  summedMaterials   =   [
                     {
                     },
                     {
                        materialType   =   "ground"
                     },
                     {
                        materialType   =   "grass"
                     },
                     {
                        materialType   =   "mud_grass"
                     },
                     {
                        materialType   =   "sand_mud"
                     }
                  ]
                  GetVolumeOrRatio   =   [
                     "FloatMultiplication_E4qex48hw/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeBucketChangingTerrain"
               }
               GetBucketChangingTerrain_E4qex48ht   =   {
                  viewData   =   {
                     x   =   10250
                     y   =   5500
                  }
                  summedMaterials   =   [
                     {
                        materialType   =   "dirt"
                     },
                     {
                        materialType   =   "mud"
                     }
                  ]
                  GetVolumeOrRatio   =   [
                     "SetSoundParameter_E4qex48h2/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeBucketChangingTerrain"
               }
               GetBucketChangingTerrain_E4qex48hu   =   {
                  viewData   =   {
                     x   =   10250
                     y   =   5950
                  }
                  summedMaterials   =   [
                     {
                        materialType   =   "stone"
                     },
                     {
                        materialType   =   "stone_dark"
                     }
                  ]
                  GetVolumeOrRatio   =   [
                     "SetSoundParameter_E4qex48h5/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeBucketChangingTerrain"
               }
               GetBucketChangingTerrain_E4qex48hv   =   {
                  viewData   =   {
                     x   =   10250
                     y   =   6100
                  }
                  summedMaterials   =   [
                     {
                        materialType   =   "concrete"
                     }
                  ]
                  GetVolumeOrRatio   =   [
                     "SetSoundParameter_E4qex48ha/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeBucketChangingTerrain"
               }
               FloatMultiplication_E4qex48hw   =   {
                  viewData   =   {
                     x   =   10750
                     y   =   5300
                  }
                  bFloat   =   {
                     def   =   5
                     __type   =   "FloatRefParam"
                  }
                  Float   =   [
                     "SetSoundParameter_E4qex48hc/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatmultiplication"
               }
               FloatMultiplication_E4qex48hx   =   {
                  viewData   =   {
                     x   =   10750
                     y   =   6250
                  }
                  bFloat   =   {
                     def   =   5
                     __type   =   "FloatRefParam"
                  }
                  Float   =   [
                     "SetSoundParameter_E4qex48h4/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatmultiplication"
               }
               FloatMultiplication_E4qex48hy   =   {
                  viewData   =   {
                     x   =   10741.8
                     y   =   5800
                  }
                  bFloat   =   {
                     def   =   5
                     __type   =   "FloatRefParam"
                  }
                  Float   =   [
                     "SetSoundParameter_E4qex48h9/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatmultiplication"
               }
               OnTruckOccupied_F63cmp6I   =   {
                  viewData   =   {
                     x   =   10450
                     y   =   6500
                  }
                  OnEnterTruck   =   [
                     "Schedule_E4qex48h/Start"
                  ]
                  OnLeaveTruck   =   [
                     "Schedule_E4qex48h/Stop"
                  ]
                  __type   =   "BlueprintNodeOnTruckOccupied"
               }
            }
            groups   =   {
               "[SOUND] digging ground"   =   {
                  x   =   10000
                  y   =   5000
                  width   =   2800
                  height   =   3800
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
               __type   =   "TruckConstraintsSavablePropDesc"
            }
         },
         {
            desc   =   {
               __type   =   "CargoConstraintSavablePropDesc"
            }
         },
         {
            desc   =   {
               __type   =   "TruckGraderSavablePropDesc"
            }
         }
      ]
   }
   prop_replicated   =   {
      repEntityBrand   =   {
         type   =   {
            __type   =   "AutoKronenwerkL34CargoDozerResReplicated"
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
      awdMode   =   "CONTROLLED"
      difflockMode   =   "ALWAYS_ON"
      isLowGearAvailable   =   True
   }
   prop_fuel_tank   =   {
      maxFuelTankVolume   =   320
      startFuelTankVolume   =   320
      fuelConsumption   =   0.15
      reverseFuelConsumptionCoeff   =   1.2
      lowRangeFuelConsumptionCoeff   =   1.3
   }
   prop_truck_constraint_view   =   {
      controllableConstraints   =   [
         {
            constraintName   =   "GraderBlade"
            angularSpeed   =   15
            maxAngle   =   15
            inertiaInput   =   {
               inertiaRelaxationTime   =   0.25
               __type   =   "ConstraintInertiaInput"
            }
         },
         {
            constraintName   =   "GraderBladeRotate"
            angularSpeed   =   15
            minAngle   =   -25
            maxAngle   =   25
            inertiaInput   =   {
               inertiaRelaxationTime   =   0.25
               __type   =   "ConstraintInertiaInput"
            }
         }
      ]
      constraintChains   =   {
         open   =   {
            links   =   [
               {
                  constraint   =   "GraderBlade"
                  power   =   1
               }
            ]
            __type   =   "TruckConstraintChain"
         }
         close   =   {
            links   =   [
               {
                  constraint   =   "GraderBlade"
                  power   =   -1
               }
            ]
            __type   =   "TruckConstraintChain"
         }
      }
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
         x   =   0
         y   =   2.2
         z   =   1.7
         __type   =   "Vector3d"
      }
      chekerAttachBody   =   "BoneBodyFront_cdt"
      warningLevel   =   0.75
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
                  y   =   0.5
                  z   =   -0.5
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
         additionalMudFriction   =   0.175
         frictionMaxVelocityCoeff   =   0.3
         springOffsetSpeed   =   0.55
         springCoeff   =   0.35
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
            __value   =   0.55
         }
         sand   =   {
            __value   =   0.65
         }
         grass   =   {
            __value   =   0.5
         }
         ground   =   {
            __value   =   0.55
         }
         sub_mud   =   {
            __value   =   0.6
         }
         mud_grass   =   {
            __value   =   0.7
         }
         mud   =   {
            __value   =   0.75
         }
         mud_sand   =   {
            __value   =   0.85
         }
      }
   }
   prop_tagged   =   {
      tag   =   "UID_MODULE_TRUCK_SIDEBOARD_DOZER"
   }
   sfx   =   {
      list   =   {
         part_water_impact_long   =   {
         }
         wheel_particle_water_falloff_01   =   {
         }
         wheel_particle_water_slow_falloff_01   =   {
         }
         wheel_particles_water_02   =   {
         }
         wheel_particles_sand_02   =   {
            emitters2   =   {
               covering_med_car_mud_ON   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_ON_ExtraBig_2   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_ON_ExtraBig_1   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_ON_ExtraBig   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_sand_dry_01   =   {
            emitters2   =   {
               covering_med_car_mud_ON   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_ON_ExtraBig_2   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_ON_ExtraBig_1   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_ON_ExtraBig   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_mud_sand_dry_01   =   {
            emitters2   =   {
               covering_med_car_mud_ON   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_ON_ExtraBig_2   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_ON_ExtraBig_1   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_ON_ExtraBig   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         wheel_particles_hard_surface   =   {
         }
         wheel_particles_gravel_02   =   {
         }
         wheel_particles_brick_01   =   {
         }
         wheel_particles_garbage_01   =   {
         }
         wheel_particles_mud_down_02   =   {
         }
         wheel_particles_mud_dirt_dry_01   =   {
         }
         wheel_particles_mud_dirt_wet_01   =   {
         }
         wheel_particles_ground_01   =   {
         }
         wheel_particles_grass_big_01   =   {
         }
         wheel_particles_mud_grass_01   =   {
         }
         wheel_particles_water_puddle_01   =   {
         }
         wheel_particles_oil_01   =   {
         }
         wheel_particles_hard_surface_wet_01   =   {
         }
         wheel_particles_sand_wet   =   {
         }
         wheel_particles_mud_sand_02   =   {
         }
         wheel_particles_gravel_wet_02   =   {
         }
         wheel_particles_mud_down_01   =   {
         }
         wheel_particles_mud_grass_wet_01   =   {
         }
         part_exhaust_down_01   =   {
         }
         part_radiator_haze   =   {
         }
         part_track_acceleration_single_exh_01   =   {
            emitters2   =   {
               Smoke_Flow_2   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         part_exhaust_oil   =   {
         }
         part_exhaust_up_01   =   {
         }
         part_track_acceleration_single_exh_up_01   =   {
         }
         wheel_particles_wet_grass_big_01   =   {
         }
         part_exhaust_up_01_1   =   {
            __type   =   "part_exhaust_up_01"
         }
         part_exhaust_up_gas_01   =   {
         }
         part_exhaust_up_gas_old_01   =   {
         }
         part_exhaust_up_neutral_01   =   {
         }
         part_exhaust_up_old   =   {
         }
         part_exhaust_med_cars_acceleration_zikz_up_new   =   {
         }
         part_exhaust_med_cars_acceleration_zikz_up_old   =   {
         }
         part_exhaust_med_cars_gas_zikz_up_01   =   {
         }
         part_exhaust_med_cars_gas_zikz_up_old   =   {
         }
         part_exhaust_met_cars_neutral_zikz_up_01   =   {
         }
         part_exhaust_big_cars_acceleration_01   =   {
         }
         part_exhaust_big_cars_acceleration_old_01   =   {
         }
         part_exhaust_big_cars_gas_01   =   {
         }
         part_exhaust_big_cars_gas_old_01   =   {
         }
         part_exhaust_big_cars_neutral_01   =   {
         }
         part_exhaust_big_cars_acceleration_mule_01   =   {
         }
         part_exhaust_big_cars_acceleration_old_mule_01   =   {
         }
         part_exhaust_big_cars_gas_mule_01   =   {
         }
         part_exhaust_big_cars_gas_old_mule_01   =   {
         }
         wheel_particles_oil_02   =   {
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
   prop_truck_rotator_native_controller   =   {
      rotators   =   {
         grapple_right_rotator   =   {
            rotatorVelocityCondition   =   {
               constraintName   =   "GraderBlade"
               __type   =   "RotatorConditionConstraintNative"
            }
            isStartedOnInit   =   True
            rotatorBone   =   "ctrl_grapple_right"
            velocityScalers   =   {
               scale   =   {
                  value   =   30
               }
            }
            axis   =   [
               0,
               1,
               0
            ]
            __type   =   "TruckRotatorNative"
         }
         grapple_left_rotator   =   {
            rotatorVelocityCondition   =   {
               constraintName   =   "GraderBladeRotate"
               __type   =   "RotatorConditionConstraintNative"
            }
            isStartedOnInit   =   True
            rotatorBone   =   "ctrl_grapple_left"
            velocityScalers   =   {
               scale   =   {
                  value   =   30
               }
            }
            axis   =   [
               0,
               1,
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
         particleName   =   "part_water_impact_long"
         __type   =   "CustomSfxEmitter"
      }
      location   =   {
         locator   =   "sfx_water_impact"
         owner   =   "<OWNER>"
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
      boneName   =   "BoneBodyFront_cdt"
      boneOffset   =   {
         x   =   -0.42
         y   =   1.345
         z   =   0.6
         __type   =   "Vector3d"
      }
   }
   prop_pre_soft_keyframe_updater   =   {
      syncBodyNames   =   [
         "BoneBodyFront_cdt",
         "BoneGraderBlade_cdt",
         "BoneGraderBladeRotate_cdt"
      ]
   }
   prop_winchable   =   {
      winchSocketPoints   =   [
         {
            bodyName   =   "BoneBodyFront_cdt"
            offsetInBodySpace   =   {
               x   =   -1.242
               y   =   0.686
               z   =   0.955
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyFront_cdt"
            offsetInBodySpace   =   {
               x   =   1.242
               y   =   0.686
               z   =   0.955
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyRear_cdt"
            offsetInBodySpace   =   {
               x   =   1.063
               y   =   0.686
               z   =   0.324
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyRear_cdt"
            offsetInBodySpace   =   {
               x   =   -1.063
               y   =   0.686
               z   =   0.324
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyFront_cdt"
            offsetInBodySpace   =   {
               x   =   -0.45
               y   =   0.35
               z   =   3.77
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyFront_cdt"
            offsetInBodySpace   =   {
               x   =   0.45
               y   =   0.35
               z   =   3.77
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyRear_cdt"
            offsetInBodySpace   =   {
               x   =   0
               y   =   0.254
               z   =   1.831
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyFront_cdt"
            offsetInBodySpace   =   {
               y   =   0.991
               z   =   3.534
               __type   =   "Vector3d"
            }
         }
      ]
      rotationFactor   =   2
      amountOfWinchPoints   =   4
   }
   prop_constraint_solving_method_changer   =   {
      constraintNames   =   [
         "KeyFobRing",
         "Sunshield_L",
         "Sunshield_R"
      ]
   }
   prop_truck_default_camera_equipment_state   =   {
   }
   prop_truck_camera_preset   =   {
      preset   =   {
         cameraFocusPointOffset   =   {
            y   =   0.5
            z   =   -0.5
            __type   =   "Vector3d"
         }
         attachmentBone   =   "_third_person_camera"
         firstLaunchCameraAngles   =   {
            x   =   20
            __type   =   "Vector2d"
         }
         scrollPoints   =   {
            "0"   =   {
               distance   =   14
               followTerrainOffset   =   3.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "1"   =   {
               distance   =   16
               followTerrainOffset   =   4
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "2"   =   {
               distance   =   18
               followTerrainOffset   =   4.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "3"   =   {
               distance   =   20
               followTerrainOffset   =   5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "4"   =   {
               distance   =   22
               followTerrainOffset   =   5.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "5"   =   {
               distance   =   24
               followTerrainOffset   =   5.75
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
                  y   =   230
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
                  y   =   250
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   -5
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
                  x   =   -5
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
                  x   =   -5
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
                  y   =   330
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
                  y   =   150
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
                  y   =   130
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
                  y   =   110
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   5
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
                  x   =   5
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
                  x   =   5
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
                  y   =   30
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
                  x   =   0
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   0
                  z   =   0
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               usePerAxisActivationAngles   =   False
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
               activationAngle   =   0
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
               activationAngle   =   0
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
               activationAngle   =   0
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
               activationAngle   =   0
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
         rotationLimitsX   =   {
            x   =   -25
            y   =   45
            __type   =   "Vector2dRnd"
         }
         rotationLimitsY   =   {
            x   =   -175
            y   =   170
            __type   =   "Vector2dRnd"
         }
         forwardAngleOffset   =   {
            x   =   5
            y   =   -5
            __type   =   "Vector2d"
         }
         leftSideRearView   =   {
            isEnabled   =   True
            transitionStart   =   90
            transitionEnd   =   175
            baseRotation   =   {
               __type   =   "Vector2dRnd"
            }
            eyeOffset   =   {
               x   =   0.1
               z   =   -0.1
               __type   =   "Vector3d"
            }
            rollAngle   =   -1
            rotationLimitsX   =   {
               x   =   -20
               y   =   30
               __type   =   "Vector2dRnd"
            }
            __type   =   "RbCockpitCameraRearViewParams"
         }
         rightSideRearView   =   {
            isEnabled   =   True
            transitionStart   =   75
            transitionEnd   =   170
            baseRotation   =   {
               __type   =   "Vector2d"
            }
            eyeOffset   =   {
               x   =   -0.8
               y   =   -0.2
               __type   =   "Vector3d"
            }
            rollAngle   =   7
            rotationLimitsX   =   {
               x   =   -30
               y   =   60
               __type   =   "Vector2dRnd"
            }
            __type   =   "RbCockpitCameraRearViewParams"
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
                  x   =   5
                  y   =   25
                  __type   =   "Vector2dRnd"
               }
               __type   =   "RbCockpitCameraFollowTurnParams"
            }
            rightTurnParams   =   {
               turnSpeedRange   =   {
                  x   =   5
                  y   =   25
                  __type   =   "Vector2dRnd"
               }
               maxYAngle   =   25
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
               x   =   1.2
               y   =   -0.3
               z   =   -0.6
               __type   =   "Vector3d"
            }
            Vector3d   =   {
               x   =   -0.3
               y   =   -0.3
               z   =   -0.6
            }
            Vector3d_1   =   {
               x   =   1.2
               y   =   -0.3
               z   =   0.7
               __type   =   "Vector3d"
            }
            Vector3d_2   =   {
               x   =   -0.3
               y   =   -0.3
               z   =   0.7
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
               "BoneBodyFront_cdt",
               "Bone_IK_GraderBlade_PistonBase",
               "Bone_IK_GraderBlade_Piston"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -45
                  max   =   45
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     1,
                     0,
                     0
                  ]
                  min   =   -10
                  max   =   10
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneGraderBlade_cdt"
                  bodyIKName   =   "Bone_IK_GraderBlade_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneGraderBlade_cdt",
               "Bone_IK_GraderBladeRotate_L_PistonBase",
               "Bone_IK_GraderBladeRotate_L_Piston"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -45
                  max   =   45
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     1,
                     0,
                     0
                  ]
                  min   =   -10
                  max   =   10
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneGraderBladeRotate_cdt"
                  bodyIKName   =   "Bone_IK_GraderBladeRotate_L_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneGraderBlade_cdt",
               "Bone_IK_GraderBladeRotate_R_PistonBase",
               "Bone_IK_GraderBladeRotate_R_Piston"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -45
                  max   =   45
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     1,
                     0,
                     0
                  ]
                  min   =   -10
                  max   =   10
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneGraderBladeRotate_cdt"
                  bodyIKName   =   "Bone_IK_GraderBladeRotate_R_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneBodyRear_cdt",
               "Bone_IK_Axle2_Rocker_A",
               "Bone_IK_Axle2_Rocker_B"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -45
                  max   =   45
               },
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -45
                  max   =   45
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneAxle2"
                  bodyIKName   =   "Bone_IK_Axle2_Rocker_B"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneBodyRear_cdt",
               "Bone_IK_Axle3_Rocker_A",
               "Bone_IK_Axle3_Rocker_B"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -45
                  max   =   45
               },
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -45
                  max   =   45
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneAxle2"
                  bodyIKName   =   "Bone_IK_Axle3_Rocker_B"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneBodyFront_cdt",
               "Bone_IK_Middle_R_PistonBase",
               "Bone_IK_Middle_R_Piston"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -90
                  max   =   90
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
                  min   =   -2
                  max   =   2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneBodyMiddle_cdt"
                  bodyIKName   =   "Bone_IK_Middle_R_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneBodyFront_cdt",
               "Bone_IK_Middle_L_PistonBase",
               "Bone_IK_Middle_L_Piston"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -90
                  max   =   90
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
                  min   =   -2
                  max   =   2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneBodyMiddle_cdt"
                  bodyIKName   =   "Bone_IK_Middle_L_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneBodyMiddle_cdt",
               "Bone_IK_BodyMiddle_Rocker_A",
               "Bone_IK_BodyMiddle_Rocker_B"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -45
                  max   =   45
               },
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -45
                  max   =   45
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneBodyFront_cdt"
                  bodyIKName   =   "Bone_IK_BodyMiddle_Rocker_A"
                  offsetIk   =   [
                     0,
                     0,
                     1.539
                  ]
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
                        1.92734,
                        0.28634,
                        1.026749
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule1"
               bone   =   "_BoxCapsule1"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.144125,
                        0.28634,
                        2.559179
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule2"
               bone   =   "_BoxCapsule2"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.144125,
                        0.930006,
                        2.097754
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
               waterParams   =   {
                  needToSpawnParticles   =   True
                  particlesSpawnFrequencyScale   =   1.5
               }
            },
            {
               name   =   "BoxCapsule3"
               bone   =   "_BoxCapsule3"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.591271,
                        1.828409,
                        1.367454
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule4"
               bone   =   "_BoxCapsule4"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.227936,
                        0.859237,
                        0.52723
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule5"
               bone   =   "_BoxCapsule5"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.227936,
                        0.859237,
                        0.52723
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule6"
               bone   =   "_BoxCapsule6"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.5,
                        0.550847,
                        0.900234
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule7"
               bone   =   "_BoxCapsule7"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.27304,
                        0.550109,
                        0.29432
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule8"
               bone   =   "_BoxCapsule8"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.125609,
                        0.401607,
                        0.30005
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule9"
               bone   =   "_BoxCapsule9"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.086277,
                        0.13317,
                        1.472913
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule10"
               bone   =   "_BoxCapsule10"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.37226,
                        0.308727,
                        0.260653
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   2
            },
            {
               name   =   "BoxCapsule11"
               bone   =   "_BoxCapsule11"
               boneOffset   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.645766,
                        0.38011,
                        0.100218
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   10
               waterParams   =   {
                  needToSpawnParticles   =   True
               }
               grassParams   =   {
                  need_fast   =   False
                  need_lasting   =   True
                  influence   =   2
                  speedMultiplier   =   1
               }
            },
            {
               name   =   "BoxCapsule12"
               bone   =   "_BoxCapsule12"
               geom   =   {
                  box   =   {
                     size   =   [
                        3.645766,
                        0.597118,
                        0.083332
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   10
               waterParams   =   {
                  needToSpawnParticles   =   True
               }
               grassParams   =   {
                  need_fast   =   False
                  need_lasting   =   True
                  influence   =   2
                  speedMultiplier   =   1
               }
            },
            {
               name   =   "BoxCapsule13"
               bone   =   "_BoxCapsule13"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.830251,
                        0.329845,
                        0.370735
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule14"
               bone   =   "_BoxCapsule14"
               boneOffset   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.830251,
                        0.455964,
                        4.509856
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
               grassParams   =   {
                  need_fast   =   False
                  need_lasting   =   True
                  influence   =   2
                  speedMultiplier   =   1
               }
            },
            {
               name   =   "BoxCapsule15"
               bone   =   "_BoxCapsule15"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.423377,
                        1.527361,
                        0.075151
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule16"
               bone   =   "_BoxCapsule16"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.075151,
                        1.007362,
                        4.498777
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule17"
               bone   =   "_BoxCapsule17"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.075151,
                        1.007362,
                        4.498776
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule18"
               bone   =   "_BoxCapsule18"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.423377,
                        1.007362,
                        0.075151
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule19"
               bone   =   "_BoxCapsule19"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.273074,
                        0.271161,
                        4.498776
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule20"
               bone   =   "_BoxCapsule20"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.586868,
                        0.533454,
                        0.06
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule21"
               bone   =   "_BoxCapsule21"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.586868,
                        0.533454,
                        0.06
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule22"
               bone   =   "_BoxCapsule22"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.586868,
                        0.335104,
                        0.06
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule23"
               bone   =   "_BoxCapsule23"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.586868,
                        0.335104,
                        0.06
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule24"
               bone   =   "_BoxCapsule24"
               geom   =   {
                  box   =   {
                     size   =   [
                        3.645766,
                        0.231673,
                        0.068659
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   10
               waterParams   =   {
                  needToSpawnParticles   =   True
               }
               grassParams   =   {
                  need_fast   =   False
                  need_lasting   =   True
                  influence   =   2
                  speedMultiplier   =   1
               }
            },
            {
               name   =   "CylinderCapsule"
               bone   =   "_CylinderCapsule"
               geom   =   {
                  cylinder   =   {
                     height   =   1.287597
                     radius   =   0.215958
                  }
                  __type   =   "local__cylinder"
               }
               systems   =   18
            },
            {
               name   =   "CylinderCapsule1"
               bone   =   "_CylinderCapsule1"
               geom   =   {
                  cylinder   =   {
                     height   =   0.432313
                     radius   =   0.179318
                  }
                  __type   =   "local__cylinder"
               }
               systems   =   18
            },
            {
               name   =   "CylinderCapsule2"
               bone   =   "_CylinderCapsule2"
               geom   =   {
                  cylinder   =   {
                     height   =   1.288
                     radius   =   0.216
                  }
                  __type   =   "local__cylinder"
               }
               systems   =   18
            },
            {
               name   =   "CylinderCapsule3"
               bone   =   "_CylinderCapsule3"
               geom   =   {
                  cylinder   =   {
                     height   =   1.288
                     radius   =   0.216
                  }
                  __type   =   "local__cylinder"
               }
               systems   =   26
               grassParams   =   {
                  need_fast   =   False
                  need_lasting   =   True
                  influence   =   2
                  speedMultiplier   =   1
               }
            },
            {
               name   =   "BoxCapsule25"
               bone   =   "_BoxCapsule25"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.726302,
                        1.153182,
                        0.109713
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule26"
               bone   =   "_BoxCapsule14"
               boneOffset   =   [
                  0,
                  0.72,
                  -0.04
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        2.42025,
                        1.015964,
                        4.629857
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   10
               waterParams   =   {
                  influence   =   0
                  needToSpawnParticles   =   True
               }
               grassParams   =   {
                  need_fast   =   False
                  need_lasting   =   True
                  influence   =   2
                  speedMultiplier   =   1
               }
            },
            {
               name   =   "left_box_fast_grass"
               bone   =   "root"
               boneOffset   =   [
                  2,
                  0.6,
                  0.2
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
                  need_lasting   =   False
                  influence   =   0.54
                  fadeDistance   =   0.5
                  speedMultiplier   =   1
               }
            },
            {
               name   =   "right_box_fast_grass"
               bone   =   "root"
               boneOffset   =   [
                  -2,
                  0.6,
                  0.2
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
                  need_lasting   =   False
                  influence   =   0.54
                  fadeDistance   =   0.5
                  speedMultiplier   =   1
               }
            },
            {
               name   =   "shadow_BoneRoot"
               bone   =   "BoneAxle1"
               boneOffset   =   [
                  0,
                  0.95,
                  0.13
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   2.33
                     radius   =   0.72
                     scaleX   =   0.8
                  }
                  capsule   =   {
                     height   =   2.33
                     radius   =   0.92
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "Shadow_cargo_1"
               bone   =   "BoneRoot"
               boneOffset   =   [
                  0,
                  1.77,
                  -3.6
               ]
               boneRotation   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   4.46
                     radius   =   0.14
                     scaleX   =   8.5
                  }
                  capsule   =   {
                     height   =   3.66
                     radius   =   0.5
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_cabin"
               bone   =   "BoneAxle1"
               boneOffset   =   [
                  0,
                  1.31,
                  -0.83
               ]
               boneRotation   =   [
                  90,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   1
                     radius   =   0.72
                     scaleX   =   1.16
                  }
                  capsule   =   {
                     height   =   1.08
                     radius   =   0.84
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_01"
               bone   =   "BoneGraderBladeRotate_cdt"
               boneOffset   =   [
                  0,
                  0.21,
                  -0.32
               ]
               boneRotation   =   [
                  90,
                  0,
                  90
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   3.4
                     radius   =   0.1
                     scaleX   =   4.61
                  }
                  capsule   =   {
                     height   =   3
                     radius   =   0.28
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
         mirror_center   =   {
            fov   =   45
            centerLocatorName   =   "pip_camera_center"
            objName   =   "_hp_cab_interior_mirror_center"
            pipCameraMaterialName   =   "truck_mirror"
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
         "BoneBodyRear_cdt",
         "BoneBodyFront_cdt",
         "BoneGraderBlade_cdt",
         "BoneGraderBladeRotate_cdt"
      ]
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
         },
         {
            frame   =   "BoneAxle3"
            rightWheelID   =   -1
            leftWheelID   =   -1
         }
      ]
   }
   prop_cardan_shaft   =   {
      shafts   =   [
         {
            shaftActorDesc   =   {
               __type   =   "shaft_view"
            }
            bonesA   =   [
               {
                  boneName   =   "BoneAxle1"
                  weight   =   1
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneBodyFront_cdt"
                  weight   =   1
               }
            ]
            shaftFasteningPositionA   =   "shaft_1_a"
            shaftFasteningPositionB   =   "shaft_1_b"
         },
         {
            shaftActorDesc   =   {
               __type   =   "shaft_view"
            }
            bonesA   =   [
               {
                  boneName   =   "BoneBodyFront_cdt"
                  weight   =   1
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneBodyMiddle_cdt"
                  weight   =   1
               }
            ]
            shaftFasteningPositionA   =   "shaft_2_a"
            shaftFasteningPositionB   =   "shaft_2_b"
         },
         {
            shaftActorDesc   =   {
               __type   =   "shaft_view"
            }
            bonesA   =   [
               {
                  boneName   =   "BoneBodyRear_cdt"
                  weight   =   1
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneAxle2"
                  weight   =   1
               }
            ]
            shaftFasteningPositionA   =   "shaft_3_a"
            shaftFasteningPositionB   =   "shaft_3_b"
         },
         {
            shaftActorDesc   =   {
               __type   =   "shaft_view"
            }
            bonesA   =   [
               {
                  boneName   =   "BoneAxle2"
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneAxle3"
               }
            ]
            shaftFasteningPositionA   =   "shaft_4_a"
            shaftFasteningPositionB   =   "shaft_4_b"
         }
      ]
   }
   prop_cargo_constraint   =   {
      constraintAreaSize   =   {
         x   =   7
         y   =   6.5
         z   =   10
         __type   =   "Vector3d"
      }
      internalConstraintAreaSize   =   {
         x   =   2.354
         y   =   5
         z   =   4.49
         __type   =   "Vector3d"
      }
      internalConstraintAreaOffset   =   {
         x   =   -1.177
         y   =   0.955
         z   =   -2.381
         __type   =   "Vector3d"
      }
      truckConstarintAreaSize   =   {
         __type   =   "Vector3d"
      }
      truckConstraintAreaOffset   =   {
         __type   =   "Vector3d"
      }
      beltZPositions   =   [
         -2.2,
         -1.518,
         -0.836,
         -0.154,
         0.528,
         1.21,
         1.892
      ]
      upBorderOffset   =   {
         x   =   1.22
         y   =   1.71
         __type   =   "Vector2d"
      }
      downBorderOffset   =   {
         x   =   1.228
         y   =   1.03
         __type   =   "Vector2d"
      }
      internalBorderOffset   =   {
         x   =   1.165
         y   =   0.97
         __type   =   "Vector2d"
      }
      rightMidpointBoardXOffset   =   -0.01
      leftMidpointBoardXOffset   =   -0.01
      beltBonesOffset   =   0.04
      constraintBone   =   "BoneBodyRear_cdt"
      beltHandleDesc   =   {
         __type   =   "IactorDesc"
      }
      constraintBeltDesc   =   {
         __type   =   "IactorDesc"
      }
      constraintInternalBeltDesc   =   {
         __type   =   "IactorDesc"
      }
      isNeedTruckConstrainted   =   False
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
   prop_terraforming_bucket   =   {
      emptyBladeAngle   =   15
      fullBladeAngle   =   -15
      rigidBodyNames   =   [
         "BoneGraderBladeRotate_cdt"
      ]
      allowedPenetrationDistance   =   0
   }
   prop_terraforming_permission_checker   =   {
   }
   prop_truck_view_grader_controller   =   {
      useChains   =   True
      centerBodyName   =   "BoneGraderBladeRotate_cdt"
      graderModesOrder   =   [
         "SAND_FLATTEN",
         "MARCHING",
         "MANUAL"
      ]
   }
   prop_grader_chain_controller   =   {
      positionChainDown   =   "open"
      positionChainUp   =   "close"
      centerBodyName   =   "BoneGraderBladeRotate_cdt"
      autoModeLocalOffset   =   {
         y   =   0
         __type   =   "Vector3d"
      }
      sandFlattenTerrainOffset   =   0.55
      sandHeightMissTolerance   =   0.225
   }
   prop_grader_blades_controller   =   {
      firstBladeConstraintData   =   {
         name   =   "GraderBladeRotate"
         minPosition   =   -25
         maxPosition   =   25
         isAngle   =   True
         motorSpeed   =   15
         __type   =   "GraderConstraintData"
      }
   }
   prop_truck_flattener   =   {
      flattenerLocator   =   "BoneGraderBladeRotate_cdt"
      flattener   =   {
         size   =   {
            x   =   5.15
            y   =   4.5
            z   =   4
            __type   =   "Vector3d"
         }
         smoothRadius   =   0.25
         velocityPowerMultiplier   =   10
         maxPowerPerSecond   =   35
         normalIgnoringPercent   =   1
         borderHeight   =   0.025
         borderRadius   =   0.35
         borderSmoothRadius   =   0.55
         borderOffset   =   -0.45
         borderCheckOffset   =   1
         needNoBorderHeightThreshold   =   0.05
         needMaxBorderHeightThreshold   =   0.1
         onlyChangeSand   =   True
         onlyPushForward   =   False
         __type   =   "TerraformingFlattener"
      }
      attach   =   {
         posOffset   =   {
            y   =   0
            z   =   -1.5
            __type   =   "Vector3d"
         }
         __type   =   "Tracker"
      }
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
            nameBone   =   "ctrl_dashboard_speed"
            axis   =   "Y"
            maxRotationAngle   =   60
            dashboardSubtype   =   "SPEED"
            damping   =   0.1
            scale   =   5
            __type   =   "DashboardElementCockpit"
         }
         "1"   =   {
            nameBone   =   "ctrl_dashboard_rpm"
            axis   =   "Y"
            maxRotationAngle   =   105
            dashboardSubtype   =   "RPM"
            damping   =   0.1
            increase   =   -25
            __type   =   "DashboardElementCockpit"
         }
         "2"   =   {
            nameBone   =   "ctrl_dashboard_fuel"
            axis   =   "Y"
            maxRotationAngle   =   65
            dashboardSubtype   =   "FUEL"
            damping   =   0.1
            __type   =   "DashboardElementCockpit"
         }
         "3"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_oil"
            axis   =   "Y"
            maxRotationAngle   =   50
            dashboardSubtype   =   "RPM"
            damping   =   0.05
            increase   =   -10
            __type   =   "DashboardElementCockpit"
         }
         "4"   =   {
            nameBone   =   "ctrl_dashboard_engine_temp_coolant"
            axis   =   "Y"
            maxRotationAngle   =   45
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.002
            __type   =   "DashboardElementCockpit"
         }
         "5"   =   {
            nameBone   =   "ctrl_dashboard_engine_amperage"
            axis   =   "Y"
            maxRotationAngle   =   20
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.02
            __type   =   "DashboardElementCockpit"
         }
         "6"   =   {
            nameBone   =   "ctrl_pedal_drive"
            axis   =   "Y"
            maxRotationAngle   =   15
            dashboardSubtype   =   "RPM"
            damping   =   0.1
            increase   =   -15
            __type   =   "DashboardElementCockpit"
         }
         "7"   =   {
            nameBone   =   "ctrl_steering_wheel"
            axis   =   "Y"
            minRotationAngle   =   -360
            maxRotationAngle   =   360
            steeringSubtype   =   "WHEEL"
            __type   =   "SteerigElementCockpit"
         }
         "8"   =   {
            nameBone   =   "ctrl_switch_awd"
            axis   =   "Y"
            maxRotationAngle   =   30
            speed   =   90
            switcherSubtype   =   "AWD"
            __type   =   "SwitcherElementCockpit"
         }
         "9"   =   {
            nameBone   =   "ctrl_gear_stick_low"
            axis   =   "Y"
            maxRotationAngle   =   30
            speed   =   90
            switcherSubtype   =   "LOW_GEAR"
            __type   =   "SwitcherElementCockpit"
         }
         "10"   =   {
            nameBone   =   "ctrl_switch_start"
            axis   =   "Y"
            minRotationAngle   =   -70
            maxRotationAngle   =   0
            speed   =   150
            switcherSubtype   =   "ENGINE_ENABLED"
            __type   =   "SwitcherElementCockpit"
         }
         "11"   =   {
            nameBone   =   "ctrl_gear_stick"
            rotationSpeed   =   30
            states   =   {
               AUTO   =   {
                  primary   =   {
                     axis   =   "X"
                     angle   =   10
                     __type   =   "InfoGearState"
                  }
                  secondary   =   {
                     axis   =   "Y"
                     angle   =   10
                     __type   =   "InfoGearState"
                  }
                  __type   =   "GearStateItem"
               }
               REVERSE   =   {
                  primary   =   {
                     axis   =   "X"
                     angle   =   -10
                     __type   =   "InfoGearState"
                  }
                  secondary   =   {
                     axis   =   "Y"
                     angle   =   -10
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
      uiModeName   =   "UID_HUD_GRADER_MODE"
      firstControlSectionUiName   =   "UID_HUD_FIRST_SECTION_GRADER_WHEELED"
      secondControlSectionUiName   =   "UID_HUD_SECOND_SECTION_GRADER_WHEELED"
      axisControls   =   [
         {
            uiActionDescription   =   "UID_HUD_GRADER_POSITION"
            actionData   =   {
               actionType   =   "GRADER_BLADES_POSITION"
               strengthFactor   =   -1
               __type   =   "AxisActionData"
            }
            axisDirectionType   =   "Y_AXIS"
         },
         {
            uiActionDescription   =   "UID_HUD_GRADER_BLADE_ROTATION"
            actionData   =   {
               actionType   =   "GRADER_BLADES_ANGLE"
               strengthFactor   =   -1
               __type   =   "AxisActionData"
            }
            activationInputType   =   "RIGHT_MOUSE_BUTTON"
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
         actionMappingType   =   "STATE_SWITCHER_ACTION"
         namedActionType   =   "GRADER_SWITCH_MODE_PREV"
         __type   =   "ActionMapping"
      }
      secondAction   =   {
         actionMappingType   =   "STATE_SWITCHER_ACTION"
         namedActionType   =   "GRADER_SWITCH_MODE_NEXT"
         __type   =   "ActionMapping"
      }
      thirdAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         uiActionDescription   =   "UID_HUD_CARGO_CONSTRAINT_ATTACH"
         isToggleable   =   True
         altUiActionDescription   =   "UID_HUD_CARGO_CONSTRAINT_DETACH"
         namedActionType   =   "CONSTRAINT_CARGO"
         canWorkWithEngineOff   =   True
         __type   =   "ActionMapping"
      }
      fourthAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         canWorkWithEngineOff   =   True
         __type   =   "ActionMapping"
      }
      fifthAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
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
         mouseSensitivity   =   2
         gamepadSensetivity   =   2
         __type   =   "TruckInputConfiguration"
      }
   }
   prop_domain_tracking_by_obb   =   {
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
      steeringThreshold   =   10
      reverseAngleThreshold   =   20
      velocityScale   =   1.5
      stuckVelocityThreshold   =   2
      stuckScaleChange   =   0.5
      velocityPedalControl   =   {
         spline   =   [
            -5,
            -0.999776,
            -7.716199,
            0.382224,
            -4.371855,
            0.268201,
            0,
            0,
            0,
            0,
            0,
            0,
            5,
            1,
            4.279675,
            0.446688,
            10.1703,
            -6.034846
         ]
         __type   =   "SplineBezier1d"
      }
      steerScaleByAngle   =   {
         spline   =   [
            0.325686,
            0.207139,
            0.196553,
            0.203446,
            0.454819,
            0.210832,
            49.4522,
            0.476568,
            49.4522,
            0.476568,
            49.4522,
            0.476568,
            71.12415,
            0.601943,
            71.12415,
            0.601943,
            71.12415,
            0.601943,
            90,
            0.812634,
            90,
            0.812634,
            90,
            0.812634
         ]
         __type   =   "SplineBezier1d"
      }
      masterConnectType   =   "CENTER"
      masterOffset   =   {
         y   =   1
         z   =   1
         __type   =   "Vector3d"
      }
      slaveConnectType   =   "WINCH_POINT"
      slaveOffset   =   {
         y   =   1
         z   =   3.8
         __type   =   "Vector3d"
      }
      slaveLocator   =   "BoneAxle1"
   }
   prop_truck_upside_down_checker   =   {
   }
   prop_wheel_particles_base   =   {
      waterSfxWheels   =   {
         particleName   =   "wheel_particles_water_02"
         __type   =   "CustomSfxEmitter"
      }
      waterSfxTrack   =   {
         __type   =   "CustomSfxEmitter"
      }
      oilSfxWheels   =   {
         particleName   =   "wheel_particles_oil_02"
         __type   =   "CustomSfxEmitter"
      }
      waterWheelSettings   =   {
         particleTenacity   =   4
         baseDepth   =   0.1
         spreadAngleProb   =   1
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
               particleTenacity   =   0.5
               baseDepth   =   0.1
               maxParticleVelocity   =   2.5
               spreadAngle   =   60
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
               particleTenacity   =   0.5
               baseDepth   =   0.1
               maxParticleVelocity   =   2.5
               spreadAngle   =   60
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
               particleTenacity   =   0.4
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   60
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
               maxParticleVelocity   =   2.5
               spreadAngle   =   15
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "mud"
            emitter   =   {
               particleName   =   "wheel_particles_ground_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   0.9
               baseDepth   =   0.1
               maxParticleVelocity   =   3
               spreadAngle   =   10
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "grass"
            emitter   =   {
               particleName   =   "wheel_particles_grass_big_01"
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
               particleName   =   "wheel_particles_mud_grass_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   2.3
               baseDepth   =   0.1
               maxParticleVelocity   =   2
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
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   60
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
               particleTenacity   =   0.5
               baseDepth   =   0.1
               maxParticleVelocity   =   2.5
               spreadAngle   =   60
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "mud_sand"
            emitter   =   {
               particleName   =   "wheel_particles_mud_sand_02"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   1
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
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
               particleTenacity   =   0.6
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
               particleTenacity   =   0.4
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
               maxParticleVelocity   =   2.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "mud"
            emitter   =   {
               particleName   =   "wheel_particles_mud_down_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   1.5
               baseDepth   =   0.1
               spreadAngleProb   =   0.5
               maxParticleVelocity   =   2.5
               spreadAngle   =   30
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "grass"
            emitter   =   {
               particleName   =   "wheel_particles_wet_grass_big_01"
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
               particleName   =   "wheel_particles_mud_grass_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   2.5
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
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   60
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
            shakerBone   =   "BoneBodyRear_cdt"
            frequency   =   80
            maxAngleOffsetScale   =   1
            minAngle   =   [
               -0.04,
               0,
               -0.04
            ]
            maxAngle   =   [
               0.04,
               0,
               0.04
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
               -0.00075,
               0,
               -0.0008
            ]
            maxOffset   =   [
               0.0008,
               0,
               0.0008
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
               0.003714,
               0.663301,
               0.59118,
               0.802386,
               0.726749,
               0.054808,
               0.997887,
               0.993627
            ]
         }
         EngineShutdown   =   {
            shakerBone   =   "BoneBodyRear_cdt"
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
            maxAngleOffsetScale   =   1
            minAngle   =   [
               -1,
               -1,
               0
            ]
            maxAngle   =   [
               1,
               1,
               0
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
            shakeOnStartTimeMs   =   0
            dampingStep   =   15
            frequencyMultiplier   =   [
               0.002041,
               0.907692,
               0.340816,
               0.923077,
               0.828572,
               0.934615,
               1,
               1
            ]
         }
         ExhaustCap   =   {
            shakerBone   =   "BoneExhaustCap"
            frequency   =   20
            maxAngleOffsetScale   =   1
            backAngleOffsetScale   =   0.5
            minAngle   =   [
               0,
               20,
               0
            ]
            maxAngle   =   [
               0,
               60,
               0
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
            shakeOnStartTimeMs   =   0
            dampingStep   =   15
            frequencyMultiplier   =   [
               0,
               0.8,
               1,
               1
            ]
         }
         ExhaustShutdown   =   {
            shakerBone   =   "BoneExhaust"
            frequency   =   20
            maxAngleOffsetScale   =   0.5
            minAngle   =   [
               -0.4,
               0,
               -0.4
            ]
            maxAngle   =   [
               0.4,
               0,
               0.4
            ]
            angleMultiplier   =   [
               0,
               0.4,
               1,
               1
            ]
            maxPositionOffsetScale   =   0.5
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
      rigidBodyNames   =   [
         "BoneGraderBladeRotate_cdt"
      ]
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
               "reverse_lights",
               "reverse_lights_sideboard"
            ]
            __type   =   "ReverseHeadlights"
         }
         "3"   =   {
            defaultName   =   "default"
            lightName   =   "lights_emissive"
            geomNames   =   [
               "marker_lights"
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
            name   =   "mirror_case_center"
            angleRotateX   =   2.5
            angleRotateY   =   4.35
            angleRotateZ   =   -1
         }
      ]
   }
}
__type   =   "truck_view"
