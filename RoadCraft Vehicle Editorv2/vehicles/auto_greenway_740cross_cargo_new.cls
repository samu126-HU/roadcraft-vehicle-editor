properties   =   {
   geom   =   {
      nameTpl   =   "greenway_740cross_sideboard_new"
   }
   prop_truck_view_controller   =   {
      engineFiringDelay   =   1000
   }
   prop_truck_view   =   {
      truckName   =   "greenway_740cross_cargo_new"
      truckType   =   "truck_heavy"
      truckVisibilityInFogOfWar   =   60
   }
   prop_truck_rb   =   {
      suspensionSet   =   {
         front   =   {
            max   =   0
            strength   =   1
            damping   =   0.5
         }
         rearDiffers   =   True
         rear   =   {
            max   =   0
            strength   =   1
            damping   =   0.5
         }
      }
      engine   =   {
         params   =   {
            torque   =   300000
            brakesDelay   =   0.5
            maxDeltaAngVel   =   0.01
            responsiveness   =   0.045
            rpmDropTime   =   3
            __type   =   "TruckEngineParams"
         }
         __type   =   "TruckEngine"
      }
      gearbox   =   {
         params   =   {
            gears   =   [
               {
                  angularVelocity   =   0.3
                  gearRatio   =   6.5
                  targetSpeedRangeKmh   =   {
                     y   =   5
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   2
                  gearRatio   =   0
                  targetSpeedRangeKmh   =   {
                     x   =   5
                     y   =   13
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   4
                  gearRatio   =   0
                  targetSpeedRangeKmh   =   {
                     x   =   13
                     y   =   20
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   5
                  gearRatio   =   0
                  targetSpeedRangeKmh   =   {
                     x   =   20
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
               angularVelocity   =   5
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
            clutchSwitchTime   =   0.1
            defaultGearSwitchDelay   =   0.25
            upperGearSwitchDelayBase   =   0.35
            upperGearSwitchDelayGearNumMultiplier   =   0.45
            downGearSwitchDelay   =   1
            neutralGearSwitchingDelay   =   3
            __type   =   "TruckGearboxParams"
         }
         __type   =   "TruckGearbox"
      }
      maxSteerSpeed   =   0.02
      backSteerSpeed   =   0.04
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
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.8
            enableLateralForce   =   True
            editableWheel   =   "FrontWheel"
         },
         {
            geomName   =   "wheel_front_right"
            parentFrame   =   "BoneBodyFront_cdt"
            isRightSided   =   True
            torqueType   =   "full"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.8
            enableLateralForce   =   True
            editableWheel   =   "FrontWheel"
         },
         {
            geomName   =   "wheel_middle_left"
            parentFrame   =   "BoneBodyRearBogie_L_cdt"
            isRear   =   True
            torqueType   =   "full"
            isConnectedToHandbrake   =   True
            enableLateralForce   =   True
            editableWheel   =   "RearWheel"
         },
         {
            geomName   =   "wheel_middle_right"
            parentFrame   =   "BoneBodyRearBogie_R_cdt"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "full"
            isConnectedToHandbrake   =   True
            enableLateralForce   =   True
            editableWheel   =   "RearWheel"
         },
         {
            geomName   =   "wheel_rear_left"
            parentFrame   =   "BoneBodyRearBogie_L_cdt"
            isRear   =   True
            torqueType   =   "full"
            isConnectedToHandbrake   =   True
            enableLateralForce   =   True
            editableWheel   =   "RearWheel"
         },
         {
            geomName   =   "wheel_rear_right"
            parentFrame   =   "BoneBodyRearBogie_R_cdt"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "full"
            isConnectedToHandbrake   =   True
            enableLateralForce   =   True
            editableWheel   =   "RearWheel"
         }
      ]
      wheelPool   =   {
         FrontWheel   =   {
            __value   =   "auto_wheel_greenway_740cross_cargo_new_frontwheel"
         }
         RearWheel   =   {
            __value   =   "auto_wheel_greenway_740cross_cargo_new_rearwheel"
         }
      }
      controllableSteeringConstraints   =   [
         {
            constraintName   =   "steering"
            angularSpeed   =   30
            minAngle   =   35
            maxAngle   =   -35
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
                     "TruckShaker_Dct2Fk5i/Play",
                     "TruckShaker_Dct2Fk5i1/Stop",
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
                     "TruckShaker_Dct2Fk5i1/Play",
                     "TruckShaker_Dct2Fk5i/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               OnEngineAcceleration   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5300
                  }
                  OnAcceleration   =   [
                     "PlaySound_9_2/Play"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5450
                  }
                  OnEngineReverse   =   [
                     "PlaySound_9_2/Play"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               OnBrakePull   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5600
                  }
                  OnBrakePulled   =   [
                     "PlaySound_9_2_1/Play"
                  ]
                  __type   =   "BlueprintNodeOnBrakePull"
               }
               OnBrakeRelease   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5750
                  }
                  OnBrakeReleased   =   [
                     "PlaySound_9_2_2/Play"
                  ]
                  __type   =   "BlueprintNodeOnBrakeRelease"
               }
               OnHandbrakeStateChanged   =   {
                  viewData   =   {
                     x   =   3335.334
                     y   =   5900
                  }
                  OnHandbrakeOn   =   [
                     "PlaySound_9_2_3/Play"
                  ]
                  OnHandbrakeOff   =   [
                     "PlaySound_9_2_4/Play"
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
               SetSoundSwitch   =   {
                  viewData   =   {
                     x   =   3600
                     y   =   4700
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
               PlaySound_9   =   {
                  viewData   =   {
                     x   =   3950
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
                        name   =   "vhc_greenway_740cross_engine_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_9_1   =   {
                  viewData   =   {
                     x   =   4650
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_greenway_740cross_engine"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_9_2   =   {
                  viewData   =   {
                     x   =   3950
                     y   =   5300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_greenway_740cross_acc"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_9_2_1   =   {
                  viewData   =   {
                     x   =   3950
                     y   =   5550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_greenway_740cross_brake_pull"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_9_2_2   =   {
                  viewData   =   {
                     x   =   3950
                     y   =   5750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_greenway_740cross_brake_release"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_9_2_3   =   {
                  viewData   =   {
                     x   =   3950
                     y   =   5950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_greenway_740cross_handbrake_on"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_9_2_4   =   {
                  viewData   =   {
                     x   =   3950
                     y   =   6350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_greenway_740cross_handbrake_off"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_9_3   =   {
                  viewData   =   {
                     x   =   3950
                     y   =   4700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_greenway_740cross_engine_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               GetTruckRpm_1   =   {
                  viewData   =   {
                     x   =   5450
                     y   =   4800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  Get   =   [
                     "FloatSubtract/aFloat/cb",
                     "FloatSwitch/trueValue/cb",
                     "SetSoundParameter_1_1_2/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetTruckRpm"
               }
               OnInit_1_1   =   {
                  viewData   =   {
                     x   =   5450
                     y   =   4700
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
                     x   =   5647.742
                     y   =   4700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_1_1_2/SetParameter",
                     "SetSoundParameter_1_1_1/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               TruckVelocity_1_1   =   {
                  viewData   =   {
                     x   =   5450
                     y   =   5050
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
               SetSoundParameter_1_1_2   =   {
                  viewData   =   {
                     x   =   7300
                     y   =   4700
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
                     x   =   7300
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
               FloatCommutator   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   4900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  firstValue   =   {
                     def   =   100
                     __type   =   "FloatRefParam"
                  }
                  GetValue   =   [
                     "FloatSubtract/bFloat/cb"
                  ]
                  __type   =   "BlueprintNodeFloatCommutator"
               }
               FloatSubtract   =   {
                  viewData   =   {
                     x   =   6100
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  Float   =   [
                     "FloatCompare_1/aFloat/cb",
                     "FloatSwitch/falseValue/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatsubstract"
               }
               FloatSwitch   =   {
                  viewData   =   {
                     x   =   6550
                     y   =   4800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  trueValue   =   {
                     __type   =   "FloatRefParam"
                  }
                  falseValue   =   {
                     __type   =   "FloatRefParam"
                  }
                  condition   =   {
                     __type   =   "BoolRefParam"
                  }
                  GetValue   =   [
                     "FloatSubtract_1/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeBoolToFloatCommutator"
               }
               FloatCompare_1   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   4900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  bFloat   =   {
                     def   =   850
                     __type   =   "FloatRefParam"
                  }
                  BBigger   =   [
                     "FloatSwitch/condition/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatcompare"
               }
               SuspensionOscillations_1   =   {
                  viewData   =   {
                     x   =   5450
                     y   =   4900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  zeroBorder   =   0.04
                  diffMultiplier   =   400
                  OnOscillationsStarted   =   [
                     "FloatCommutator/PassFirstValue"
                  ]
                  OnOscillationsStopped   =   [
                     "FloatCommutator/PassSecondValue"
                  ]
                  __type   =   "BlueprintNodeSuspensionOscillations"
               }
               FloatSubtract_1   =   {
                  viewData   =   {
                     x   =   7150
                     y   =   4800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  __type   =   "BlueprintMathLibraryFloatsubstract"
               }
               GetTruckAngularVelocity   =   {
                  viewData   =   {
                     x   =   6550
                     y   =   4900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetAngularVelocity   =   [
                     "FloatAbs/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeTruckAngularVelocity"
               }
               FloatMultiplication   =   {
                  viewData   =   {
                     x   =   6950
                     y   =   4900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  bFloat   =   {
                     def   =   6
                     __type   =   "FloatRefParam"
                  }
                  Float   =   [
                     "FloatSubtract_1/bFloat/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatmultiplication"
               }
               FloatAbs   =   {
                  viewData   =   {
                     x   =   6800
                     y   =   4900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  aFloat   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetFloat   =   [
                     "FloatMultiplication/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeFloatAbs"
               }
               OnEngineAcceleration_DcccSv7u   =   {
                  viewData   =   {
                     x   =   5450
                     y   =   5450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAcceleration   =   [
                     "SetSoundParameter_1_1_1_DcccSv7u1/SetParameter",
                     "Schedule_DcccSv7u4/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               SetSoundParameter_1_1_1_DcccSv7u1   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   5450
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
               SetSoundParameter_1_1_1_1_DcccSv7u2   =   {
                  viewData   =   {
                     x   =   5900
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
                  skipIfNotChangedRef   =   {
                     def   =   False
                     __type   =   "BoolRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               OnEngineInertia_DcccSv7u3   =   {
                  viewData   =   {
                     x   =   5450
                     y   =   5850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnInertia   =   [
                     "SetSoundParameter_1_1_1_1_DcccSv7u2/SetParameter",
                     "Schedule_DcccSv7u4/Start"
                  ]
                  __type   =   "BlueprintNodeOnEngineInertia"
               }
               Schedule_DcccSv7u4   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   5650
                  }
                  OnPeriod   =   [
                     "PlaySound_1_DcccSv7u5/Play"
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
               PlaySound_1_DcccSv7u5   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   5650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_greenway_740cross_brake_release"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               TruckShaker_Dct2Fk5i   =   {
                  viewData   =   {
                     x   =   3600
                     y   =   4900
                  }
                  duration   =   3.2
                  shakerName   =   "EngineStart"
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_Dct2Fk5i1   =   {
                  viewData   =   {
                     x   =   3600
                     y   =   5050
                  }
                  duration   =   2
                  shakerName   =   "EngineShutdown"
                  maxRPM   =   True
                  __type   =   "BlueprintNodeTruckShaker"
               }
               OnEngineShutdown_E1fk6Q2Y   =   {
                  viewData   =   {
                     x   =   5450
                     y   =   5650
                  }
                  OnEngineShutdown   =   [
                     "Schedule_DcccSv7u4/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               CloneSoundEmitter_E9kcr81j   =   {
                  viewData   =   {
                     x   =   4050
                     y   =   6150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_9_2_3/emitterRef/cb",
                     "PlaySound_9_2_4/emitterRef/cb"
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
               OnGearUpdate_F397ECbq   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   6450
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
                     "SetSoundParameter_1_F397ECbq1/SetParameter"
                  ]
                  GetLastGear   =   [
                     "SetSoundParameter_1_F397ECbq1/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               SetSoundParameter_1_F397ECbq1   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   6650
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
               OnEngineRunningOnInit_F72c2jcf   =   {
                  viewData   =   {
                     x   =   3100
                     y   =   5000
                  }
                  OnEngineRunning   =   [
                     "TruckShaker_Dct2Fk5i/Stop",
                     "TruckShaker_Dct2Fk5i1/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineRunningOnInit"
               }
            }
            groups   =   {
               "[SOUND] rpm and speed"   =   {
                  x   =   5400
                  y   =   4500
                  width   =   2500
                  height   =   700
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] acceleration input"   =   {
                  x   =   5400
                  y   =   5300
                  width   =   1500
                  height   =   750
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] gear update"   =   {
                  x   =   5400
                  y   =   6200
                  width   =   1697.754
                  height   =   748
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
                  zeroBorderEnergy   =   34000
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
                     def   =   1.47
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
                  zeroBorder   =   0.001
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
               OnTPLAnimationBegin_E5fh153k   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1650
                  }
                  OnAnimStart   =   [
                     "PlaySound_E5fh153k2/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnBegin"
               }
               OnTPLAnimationEnd_E5fh153k1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1850
                  }
                  OnAnimStop   =   [
                     "PlaySound_E5fh153k3/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnEnd"
               }
               PlaySound_E5fh153k2   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1650
                  }
                  OnSoundStart   =   [
                     "PlaySound_EaefSvai/Play"
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
               PlaySound_E5fh153k3   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1850
                  }
                  OnSoundStart   =   [
                     "PlaySound_EaefSvai1/Play"
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
               BogieSuspensionOscillations_Ea9d3Vbv   =   {
                  viewData   =   {
                     x   =   4950
                     y   =   3000
                  }
                  bogieConstraints   =   [
                     "BoneBodyRearBogie_L_constraint",
                     "BoneBodyRearBogie_R_constraint"
                  ]
                  zeroBorder   =   0.05
                  OnOscillationsStarted   =   [
                     "SetSoundParameter_E6bfi66T/SetParameter",
                     "SetSoundSwitch_1/SetSwitchState"
                  ]
                  GetDifference   =   [
                     "SetSoundParameter_E6bfi66T/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeBogieSuspensionOscillations"
               }
               CloneSoundEmitter_EaefPy4Q   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   1650
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_EaefSAd0/emitterRef/cb",
                     "PlaySound_EaefSAd01/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneWiper_front_2"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_EaefPy4Q1   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   1850
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_EaefSvai1/emitterRef/cb",
                     "PlaySound_EaefSvai/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneWiper_left_2"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_EaefSa0C   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   2050
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E5fh153k3/emitterRef/cb",
                     "PlaySound_E5fh153k2/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneWiper_right_2"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_EaefSvai   =   {
                  viewData   =   {
                     x   =   6000
                     y   =   1650
                  }
                  OnSoundStart   =   [
                     "PlaySound_EaefSAd0/Play"
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
               PlaySound_EaefSvai1   =   {
                  viewData   =   {
                     x   =   6000
                     y   =   1850
                  }
                  OnSoundStart   =   [
                     "PlaySound_EaefSAd01/Play"
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
               PlaySound_EaefSAd0   =   {
                  viewData   =   {
                     x   =   6650
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
               PlaySound_EaefSAd01   =   {
                  viewData   =   {
                     x   =   6650
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
                  x   =   4924.679
                  y   =   2949.938
                  width   =   1723.313
                  height   =   394
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
               OnControllableConstraintStateChange_Ea3jSE17   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3550
                  }
                  OnStart   =   [
                     "PlaySound_Ea3jSE171/Play"
                  ]
                  name   =   "GraderBlade"
                  isIncrease   =   True
                  __type   =   "BlueprintNodeOnControllableStateChange"
               }
               PlaySound_Ea3jSE171   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   3700
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
               CloneSoundEmitter_Ea3jSE172   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea3jSE171/emitterRef/cb"
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
               GetInfoElementCockpitForSoundWithEvent_Ea3kaC36   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4050
                  }
                  OnStart   =   [
                     "PlaySound_Ea3kaC366/Play"
                  ]
                  nameBoneBro   =   "ctrl_button_gear_low"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               GetInfoElementCockpitForSoundWithEvent_Ea3kaC361   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4350
                  }
                  OnStart   =   [
                     "PlaySound_Ea3kaC367/Play"
                  ]
                  nameBoneBro   =   "ctrl_button_forward"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               GetInfoElementCockpitForSoundWithEvent_Ea3kaC362   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4650
                  }
                  OnStart   =   [
                     "PlaySound_Ea3kaC368/Play"
                  ]
                  nameBoneBro   =   "ctrl_button_reverse"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               CloneSoundEmitter_Ea3kaC363   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea3kaC366/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_button_gear_low"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_Ea3kaC364   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea3kaC367/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_button_forward"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_Ea3kaC365   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea3kaC368/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_button_reverse"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_Ea3kaC366   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   4050
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
               PlaySound_Ea3kaC367   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   4350
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
               PlaySound_Ea3kaC368   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   4650
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
               OnControllableConstraintStateChange_Ea3krf3A   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3900
                  }
                  OnStart   =   [
                     "PlaySound_Ea3jSE171/Play"
                  ]
                  name   =   "GraderBlade"
                  isIncrease   =   False
                  __type   =   "BlueprintNodeOnControllableStateChange"
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
                  withTrucks   =   False
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
               OnTruckCollision_E4bhqP1X   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   7000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  zeroBorderEnergy   =   0.001
                  timeInterval   =   500
                  withPhysPlants   =   True
                  withTerrainParticles   =   False
                  withTrucks   =   True
                  withTruckWheels   =   True
                  notCollideBodiesOnlyWithTerrain   =   False
                  exceptionalBodyNames   =   [
                     "BoneBodyRear_cdt",
                     "BoneBodyMiddle_cdt",
                     "BoneBodyFront_cdt",
                     "BoneHitchLeft_cdt",
                     "BoneHitchLeft_cdt",
                     "BoneBodyRearBogie_R_cdt",
                     "BoneBodyRearBogie_L_cdt"
                  ]
                  OnCollision   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_E4bhqP1X3/Input"
                  ]
                  GetEnergy   =   [
                     "FloatAbs_E4bhqP1X1/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeOnTruckCollision"
               }
               FloatAbs_E4bhqP1X1   =   {
                  viewData   =   {
                     x   =   4850
                     y   =   7100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  aFloat   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetFloat   =   [
                     "FloatDivision_E4bhqP1X2/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeFloatAbs"
               }
               FloatDivision_E4bhqP1X2   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   7100
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
                     "ActivateForceFeedbackIfTruckIsCurrent_1_E4bhqP1X3/strengthRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatdivision"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_E4bhqP1X3   =   {
                  viewData   =   {
                     x   =   5300
                     y   =   7000
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
               OnInit_E89grJ8J   =   {
                  viewData   =   {
                     x   =   4750
                     y   =   7300
                  }
                  OnExit   =   [
                     "SetGravityFactorForPhysObject_E89grS11/Input"
                  ]
                  __type   =   "BlueprintCommonLibraryOninit"
               }
               SetGravityFactorForPhysObject_E89grS11   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   7300
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
               OnEngineStarted_E6a8iRcq   =   {
                  viewData   =   {
                     x   =   1850
                     y   =   5350
                  }
                  OnEngineStarted   =   [
                     "VFXRestart_E6a8iRcq5/Input",
                     "VFXRestart_E6a8iRcq7/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown_E6a8iRcq1   =   {
                  viewData   =   {
                     x   =   1850
                     y   =   5500
                  }
                  OnEngineShutdown   =   [
                     "VFXStop_E6a8iRcq6/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               OnEngineAcceleration_E6a8iRcq2   =   {
                  viewData   =   {
                     x   =   1850
                     y   =   5750
                  }
                  OnAcceleration   =   [
                     "VFXRestart_E6a8iRcq4/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9ofGkb1/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse_E6a8iRcq3   =   {
                  viewData   =   {
                     x   =   1850
                     y   =   5950
                  }
                  OnEngineReverse   =   [
                     "VFXRestart_E6a8iRcq4/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9ofGkb1/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               VFXRestart_E6a8iRcq4   =   {
                  viewData   =   {
                     x   =   2250
                     y   =   5800
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_faint_smoke_up_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_E6a8iRcq5   =   {
                  viewData   =   {
                     x   =   2250
                     y   =   5450
                  }
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E6a8iRcq6   =   {
                  viewData   =   {
                     x   =   2250
                     y   =   5550
                  }
                  OnExit   =   [
                     "VFXStop_E9ofHm8P/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_E6a8iRcq7   =   {
                  viewData   =   {
                     x   =   2250
                     y   =   5350
                  }
                  OnExit   =   [
                     "VFXRestart_E9ofHi6n/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_exhaust_faint_smoke_up_gas_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               OnEngineStarting_E6a8iRcq9   =   {
                  viewData   =   {
                     x   =   1850
                     y   =   6150
                  }
                  OnEngineStarting   =   [
                     "VFXRestart_E9ofG05J/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarting"
               }
               VFXRestart_E9ofG05J   =   {
                  viewData   =   {
                     x   =   2250
                     y   =   6150
                  }
                  vfxUidRef   =   {
                     def   =   ""
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9ofGkb1   =   {
                  viewData   =   {
                     x   =   2250
                     y   =   5900
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_faint_smoke_up_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_E9ofHi6n   =   {
                  viewData   =   {
                     x   =   2800
                     y   =   5350
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_neutral_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9ofHm8P   =   {
                  viewData   =   {
                     x   =   2800
                     y   =   5550
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
         Cargo   =   {
            nodes   =   {
               OnCargoAttachmentChanged_E3pe0T6f   =   {
                  viewData   =   {
                     x   =   7050
                     y   =   7050
                  }
                  OnAttached   =   [
                     "PlaySound_9_E3pe0T6f1/Play"
                  ]
                  OnDetached   =   [
                     "PlaySound_9_E3pe0T6f2/Play"
                  ]
                  __type   =   "BlueprintNodeOnCargoAttachmentChanged"
               }
               PlaySound_9_E3pe0T6f1   =   {
                  viewData   =   {
                     x   =   7850
                     y   =   7050
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
               PlaySound_9_E3pe0T6f2   =   {
                  viewData   =   {
                     x   =   7850
                     y   =   7250
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
               CloneSoundEmitter_E3pe0T6f3   =   {
                  viewData   =   {
                     x   =   7050
                     y   =   7250
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_9_E3pe0T6f1/emitterRef/cb",
                     "PlaySound_9_E3pe0T6f2/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneBodyRear_4"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
            }
            groups   =   {
               "[SOUND] cargo"   =   {
                  x   =   7000
                  y   =   6900
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
               Schedule_E4lhozdw   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   6500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_E4lhozdw4/SetParameter",
                     "SetSoundParameter_E4lhozdw5/SetParameter",
                     "SetSoundParameter_E4lhozdwb/SetParameter",
                     "SetSoundParameter_E4lhozdwc/SetParameter"
                  ]
                  period   =   {
                     def   =   0
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               GetBucketChangingTerrain_E4lhozdw1   =   {
                  viewData   =   {
                     x   =   5250
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
                     "FloatMultiplication_E4qe48ax/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeBucketChangingTerrain"
               }
               SetSoundParameter_E4lhozdw2   =   {
                  viewData   =   {
                     x   =   6950
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
               GetBucketChangingTerrain_E4lhozdw3   =   {
                  viewData   =   {
                     x   =   5250
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
                     "FloatMultiplication_E4lkRLdB/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeBucketChangingTerrain"
               }
               SetSoundParameter_E4lhozdw4   =   {
                  viewData   =   {
                     x   =   6300
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
               SetSoundParameter_E4lhozdw5   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   5800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "SetSoundParameter_E4lhozdwa/SetParameter"
                  ]
                  nameRef   =   {
                     def   =   "rtpc_grader_amount_stone"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               PlaySound_1_E4lhozdw7   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   8250
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
               PlaySound_1_E4lhozdw8   =   {
                  viewData   =   {
                     x   =   6300
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
               SetSoundParameter_E4lhozdw9   =   {
                  viewData   =   {
                     x   =   6950
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
               SetSoundParameter_E4lhozdwa   =   {
                  viewData   =   {
                     x   =   6950
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
               SetSoundParameter_E4lhozdwb   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   5550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "SetSoundParameter_E4lhozdw9/SetParameter"
                  ]
                  nameRef   =   {
                     def   =   "rtpc_grader_amount_asphalt"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               SetSoundParameter_E4lhozdwc   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   5350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "SetSoundParameter_E4lhozdw2/SetParameter"
                  ]
                  nameRef   =   {
                     def   =   "rtpc_grader_amount_ground"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               PlaySound_1_E4lhozdwd   =   {
                  viewData   =   {
                     x   =   7050
                     y   =   7500
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
               PlaySound_1_E4lhozdwe   =   {
                  viewData   =   {
                     x   =   7050
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
               PlaySound_1_E4lhozdwf   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   7500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1_E4lhozdwd/Play"
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
               PlaySound_1_E4lhozdwg   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   6600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1_E4lhozdwe/Play"
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
               PlaySound_1_E4lhozdwh   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   7750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1_E4lhozdwl/Play"
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
               PlaySound_1_E4lhozdwi   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   6800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1_E4lhozdwm/Play"
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
               PlaySound_1_E4lhozdwj   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   8000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1_E4lhozdwn/Play"
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
               PlaySound_1_E4lhozdwk   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   7000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1_E4lhozdwo/Play"
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
               PlaySound_1_E4lhozdwl   =   {
                  viewData   =   {
                     x   =   7050
                     y   =   7750
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
               PlaySound_1_E4lhozdwm   =   {
                  viewData   =   {
                     x   =   7050
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
               PlaySound_1_E4lhozdwn   =   {
                  viewData   =   {
                     x   =   7050
                     y   =   8000
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
               PlaySound_1_E4lhozdwo   =   {
                  viewData   =   {
                     x   =   7050
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
               CloneSoundEmitter_E4lhozdwp   =   {
                  viewData   =   {
                     x   =   5250
                     y   =   6700
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_1_E4lhozdwf/emitterRef/cb",
                     "PlaySound_1_E4lhozdwd/emitterRef/cb",
                     "PlaySound_1_E4lhozdwh/emitterRef/cb",
                     "PlaySound_1_E4lhozdwj/emitterRef/cb",
                     "PlaySound_1_E4lhozdwl/emitterRef/cb",
                     "PlaySound_1_E4lhozdwn/emitterRef/cb",
                     "PlaySound_1_E4lhozdwg/emitterRef/cb",
                     "PlaySound_1_E4lhozdwe/emitterRef/cb",
                     "PlaySound_1_E4lhozdwi/emitterRef/cb",
                     "PlaySound_1_E4lhozdwk/emitterRef/cb",
                     "PlaySound_1_E4lhozdwm/emitterRef/cb",
                     "PlaySound_1_E4lhozdwo/emitterRef/cb",
                     "SetSoundParameter_E4lhozdwc/emitterRef/cb",
                     "SetSoundParameter_E4lhozdw2/emitterRef/cb",
                     "SetSoundParameter_E4lhozdwb/emitterRef/cb",
                     "SetSoundParameter_E4lhozdw5/emitterRef/cb",
                     "SetSoundParameter_E4lhozdw9/emitterRef/cb",
                     "SetSoundParameter_E4lhozdwa/emitterRef/cb",
                     "PlaySound_1_E4lhozdw7/emitterRef/cb",
                     "PlaySound_1_E4lhozdw8/emitterRef/cb",
                     "SetSoundParameter_E4lhozdw4/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneGraderBlade_2"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               OnBucketChangingTerrain_E4lhozdwq   =   {
                  viewData   =   {
                     x   =   5250
                     y   =   7400
                  }
                  OnStart   =   [
                     "PlaySound_1_E4lhozdw8/Play",
                     "PlaySound_1_E4lhozdwg/Play",
                     "PlaySound_1_E4lhozdwi/Play",
                     "PlaySound_1_E4lhozdwk/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_1_E4lhozdw7/Play",
                     "PlaySound_1_E4lhozdwf/Play",
                     "PlaySound_1_E4lhozdwh/Play",
                     "PlaySound_1_E4lhozdwj/Play"
                  ]
                  threshold   =   0.1
                  __type   =   "BlueprintNodeOnBucketStartChangingTerrain"
               }
               GetBucketChangingTerrain_E4lhozdwr   =   {
                  viewData   =   {
                     x   =   5250
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
                     "SetSoundParameter_E4lhozdwb/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeBucketChangingTerrain"
               }
               GetBucketChangingTerrain_E4lhozdws   =   {
                  viewData   =   {
                     x   =   5250
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
                     "FloatMultiplication_E4lkMrax/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeBucketChangingTerrain"
               }
               GetBucketChangingTerrain_E4lhozdwt   =   {
                  viewData   =   {
                     x   =   5250
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
                     "SetSoundParameter_E4lhozdw2/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeBucketChangingTerrain"
               }
               GetBucketChangingTerrain_E4lhozdwu   =   {
                  viewData   =   {
                     x   =   5250
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
                     "SetSoundParameter_E4lhozdw5/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeBucketChangingTerrain"
               }
               GetBucketChangingTerrain_E4lhozdwv   =   {
                  viewData   =   {
                     x   =   5250
                     y   =   6100
                  }
                  summedMaterials   =   [
                     {
                        materialType   =   "concrete"
                     }
                  ]
                  GetVolumeOrRatio   =   [
                     "SetSoundParameter_E4lhozdwa/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeBucketChangingTerrain"
               }
               FloatMultiplication_E4lkMrax   =   {
                  viewData   =   {
                     x   =   5750
                     y   =   5300
                  }
                  bFloat   =   {
                     def   =   5
                     __type   =   "FloatRefParam"
                  }
                  Float   =   [
                     "SetSoundParameter_E4lhozdwc/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatmultiplication"
               }
               FloatMultiplication_E4lkRLdB   =   {
                  viewData   =   {
                     x   =   5750
                     y   =   6250
                  }
                  bFloat   =   {
                     def   =   5
                     __type   =   "FloatRefParam"
                  }
                  Float   =   [
                     "SetSoundParameter_E4lhozdw4/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatmultiplication"
               }
               FloatMultiplication_E4qe48ax   =   {
                  viewData   =   {
                     x   =   5750
                     y   =   5800
                  }
                  bFloat   =   {
                     def   =   5
                     __type   =   "FloatRefParam"
                  }
                  Float   =   [
                     "SetSoundParameter_E4lhozdw9/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatmultiplication"
               }
               OnTruckOccupied_F63clK2G   =   {
                  viewData   =   {
                     x   =   5450
                     y   =   6500
                  }
                  OnEnterTruck   =   [
                     "Schedule_E4lhozdw/Start"
                  ]
                  OnLeaveTruck   =   [
                     "Schedule_E4lhozdw/Stop"
                  ]
                  __type   =   "BlueprintNodeOnTruckOccupied"
               }
            }
            groups   =   {
               "[SOUND] digging ground"   =   {
                  x   =   5000
                  y   =   5000
                  width   =   2800
                  height   =   4326.9
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         Addon   =   {
            nodes   =   {
               OnControllableConstraintStateChange_E4lkog6A1   =   {
                  viewData   =   {
                     x   =   10150
                     y   =   5150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_3_5_E4lkog6A3/Play",
                     "PlaySound_3_5_E4lkog6A4/Stop",
                     "PlaySound_3_5_E4lkog6A5/Stop"
                  ]
                  OnStop   =   [
                     "PlaySound_3_5_E4lkog6A3/Stop",
                     "PlaySound_3_5_E4lkog6A4/Play"
                  ]
                  name   =   "GraderBlade"
                  __type   =   "BlueprintNodeOnControllableStateChange"
               }
               OnControllableConstraintStateChange_E4lkog6A2   =   {
                  viewData   =   {
                     x   =   10150
                     y   =   5600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_3_5_E4lkog6A5/Play",
                     "PlaySound_3_5_1_E4lkog6A6/Stop",
                     "PlaySound_3_5_E4lkog6A3/Stop"
                  ]
                  OnStop   =   [
                     "PlaySound_3_5_E4lkog6A5/Stop",
                     "PlaySound_3_5_1_E4lkog6A6/Play"
                  ]
                  name   =   "GraderBlade"
                  isIncrease   =   True
                  __type   =   "BlueprintNodeOnControllableStateChange"
               }
               PlaySound_3_5_E4lkog6A3   =   {
                  viewData   =   {
                     x   =   11250
                     y   =   5050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_3_5_E4qh0rds/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_bucket_move_down_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_5_E4lkog6A4   =   {
                  viewData   =   {
                     x   =   11250
                     y   =   5250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_3_5_E4qh0rds/Stop"
                  ]
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
               PlaySound_3_5_E4lkog6A5   =   {
                  viewData   =   {
                     x   =   11250
                     y   =   5500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_3_5_E4qh0Pas/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_bucket_move_up_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_5_1_E4lkog6A6   =   {
                  viewData   =   {
                     x   =   11250
                     y   =   5700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_3_5_E4qh0Pas/Stop"
                  ]
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
               CloneSoundEmitter_E4lkoT4n   =   {
                  viewData   =   {
                     x   =   10150
                     y   =   5350
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_3_5_E4lkog6A3/emitterRef/cb",
                     "PlaySound_3_5_E4lkog6A4/emitterRef/cb",
                     "PlaySound_3_5_E4lkog6A5/emitterRef/cb",
                     "PlaySound_3_5_1_E4lkog6A6/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneBodyFront_5"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_3_5_E4qh0rds   =   {
                  viewData   =   {
                     x   =   11900
                     y   =   5050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_bucket_pneumo"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_5_E4qh0Pas   =   {
                  viewData   =   {
                     x   =   11900
                     y   =   5500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_bucket_pneumo"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
            }
            groups   =   {
               "[SOUND] addon - grader"   =   {
                  x   =   10000
                  y   =   4900
                  width   =   2550
                  height   =   1100
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
            __type   =   "AutoGreenway740crossCargoNewReplicated"
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
      maxFuelTankVolume   =   178
      startFuelTankVolume   =   178
      fuelConsumption   =   0.09
      reverseFuelConsumptionCoeff   =   1.2
      lowRangeFuelConsumptionCoeff   =   1.4
   }
   prop_truck_constraint_view   =   {
      controllableConstraints   =   [
         {
            constraintName   =   "GraderBlade"
            angularSpeed   =   10
            minAngle   =   -30
            maxAngle   =   8
            inertiaInput   =   {
               inertiaRelaxationTime   =   0.25
               __type   =   "ConstraintInertiaInput"
            }
         }
      ]
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
         y   =   2
         z   =   4
         __type   =   "Vector3d"
      }
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
                  z   =   -0.25
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
      tag   =   "UID_MODULE_TRUCK_SIDEBOARD"
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
         part_exhaust_horizontal_01   =   {
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
               1,
               0,
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
         x   =   0.015
         y   =   1.18
         z   =   1.55
         __type   =   "Vector3d"
      }
   }
   prop_pre_soft_keyframe_updater   =   {
      syncBodyNames   =   [
         "BoneBodyFront_cdt",
         "BoneGraderBlade_cdt"
      ]
   }
   prop_winchable   =   {
      winchSocketPoints   =   [
         {
            bodyName   =   "BoneBodyFront_cdt"
            offsetInBodySpace   =   {
               x   =   -0.322
               y   =   1.188
               z   =   4.214
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyFront_cdt"
            offsetInBodySpace   =   {
               x   =   0.322
               y   =   1.188
               z   =   4.214
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyRear_cdt"
            offsetInBodySpace   =   {
               x   =   1.504
               y   =   1.557
               z   =   0.034
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyRear_cdt"
            offsetInBodySpace   =   {
               x   =   -1.504
               y   =   1.557
               z   =   0.034
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyFront_cdt"
            offsetInBodySpace   =   {
               x   =   -0.322
               y   =   0.338
               z   =   4.43
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyFront_cdt"
            offsetInBodySpace   =   {
               x   =   0.322
               y   =   0.338
               z   =   4.43
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyRear_cdt"
            offsetInBodySpace   =   {
               x   =   -0.364
               y   =   -0.148
               z   =   2.635
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyRear_cdt"
            offsetInBodySpace   =   {
               x   =   0.364
               y   =   -0.148
               z   =   2.635
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBodyRear_cdt"
            offsetInBodySpace   =   {
               x   =   0
               y   =   -0.076
               z   =   -2.727
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
            y   =   0.5
            z   =   -0.25
            __type   =   "Vector3d"
         }
         attachmentBone   =   "_third_person_camera"
         minSpeedToFollow   =   1.5
         firstLaunchCameraAngles   =   {
            x   =   20
            __type   =   "Vector2d"
         }
         followChangeDirectionSpeedThreshold   =   1.5
         scrollPoints   =   {
            "0"   =   {
               distance   =   14.25
               followTerrainOffset   =   3.6
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "1"   =   {
               distance   =   17.25
               followTerrainOffset   =   4.2
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "2"   =   {
               distance   =   20.25
               followTerrainOffset   =   4.8
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "3"   =   {
               distance   =   23.25
               followTerrainOffset   =   5.4
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "4"   =   {
               distance   =   26.25
               followTerrainOffset   =   6
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "5"   =   {
               distance   =   29.25
               followTerrainOffset   =   6.3
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
            x   =   -0.063
            z   =   0.1
            __type   =   "Vector3d"
         }
         rotationLimitsX   =   {
            x   =   -40
            y   =   40
            __type   =   "Vector2dRnd"
         }
         rotationLimitsY   =   {
            x   =   -180
            y   =   170
            __type   =   "Vector2dRnd"
         }
         forwardAngleOffset   =   {
            x   =   5
            __type   =   "Vector2d"
         }
         leftSideRearView   =   {
            isEnabled   =   True
            transitionStart   =   90
            transitionEnd   =   170
            baseRotation   =   {
               __type   =   "Vector2dRnd"
            }
            eyeOffset   =   {
               x   =   1
               __type   =   "Vector3d"
            }
            rollAngle   =   -10
            rotationLimitsX   =   {
               x   =   -30
               y   =   40
               __type   =   "Vector2dRnd"
            }
            __type   =   "RbCockpitCameraRearViewParams"
         }
         rightSideRearView   =   {
            isEnabled   =   True
            transitionStart   =   90
            baseRotation   =   {
               __type   =   "Vector2dRnd"
            }
            eyeOffset   =   {
               x   =   -1
               __type   =   "Vector3d"
            }
            rollAngle   =   10
            rotationLimitsX   =   {
               x   =   -30
               y   =   40
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
               x   =   0.546
               y   =   -0.754
               z   =   0.877
               __type   =   "Vector3d"
            }
            Vector3d   =   {
               x   =   -0.546
               y   =   -0.754
               z   =   0.877
            }
            Vector3d_1   =   {
               x   =   0.7
               y   =   -0.754
               z   =   -0.425
               __type   =   "Vector3d"
            }
            Vector3d_2   =   {
               x   =   -0.7
               y   =   -0.754
               z   =   -0.425
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
               "BoneBodyRear_cdt",
               "Bone_IK_Rear_L_PistonBase",
               "Bone_IK_Rear_L_Piston"
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
                     0,
                     0,
                     1
                  ]
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneBodyMiddle_cdt"
                  bodyIKName   =   "Bone_IK_Rear_L_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneBodyRear_cdt",
               "Bone_IK_Rear_R_PistonBase",
               "Bone_IK_Rear_R_Piston"
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
                     0,
                     0,
                     1
                  ]
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneBodyMiddle_cdt"
                  bodyIKName   =   "Bone_IK_Rear_R_Piston"
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
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
                  min   =   -1
                  max   =   1
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
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
                  min   =   -1
                  max   =   1
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
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneGraderBlade_cdt"
                  bodyIKName   =   "Bone_IK_GraderBlade_Piston"
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
                        0.7222222,
                        0.2550659,
                        1.378662
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
                        1.048164,
                        0.4454846,
                        2.662019
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
                        0.7847048,
                        0.961755,
                        1.540463
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
               name   =   "BoxCapsule3"
               bone   =   "_BoxCapsule3"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.116282,
                        2.069893,
                        0.6879249
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
                        1.544444,
                        2.245922,
                        1.36636
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
                        1.488889,
                        0.764339,
                        0.4561346
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
                        0.499097,
                        0.4249571,
                        0.4590511
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
                        0.0398412,
                        0.8053703,
                        0.102578
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
                        0.0398412,
                        0.8053703,
                        0.102578
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
                        0.0476562,
                        0.0972898,
                        1.104027
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
                        0.0476562,
                        0.0972898,
                        1.104027
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
                        0.0973053,
                        0.2177075,
                        1.399087
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   2
            },
            {
               name   =   "BoxCapsule12"
               bone   =   "_BoxCapsule12"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.0973053,
                        0.2177075,
                        1.399086
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   2
            },
            {
               name   =   "BoxCapsule13"
               bone   =   "_BoxCapsule13"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.408432,
                        0.5781708,
                        0.1071133
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
               name   =   "BoxCapsule14"
               bone   =   "_BoxCapsule14"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.6910405,
                        1.086753,
                        3.542218
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
               name   =   "BoxCapsule15"
               bone   =   "_BoxCapsule15"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.6910405,
                        0.9382859,
                        2.569488
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
                        3.038818,
                        0.1753998,
                        6.734409
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
                        2.920044,
                        0.9886177,
                        0.0767326
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
                        2.043965,
                        0.4441223,
                        0.0767326
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
                        0.0593872,
                        0.6582954,
                        6.762486
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
                        0.0593872,
                        0.6582954,
                        6.762486
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
                        2.920044,
                        0.6587517,
                        0.0494385
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
                        0.5656164,
                        0.7793888,
                        0.0859279
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
                        0.5656164,
                        0.7793888,
                        0.0859279
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
                        0.5656164,
                        0.5438871,
                        0.0683764
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
                        0.5656164,
                        0.5438871,
                        0.0683764
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
                  0.9200001,
                  -1.78
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.12104,
                        1,
                        6.84
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
               name   =   "Shadow_cabin"
               bone   =   "_BoxCapsule2"
               boneOffset   =   [
                  0,
                  0.34,
                  -1.91
               ]
               boneRotation   =   [
                  90,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   1.16
                     radius   =   0.84
                     scaleX   =   0.84
                  }
                  capsule   =   {
                     height   =   1.44
                     radius   =   0.84
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "Shadow_front"
               bone   =   "_BoxCapsule2"
               boneOffset   =   [
                  0,
                  -0.14,
                  -1.27
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   2.4
                     radius   =   0.74
                     scaleX   =   0.8
                  }
                  capsule   =   {
                     height   =   2.4
                     radius   =   1
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_BoneRoot_1"
               bone   =   "BoneRoot"
               boneOffset   =   [
                  0,
                  1.88,
                  -2.77
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   6.01
                     radius   =   0.25
                     scaleX   =   5.98
                  }
                  capsule   =   {
                     height   =   6.01
                     radius   =   0.5
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_BoneRoot_1"
               bone   =   "BoneRoot"
               boneOffset   =   [
                  0,
                  1.16,
                  -2.28
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   5.66
                     radius   =   0.25
                     scaleX   =   1.54
                  }
                  capsule   =   {
                     height   =   6.01
                     radius   =   0.5
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
         "BoneGraderBlade_cdt"
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
                  boneName   =   "BoneBodyFront_cdt"
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
         }
      ]
   }
   prop_cargo_constraint   =   {
      constraintAreaSize   =   {
         x   =   7.5
         y   =   6.8
         z   =   12
         __type   =   "Vector3d"
      }
      internalConstraintAreaSize   =   {
         x   =   2.958
         y   =   5
         z   =   6.518
         __type   =   "Vector3d"
      }
      internalConstraintAreaOffset   =   {
         x   =   -1.479
         y   =   0.837
         z   =   -3.286
         __type   =   "Vector3d"
      }
      truckConstarintAreaSize   =   {
         __type   =   "Vector3d"
      }
      truckConstraintAreaOffset   =   {
         __type   =   "Vector3d"
      }
      beltZPositions   =   [
         2.981,
         2.279,
         1.577,
         0.875,
         0.173,
         -0.529,
         -1.231,
         -1.933,
         -2.635
      ]
      upBorderOffset   =   {
         x   =   1.53
         y   =   1.564
         __type   =   "Vector2d"
      }
      downBorderOffset   =   {
         x   =   1.541
         y   =   0.93
         __type   =   "Vector2d"
      }
      internalBorderOffset   =   {
         x   =   1.46
         y   =   0.895
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
         "BoneGraderBlade_cdt"
      ]
      allowedPenetrationDistance   =   0
   }
   prop_terraforming_permission_checker   =   {
   }
   prop_truck_view_grader_controller   =   {
      centerBodyName   =   "cdt_BoneGraderBlade_2"
      graderModesOrder   =   [
         "MANUAL",
         "MARCHING"
      ]
   }
   prop_grader_constraints_controller   =   {
      firstConstraintData   =   {
         name   =   "GraderBlade"
         minPosition   =   -30
         maxPosition   =   8
         isAngle   =   True
         motorSpeed   =   10
         __type   =   "GraderConstraintData"
      }
      centerBodyName   =   "cdt_BoneGraderBlade_2"
      autoModeLocalOffset   =   {
         y   =   0
         __type   =   "Vector3d"
      }
      sandFlattenTerrainOffset   =   0.3
      sandHeightMissTolerance   =   0.1
      angleToMaintain   =   8
      flattenAngleMissTolerance   =   2
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
            maxRotationAngle   =   90
            dashboardSubtype   =   "RPM"
            damping   =   0.1
            increase   =   -20
            __type   =   "DashboardElementCockpit"
         }
         "1"   =   {
            nameBone   =   "ctrl_dashboard_fuel"
            axis   =   "Y"
            maxRotationAngle   =   95
            dashboardSubtype   =   "FUEL"
            damping   =   0.005
            __type   =   "DashboardElementCockpit"
         }
         "2"   =   {
            nameBone   =   "ctrl_dashboard_engine_temp_coolant"
            axis   =   "Y"
            maxRotationAngle   =   45
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.004
            __type   =   "DashboardElementCockpit"
         }
         "3"   =   {
            nameBone   =   "ctrl_dashboard_engine_temp_oil_hyd"
            axis   =   "Y"
            maxRotationAngle   =   35
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.004
            __type   =   "DashboardElementCockpit"
         }
         "4"   =   {
            nameBone   =   "ctrl_pedal_drive"
            axis   =   "Y"
            maxRotationAngle   =   20
            dashboardSubtype   =   "RPM"
            damping   =   0.1
            increase   =   -20
            __type   =   "DashboardElementCockpit"
         }
         "5"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_1"
            axis   =   "Y"
            maxRotationAngle   =   90
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.002
            __type   =   "DashboardElementCockpit"
         }
         "6"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_2"
            axis   =   "Y"
            maxRotationAngle   =   100
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.002
            __type   =   "DashboardElementCockpit"
         }
         "7"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_oil"
            axis   =   "Y"
            maxRotationAngle   =   65
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.002
            __type   =   "DashboardElementCockpit"
         }
         "8"   =   {
            nameBone   =   "ctrl_dashboard_engine_temp_water"
            axis   =   "Y"
            maxRotationAngle   =   70
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.004
            __type   =   "DashboardElementCockpit"
         }
         "9"   =   {
            nameBone   =   "ctrl_dashboard_engine_temp"
            axis   =   "Y"
            maxRotationAngle   =   100
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.004
            __type   =   "DashboardElementCockpit"
         }
         "10"   =   {
            nameBone   =   "ctrl_dashboard_engine_voltage"
            axis   =   "Y"
            maxRotationAngle   =   100
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.02
            __type   =   "DashboardElementCockpit"
         }
         "11"   =   {
            nameBone   =   "ctrl_button_steering"
            axis   =   "Y"
            minRotationAngle   =   -15
            maxRotationAngle   =   15
            steeringSubtype   =   "WHEEL"
            __type   =   "SteerigElementCockpit"
         }
         "12"   =   {
            nameBone   =   "ctrl_button_gear_low"
            isAngular   =   False
            maxPosition   =   0.002
            switcherSubtype   =   "LOW_GEAR"
            __type   =   "SwitcherElementCockpit"
         }
         "13"   =   {
            nameBone   =   "ctrl_button_forward"
            translateSpeed   =   0.006
            states   =   {
               AUTO   =   {
                  primary   =   {
                     isAngular   =   False
                     position   =   0.002
                     __type   =   "InfoGearState"
                  }
                  __type   =   "GearStateItem"
               }
            }
            __type   =   "GearStickElementCockpit"
         }
         "14"   =   {
            nameBone   =   "ctrl_button_reverse"
            translateSpeed   =   0.006
            states   =   {
               REVERSE   =   {
                  primary   =   {
                     isAngular   =   False
                     position   =   0.002
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
         actionMappingType   =   "GENERIC_ACTION"
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
         mouseSensitivity   =   0.3
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
      steeringThreshold   =   7
      reverseAngleThreshold   =   0
      velocityScale   =   1.15
      stuckVelocityThreshold   =   2
      stuckScaleChange   =   0.5
      steerScaleByAngle   =   {
         spline   =   [
            0.0839733,
            0.2065272,
            0.0839733,
            0.2065272,
            0.0839733,
            0.2065272,
            50.22419,
            0.6182933,
            50.22419,
            0.6182933,
            50.22419,
            0.6182933,
            55.42975,
            0.7852899,
            55.42975,
            0.7852899,
            55.42975,
            0.7852899,
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
               0.012589,
               0.027348,
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
               -0.002222,
               -0.008743,
               0.522752,
               1.020356,
               1,
               0
            ]
            shakeOnStartTimeMs   =   0
            dampingStep   =   15
            frequencyMultiplier   =   [
               0.001051,
               0.001828,
               0.47982,
               0.984934,
               0.997887,
               0.010996
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
         ExhaustShaker   =   {
            shakerBone   =   "BoneExhaust"
            frequency   =   10
            maxAngleOffsetScale   =   1
            minAngle   =   [
               -0.2,
               -0.2,
               -0.2
            ]
            maxAngle   =   [
               0.2,
               0.2,
               0.2
            ]
            angleMultiplier   =   [
               0.000067,
               0.873077,
               1,
               1
            ]
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
            dampingStep   =   20
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
      }
   }
   prop_terrain_impact_handler   =   {
      rigidBodyNames   =   [
         "BoneGraderBlade_cdt"
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
               "reflector_headlights"
            ]
            __type   =   "Headlights"
         }
         "1"   =   {
            defaultName   =   "default"
            geomNames   =   [
               "stop_lights",
               "stop_lights_sideboard"
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
}
__type   =   "truck_view"
