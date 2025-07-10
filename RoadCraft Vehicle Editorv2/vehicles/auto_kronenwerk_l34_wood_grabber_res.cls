properties   =   {
   geom   =   {
      nameTpl   =   "wheeled_dozer_grapple"
   }
   prop_truck_view_controller   =   {
      engineFiringDelay   =   1000
   }
   prop_truck_view   =   {
      truckName   =   "kronenwerk_l34_wood_grabber_res"
      truckType   =   "truck_heavy"
      truckVisibilityInFogOfWar   =   60
   }
   prop_truck_rb   =   {
      suspensionSet   =   {
         front   =   {
            min   =   -0.12
            max   =   0
            height   =   0.05
            strength   =   0.06
            damping   =   0.85
         }
         rearDiffers   =   True
         rear   =   {
            min   =   -0.1
            max   =   0
            height   =   0.05
            strength   =   0.07
            damping   =   0.85
         }
      }
      engine   =   {
         params   =   {
            torque   =   175000
            brakesDelay   =   0.2
            maxDeltaAngVel   =   0.01
            responsiveness   =   0.03
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
               angularVelocity   =   0.1
               gearRatio   =   4.5
               __type   =   "TruckSingleGearParams"
            }
            isLowRangeModeReverseEnabled   =   True
            isLowRangeModeClutchingEnabled   =   False
            clutchSwitchTime   =   0.5
            defaultGearSwitchDelay   =   0.25
            upperGearSwitchDelayBase   =   0.35
            upperGearSwitchDelayGearNumMultiplier   =   0.45
            downGearSwitchDelay   =   3
            neutralGearSwitchingDelay   =   0.1
            __type   =   "TruckGearboxParams"
         }
         __type   =   "TruckGearbox"
      }
      maxSteerSpeed   =   0.022
      backSteerSpeed   =   0.044
      pedalsResponsiveness   =   0.2
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
            torqueType   =   "full"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.8
            enableLateralForce   =   True
            editableWheel   =   "EditableWheel"
         },
         {
            geomName   =   "wheel_front_right"
            isRightSided   =   True
            torqueType   =   "full"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.8
            enableLateralForce   =   True
            editableWheel   =   "EditableWheel"
         },
         {
            geomName   =   "wheel_rear_left"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.8
            enableLateralForce   =   True
            editableWheel   =   "EditableWheel"
         },
         {
            geomName   =   "wheel_rear_right"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.8
            enableLateralForce   =   True
            editableWheel   =   "EditableWheel"
         }
      ]
      wheelPool   =   {
         EditableWheel   =   {
            __value   =   "auto_wheel_kronenwerk_l34_wood_grabber_res_editablewheel"
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
               CloneSoundEmitter_E8ecM4aY   =   {
                  viewData   =   {
                     x   =   4750
                     y   =   5100
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_9/emitterRef/cb",
                     "PlaySound_9_3/emitterRef/cb",
                     "PlaySound_9_1/emitterRef/cb",
                     "SetSoundParameter_1_1_1/emitterRef/cb",
                     "SetSoundParameter_1_1_1_1/emitterRef/cb",
                     "SetSoundParameter_Ea3dhoen1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneBodyFront_2"
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
                     "BoneGrappleArmTop_cdt",
                     "BoneGrappleArmBottom_cdt"
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
                     "PlaySound_E8nd5L5Y/Play"
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
                     "PlaySound_E8nd5L5Y1/Play"
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
               CloneSoundEmitter_E8nd5z1A   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   1650
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E8nd5L5Y/emitterRef/cb",
                     "PlaySound_E8nd5L5Y1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneAnim_Wipers_FR2"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_E8nd5z1A1   =   {
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
                     locator   =   "BoneAnim_Wipers_FL2"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_E8nd5L5Y   =   {
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
               PlaySound_E8nd5L5Y1   =   {
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
               PlaySound_E8senT3F   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "Schedule_E8senT3F2/Start"
                  ]
                  OnSoundEnd   =   [
                     "Schedule_E8senT3F2/Stop"
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
               GetInfoElementCockpitForSoundWithSchedule_E8senT3F1   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_E8senT3F/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_E8senT3F/Stop"
                  ]
                  nameBoneBro   =   "ctrl_steering_wheel"
                  isWheel   =   True
                  GetCurrentSteerSpeed   =   [
                     "SetSoundParameter_E8senT3F3/valueRef/cb"
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
               Schedule_E8senT3F2   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_E8senT3F3/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               SetSoundParameter_E8senT3F3   =   {
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
               CloneSoundEmitter_E8senT3F4   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E8senT3F/emitterRef/cb",
                     "SetSoundParameter_E8senT3F3/emitterRef/cb"
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
               GetInfoElementCockpitForSoundWithEvent_Ea3eVLcy   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ea3eVLcy1/Play"
                  ]
                  nameBoneBro   =   "ctrl_grapple_left"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_Ea3eVLcy1   =   {
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
               CloneSoundEmitter_Ea3eVLcy2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea3eVLcy1/emitterRef/cb"
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
               GetInfoElementCockpitForSoundWithEvent_Ea3eXd1P   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ea3eXd1P1/Play"
                  ]
                  nameBoneBro   =   "ctrl_grapple_middle"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_Ea3eXd1P1   =   {
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
                        name   =   "vhc_body_cockpit_lever"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_Ea3eXd1P2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea3eXd1P1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_grapple_middle"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_Ea3f0df71   =   {
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
                        name   =   "vhc_body_cockpit_lever"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_Ea3f0df73   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea3f0df71/emitterRef/cb"
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
               OnSequentialChainConstraintStateChange_Ea4cDF43   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4400
                  }
                  OnStartOpeningChain   =   [
                     "PlaySound_Ea3f0df71/Play"
                  ]
                  OnStartClosingChain   =   [
                     "PlaySound_Ea3f0df71/Play"
                  ]
                  inputChainNameRef   =   {
                     def   =   [
                        "GrappleArmTop"
                     ]
                  }
                  __type   =   "BlueprintNodeOnSequentialChainConstraintStateChanged"
               }
               GetInfoElementCockpitForSoundWithEvent_Eapc4j39   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Eapc4j391/Play"
                  ]
                  nameBoneBro   =   "ctrl_switch_awd"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_Eapc4j391   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   4750
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
               CloneSoundEmitter_Eapc4j392   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Eapc4j391/emitterRef/cb"
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
               GetInfoElementCockpitForSoundWithEvent_EbleKCcd   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   5050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_EbleKCcd1/Play"
                  ]
                  nameBoneBro   =   "ctrl_gear_stick_low"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_EbleKCcd1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   5050
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
               CloneSoundEmitter_EbleKCcd2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   5150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_EbleKCcd1/emitterRef/cb"
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
                     "BoneGrappleArmTop_cdt",
                     "BoneGrappleArmBottom_cdt",
                     "BoneGrappleArmBottom_2_cdt"
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
               OnSequentialChainConstraintStateChange   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   6900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStartOpeningChain   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1/Input"
                  ]
                  OnStartClosingChain   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1/Input"
                  ]
                  inputChainNameRef   =   {
                     def   =   [
                        "GrappleArmTop"
                     ]
                  }
                  __type   =   "BlueprintNodeOnSequentialChainConstraintStateChanged"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1   =   {
                  viewData   =   {
                     x   =   5000
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
               OnInit_Eb9luI1C   =   {
                  viewData   =   {
                     x   =   4700
                     y   =   7100
                  }
                  OnExit   =   [
                     "SetGravityFactorForPhysObject_Eb9luVag/Input"
                  ]
                  __type   =   "BlueprintCommonLibraryOninit"
               }
               SetGravityFactorForPhysObject_Eb9luVag   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   7100
                  }
                  factorRef   =   {
                     def   =   1.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintNodePhysSystemSetGravityFactor"
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
                     y   =   4300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAcceleration   =   [
                     "VFXRestart_2/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9ofz939/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse   =   {
                  viewData   =   {
                     x   =   8100
                     y   =   4500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineReverse   =   [
                     "VFXRestart_2/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9ofz939/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               VFXRestart   =   {
                  viewData   =   {
                     x   =   8550
                     y   =   3900
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
                     "VFXRestart_E9ofzn83/Input"
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
                     y   =   4350
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
                     y   =   4000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "VFXStop_E9ofzt0P/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXStop_E9ofz939   =   {
                  viewData   =   {
                     x   =   8550
                     y   =   4450
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
               VFXRestart_E9ofzn83   =   {
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
               VFXStop_E9ofzt0P   =   {
                  viewData   =   {
                     x   =   9050
                     y   =   4000
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
               PlaySound_E1fidlex   =   {
                  viewData   =   {
                     x   =   8898.736
                     y   =   7258.618
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
               PlaySound_E1fidlex1   =   {
                  viewData   =   {
                     x   =   8898.736
                     y   =   7558.618
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
               CloneSoundEmitter_E1fidlex2   =   {
                  viewData   =   {
                     x   =   8100
                     y   =   6850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_3_5_E1fidlex7/emitterRef/cb",
                     "PlaySound_3_5_E1fidlex8/emitterRef/cb",
                     "PlaySound_3_5_E1fidlex6/emitterRef/cb",
                     "PlaySound_3_5_1_E1fidlex9/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneGrappleArm_1"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               OnSequentialChainConstraintStateChange_E1fidlex3   =   {
                  viewData   =   {
                     x   =   8100
                     y   =   7450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStartOpeningChain   =   [
                     "PlaySound_E1fidlex/Play",
                     "PlaySound_E1fidlex1/Stop"
                  ]
                  OnStopOpeningChain   =   [
                     "PlaySound_2_E1fidlexe/Play"
                  ]
                  OnStartClosingChain   =   [
                     "PlaySound_E1fidlex1/Play",
                     "PlaySound_E1fidlex/Stop"
                  ]
                  OnStopClosingChain   =   [
                     "PlaySound_1_E1fidlexf/Play"
                  ]
                  inputChainNameRef   =   {
                     def   =   [
                        "GrappleArmTop"
                     ]
                  }
                  __type   =   "BlueprintNodeOnSequentialChainConstraintStateChanged"
               }
               OnControllableConstraintStateChange_E1fidlex4   =   {
                  viewData   =   {
                     x   =   8100
                     y   =   6650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_3_5_E1fidlex6/Play",
                     "PlaySound_3_5_E1fidlex7/Stop",
                     "PlaySound_3_5_E1fidlex8/Stop"
                  ]
                  OnStop   =   [
                     "PlaySound_3_5_E1fidlex6/Stop",
                     "PlaySound_3_5_E1fidlex7/Play"
                  ]
                  name   =   "GrappleArm"
                  __type   =   "BlueprintNodeOnControllableStateChange"
               }
               OnControllableConstraintStateChange_E1fidlex5   =   {
                  viewData   =   {
                     x   =   8100
                     y   =   7050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_3_5_E1fidlex8/Play",
                     "PlaySound_3_5_1_E1fidlex9/Stop",
                     "PlaySound_3_5_E1fidlex6/Stop"
                  ]
                  OnStop   =   [
                     "PlaySound_3_5_E1fidlex8/Stop",
                     "PlaySound_3_5_1_E1fidlex9/Play"
                  ]
                  name   =   "GrappleArm"
                  isIncrease   =   True
                  __type   =   "BlueprintNodeOnControllableStateChange"
               }
               PlaySound_3_5_E1fidlex6   =   {
                  viewData   =   {
                     x   =   8900
                     y   =   6600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_bucket_move_down_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_5_E1fidlex7   =   {
                  viewData   =   {
                     x   =   8900
                     y   =   6750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_bucket_move_down_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_5_E1fidlex8   =   {
                  viewData   =   {
                     x   =   8900
                     y   =   6900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_bucket_move_up_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_5_1_E1fidlex9   =   {
                  viewData   =   {
                     x   =   8900
                     y   =   7050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_bucket_move_up_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_E1fidlexe   =   {
                  viewData   =   {
                     x   =   8898.736
                     y   =   7408.618
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
               PlaySound_1_E1fidlexf   =   {
                  viewData   =   {
                     x   =   8898.736
                     y   =   7708.618
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
               OnControllableConstraintStateChange_E1vkh91i   =   {
                  viewData   =   {
                     x   =   8100
                     y   =   7950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_3_5_E1vkh91i2/Play",
                     "PlaySound_3_5_E1vkh91i3/Stop",
                     "PlaySound_3_5_E1vkh91i4/Stop"
                  ]
                  OnStop   =   [
                     "PlaySound_3_5_E1vkh91i2/Stop",
                     "PlaySound_3_5_E1vkh91i3/Play"
                  ]
                  name   =   "GrappleArmBottom"
                  __type   =   "BlueprintNodeOnControllableStateChange"
               }
               OnControllableConstraintStateChange_E1vkh91i1   =   {
                  viewData   =   {
                     x   =   8100.137
                     y   =   8300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_3_5_E1vkh91i4/Play",
                     "PlaySound_3_5_1_E1vkh91i5/Stop",
                     "PlaySound_3_5_E1vkh91i2/Stop"
                  ]
                  OnStop   =   [
                     "PlaySound_3_5_E1vkh91i4/Stop",
                     "PlaySound_3_5_1_E1vkh91i5/Play"
                  ]
                  name   =   "GrappleArmBottom"
                  isIncrease   =   True
                  __type   =   "BlueprintNodeOnControllableStateChange"
               }
               PlaySound_3_5_E1vkh91i2   =   {
                  viewData   =   {
                     x   =   8900
                     y   =   7900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_grabber_move_y_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_5_E1vkh91i3   =   {
                  viewData   =   {
                     x   =   8900
                     y   =   8050
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
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_5_E1vkh91i4   =   {
                  viewData   =   {
                     x   =   8900
                     y   =   8200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_grabber_move_x_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_5_1_E1vkh91i5   =   {
                  viewData   =   {
                     x   =   8900
                     y   =   8350
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
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_E1vknDfh   =   {
                  viewData   =   {
                     x   =   8098.737
                     y   =   7708.618
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_3_5_E1vkh91i2/emitterRef/cb",
                     "PlaySound_3_5_E1vkh91i3/emitterRef/cb",
                     "PlaySound_3_5_E1vkh91i4/emitterRef/cb",
                     "PlaySound_3_5_1_E1vkh91i5/emitterRef/cb",
                     "PlaySound_E1fidlex/emitterRef/cb",
                     "PlaySound_2_E1fidlexe/emitterRef/cb",
                     "PlaySound_E1fidlex1/emitterRef/cb",
                     "PlaySound_1_E1fidlexf/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneGrappleArm_3"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
            }
            groups   =   {
               "[SOUND] addon"   =   {
                  x   =   8021.51
                  y   =   6450
                  width   =   1671
                  height   =   2201
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
         }
      ]
   }
   prop_replicated   =   {
      repEntityBrand   =   {
         type   =   {
            __type   =   "AutoKronenwerkL34WoodGrabberResReplicated"
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
            constraintName   =   "GrappleArm"
            angularSpeed   =   26
            maxAngle   =   90
            useSmothingNearConstraintLimits   =   True
            inertiaInput   =   {
               inertiaRelaxationTime   =   0.35
               __type   =   "ConstraintInertiaInput"
            }
         },
         {
            constraintName   =   "GrappleArmBottom"
            angularSpeed   =   34
            maxAngle   =   60
            useSmothingNearConstraintLimits   =   True
            inertiaInput   =   {
               inertiaRelaxationTime   =   0.3
               __type   =   "ConstraintInertiaInput"
            }
         }
      ]
      constraintSequentialChains   =   {
         GrappleArmTop   =   {
            links   =   {
               ChainLink   =   {
                  constraints   =   [
                     {
                        constraintName   =   "GrappleArmTop"
                        angularSpeed   =   90
                        maxAngle   =   150
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
         z   =   -1.7
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
                  z   =   1
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
      tag   =   "UID_MODULE_WOOD_GRABBER"
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
               constraintName   =   "GrappleArmTop"
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
         x   =   0.46
         y   =   1.33
         z   =   -0.95
         __type   =   "Vector3d"
      }
   }
   prop_pre_soft_keyframe_updater   =   {
      syncBodyNames   =   [
         "BoneBodyFront_cdt",
         "BoneGrappleArm_cdt",
         "BoneGrappleArmBottom_cdt",
         "BoneGrappleArmTop_cdt"
      ]
   }
   prop_winchable   =   {
      winchSocketPoints   =   [
         {
            bodyName   =   "BoneBodyFront_cdt"
            offsetInBodySpace   =   {
               x   =   0.941
               y   =   0.694
               z   =   -2.48
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyFront_cdt"
            offsetInBodySpace   =   {
               x   =   -0.941
               y   =   0.694
               z   =   -2.48
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyRear_cdt"
            offsetInBodySpace   =   {
               x   =   1.034
               y   =   0.686
               z   =   0.257
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyRear_cdt"
            offsetInBodySpace   =   {
               x   =   -1.034
               y   =   0.686
               z   =   0.257
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyFront_cdt"
            offsetInBodySpace   =   {
               x   =   -0.451
               y   =   0.37
               z   =   -3.794
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyFront_cdt"
            offsetInBodySpace   =   {
               x   =   0.451
               y   =   0.37
               z   =   -3.794
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneGrappleArmBottom_cdt"
            offsetInBodySpace   =   {
               x   =   0
               y   =   0.2
               z   =   0.485
               __type   =   "Vector3d"
            }
         }
      ]
      rotationFactor   =   2
      amountOfWinchPoints   =   4
   }
   prop_truck_default_camera_equipment_state   =   {
   }
   prop_truck_camera_preset   =   {
      preset   =   {
         cameraFocusPointOffset   =   {
            y   =   0.5
            z   =   1
            __type   =   "Vector3d"
         }
         attachmentBone   =   "_third_person_camera"
         firstLaunchCameraAngles   =   {
            x   =   20
            __type   =   "Vector2d"
         }
         scrollPoints   =   {
            "0"   =   {
               distance   =   11.25
               followTerrainOffset   =   3
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "1"   =   {
               distance   =   13.25
               followTerrainOffset   =   3.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "2"   =   {
               distance   =   15.25
               followTerrainOffset   =   4
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "3"   =   {
               distance   =   17.25
               followTerrainOffset   =   4.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "4"   =   {
               distance   =   19.25
               followTerrainOffset   =   5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "5"   =   {
               distance   =   21.25
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
         elasticBoostX   =   1
         elasticBoostZ   =   1
         __type   =   "RbVehicleCameraParams"
      }
   }
   prop_truck_camera_cockpit_preset   =   {
      preset   =   {
         cameraMouseSensitivity   =   0.25
         eyeOffset   =   {
            z   =   -0.1
            __type   =   "Vector3d"
         }
         rotationLimitsX   =   {
            x   =   -25
            y   =   45
            __type   =   "Vector2dRnd"
         }
         rotationLimitsY   =   {
            x   =   -185
            y   =   175
            __type   =   "Vector2dRnd"
         }
         forwardAngleOffset   =   {
            x   =   5
            y   =   -5
            __type   =   "Vector2d"
         }
         leftSideRearView   =   {
            isEnabled   =   True
            transitionStart   =   75
            transitionEnd   =   175
            baseRotation   =   {
               __type   =   "Vector2dRnd"
            }
            eyeOffset   =   {
               x   =   0.47
               z   =   0.2
               __type   =   "Vector3d"
            }
            rollAngle   =   -7
            rotationLimitsX   =   {
               x   =   -30
               y   =   60
               __type   =   "Vector2dRnd"
            }
            __type   =   "RbCockpitCameraRearViewParams"
         }
         rightSideRearView   =   {
            isEnabled   =   True
            transitionStart   =   95
            transitionEnd   =   185
            baseRotation   =   {
               __type   =   "Vector2d"
            }
            eyeOffset   =   {
               x   =   -0.1
               z   =   -0.15
               __type   =   "Vector3d"
            }
            rollAngle   =   1.5
            rotationLimitsX   =   {
               x   =   -20
               y   =   18
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
               x   =   -1.2
               y   =   -0.3
               z   =   0.7
               __type   =   "Vector3d"
            }
            Vector3d   =   {
               x   =   0.3
               y   =   -0.3
               z   =   0.7
            }
            Vector3d_1   =   {
               x   =   -1.2
               y   =   -0.3
               z   =   -0.6
               __type   =   "Vector3d"
            }
            Vector3d_2   =   {
               x   =   0.3
               y   =   -0.3
               z   =   -0.6
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
               "BoneGrappleArm_cdt",
               "Bone_IK_GrappleRocker_A",
               "Bone_IK_GrappleRocker_B"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     1,
                     0,
                     0
                  ]
                  min   =   -90
                  max   =   90
               },
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -90
                  max   =   90
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneGrappleArmBottom_cdt"
                  bodyIKName   =   "Bone_IK_GrappleRocker_B"
                  offsetIk   =   [
                     0.557,
                     0,
                     0
                  ]
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneBodyRear_cdt",
               "Bone_IK_Top_PistonBase",
               "Bone_IK_Top_Piston"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   0
                  max   =   90
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
                  bodyPhysName   =   "Bone_IK_GrappleRocker_A"
                  bodyIKName   =   "Bone_IK_Top_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneBodyRear_cdt",
               "Bone_IK_Bottom_PistonBase",
               "Bone_IK_Bottom_Piston"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     -1,
                     0
                  ]
                  min   =   0
                  max   =   90
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
                  bodyPhysName   =   "BoneGrappleArm_cdt"
                  bodyIKName   =   "Bone_IK_Bottom_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneGrappleArmBottom_cdt",
               "Bone_IK_GrapplePistonBase",
               "Bone_IK_GrapplePiston"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -60
                  max   =   60
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
                  bodyPhysName   =   "BoneGrappleArmTop_cdt"
                  bodyIKName   =   "Bone_IK_GrapplePiston"
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
                        0.2889023,
                        1.108206
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
               name   =   "BoxCapsule1"
               bone   =   "_BoxCapsule1"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.1442,
                        0.2739525,
                        2.627872
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
                        0.4339,
                        0.1540002,
                        0.4998001
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule3"
               bone   =   "_BoxCapsule3"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.4684,
                        0.4205651,
                        0.5619001
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
                        0.404449,
                        0.8702289,
                        0.5244083
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
                        0.404449,
                        0.8702289,
                        0.5244083
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
                        1.171998,
                        1.041577,
                        2.100403
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
               waterParams   =   {
                  needToSpawnParticles   =   True
                  particlesSpawnFrequencyScale   =   1
               }
               grassParams   =   {
                  need_fast   =   False
                  need_lasting   =   True
                  influence   =   2
                  speedMultiplier   =   1
               }
            },
            {
               name   =   "BoxCapsule7"
               bone   =   "_BoxCapsule7"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.593082,
                        1.800748,
                        1.342989
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
                        1.308224,
                        0.6135035,
                        0.2920017
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
                        0.1924999,
                        0.6119999,
                        0.4002002
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
                        1.125585,
                        1.318016,
                        0.2621428
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule11"
               bone   =   "_BoxCapsule11"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.9586601,
                        0.4179618,
                        1.70137
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule12"
               bone   =   "_BoxCapsule12"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.9586601,
                        0.2609585,
                        0.7328831
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule13"
               bone   =   "_BoxCapsule13"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.068355,
                        0.9115753,
                        0.2892084
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule14"
               bone   =   "_BoxCapsule14"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.217601,
                        0.750468,
                        0.2162526
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
               waterParams   =   {
                  needToSpawnParticles   =   True
                  particlesSpawnFrequencyScale   =   1
               }
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
                        0.2846813,
                        0.1548163,
                        0.7762946
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
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
               name   =   "BoxCapsule16"
               bone   =   "_BoxCapsule16"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.4325292,
                        0.1782362,
                        0.5914681
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
                        0.433,
                        0.1779394,
                        0.591
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
                        0.285,
                        0.155,
                        0.776
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
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
               name   =   "BoxCapsule19"
               bone   =   "_BoxCapsule19"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.2846813,
                        0.0700614,
                        0.2474348
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
               name   =   "BoxCapsule20"
               bone   =   "_BoxCapsule20"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.285,
                        0.0701105,
                        0.2473478
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
               name   =   "BoxCapsule21"
               bone   =   "_BoxCapsule21"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.1178716,
                        0.5723445,
                        0.2305832
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
                        0.1178716,
                        0.5722061,
                        0.2308069
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
                        0.1178716,
                        0.4250765,
                        0.1827355
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
                        0.1178716,
                        0.4250459,
                        0.1828019
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule25"
               bone   =   "_BoxCapsule25"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.1178716,
                        0.744291,
                        0.1258072
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule26"
               bone   =   "_BoxCapsule26"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.1178716,
                        0.7442785,
                        0.1258287
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "CylinderCapsule"
               bone   =   "_CylinderCapsule"
               geom   =   {
                  cylinder   =   {
                     height   =   1.302424
                     radius   =   0.2204088
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
               name   =   "CylinderCapsule1"
               bone   =   "_CylinderCapsule1"
               geom   =   {
                  cylinder   =   {
                     height   =   0.4420231
                     radius   =   0.1800092
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
               name   =   "CylinderCapsule2"
               bone   =   "_CylinderCapsule2"
               geom   =   {
                  cylinder   =   {
                     height   =   1.302
                     radius   =   0.22
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
               bone   =   "BoneGrappleArm_cdt"
               boneOffset   =   [
                  0,
                  -0.45,
                  0.6
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   1.23
                     radius   =   0.43
                     scaleX   =   0.6
                  }
                  capsule   =   {
                     height   =   1.23
                     radius   =   0.63
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_BoneAxle"
               bone   =   "BoneAxle"
               boneOffset   =   [
                  0,
                  0.98,
                  0.08
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   2.53
                     radius   =   0.6200001
                     scaleX   =   0.96
                  }
                  capsule   =   {
                     height   =   2.53
                     radius   =   0.79
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
                  2.14,
                  -0.35
               ]
               boneRotation   =   [
                  90,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   0.76
                     radius   =   0.72
                     scaleX   =   1.2
                  }
                  capsule   =   {
                     height   =   0.8400001
                     radius   =   0.84
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
         "BoneGrappleArm_cdt",
         "BoneGrappleArmBottom_cdt"
      ]
   }
   prop_truck_axles_controller   =   {
      dependentAxles   =   [
         {
            frame   =   "BoneAxle"
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
                  boneName   =   "BoneBodyRear_cdt"
                  weight   =   1
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneBodyRear_cdt"
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
                  boneName   =   "BoneBodyMiddle_cdt"
                  weight   =   1
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneBodyFront_cdt"
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
                  boneName   =   "BoneBodyFront_cdt"
                  weight   =   1
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneAxle"
                  weight   =   1
               }
            ]
            shaftFasteningPositionA   =   "shaft_3_a"
            shaftFasteningPositionB   =   "shaft_3_b"
         }
      ]
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
         "12"   =   {
            nameBone   =   "ctrl_grapple_left"
            axis   =   "Y"
            minRotationAngle   =   -15
            maxRotationAngle   =   15
            speed   =   30
            withCenteredPosition   =   True
            actionType   =   "GRAPPLE_ARM"
            __type   =   "EquipmentOrientationInputElementCockpit"
         }
         "13"   =   {
            nameBone   =   "ctrl_grapple_middle"
            axis   =   "Y"
            minRotationAngle   =   -15
            maxRotationAngle   =   15
            speed   =   30
            withCenteredPosition   =   True
            actionType   =   "GRAPPLE_ARM_BOTTOM"
            __type   =   "EquipmentOrientationInputElementCockpit"
         }
      }
   }
   prop_truck_view_actions_mapper   =   {
      firstControlSectionUiName   =   "UID_HUD_FIRST_SECTION_LOG_GRAPPLE"
      secondControlSectionUiName   =   "UID_HUD_SECOND_SECTION_LOG_GRAPPLE"
      axisControls   =   [
         {
            uiActionDescription   =   "UID_HUD_LOG_CRANE_ARM_Y"
            actionData   =   {
               actionType   =   "GRAPPLE_ARM"
               __type   =   "AxisActionData"
            }
            activationInputType   =   "LEFT_MOUSE_BUTTON"
            axisDirectionType   =   "Y_AXIS"
         },
         {
            uiActionDescription   =   "UID_HUD_LOG_CLAW_ARM_Y"
            actionData   =   {
               actionType   =   "GRAPPLE_ARM_BOTTOM"
               strengthFactor   =   -1
               __type   =   "AxisActionData"
            }
            activationInputType   =   "RIGHT_MOUSE_BUTTON"
            axisDirectionType   =   "Y_AXIS"
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
         actionMappingType   =   "CONSTRAINT_ACTION"
         uiActionDescription   =   "UID_HUD_LOG_CRANE_TOGGLE_CLAW"
         constraintType   =   "CONSTRAINT_CHAIN"
         chainConstraintAction   =   {
            constraintNames   =   [
               "GrappleArmTop"
            ]
            __type   =   "ChainContraintAction"
         }
         __type   =   "ActionMapping"
      }
      secondAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         __type   =   "ActionMapping"
      }
      thirdAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
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
         mouseSensitivity   =   1.5
         gamepadSensetivity   =   2
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
      steeringThreshold   =   10
      reverseAngleThreshold   =   20
      velocityScale   =   1.5
      stuckVelocityThreshold   =   2
      stuckScaleChange   =   0.5
      velocityPedalControl   =   {
         spline   =   [
            -5,
            -0.9997755,
            -7.716199,
            0.3822244,
            -4.371855,
            0.2682005,
            0,
            0,
            0,
            0,
            0,
            0,
            5,
            0.9999998,
            4.279675,
            0.4466882,
            10.1703,
            -6.034846
         ]
         __type   =   "SplineBezier1d"
      }
      steerScaleByAngle   =   {
         spline   =   [
            0.123347,
            0.4654891,
            -0.0057861,
            0.4617961,
            0.2524801,
            0.4691822,
            49.4522,
            0.4765682,
            49.4522,
            0.4765682,
            49.4522,
            0.4765682,
            71.12415,
            0.6019427,
            71.12415,
            0.6019427,
            71.12415,
            0.6019427,
            90,
            0.8126338,
            90,
            0.8126338,
            90,
            0.8126338
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
               "reverse_lights"
            ]
            __type   =   "ReverseHeadlights"
         }
         "2"   =   {
            defaultName   =   "default"
            lightName   =   "lights_emissive"
            geomNames   =   [
               "marker_lights"
            ]
            __type   =   "Headlights"
         }
         "3"   =   {
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
            angleRotateX   =   -1.1
            angleRotateY   =   -6.5
            angleRotateZ   =   -10
         }
      ]
   }
}
__type   =   "truck_view"
