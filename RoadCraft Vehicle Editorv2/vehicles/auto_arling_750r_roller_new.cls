properties   =   {
   geom   =   {
      nameTpl   =   "asphalt_roller_new"
   }
   prop_truck_view_controller   =   {
      engineFiringDelay   =   1300
   }
   prop_truck_view   =   {
      truckName   =   "arling_750r_roller_new"
      truckType   =   "tracked_light"
      truckVisibilityInFogOfWar   =   60
   }
   prop_truck_rb   =   {
      suspensionSet   =   {
         front   =   {
            min   =   -0.01
            max   =   0.01
            strength   =   1
            damping   =   1
         }
      }
      engine   =   {
         params   =   {
            torque   =   170000
            brakesDelay   =   0.5
            maxDeltaAngVel   =   0.01
            responsiveness   =   0.3
            __type   =   "TruckEngineParams"
         }
         __type   =   "TruckEngine"
      }
      gearbox   =   {
         params   =   {
            gears   =   [
               {
                  sslModule   =   "physics.truck.truck_components"
                  angularVelocity   =   0.75
                  gearRatio   =   12
                  targetSpeedRangeKmh   =   {
                     x   =   0
                     y   =   15
                     __type   =   "Vector2dRnd"
                  }
               }
            ]
            reverseGear   =   {
               angularVelocity   =   0.075
               gearRatio   =   3.9
               __type   =   "TruckSingleGearParams"
            }
            highGear   =   {
               angularVelocity   =   2
               gearRatio   =   1
               __type   =   "TruckSingleGearParams"
            }
            lowRangeGear   =   {
               angularVelocity   =   0.04
               __type   =   "TruckSingleGearParams"
            }
            isLowRangeModeReverseEnabled   =   True
            isLowRangeModeClutchingEnabled   =   False
            defaultGearSwitchDelay   =   0.25
            upperGearSwitchDelayBase   =   0.8
            downGearSwitchDelay   =   0.5
            neutralGearSwitchingDelay   =   3
            __type   =   "TruckGearboxParams"
         }
         __type   =   "TruckGearbox"
      }
      maxSteerSpeed   =   0.027
      backSteerSpeed   =   0.05
      pedalsResponsiveness   =   0.6
      isNeutralGearWheelResistanceEnabled   =   False
      isReverseWheelResistanceEnabled   =   True
      unlockDiffAvrVelocityMinTorque   =   0.3
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
            0.5,
            0.5,
            0.75,
            1,
            0.75
         ]
         __type   =   "SplineCurve1d"
      }
      steerRotateEngineControl   =   False
      wheelSlotWithDescs   =   [
         {
            geomName   =   "BoneWheelFront"
            torqueType   =   "none"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.2
            enableLateralForce   =   True
            editableWheel   =   "EditableWheel_front"
         },
         {
            geomName   =   "BoneWheelRearL"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.2
            enableLateralForce   =   True
            editableWheel   =   "EditableWheel_rear"
         },
         {
            geomName   =   "BoneWheelRearR"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.2
            enableLateralForce   =   True
            editableWheel   =   "EditableWheel_rear"
         }
      ]
      wheelPool   =   {
         EditableWheel_front   =   {
            __value   =   "auto_wheel_arling_750r_roller_new_editablewheel_front"
         }
         EditableWheel_rear   =   {
            __value   =   "auto_wheel_arling_750r_roller_new_editablewheel_rear"
         }
      }
      controllableSteeringConstraints   =   [
         {
            constraintName   =   "steering"
            angularSpeed   =   35
            minAngle   =   -30
            maxAngle   =   30
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
                     "TruckShaker_Dcsl6K1a/Play",
                     "TruckShaker_2_Dcsl6K1a1/Stop",
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
                     "PlaySound/Play",
                     "TruckShaker_2_Dcsl6K1a1/Play",
                     "TruckShaker_Dcsl6K1a/Stop",
                     "Schedule_E2ocqe4x/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               OnEngineAcceleration   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5300
                  }
                  OnAcceleration   =   [
                     "PlaySound_3_3_1/Play",
                     "Schedule_E2ocqe4x/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5450
                  }
                  OnEngineReverse   =   [
                     "PlaySound_3_3_1/Play",
                     "Schedule_E2ocqe4x/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               OnBrakePull   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5600
                  }
                  OnBrakePulled   =   [
                     "PlaySound_3_3_1_1/Play"
                  ]
                  __type   =   "BlueprintNodeOnBrakePull"
               }
               OnBrakeRelease   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5750
                  }
                  OnBrakeReleased   =   [
                     "PlaySound_3_3_1_2/Play"
                  ]
                  __type   =   "BlueprintNodeOnBrakeRelease"
               }
               OnHandbrakeStateChanged   =   {
                  viewData   =   {
                     x   =   3335.334
                     y   =   5900
                  }
                  OnHandbrakeOn   =   [
                     "PlaySound_3_3/Play",
                     "PlaySound_1/Stop"
                  ]
                  OnHandbrakeOff   =   [
                     "PlaySound_1/Play",
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
                     "Schedule_E2ocqe4x/Start"
                  ]
               }
               SetSoundParameter_1   =   {
                  viewData   =   {
                     x   =   5886.251
                     y   =   4901.86
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "rpm"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               SetSoundSwitch   =   {
                  viewData   =   {
                     x   =   3700
                     y   =   4600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
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
                     x   =   4800
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_ds_55katok_engine"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_9_3   =   {
                  viewData   =   {
                     x   =   4050
                     y   =   4600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_ds_55katok_engine_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound   =   {
                  viewData   =   {
                     x   =   4050
                     y   =   5000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_9_1/Stop",
                     "PlaySound_9_3/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_ds_55katok_engine_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_3   =   {
                  viewData   =   {
                     x   =   4050
                     y   =   6100
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
               PlaySound_3_4   =   {
                  viewData   =   {
                     x   =   4050
                     y   =   6500
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
               PlaySound_1   =   {
                  viewData   =   {
                     x   =   4050
                     y   =   5900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_ds_55katok_roll"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               GetTruckRpm   =   {
                  viewData   =   {
                     x   =   5450
                     y   =   4700
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
               Schedule_1_1   =   {
                  viewData   =   {
                     x   =   5586.251
                     y   =   4601.86
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_1_1/SetParameter",
                     "SetSoundParameter_1_1_1_1/SetParameter",
                     "SetSoundParameter_1/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               TruckVelocity_1   =   {
                  viewData   =   {
                     x   =   5450
                     y   =   4800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetLinearVelocity   =   [
                     "SetSoundParameter_1_1_1_1/valueRef/cb",
                     "SetSoundParameter_1/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               SetSoundParameter_1_1   =   {
                  viewData   =   {
                     x   =   5886.251
                     y   =   4600
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
                     x   =   5886.251
                     y   =   4751.86
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
               OnInit_1   =   {
                  viewData   =   {
                     x   =   5450
                     y   =   4600
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
               PlaySound_3_3_1   =   {
                  viewData   =   {
                     x   =   4050
                     y   =   5300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_ds_55katok_acc"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_3_1_1   =   {
                  viewData   =   {
                     x   =   4050
                     y   =   5500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_ds_55katok_brake_pull"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_3_1_2   =   {
                  viewData   =   {
                     x   =   4050
                     y   =   5700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_ds_55katok_brake_release"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               TruckShaker_Dcsl6K1a   =   {
                  viewData   =   {
                     x   =   3700
                     y   =   4750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  duration   =   3.5
                  shakerName   =   "EngineStart"
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_2_Dcsl6K1a1   =   {
                  viewData   =   {
                     x   =   3700
                     y   =   4900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  duration   =   2.5
                  shakerName   =   "EngineShutdown"
                  maxRPM   =   True
                  __type   =   "BlueprintNodeTruckShaker"
               }
               Schedule_E2ocqe4x   =   {
                  viewData   =   {
                     x   =   3700
                     y   =   5800
                  }
                  OnPeriod   =   [
                     "PlaySound_3_3_1_2/Play"
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
               CloneSoundEmitter_Ea2aMBeX   =   {
                  viewData   =   {
                     x   =   4150
                     y   =   6300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_3_3/emitterRef/cb",
                     "PlaySound_3_4/emitterRef/cb"
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
               OnEngineRunningOnInit_F72bUSaO   =   {
                  viewData   =   {
                     x   =   3100
                     y   =   4850
                  }
                  OnEngineRunning   =   [
                     "TruckShaker_Dcsl6K1a/Stop",
                     "TruckShaker_2_Dcsl6K1a1/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineRunningOnInit"
               }
            }
            groups   =   {
               "[SOUND] rpm and speed"   =   {
                  x   =   5400
                  y   =   4450
                  width   =   1000
                  height   =   649
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
                  zeroBorderEnergy   =   13500
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
                     def   =   3.7
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
               OnTPLAnimationBegin_E5fh0meA   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1650
                  }
                  OnAnimStart   =   [
                     "PlaySound_E5fh0meA2/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnBegin"
               }
               OnTPLAnimationEnd_E5fh0meA1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1850
                  }
                  OnAnimStop   =   [
                     "PlaySound_E5fh0meA3/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnEnd"
               }
               PlaySound_E5fh0meA2   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1650
                  }
                  OnSoundStart   =   [
                     "PlaySound_Eaec5b5U/Play"
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
               PlaySound_E5fh0meA3   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1850
                  }
                  OnSoundStart   =   [
                     "PlaySound_Eaec5b5U1/Play"
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
               CloneSoundEmitter_Eaec505E   =   {
                  viewData   =   {
                     x   =   4300
                     y   =   1650
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Eaec5b5U/emitterRef/cb",
                     "PlaySound_Eaec5b5U1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneAnim_Wipers_F2"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_Eaec505E1   =   {
                  viewData   =   {
                     x   =   4300
                     y   =   1850
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E5fh0meA2/emitterRef/cb",
                     "PlaySound_E5fh0meA3/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneAnim_Wipers_B"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_Eaec5b5U   =   {
                  viewData   =   {
                     x   =   6050
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
               PlaySound_Eaec5b5U1   =   {
                  viewData   =   {
                     x   =   6050
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
               PlaySound_Ea2aMh9x   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3850
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
               GetInfoElementCockpitForSoundWithEvent_Ea2aMh9x1   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3850
                  }
                  OnStart   =   [
                     "PlaySound_Ea2aMh9x/Play"
                  ]
                  nameBoneBro   =   "ctrl_gear_stick"
                  isWheel   =   True
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               CloneSoundEmitter_Ea2aMh9x2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4000
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea2aMh9x/emitterRef/cb"
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
               PlaySound_Ea9kuU40   =   {
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
                        name   =   "vhc_body_cockpit_switch"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               GetInfoElementCockpitForSoundWithEvent_Ea9kuU401   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4200
                  }
                  OnStart   =   [
                     "PlaySound_Ea9kuU40/Play"
                  ]
                  nameBoneBro   =   "ctrl_gear_stick_low"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               CloneSoundEmitter_Ea9kuU402   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4350
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea9kuU40/emitterRef/cb"
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
               PlaySound_Ebqc1hag   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "Schedule_Ebqc1hag2/Start"
                  ]
                  OnSoundEnd   =   [
                     "Schedule_Ebqc1hag2/Stop"
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
               GetInfoElementCockpitForSoundWithSchedule_Ebqc1hag1   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ebqc1hag/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_Ebqc1hag/Stop"
                  ]
                  nameBoneBro   =   "ctrl_steering_wheel"
                  isWheel   =   True
                  GetCurrentSteerSpeed   =   [
                     "SetSoundParameter_Ebqc1hag3/valueRef/cb"
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
               Schedule_Ebqc1hag2   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_Ebqc1hag3/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               SetSoundParameter_Ebqc1hag3   =   {
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
               CloneSoundEmitter_Ebqc1hag4   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ebqc1hag/emitterRef/cb",
                     "SetSoundParameter_Ebqc1hag3/emitterRef/cb"
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
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         SFX   =   {
            nodes   =   {
               OnEngineStarted   =   {
                  viewData   =   {
                     x   =   4036.281
                     y   =   3695
                  }
                  OnEngineStarted   =   [
                     "VFXRestart_1/Input",
                     "VFXRestart_2/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown   =   {
                  viewData   =   {
                     x   =   4034.281
                     y   =   3845
                  }
                  OnEngineShutdown   =   [
                     "VFXStop/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               OnEngineAcceleration   =   {
                  viewData   =   {
                     x   =   4045.719
                     y   =   4350
                  }
                  OnAcceleration   =   [
                     "VFXRestart/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9nfHucV/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse   =   {
                  viewData   =   {
                     x   =   4050
                     y   =   4550
                  }
                  OnEngineReverse   =   [
                     "VFXRestart/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9nfHucV/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               VFXRestart   =   {
                  viewData   =   {
                     x   =   4500
                     y   =   4400
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_big_cars_acceleration_750r_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_1   =   {
                  viewData   =   {
                     x   =   4500
                     y   =   3850
                  }
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop   =   {
                  viewData   =   {
                     x   =   4500
                     y   =   3950
                  }
                  OnExit   =   [
                     "VFXStop_F19arPdR/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_2   =   {
                  viewData   =   {
                     x   =   4500
                     y   =   3700
                  }
                  OnExit   =   [
                     "VFXRestart_E9nfHm5Q/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_exhaust_big_cars_gas_750r_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_E9nfHm5Q   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   3700
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_big_cars_neutral_750r_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9nfHucV   =   {
                  viewData   =   {
                     x   =   4500
                     y   =   4500
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_big_cars_acceleration_750r_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXStop_F19arPdR   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   3950
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_big_cars_neutral_750r_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
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
               __type   =   "TruckAsphaltRollerSavablePropDesc"
            }
         }
      ]
   }
   prop_replicated   =   {
      repEntityBrand   =   {
         type   =   {
            __type   =   "AutoArling750rRollerNewReplicated"
         }
         __type   =   "RepEntityBrand"
      }
   }
   prop_lwi_cdt_poi_rb   =   {
      poiRadius   =   48
   }
   prop_truck_gearbox_controller   =   {
      awdMode   =   "ALWAYS_OFF"
      difflockMode   =   "ALWAYS_ON"
      isLowGearAvailable   =   True
   }
   prop_fuel_tank   =   {
      maxFuelTankVolume   =   197
      startFuelTankVolume   =   197
      fuelConsumption   =   0.09
      reverseFuelConsumptionCoeff   =   1.2
      lowRangeFuelConsumptionCoeff   =   1.4
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
         y   =   1.1
         z   =   0
         __type   =   "Vector3d"
      }
      warningLevel   =   0.6
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
                  y   =   0.25
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
         JobMarker   =   {
            marker   =   {
               assetPoolLink   =   "AiJobMarkerPool"
               isShowOutOfView   =   True
               isCullByDistance   =   False
               isLimitBySafeZone   =   False
               __type   =   "UiMarker2D"
            }
            positionTracker   =   {
               posOffset   =   {
                  __type   =   "Vector3d"
               }
               __type   =   "Tracker"
            }
            viewController   =   {
               __type   =   "UiMarkersAiJobMarkerController"
            }
            visibilityRules   =   {
               IsGeomVisible   =   {
                  __type   =   "MarkerVisibilityRuleIsGeomVisible"
               }
               IsRoadPlanning   =   {
                  __type   =   "MarkerVisibilityRuleIsInRoadPlanning"
               }
               AiDoingJob   =   {
                  __type   =   "MarkerVisibilityRuleIsAiDoingJob"
               }
            }
            __type   =   "UiUniversalMarker"
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
      tag   =   "UID_MODULE_ROLLER"
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
               covering_med_car_sand   =   {
                  physics   =   {
                     cdt   =   {
                        coveringInteraction   =   {
                           radiusScale   =   1.8
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
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
               covering_med_car_sand   =   {
                  physics   =   {
                     cdt   =   {
                        coveringInteraction   =   {
                           radiusScale   =   1.8
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
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
               covering_med_car_sand   =   {
                  physics   =   {
                     cdt   =   {
                        coveringInteraction   =   {
                           radiusScale   =   1.8
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
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
            emitters2   =   {
               covering_med_car_ground   =   {
                  physics   =   {
                     cdt   =   {
                        coveringInteraction   =   {
                           radiusScale   =   1.5
                        }
                     }
                  }
                  __type   =   "CPU_EMITTER"
               }
            }
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
         }
         part_exhaust_oil   =   {
         }
         part_track_acceleration_single_exh_up_01   =   {
         }
         wheel_particles_wet_grass_big_01   =   {
         }
         part_exhaust_big_cars_acceleration_01   =   {
         }
         part_exhaust_big_cars_gas_01   =   {
         }
         part_exhaust_big_cars_gas_old_01   =   {
         }
         part_exhaust_big_cars_neutral_01   =   {
         }
         part_exhaust_up_01   =   {
         }
         part_exhaust_up_gas_01   =   {
         }
         part_exhaust_up_gas_old_01   =   {
         }
         part_exhaust_up_neutral_01   =   {
         }
         part_exhaust_up_old   =   {
         }
         part_exhaust_faint_smoke_up_01   =   {
         }
         part_exhaust_faint_smoke_up_gas_01   =   {
         }
         part_exhaust_faint_smoke_up_gas_old_01   =   {
         }
         part_exhaust_faint_smoke_up_old   =   {
         }
         part_track_exhaust_gas_01   =   {
         }
         part_track_exhaust_neutral_01   =   {
         }
         part_track_exhaust_gas_old_01   =   {
         }
         part_track_acceleration_01   =   {
         }
         part_track_acceleration_old_01   =   {
         }
         part_exhaust_med_cars_acceleration_zikz_new   =   {
         }
         part_exhaust_med_cars_acceleration_zikz_old   =   {
         }
         part_exhaust_med_cars_gas_zikz_01   =   {
         }
         part_exhaust_med_cars_gas_zikz_old   =   {
         }
         part_exhaust_met_cars_neutral_zikz_01   =   {
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
         part_exhaust_big_cars_acceleration_old_01   =   {
         }
         part_exhaust_big_cars_acceleration_mule_01   =   {
         }
         part_exhaust_big_cars_acceleration_old_mule_01   =   {
         }
         part_exhaust_big_cars_gas_mule_01   =   {
         }
         part_exhaust_big_cars_gas_old_mule_01   =   {
         }
         part_exhaust_up_gas_st7050_01   =   {
         }
         part_exhaust_up_neutral_st7050_01   =   {
         }
         part_exhaust_up_st7050_01   =   {
         }
         part_exhaust_big_cars_acceleration_c400_01   =   {
         }
         part_exhaust_big_cars_gas_c400_01   =   {
         }
         part_exhaust_big_cars_neutral_c400_01   =   {
         }
         part_exhaust_big_cars_acceleration_750r_01   =   {
         }
         part_exhaust_big_cars_gas_750r_01   =   {
         }
         part_exhaust_big_cars_neutral_750r_01   =   {
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
         part_track_acceleration_med_single_01   =   {
         }
      }
      __onlyOn   =   "visual"
   }
   prop_truck_rotator_native_controller   =   {
      rotators   =   {
         Flasher   =   {
            rotatorStartStopCondition   =   {
               __type   =   "RotatorStartStopConditionEngineOnOffNative"
            }
            isSmoothStart   =   True
            rotatorBone   =   "BoneFlasherRotator"
            accelerationOverTime   =   [
               0,
               0,
               1,
               1
            ]
            deccelerationOverTime   =   [
               0,
               1,
               1,
               0
            ]
            velocityScalers   =   {
               Speed   =   {
                  value   =   500
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
      boneOffset   =   {
         x   =   0.045
         y   =   -0.57
         z   =   0.075
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
         "BoneJunction_cdt"
      ]
   }
   prop_winchable   =   {
      winchSocketPoints   =   [
         {
            bodyName   =   "BoneRear_cdt"
            offsetInBodySpace   =   {
               x   =   0.75
               y   =   0.604
               z   =   -0.762
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneRear_cdt"
            offsetInBodySpace   =   {
               x   =   -0.75
               y   =   0.604
               z   =   -0.762
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneFront_cdt"
            offsetInBodySpace   =   {
               x   =   1.444
               y   =   0.315
               z   =   1.93
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneFront_cdt"
            offsetInBodySpace   =   {
               x   =   -1.444
               y   =   0.315
               z   =   1.93
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneFront_cdt"
            offsetInBodySpace   =   {
               y   =   0
               z   =   1.93
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneRear_cdt"
            offsetInBodySpace   =   {
               x   =   0.738
               y   =   0.627
               z   =   1.041
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneRear_cdt"
            offsetInBodySpace   =   {
               x   =   -0.745
               y   =   0.627
               z   =   1.041
               __type   =   "Vector3d"
            }
         }
      ]
      rotationFactor   =   4
      amountOfWinchPoints   =   4
   }
   prop_truck_default_camera_equipment_state   =   {
   }
   prop_truck_camera_preset   =   {
      preset   =   {
         cameraFocusPointOffset   =   {
            y   =   0.25
            __type   =   "Vector3d"
         }
         attachmentBone   =   "_third_person_camera"
         minSpeedToFollow   =   2.3
         firstLaunchCameraAngles   =   {
            x   =   20
            __type   =   "Vector2d"
         }
         followChangeDirectionSpeedThreshold   =   2.3
         scrollPoints   =   {
            "0"   =   {
               distance   =   8.5
               followTerrainOffset   =   1.8
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "1"   =   {
               distance   =   10.5
               followTerrainOffset   =   2.3
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "2"   =   {
               distance   =   12.5
               followTerrainOffset   =   2.8
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "3"   =   {
               distance   =   14.5
               followTerrainOffset   =   3.3
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "4"   =   {
               distance   =   16.5
               followTerrainOffset   =   3.8
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "5"   =   {
               distance   =   18.5
               followTerrainOffset   =   4.3
               __type   =   "RbVehicleCameraScrollPoint"
            }
         }
         interestPoints   =   [
            {
               angles   =   {
                  x   =   270
                  y   =   0
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
                  y   =   0
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
                  x   =   0
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
                  x   =   0
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
                  x   =   0
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
                  x   =   0
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
                  x   =   0
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
                  x   =   0
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
                  x   =   0
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
                  x   =   0
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
                  x   =   0
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
                  x   =   0
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
                  x   =   0
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
                  x   =   0
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
                  x   =   0
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
                  x   =   0
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
                  y   =   0
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   0
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
                  x   =   0
                  y   =   180
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   0
                  y   =   0
                  z   =   0
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   2
            },
            {
               angles   =   {
                  x   =   40
                  y   =   0
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   0
                  z   =   0
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
                  y   =   0
                  z   =   0
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
                  y   =   0
                  z   =   0
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
                  y   =   0
                  z   =   0
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
         eyeOffset   =   {
            y   =   0.1
            z   =   0.02
            __type   =   "Vector3d"
         }
         rotationLimitsX   =   {
            x   =   -30
            y   =   45
            __type   =   "Vector2dRnd"
         }
         rotationLimitsY   =   {
            x   =   -160
            y   =   160
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
                  x   =   15
                  y   =   30
                  __type   =   "Vector2dRnd"
               }
               maxYAngle   =   30
               __type   =   "RbCockpitCameraFollowTurnParams"
            }
            rightTurnParams   =   {
               turnSpeedRange   =   {
                  x   =   15
                  y   =   30
                  __type   =   "Vector2dRnd"
               }
               maxYAngle   =   30
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
               y   =   -0.7
               z   =   0.8
               __type   =   "Vector3d"
            }
            Vector3d   =   {
               x   =   0.5
               y   =   -0.7
               z   =   0.8
            }
            Vector3d_1   =   {
               x   =   -0.5
               y   =   -0.4
               z   =   -0.5
               __type   =   "Vector3d"
            }
            Vector3d_2   =   {
               x   =   0.5
               y   =   -0.4
               z   =   -0.5
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
               "BoneRear_cdt",
               "Bone_IK_Junction_L_PistonBase",
               "Bone_IK_Junction_L_Piston"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     1,
                     0,
                     0
                  ]
                  min   =   -5
                  max   =   5
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneJunction_cdt"
                  bodyIKName   =   "Bone_IK_Junction_L_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneRear_cdt",
               "Bone_IK_Junction_R_PistonBase",
               "Bone_IK_Junction_R_Piston"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     1,
                     0,
                     0
                  ]
                  min   =   -5
                  max   =   5
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneJunction_cdt"
                  bodyIKName   =   "Bone_IK_Junction_R_Piston"
               }
            ]
         }
      ]
   }
   vfx   =   {
      vfxSkeleton   =   {
         vfxBones   =   [
            {
               name   =   "front_1_box"
               bone   =   "_front_1_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.95,
                        0.651,
                        2.278
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "front_2_box"
               bone   =   "_front_2_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.414,
                        0.205,
                        0.41
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "front_3_box"
               bone   =   "_front_3_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.414,
                        0.13,
                        0.42
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "rear_1_box"
               bone   =   "_rear_1_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.218,
                        0.83,
                        3.538
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
               waterParams   =   {
                  needToSpawnParticles   =   True
               }
            },
            {
               name   =   "rear_2_box"
               bone   =   "_rear_2_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.598,
                        1.702,
                        1.617
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "rear_3_box"
               bone   =   "_rear_3_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.423,
                        0.849,
                        1.588
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
               name   =   "rear_4_box"
               bone   =   "_rear_4_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.424,
                        0.673,
                        1.019
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "rear_5_box"
               bone   =   "_rear_5_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.784,
                        0.966,
                        0.634
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "rear_6_box"
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
               name   =   "rear_7_box"
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
               name   =   "shadow_01"
               boneOffset   =   [
                  0,
                  1.28,
                  -1.04
               ]
               geom   =   {
                  capsule   =   {
                     height   =   2.06
                     radius   =   0.85
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "shadow_02"
               boneOffset   =   [
                  0,
                  2.12,
                  0
               ]
               boneRotation   =   [
                  90,
                  90,
                  0
               ]
               geom   =   {
                  capsule   =   {
                     radius   =   0.85
                  }
                  __type   =   "local__capsule"
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
         mirror_outside_left   =   {
            fov   =   65
            centerLocatorName   =   "pip_camera_left"
            objName   =   "_hp_cab_interior_mirror_left"
            pipCameraMaterialName   =   "truck_mirror"
            __type   =   "MirrorParams"
         }
         mirror_outside_right   =   {
            fov   =   65
            centerLocatorName   =   "pip_camera_right"
            objName   =   "_hp_cab_interior_mirror_right"
            pipCameraMaterialName   =   "truck_mirror"
            __type   =   "MirrorParams"
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
   prop_route_following   =   {
      isBaseTruck   =   False
      supportedBehivours   =   {
         MOVE_TO_START_POINT   =   {
            truckSettings   =   {
               overrideSteerSpeed   =   True
               maxSteerSpeed   =   0.8
               backSteerSpeed   =   1
               __type   =   "AiTruckSettings"
            }
            firstPointOffset   =   -4
            safeZoneHalfSize   =   0.88
            correctSteerScale   =   1.9
            correctPedal   =   1
            pointPassPercent   =   0.9
            routePointPassPercent   =   0.1
            pauseAfterPointsTime   =   1
            firstSupportPointOffset   =   1
            secondSupportPointOffset   =   0.45
            pedal   =   1
            pedalNearSupportPoints   =   0.5
            supportPedalActivationPercent   =   0.5
            lastPointMixValue   =   0
            steerScale   =   1.9
            gearboxSettings   =   {
               __type   =   "AiTruckSettings"
            }
            __type   =   "MoveToStartPointRouteBehaviourDesc"
         }
         MOVE_WITH_TASKS   =   {
            truckSettings   =   {
               maxSteerSpeed   =   0.027
               backSteerSpeed   =   0.05
               __type   =   "AiTruckSettings"
            }
            targetVelocity   =   2.5
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
            steerScale   =   1.3
            pointMixing   =   {
               spline   =   [
                  0,
                  0,
                  0.3969091,
                  0.2922626,
                  0.9965733,
                  0.0001053
               ]
               __type   =   "SplineCurve1d"
            }
            lastNodeOffset   =   7
            nodeOffset   =   -1
            gearboxSettings   =   {
               __type   =   "AiTruckSettings"
            }
            __type   =   "MoveByPointsWithTasksRouteBehaviourDesc"
         }
      }
   }
   prop_road_plan_worker   =   {
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
         "BoneRear_cdt",
         "BoneJunction_cdt",
         "BoneFront_cdt"
      ]
   }
   prop_truck_constraint   =   {
      wheelLock   =   {
         __type   =   "TruckWheelDesc"
      }
      wheelLockOffsets   =   {
         "0"   =   {
            offsets   =   [
               {
                  x   =   -0.75
               },
               {
                  x   =   0.75
               }
            ]
            __type   =   "WheelLockOffsets"
         }
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
   prop_trail_remover   =   {
      trailRemoverDescs   =   [
         {
            size   =   {
               x   =   2.7
               y   =   2.5
               z   =   0.5
               __type   =   "Vector3d"
            }
            positionOffset   =   {
               y   =   -1
               __type   =   "Vector3d"
            }
            bodyToFollow   =   "cdt_BoneFront_1"
         }
      ]
   }
   prop_terraforming_permission_checker   =   {
   }
   prop_truck_asphalt_roller   =   {
      asphaltRoller   =   {
         size   =   {
            x   =   4.3
            y   =   6
            z   =   3.5
            __type   =   "Vector3d"
         }
         rollUpRearSize   =   {
            x   =   4.3
            y   =   5
            z   =   1.45
            __type   =   "Vector3d"
         }
         rollUpForwardSize   =   {
            x   =   4.3
            y   =   5
            z   =   1.45
            __type   =   "Vector3d"
         }
         heightChangingSpeedBeforeRoll   =   0.04
         heightChangingSpeedAfterRoll   =   0.025
         __type   =   "AsphaltRoller"
      }
      attach   =   {
         locator   =   "BoneWheelFront"
         posOffset   =   {
            y   =   -0.5
            z   =   -0.5
            __type   =   "Vector3d"
         }
         __type   =   "Tracker"
      }
      rollUpRearAttach   =   {
         locator   =   "BoneWheelFront"
         posOffset   =   {
            y   =   -0.6
            z   =   0
            __type   =   "Vector3d"
         }
         __type   =   "Tracker"
      }
      rollUpForwardAttach   =   {
         locator   =   "BoneWheelFront"
         posOffset   =   {
            y   =   -0.6
            z   =   0
            __type   =   "Vector3d"
         }
         __type   =   "Tracker"
      }
      beforeRollFlattenMethod   =   "LEAST_SQUARES"
      afterRollFlattenMethod   =   "LEAST_SQUARES"
   }
   prop_truck_flattener   =   {
      flattenerLocator   =   "BoneWheelFront"
      flattener   =   {
         size   =   {
            x   =   3
            y   =   4
            z   =   3.5
            __type   =   "Vector3d"
         }
         smoothRadius   =   0.5
         velocityPowerMultiplier   =   500
         maxPowerPerSecond   =   500
         normalIgnoringPercent   =   0
         borderHeight   =   0
         borderRadius   =   0
         borderSmoothRadius   =   0
         borderOffset   =   0
         borderCheckOffset   =   0
         needNoBorderHeightThreshold   =   0
         needMaxBorderHeightThreshold   =   0
         onlyChangeSand   =   True
         maxHeightDecreaseCausedByBorder   =   0
         onlyPushForward   =   True
         __type   =   "TerraformingFlattener"
      }
      attach   =   {
         locator   =   "BoneWheelFront"
         posOffset   =   {
            y   =   -1
            z   =   -0.5
            __type   =   "Vector3d"
         }
         __type   =   "Tracker"
      }
      enableOnInit   =   True
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
            damping   =   0.03
            increase   =   15
            __type   =   "DashboardElementCockpit"
         }
         "1"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_oil"
            axis   =   "Y"
            maxRotationAngle   =   45
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.003
            __type   =   "DashboardElementCockpit"
         }
         "2"   =   {
            nameBone   =   "ctrl_dashboard_engine_temp_coolant"
            axis   =   "Y"
            maxRotationAngle   =   50
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.002
            __type   =   "DashboardElementCockpit"
         }
         "3"   =   {
            nameBone   =   "ctrl_steering_wheel"
            axis   =   "Y"
            minRotationAngle   =   -360
            maxRotationAngle   =   360
            steeringSubtype   =   "WHEEL"
            __type   =   "SteerigElementCockpit"
         }
         "4"   =   {
            nameBone   =   "ctrl_switch_handbrake"
            axis   =   "Y"
            maxRotationAngle   =   15
            switcherType   =   "LEVER"
            speed   =   45
            switcherSubtype   =   "HANDBRAKE"
            __type   =   "SwitcherElementCockpit"
         }
         "5"   =   {
            nameBone   =   "ctrl_gear_stick_low"
            isAngular   =   False
            axis   =   "Z"
            maxPosition   =   0.002
            switcherType   =   "LEVER"
            switcherSubtype   =   "LOW_GEAR"
            __type   =   "SwitcherElementCockpit"
         }
         "6"   =   {
            nameBone   =   "ctrl_lamp_gear_stick_high"
            isAngular   =   False
            axis   =   "Y"
            maxPosition   =   0.001
            switcherType   =   "LEVER"
            switcherSubtype   =   "LOW_GEAR"
            __type   =   "SwitcherElementCockpit"
         }
         "7"   =   {
            nameBone   =   "ctrl_lamp_gear_stick_low"
            isAngular   =   False
            axis   =   "Y"
            maxPosition   =   0.001
            switcherType   =   "LEVER"
            switcherSubtype   =   "LOW_GEAR"
            __type   =   "SwitcherElementCockpit"
         }
         "8"   =   {
            nameBone   =   "ctrl_gear_stick"
            rotationSpeed   =   60
            states   =   {
               AUTO   =   {
                  primary   =   {
                     angle   =   20
                     __type   =   "InfoGearState"
                  }
                  __type   =   "GearStateItem"
               }
               REVERSE   =   {
                  primary   =   {
                     angle   =   -20
                     __type   =   "InfoGearState"
                  }
                  __type   =   "GearStateItem"
               }
            }
            __type   =   "GearStickElementCockpit"
         }
         "9"   =   {
            nameBone   =   "ctrl_lamp_forward"
            translateSpeed   =   60
            states   =   {
               AUTO   =   {
                  primary   =   {
                     axis   =   "Y"
                     isAngular   =   False
                     position   =   0.001
                     __type   =   "InfoGearState"
                  }
                  __type   =   "GearStateItem"
               }
            }
            __type   =   "GearStickElementCockpit"
         }
         "10"   =   {
            nameBone   =   "ctrl_lamp_reverse"
            translateSpeed   =   60
            states   =   {
               REVERSE   =   {
                  primary   =   {
                     axis   =   "Y"
                     isAngular   =   False
                     position   =   0.001
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
      firstControlSectionUiName   =   "UID_HUD_FIRST_SECTION_VEHICLE_CONTROLS"
      secondControlSectionUiName   =   "UID_HUD_SECOND_SECTION_VEHICLE_CONTROLS"
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
         uiActionDescription   =   "UID_START_ROLLING_ASPHALT"
         isToggleable   =   True
         altUiActionDescription   =   "UID_STOP_ROLLING_ASPHALT"
         namedActionType   =   "TOGGLE_ASPHALT_ROLLER"
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
      reverseAngleThreshold   =   0
      velocityScale   =   1.3
      stuckVelocityThreshold   =   2
      stuckScaleChange   =   0.5
      velocityPedalControl   =   {
         spline   =   [
            -5,
            -0.9997755,
            -9.825016,
            -2.65587,
            -2.096303,
            0.0004691,
            0,
            0,
            0,
            0,
            0,
            0,
            5,
            0.9999998,
            2.134915,
            0.2682005,
            12.98048,
            2.848158
         ]
         __type   =   "SplineBezier1d"
      }
      steerScaleByAngle   =   {
         spline   =   [
            0.0786267,
            0.3573724,
            0.0786267,
            0.3573724,
            0.0786267,
            0.3573724,
            19.29783,
            0.4264302,
            19.29783,
            0.4264302,
            19.29783,
            0.4264302,
            39.99346,
            0.8125669,
            39.99346,
            0.8125669,
            39.99346,
            0.8125669,
            90,
            1,
            90,
            1,
            90,
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
         z   =   1
         __type   =   "Vector3d"
      }
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
            shakerBone   =   "BoneRear_cdt"
            frequency   =   60
            maxAngleOffsetScale   =   0.8
            minAngle   =   [
               0,
               0,
               -0.08
            ]
            maxAngle   =   [
               0,
               0,
               0.08
            ]
            angleMultiplier   =   [
               0,
               1,
               0.10823,
               0.738462,
               0.183765,
               0.9,
               0.285231,
               1.019231,
               0.35062,
               0.719231,
               0.379933,
               0.48003,
               0.540023,
               0.734615,
               0.671928,
               0.857692,
               0.807215,
               0.834615,
               1,
               0.5
            ]
            maxPositionOffsetScale   =   1
            minOffset   =   [
               -0.002,
               0,
               -0.002
            ]
            maxOffset   =   [
               0.002,
               0,
               0.002
            ]
            positionMultiplier   =   [
               0,
               1,
               1,
               0.5
            ]
            shakeOnStartTimeMs   =   0
            dampingStep   =   15
            frequencyMultiplier   =   [
               0,
               0.8,
               0.1,
               0.653846,
               0.246876,
               0.11453,
               0.369788,
               0.79286,
               0.48138,
               0.071689,
               0.641489,
               0.607212,
               0.767636,
               0.907105,
               0.997288,
               1
            ]
         }
         EngineShutdown   =   {
            shakerBone   =   "BoneRear_cdt"
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
               0,
               1,
               1,
               0
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
               "lights_reflector_headlight",
               "lights_reflector_beacon",
               "lights_reflector_marker",
               "lights_reflector_marker_roller"
            ]
            __type   =   "Headlights"
         }
         "1"   =   {
            geomNames   =   [
               "lights_reflector_brake"
            ]
            __type   =   "BrakeHeadlights"
         }
         "2"   =   {
            geomNames   =   [
               "lights_reflector_reverse"
            ]
            __type   =   "ReverseHeadlights"
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
            name   =   "mirror_left_case"
            angleRotateX   =   -4.7
            angleRotateY   =   -3.2
         },
         {
            name   =   "mirror_right_case"
            angleRotateX   =   -5.2
            angleRotateY   =   4.8
         }
      ]
   }
}
__type   =   "truck_view"
