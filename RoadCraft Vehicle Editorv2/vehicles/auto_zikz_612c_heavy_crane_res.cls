properties   =   {
   geom   =   {
      nameTpl   =   "zikz_612c_heavy_crane_res"
   }
   prop_truck_view_controller   =   {
      engineFiringDelay   =   1000
   }
   prop_truck_view   =   {
      truckName   =   "zikz_612c_heavy_crane_res"
      truckType   =   "truck_heavy"
      truckVisibilityInFogOfWar   =   60
   }
   prop_truck_rb   =   {
      suspensionSet   =   {
         front   =   {
            min   =   -0.1
            max   =   0.1
            height   =   0.2
            strength   =   0.07
            damping   =   0.5
         }
         rearDiffers   =   True
         rear   =   {
            min   =   -0.1
            max   =   0.1
            height   =   0.2
            strength   =   0.08
            damping   =   0.7
         }
      }
      suspensionAxleCollection   =   [
         {
            min   =   -0.3
            max   =   0.3
            height   =   0.18
            strength   =   0.05
            damping   =   0.8
         }
      ]
      suspensionCollectionMap   =   {
         Front   =   {
            __value   =   0
         }
      }
      engine   =   {
         params   =   {
            torque   =   350000
            brakesDelay   =   0.5
            maxDeltaAngVel   =   0.01
            responsiveness   =   0.04
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
                  angularVelocity   =   1.2
                  gearRatio   =   4
                  targetSpeedRangeKmh   =   {
                     y   =   8
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   3
                  gearRatio   =   3
                  targetSpeedRangeKmh   =   {
                     x   =   8
                     y   =   19
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   5.5
                  gearRatio   =   2.5
                  targetSpeedRangeKmh   =   {
                     x   =   19
                     y   =   26
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   7
                  gearRatio   =   2.2
                  targetSpeedRangeKmh   =   {
                     x   =   26
                     y   =   30
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   11
                  gearRatio   =   2
                  targetSpeedRangeKmh   =   {
                     x   =   30
                     y   =   42
                     __type   =   "Vector2dRnd"
                  }
               }
            ]
            reverseGear   =   {
               angularVelocity   =   0.5
               gearRatio   =   4.5
               __type   =   "TruckSingleGearParams"
            }
            highGear   =   {
               angularVelocity   =   7.5
               __type   =   "TruckSingleGearParams"
            }
            isLowRangeModeReverseEnabled   =   True
            isLowRangeModeClutchingEnabled   =   False
            clutchSwitchTime   =   0.35
            defaultGearSwitchDelay   =   0.25
            upperGearSwitchDelayBase   =   0.35
            upperGearSwitchDelayGearNumMultiplier   =   0.45
            downGearSwitchDelay   =   1.25
            neutralGearSwitchingDelay   =   3
            __type   =   "TruckGearboxParams"
         }
         __type   =   "TruckGearbox"
      }
      maxSteerSpeed   =   0.02
      backSteerSpeed   =   0.03
      pedalsResponsiveness   =   0.2
      linImpulseTriggerLinVelMax   =   10
      linImpulseTriggerWheelAngVelMax   =   20
      isNeutralGearWheelResistanceEnabled   =   False
      isReverseWheelResistanceEnabled   =   True
      isUnlockDiffAvrVelocity   =   True
      unlockDiffAvrVelocityMinTorque   =   0.15
      slopeAngleFrictionMult   =   {
         spline   =   [
            0,
            1,
            30,
            1,
            40,
            0
         ]
         __type   =   "SplineCurve1d"
      }
      wheelsSubstanceResistanceMult   =   {
         spline   =   [
            0,
            0.55,
            0.5,
            0.6,
            1,
            0.65
         ]
         __type   =   "SplineCurve1d"
      }
      steerRotateEngineControl   =   False
      wheelSlotWithDescs   =   [
         {
            steeringAngle   =   33
            geomName   =   "r_wheel_truck_01"
            isRightSided   =   True
            torqueType   =   "defaults"
            handbrakeStrength   =   0.01
            customSteeringJointObjName   =   "r_rack_01"
            suspensionCollectionAxleIndex   =   0
            enableLateralForce   =   True
            editableWheel   =   "truck_wheel"
         },
         {
            steeringAngle   =   33
            geomName   =   "l_wheel_truck_01"
            torqueType   =   "defaults"
            handbrakeStrength   =   0.01
            customSteeringJointObjName   =   "l_rack_01"
            suspensionCollectionAxleIndex   =   0
            enableLateralForce   =   True
            editableWheel   =   "truck_wheel"
         },
         {
            steeringAngle   =   33
            geomName   =   "r_wheel_truck_02"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.2
            customSteeringJointObjName   =   "r_rack_02"
            suspensionCollectionAxleIndex   =   0
            enableLateralForce   =   True
            editableWheel   =   "truck_wheel"
         },
         {
            steeringAngle   =   33
            geomName   =   "l_wheel_truck_02"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.2
            customSteeringJointObjName   =   "l_rack_02"
            suspensionCollectionAxleIndex   =   0
            enableLateralForce   =   True
            editableWheel   =   "truck_wheel"
         },
         {
            geomName   =   "r_wheel_truck_03"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.2
            suspensionCollectionAxleIndex   =   0
            enableLateralForce   =   True
            editableWheel   =   "truck_wheel"
         },
         {
            geomName   =   "l_wheel_truck_03"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.2
            suspensionCollectionAxleIndex   =   0
            enableLateralForce   =   True
            editableWheel   =   "truck_wheel"
         },
         {
            geomName   =   "r_wheel_truck_04"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.2
            suspensionCollectionAxleIndex   =   0
            enableLateralForce   =   True
            editableWheel   =   "truck_wheel"
         },
         {
            geomName   =   "l_wheel_truck_04"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.2
            suspensionCollectionAxleIndex   =   0
            enableLateralForce   =   True
            editableWheel   =   "truck_wheel"
         }
      ]
      wheelPool   =   {
         truck_wheel   =   {
            __value   =   "auto_wheel_zikz_612c_heavy_crane_res_truck_wheel"
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
                  }
                  OnEngineStarting   =   [
                     "TruckShaker_Dct2O94u/Play",
                     "TruckShaker_Dct2O94u1/Stop",
                     "SetSoundSwitch_1/SetSwitchState"
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
                     "PlaySound_Eb69Gi4E/Play"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown   =   {
                  viewData   =   {
                     x   =   3338.561
                     y   =   5000
                  }
                  OnEngineShutdown   =   [
                     "PlaySound_2/Play",
                     "TruckShaker_Dct2O94u/Stop",
                     "TruckShaker_Dct2O94u1/Play"
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
                  OnBrakePulled   =   [
                     "PlaySound_3/Play"
                  ]
                  __type   =   "BlueprintNodeOnBrakePull"
               }
               OnBrakeRelease   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5750
                  }
                  OnBrakeReleased   =   [
                     "PlaySound_4/Play"
                  ]
                  __type   =   "BlueprintNodeOnBrakeRelease"
               }
               OnHandbrakeStateChanged   =   {
                  viewData   =   {
                     x   =   3335.334
                     y   =   5900
                  }
                  OnHandbrakeOn   =   [
                     "PlaySound_5/Play"
                  ]
                  OnHandbrakeOff   =   [
                     "PlaySound_6/Play"
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
               OnGearUpdate   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   4800
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
                     "SetSoundParameter_1_2/SetParameter",
                     "PlaySound_E5ecKo30/Play"
                  ]
                  GetLastGear   =   [
                     "SetSoundParameter_1_2/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               SetSoundParameter_1_2   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   5050
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
               OnEngineAcceleration_2   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   6550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAcceleration   =   [
                     "SetSoundParameter_1_1_1_1/SetParameter",
                     "Schedule_DccelJax/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               SetSoundParameter_1_1_1_1   =   {
                  viewData   =   {
                     x   =   6150
                     y   =   6550
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
                     x   =   6150
                     y   =   6950
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
                     x   =   5650
                     y   =   6950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnInertia   =   [
                     "SetSoundParameter_1_1_1_1_1/SetParameter",
                     "Schedule_DccelJax/Start"
                  ]
                  __type   =   "BlueprintNodeOnEngineInertia"
               }
               SetSoundSwitch_1   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   4700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "PlaySound/Play"
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
                     x   =   4050
                     y   =   4700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_zikz_612c_engine_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1   =   {
                  viewData   =   {
                     x   =   4750
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_zikz_612c_engine"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2   =   {
                  viewData   =   {
                     x   =   4050
                     y   =   5000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1/Stop",
                     "PlaySound/Stop",
                     "PlaySound_Eb69Gi4E/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_zikz_612c_engine_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3   =   {
                  viewData   =   {
                     x   =   4050
                     y   =   5600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_zikz_612c_brake_pull"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_4   =   {
                  viewData   =   {
                     x   =   4050
                     y   =   5800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_zikz_612c_brake_release"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_5   =   {
                  viewData   =   {
                     x   =   4050
                     y   =   6000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_zikz_612c_handbrake_on"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_6   =   {
                  viewData   =   {
                     x   =   4050
                     y   =   6400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_zikz_612c_handbrake_off"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               Schedule_DccelJax   =   {
                  viewData   =   {
                     x   =   5850
                     y   =   6750
                  }
                  OnPeriod   =   [
                     "PlaySound_Dccem28e/Play"
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
               PlaySound_Dccem28e   =   {
                  viewData   =   {
                     x   =   6150
                     y   =   6750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_zikz_612c_brake_release"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               TruckShaker_Dct2O94u   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   4900
                  }
                  duration   =   3.2
                  shakerName   =   "EngineStart"
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_Dct2O94u1   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   5050
                  }
                  duration   =   2.8
                  shakerName   =   "EngineShutdown"
                  maxRPM   =   True
                  __type   =   "BlueprintNodeTruckShaker"
               }
               OnEngineShutdown_E1fiG8b7   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   6750
                  }
                  OnEngineShutdown   =   [
                     "Schedule_DccelJax/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               PlaySound_E5ecKo30   =   {
                  viewData   =   {
                     x   =   6600
                     y   =   4800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_zikz_605e_gear_overdrive"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_E9kiix9f   =   {
                  viewData   =   {
                     x   =   4100
                     y   =   6200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_5/emitterRef/cb",
                     "PlaySound_6/emitterRef/cb"
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
               GetTruckRpm_Ea99Uv9Q   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   5779
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  Get   =   [
                     "FloatSubtract_Ea99Uv9Q7/aFloat/cb",
                     "FloatSwitch_Ea99Uv9Q8/trueValue/cb"
                  ]
                  __type   =   "BlueprintNodeGetTruckRpm"
               }
               OnInit_Ea99Uv9Q1   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   5679
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "Schedule_Ea99Uv9Q2/Start"
                  ]
                  __type   =   "BlueprintCommonLibraryOninit"
               }
               Schedule_Ea99Uv9Q2   =   {
                  viewData   =   {
                     x   =   5847.742
                     y   =   5679
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_1_Ea99Uv9Q4/SetParameter",
                     "SetSoundParameter_1_1_Ea99Uv9Q5/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               TruckVelocity_Ea99Uv9Q3   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   6029
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetLinearVelocity   =   [
                     "SetSoundParameter_1_1_Ea99Uv9Q5/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               SetSoundParameter_1_Ea99Uv9Q4   =   {
                  viewData   =   {
                     x   =   7500
                     y   =   5679
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
               SetSoundParameter_1_1_Ea99Uv9Q5   =   {
                  viewData   =   {
                     x   =   7500
                     y   =   5929
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
               FloatCommutator_Ea99Uv9Q6   =   {
                  viewData   =   {
                     x   =   6100
                     y   =   5879
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
                     "FloatSubtract_Ea99Uv9Q7/bFloat/cb"
                  ]
                  __type   =   "BlueprintNodeFloatCommutator"
               }
               FloatSubtract_Ea99Uv9Q7   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   5829
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  Float   =   [
                     "FloatCompare_Ea99Uv9Q9/aFloat/cb",
                     "FloatSwitch_Ea99Uv9Q8/falseValue/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatsubstract"
               }
               FloatSwitch_Ea99Uv9Q8   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   5779
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
                     "FloatSum_Ea99Uv9Qe/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeBoolToFloatCommutator"
               }
               FloatCompare_Ea99Uv9Q9   =   {
                  viewData   =   {
                     x   =   6500
                     y   =   5879
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
                     "FloatSwitch_Ea99Uv9Q8/condition/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatcompare"
               }
               SuspensionOscillations_Ea99Uv9Qa   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   5879
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  zeroBorder   =   0.04
                  diffMultiplier   =   10
                  OnOscillationsStarted   =   [
                     "FloatCommutator_Ea99Uv9Q6/PassFirstValue"
                  ]
                  OnOscillationsStopped   =   [
                     "FloatCommutator_Ea99Uv9Q6/PassSecondValue"
                  ]
                  __type   =   "BlueprintNodeSuspensionOscillations"
               }
               GetTruckAngularVelocity_Ea99Uv9Qb   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   5879
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetAngularVelocity   =   [
                     "FloatAbs_Ea99Uv9Qd/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeTruckAngularVelocity"
               }
               FloatMultiplication_Ea99Uv9Qc   =   {
                  viewData   =   {
                     x   =   7150
                     y   =   5879
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  bFloat   =   {
                     def   =   2
                     __type   =   "FloatRefParam"
                  }
                  Float   =   [
                     "FloatSum_Ea99Uv9Qe/bFloat/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatmultiplication"
               }
               FloatAbs_Ea99Uv9Qd   =   {
                  viewData   =   {
                     x   =   7000
                     y   =   5879
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  aFloat   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetFloat   =   [
                     "FloatMultiplication_Ea99Uv9Qc/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeFloatAbs"
               }
               FloatSum_Ea99Uv9Qe   =   {
                  viewData   =   {
                     x   =   7350
                     y   =   5758
                  }
                  Float   =   [
                     "SetSoundParameter_1_Ea99Uv9Q4/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatsum"
               }
               CloneSoundEmitter_EapcyM3y   =   {
                  viewData   =   {
                     x   =   4400
                     y   =   5300
                  }
                  GetSoundEmitter   =   [
                     "PlaySound/emitterRef/cb",
                     "PlaySound_2/emitterRef/cb",
                     "PlaySound_1/emitterRef/cb",
                     "SetSoundParameter_1_Ea99Uv9Q4/emitterRef/cb",
                     "SetSoundParameter_1_1_Ea99Uv9Q5/emitterRef/cb",
                     "SetSoundParameter_1_1_1_1/emitterRef/cb",
                     "PlaySound_Dccem28e/emitterRef/cb",
                     "SetSoundParameter_1_1_1_1_1/emitterRef/cb",
                     "PlaySound_3/emitterRef/cb",
                     "PlaySound_4/emitterRef/cb",
                     "PlaySound_Eb69Gi4E/emitterRef/cb",
                     "SetSoundParameter_1_2/emitterRef/cb",
                     "PlaySound_E5ecKo30/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneBody_10"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        x   =   0
                        z   =   -4
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
               PlaySound_Eb69Gi4E   =   {
                  viewData   =   {
                     x   =   4750
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
               OnEngineRunningOnInit_F72cjEfe   =   {
                  viewData   =   {
                     x   =   3100
                     y   =   5000
                  }
                  OnEngineRunning   =   [
                     "TruckShaker_Dct2O94u/Stop",
                     "TruckShaker_Dct2O94u1/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineRunningOnInit"
               }
            }
            groups   =   {
               "[SOUND] acceleration input"   =   {
                  x   =   5600
                  y   =   6400
                  width   =   1700
                  height   =   750
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] gear update"   =   {
                  x   =   5600
                  y   =   4600
                  width   =   1697
                  height   =   803
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] rpm and speed"   =   {
                  x   =   5600
                  y   =   5500
                  width   =   2350
                  height   =   750
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
                  zeroBorderEnergy   =   70000
                  timeInterval   =   200
                  exceptionalBodyNames   =   [
                     "BoneLegFL_b_cdt",
                     "BoneLegRL_b_cdt",
                     "BoneLegFR_b_cdt",
                     "BoneLegRR_b_cdt"
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
                     def   =   0.7
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
                  zeroBorder   =   0.04
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
               OnTPLAnimationBegin_E4jeks1x   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1650
                  }
                  OnAnimStart   =   [
                     "PlaySound_E4jeks1x2/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnBegin"
               }
               OnTPLAnimationEnd_E4jeks1x1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1850
                  }
                  OnAnimStop   =   [
                     "PlaySound_E4jeks1x3/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnEnd"
               }
               PlaySound_E4jeks1x2   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1650
                  }
                  OnSoundStart   =   [
                     "PlaySound_EaekqAca/Play"
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
               PlaySound_E4jeks1x3   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1850
                  }
                  OnSoundStart   =   [
                     "PlaySound_EaekqAca1/Play"
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
               IntCheck_E4jeks1x4   =   {
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
                     "PlaySound_E4jeks1x6/Play"
                  ]
                  __type   =   "BlueprintLibraryCheckint"
               }
               OnHandbrakeStateChanged_E4jeks1x5   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1400
                  }
                  OnHandbrakeOn   =   [
                     "IntCheck_E4jeks1x4/Input"
                  ]
                  __type   =   "BlueprintNodeOnHandbrakeStateChanged"
               }
               PlaySound_E4jeks1x6   =   {
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
               GetTruckVelocity_E4jeks1x7   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1500
                  }
                  GetLinearVelocity   =   [
                     "IntCheck_E4jeks1x4/intToCheck/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               OnGearUpdate_Ec28ib7Q   =   {
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
                     "PlaySound_3_Ec28ib7Q1/Play"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               PlaySound_3_Ec28ib7Q1   =   {
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
               CloneSoundEmitter_Ec28ib7Q2   =   {
                  viewData   =   {
                     x   =   4400
                     y   =   2100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_3_Ec28ib7Q1/emitterRef/cb",
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
               CloneSoundEmitter_Eaekpyg2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   1650
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_EaekqAca/emitterRef/cb",
                     "PlaySound_EaekqAca1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneWiper_L2"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_Eaekpyg21   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   1850
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E4jeks1x2/emitterRef/cb",
                     "PlaySound_E4jeks1x3/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneWiper_R2"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_Eaekpyg22   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   2050
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_EaekqPbo/emitterRef/cb",
                     "PlaySound_EaekqPbo1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneWiper_Crane"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_EaekqAca   =   {
                  viewData   =   {
                     x   =   6000
                     y   =   1650
                  }
                  OnSoundStart   =   [
                     "PlaySound_EaekqPbo/Play"
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
               PlaySound_EaekqAca1   =   {
                  viewData   =   {
                     x   =   6000
                     y   =   1850
                  }
                  OnSoundStart   =   [
                     "PlaySound_EaekqPbo1/Play"
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
               PlaySound_EaekqPbo   =   {
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
               PlaySound_EaekqPbo1   =   {
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
               PlaySound_E8maGw8G   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "Schedule_E8maGw8G2/Start"
                  ]
                  OnSoundEnd   =   [
                     "Schedule_E8maGw8G2/Stop"
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
               GetInfoElementCockpitForSoundWithSchedule_E8maGw8G1   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_E8maGw8G/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_E8maGw8G/Stop"
                  ]
                  nameBoneBro   =   "ctrl_steering_wheel"
                  isWheel   =   True
                  GetCurrentSteerSpeed   =   [
                     "SetSoundParameter_E8maGw8G3/valueRef/cb"
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
               Schedule_E8maGw8G2   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_E8maGw8G3/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               SetSoundParameter_E8maGw8G3   =   {
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
               CloneSoundEmitter_E8maGw8G4   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E8maGw8G/emitterRef/cb",
                     "SetSoundParameter_E8maGw8G3/emitterRef/cb"
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
               GetInfoElementCockpitForSoundWithEvent_E9s6WEdS   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_E9s6WEdS1/Play"
                  ]
                  nameBoneBro   =   "ctrl_grapple_left"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_E9s6WEdS1   =   {
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
               CloneSoundEmitter_E9s6WEdS2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E9s6WEdS1/emitterRef/cb"
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
               GetInfoElementCockpitForSoundWithEvent_E9s6XE9s   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_E9s6XE9s1/Play"
                  ]
                  nameBoneBro   =   "ctrl_grapple_right"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_E9s6XE9s1   =   {
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
                        name   =   "vhc_body_cockpit_joystick"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_E9s6XE9s2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E9s6XE9s1/emitterRef/cb"
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
               PlaySound_Ebqcgag6   =   {
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
                        name   =   "vhc_body_gear_truck"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               GetInfoElementCockpitForSoundWithEvent_Ebqcgag61   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4400
                  }
                  OnStart   =   [
                     "PlaySound_Ebqcgag6/Play"
                  ]
                  nameBoneBro   =   "ctrl_gear_stick_low"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               CloneSoundEmitter_Ebqcgag62   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4550
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ebqcgag6/emitterRef/cb"
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
               OnAnchorsStateChanged   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   6850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnOpenStarted   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1/Input"
                  ]
                  OnCloseStarted   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1/Input"
                  ]
                  __type   =   "BlueprintNodeOnAnchorsStateChanged"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   6850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "anchors"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeActivateForcefeedbackIfTruckIsCurrent"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1_2   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   7150
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
               OnCraneWinchChanged   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   7150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAttached   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1_2/Input"
                  ]
                  OnDetached   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1_2/Input"
                  ]
                  OnLengthUpdated   =   [
                     "CraneValueMovement_3/Input"
                  ]
                  GetLength   =   [
                     "CraneValueMovement_3/newValueRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnCraneWinchChanged"
               }
               CraneValueMovement_3   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   7350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStartMoving   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1_1_1/Input"
                  ]
                  OnStopMoving   =   [
                     "DeactivateForceFeedback_1_1/Input"
                  ]
                  newValueRef   =   {
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintNodeCraneValueMovement"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1_1_1   =   {
                  viewData   =   {
                     x   =   5035.2
                     y   =   7349.59
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
               DeactivateForceFeedback_1_1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   7500
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
         Addon   =   {
            nodes   =   {
               OnCraneWinchChanged   =   {
                  viewData   =   {
                     x   =   2500
                     y   =   3750
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
                  OnLengthUpdated   =   [
                     "CraneValueMovement_3/Input"
                  ]
                  OnRotateUpdated   =   [
                     "CraneValueMovement_4/Input"
                  ]
                  GetLength   =   [
                     "CraneValueMovement_3/newValueRef/cb"
                  ]
                  GetRotate   =   [
                     "CraneValueMovement_4/newValueRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnCraneWinchChanged"
               }
               PlaySound_2_1_1_1   =   {
                  viewData   =   {
                     x   =   3900
                     y   =   3200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_winch_attach"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_1_1_2   =   {
                  viewData   =   {
                     x   =   3900
                     y   =   3400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_2_1_1_1_1/Stop",
                     "PlaySound_2_1_1_1_2/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_winch_detach"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CraneValueMovement_3   =   {
                  viewData   =   {
                     x   =   3300
                     y   =   3750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStartMoving   =   [
                     "PlaySound_2_1_1_1_1/Play"
                  ]
                  OnStopMoving   =   [
                     "PlaySound_2_1_1_2_1/Play",
                     "PlaySound_2_1_1_1_1/Stop"
                  ]
                  newValueRef   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetStatus   =   [
                     "SetSoundParameter_3_1/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeCraneValueMovement"
               }
               CraneValueMovement_4   =   {
                  viewData   =   {
                     x   =   3300
                     y   =   4200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStartMoving   =   [
                     "PlaySound_2_1_1_1_2/Play"
                  ]
                  OnStopMoving   =   [
                     "PlaySound_2_1_1_2_2/Play",
                     "PlaySound_2_1_1_1_2/Stop"
                  ]
                  newValueRef   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetStatus   =   [
                     "SetSoundParameter_3_2/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeCraneValueMovement"
               }
               PlaySound_2_1_1_1_1   =   {
                  viewData   =   {
                     x   =   3900
                     y   =   3600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_winch_move_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_1_1_2_1   =   {
                  viewData   =   {
                     x   =   3900
                     y   =   3800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_winch_move_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_1_1_1_2   =   {
                  viewData   =   {
                     x   =   3900
                     y   =   4200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_winch_rotate_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_1_1_2_2   =   {
                  viewData   =   {
                     x   =   3900
                     y   =   4400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_winch_rotate_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               SetSoundParameter_3_1   =   {
                  viewData   =   {
                     x   =   3800
                     y   =   4050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "rtpc_crane_winch_length"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               SetSoundParameter_3_2   =   {
                  viewData   =   {
                     x   =   3800
                     y   =   4600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "rtpc_crane_winch_rotate_speed"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               CraneAxisControlSoundNode   =   {
                  viewData   =   {
                     x   =   3300
                     y   =   4450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  logic   =   {
                     nodes   =   {
                        Pipe_1   =   {
                           Output   =   [
                              "../../../SetSoundParameter_3_1/SetParameter",
                              "../../../SetSoundParameter_3_2/SetParameter"
                           ]
                           __type   =   "BlueprintLibraryPipe"
                        }
                     }
                     __type   =   "BluePrintFunction"
                  }
                  __type   =   "BlueprintFunctionCraneAxisControlSoundNode"
               }
               GetSoundDesc_1   =   {
                  viewData   =   {
                     x   =   2500
                     y   =   4400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_arm_move_x_start"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  GetSoundDesc   =   [
                     "CraneAxisControlSoundNode/logic/nodes/PlaySound_10_3/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_1   =   {
                  viewData   =   {
                     x   =   2500
                     y   =   4450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_arm_move_x_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  GetSoundDesc   =   [
                     "CraneAxisControlSoundNode/logic/nodes/PlaySound_10_1_2/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_2   =   {
                  viewData   =   {
                     x   =   2500
                     y   =   4750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_arm_move_y_start"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  GetSoundDesc   =   [
                     "CraneAxisControlSoundNode/logic/nodes/PlaySound_10_2_1_1/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_3   =   {
                  viewData   =   {
                     x   =   2500
                     y   =   4800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_arm_move_y_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  GetSoundDesc   =   [
                     "CraneAxisControlSoundNode/logic/nodes/PlaySound_10_1_1_1_1/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_4   =   {
                  viewData   =   {
                     x   =   2500
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_arm_move_z_start"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  GetSoundDesc   =   [
                     "CraneAxisControlSoundNode/logic/nodes/PlaySound_10_2_2/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_5   =   {
                  viewData   =   {
                     x   =   2500
                     y   =   4900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_arm_move_z_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  GetSoundDesc   =   [
                     "CraneAxisControlSoundNode/logic/nodes/PlaySound_10_1_1_2/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               OnCraneArrowChanged_1_1   =   {
                  viewData   =   {
                     x   =   2500
                     y   =   4250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnUpdated   =   [
                     "CraneAxisControlSoundNode/logic/nodes/Pipe/Input"
                  ]
                  GetX   =   [
                     "CraneAxisControlSoundNode/logic/nodes/CraneValueMovement_3_1/newValueRef/cb"
                  ]
                  GetY   =   [
                     "CraneAxisControlSoundNode/logic/nodes/CraneValueMovement_1_1_1/newValueRef/cb"
                  ]
                  GetZ   =   [
                     "CraneAxisControlSoundNode/logic/nodes/CraneValueMovement_2_1_1/newValueRef/cb"
                  ]
                  rootBodyName   =   "BoneTower_cdt"
                  hookBodyName   =   "BoneCraneSegment_2_cdt"
                  hookPosThreshold   =   0.003
                  xConstraintName   =   "tower"
                  __type   =   "BlueprintNodeOnCraneArrowPositionChanged"
               }
               CloneSoundEmitter_E1hi6393   =   {
                  viewData   =   {
                     x   =   2500
                     y   =   4000
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_1_1_1/emitterRef/cb",
                     "PlaySound_2_1_1_2/emitterRef/cb",
                     "PlaySound_2_1_1_1_1/emitterRef/cb",
                     "PlaySound_2_1_1_2_1/emitterRef/cb",
                     "SetSoundParameter_3_1/emitterRef/cb",
                     "PlaySound_2_1_1_1_2/emitterRef/cb",
                     "PlaySound_2_1_1_2_2/emitterRef/cb",
                     "SetSoundParameter_3_2/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneCraneSegment_2_1"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               OnTruckModuleReset_E1obG65r   =   {
                  viewData   =   {
                     x   =   2500
                     y   =   5200
                  }
                  OnReseted   =   [
                     "PlaySound_E1obG65r1/Play"
                  ]
                  __type   =   "BlueprintNodeOnTruckModuleReset"
               }
               PlaySound_E1obG65r1   =   {
                  viewData   =   {
                     x   =   3300
                     y   =   5150
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
               OnAnchorsStateChanged_E22csKeI   =   {
                  viewData   =   {
                     x   =   2500
                     y   =   6000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnOpenStarted   =   [
                     "PlaySound_E22csKeI1/Play",
                     "PlaySound_2_E22csKeI2/Stop"
                  ]
                  OnOpenEnded   =   [
                     "PlaySound_2_E22csKeI3/Play"
                  ]
                  OnCloseStarted   =   [
                     "PlaySound_E22csKeI1/Stop",
                     "PlaySound_2_E22csKeI2/Play"
                  ]
                  OnCloseEnded   =   [
                     "PlaySound_2_1_E22csKeI4/Play"
                  ]
                  __type   =   "BlueprintNodeOnAnchorsStateChanged"
               }
               PlaySound_E22csKeI1   =   {
                  viewData   =   {
                     x   =   3300
                     y   =   5800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_legs_big_open_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_E22csKeI2   =   {
                  viewData   =   {
                     x   =   3300
                     y   =   6200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_legs_big_close_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_E22csKeI3   =   {
                  viewData   =   {
                     x   =   3300
                     y   =   6000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_legs_big_open_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_1_E22csKeI4   =   {
                  viewData   =   {
                     x   =   3300
                     y   =   6400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_legs_big_close_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_E22csKeI5   =   {
                  viewData   =   {
                     x   =   2500
                     y   =   6250
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E22csKeI1/emitterRef/cb",
                     "PlaySound_2_E22csKeI3/emitterRef/cb",
                     "PlaySound_2_E22csKeI2/emitterRef/cb",
                     "PlaySound_2_1_E22csKeI4/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneBody_6"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        y   =   1.5
                        z   =   -3.5
                        __type   =   "Vector3d"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_E22k3S9m   =   {
                  viewData   =   {
                     x   =   2500
                     y   =   4550
                  }
                  GetSoundEmitter   =   [
                     "CraneAxisControlSoundNode/logic/nodes/PlaySound_10_3/emitterRef/cb",
                     "CraneAxisControlSoundNode/logic/nodes/PlaySound_10_1_2/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneTower_1"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_E22k431e   =   {
                  viewData   =   {
                     x   =   2500
                     y   =   5000
                  }
                  GetSoundEmitter   =   [
                     "CraneAxisControlSoundNode/logic/nodes/PlaySound_10_2_1_1/emitterRef/cb",
                     "CraneAxisControlSoundNode/logic/nodes/PlaySound_10_1_1_1_1/emitterRef/cb",
                     "CraneAxisControlSoundNode/logic/nodes/PlaySound_10_2_2/emitterRef/cb",
                     "CraneAxisControlSoundNode/logic/nodes/PlaySound_10_1_1_2/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneTower_2"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
            }
            groups   =   {
               "[SOUND] addon - crane & winch"   =   {
                  x   =   2399.487
                  y   =   3000
                  width   =   2300
                  height   =   2401
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] addon - legs"   =   {
                  x   =   2400
                  y   =   5600
                  width   =   2299
                  height   =   1096.843
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         SFX   =   {
            nodes   =   {
               OnEngineStarted_E9ogsv611   =   {
                  viewData   =   {
                     x   =   3690.561
                     y   =   6800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineStarted   =   [
                     "VFXRestart_E9ogsv615/Input",
                     "VFXRestart_E9ogsv617/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown_E9ogsv612   =   {
                  viewData   =   {
                     x   =   3688.561
                     y   =   6950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineShutdown   =   [
                     "VFXStop_E9ogsv616/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               OnEngineAcceleration_E9ogsv613   =   {
                  viewData   =   {
                     x   =   3700
                     y   =   7450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAcceleration   =   [
                     "VFXRestart_E9ogsv618/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9ogsv61a/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse_E9ogsv614   =   {
                  viewData   =   {
                     x   =   3700
                     y   =   7250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineReverse   =   [
                     "VFXRestart_E9ogsv618/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9ogsv61a/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               VFXRestart_E9ogsv615   =   {
                  viewData   =   {
                     x   =   4200
                     y   =   6900
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
               VFXStop_E9ogsv616   =   {
                  viewData   =   {
                     x   =   4200
                     y   =   7000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "VFXStop_E9ogsv61c/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_E9ogsv617   =   {
                  viewData   =   {
                     x   =   4200
                     y   =   6800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "VFXRestart_E9ogsv61b/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_exhaust_med_cars_gas_zikz_up_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_E9ogsv618   =   {
                  viewData   =   {
                     x   =   4202.304
                     y   =   7307.784
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_med_cars_acceleration_zikz_up_new"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9ogsv61a   =   {
                  viewData   =   {
                     x   =   4200
                     y   =   7400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_med_cars_acceleration_zikz_up_new"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_E9ogsv61b   =   {
                  viewData   =   {
                     x   =   4750
                     y   =   6800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_met_cars_neutral_zikz_up_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9ogsv61c   =   {
                  viewData   =   {
                     x   =   4750
                     y   =   7000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_met_cars_neutral_zikz_up_01"
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
               __type   =   "MobileCraneSavablePropDesc"
            }
         },
         {
            desc   =   {
               __type   =   "TruckAnchorsSavablePropDesc"
            }
         }
      ]
   }
   prop_replicated   =   {
      repEntityBrand   =   {
         type   =   {
            __type   =   "AutoZikz612cHeavyCraneResReplicated"
         }
         __type   =   "RepEntityBrand"
      }
   }
   prop_lwi_cdt_poi_rb   =   {
      poiRadius   =   48
   }
   prop_truck_gearbox_controller   =   {
      awdMode   =   "ALWAYS_ON"
      difflockMode   =   "ALWAYS_ON"
      isLowGearAvailable   =   True
   }
   prop_fuel_tank   =   {
      maxFuelTankVolume   =   370
      startFuelTankVolume   =   370
      fuelConsumption   =   0.19
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
         y   =   2.3
         z   =   3
         __type   =   "Vector3d"
      }
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
                  y   =   -0.6
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
                     y   =   -2
                     __type   =   "Vector3d"
                  }
                  __type   =   "GameCameraAttachmentRuleJoint"
               }
               __type   =   "GameCameraActivationInfo"
            }
            __type   =   "GameCameraActivationLogicProject"
         }
         equipment_cockpit   =   {
            info   =   {
               cameraUid   =   "game_camera_equipment_cockpit"
               transitionUid   =   "to_truck_camera_transition"
               attachmentRule   =   {
                  jointName   =   "_equipment_cockpit_camera"
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
         baseFriction   =   0.2
         additionalMudFriction   =   0.2
         frictionMaxVelocityCoeff   =   0.3
         springOffsetSpeed   =   0.6
         springCoeff   =   0.4
         vibrationBaseDelay   =   300
         vibrationMaxVelocityDelay   =   150
         tiltMaxVelocityCoeff   =   0.55
         tiltMaxVelocity   =   2.5
         tiltAngle   =   55
         collisionMaxVelocityForce   =   0.7
         __type   =   "TruckSteeringWheelProperties"
      }
      frictionMap   =   {
         grass   =   {
            __value   =   0.55
         }
         ground   =   {
            __value   =   0.65
         }
         sub_mud   =   {
            __value   =   0.65
         }
         mud_grass   =   {
            __value   =   0.8
         }
         mud   =   {
            __value   =   0.8
         }
         mud_sand   =   {
            __value   =   0.9
         }
      }
   }
   prop_tagged   =   {
      tag   =   "UID_MODULE_HEAVY_CRANE"
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
      }
      __onlyOn   =   "visual"
   }
   prop_truck_rotator_native_controller   =   {
      rotators   =   {
         Crane_Fan   =   {
            rotatorStartStopCondition   =   {
               __type   =   "RotatorStartStopConditionEngineOnOffNative"
            }
            isSmoothStart   =   True
            rotatorBone   =   "Bone_Rot_Crane_Fan"
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
               0,
               0,
               1
            ]
            __type   =   "TruckRotatorNative"
         }
         CraneInterior_Fan   =   {
            rotatorStartStopCondition   =   {
               __type   =   "RotatorStartStopConditionEngineOnOffNative"
            }
            isSmoothStart   =   True
            rotatorBone   =   "Bone_Rot_Crane_InteriorFan"
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
               0,
               0,
               1
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
         y   =   -0.67
         z   =   -0.2
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
      movingParts   =   [
         "BoneLegFL_a_cdt",
         "BoneLegFL_b_cdt",
         "BoneLegFR_a_cdt",
         "BoneLegFR_b_cdt",
         "BoneLegRL_a_cdt",
         "BoneLegRL_b_cdt",
         "BoneLegRR_a_cdt",
         "BoneLegRR_b_cdt"
      ]
      syncBodyNames   =   [
         "BoneTower_cdt",
         "BoneCraneSegment_1_cdt",
         "BoneCraneSegment_2_cdt"
      ]
   }
   prop_winchable   =   {
      winchSocketPoints   =   [
         {
            bodyName   =   "BoneBody_cdt"
            offsetInBodySpace   =   {
               x   =   1.635
               y   =   0.329
               z   =   -0.081
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBody_cdt"
            offsetInBodySpace   =   {
               x   =   -1.635
               y   =   0.329
               z   =   -0.081
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBody_cdt"
            offsetInBodySpace   =   {
               x   =   1.635
               y   =   0.329
               z   =   5.364
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBody_cdt"
            offsetInBodySpace   =   {
               x   =   -1.635
               y   =   0.329
               z   =   5.364
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBody_cdt"
            offsetInBodySpace   =   {
               x   =   0
               y   =   -0.28
               z   =   9.174
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBody_cdt"
            offsetInBodySpace   =   {
               x   =   0.509
               y   =   0.501
               z   =   -2.476
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBody_cdt"
            offsetInBodySpace   =   {
               x   =   -0.509
               y   =   0.501
               z   =   -2.476
               __type   =   "Vector3d"
            }
         }
      ]
      amountOfWinchPoints   =   4
   }
   prop_constraint_solving_method_changer   =   {
      constraintNames   =   [
         "Sunshield_01",
         "Sunshield_02",
         "Sunshield_03",
         "ParfumeTree",
         "RadioWire",
         "Antenna",
         "Bottle",
         "Spray",
         "Key_top",
         "Key_bottom",
         "Fan"
      ]
   }
   prop_truck_default_camera_equipment_state   =   {
   }
   prop_truck_camera_preset   =   {
      preset   =   {
         cameraFocusPointOffset   =   {
            y   =   -0.6
            __type   =   "Vector3d"
         }
         attachmentBone   =   "_third_person_camera"
         firstLaunchCameraAngles   =   {
            x   =   20
            __type   =   "Vector2d"
         }
         scrollPoints   =   {
            "0"   =   {
               distance   =   15
               followTerrainOffset   =   4.25
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "1"   =   {
               distance   =   17
               followTerrainOffset   =   4.75
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "2"   =   {
               distance   =   19
               followTerrainOffset   =   5.25
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "3"   =   {
               distance   =   21
               followTerrainOffset   =   5.75
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "4"   =   {
               distance   =   23
               followTerrainOffset   =   6.25
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "5"   =   {
               distance   =   25
               followTerrainOffset   =   6.5
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
                  x   =   18
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
            },
            {
               angles   =   {
                  x   =   21
                  y   =   0
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   5
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
            x   =   -30
            y   =   40
            __type   =   "Vector2dRnd"
         }
         rotationLimitsY   =   {
            x   =   -120
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
            transitionStart   =   85
            transitionEnd   =   145
            baseRotation   =   {
               __type   =   "Vector2dRnd"
            }
            eyeOffset   =   {
               x   =   0.8
               z   =   0.26
               __type   =   "Vector3d"
            }
            rotationLimitsX   =   {
               x   =   -30
               y   =   50
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
                  y   =   30
                  __type   =   "Vector2dRnd"
               }
               __type   =   "RbCockpitCameraFollowTurnParams"
            }
            rightTurnParams   =   {
               turnSpeedRange   =   {
                  x   =   5
                  y   =   30
                  __type   =   "Vector2dRnd"
               }
               maxYAngle   =   25
               __type   =   "RbCockpitCameraFollowTurnParams"
            }
            timeout   =   0.5
            __type   =   "RbCockpitCameraFollowParams"
         }
         boundingVolumeObjectName   =   "cutoff_volume_01"
         __type   =   "RbCockpitCameraParams"
      }
   }
   prop_truck_cockpit_under_water_checker   =   {
      vehicleChecker   =   {
         checkerAttachBody   =   "_cockpit_camera"
         points   =   {
            Default_Point   =   {
               x   =   -1.85
               y   =   -0.3
               z   =   0.7
               __type   =   "Vector3d"
            }
            Vector3d   =   {
               x   =   0.4
               y   =   -0.3
               z   =   0.7
            }
            Vector3d_1   =   {
               x   =   -1.85
               y   =   -0.3
               z   =   -0.1
               __type   =   "Vector3d"
            }
            Vector3d_2   =   {
               x   =   0.4
               y   =   -0.3
               z   =   -0.1
               __type   =   "Vector3d"
            }
         }
         __type   =   "CockpitUnderwaterChecker"
      }
      equipmentChecker   =   {
         checkerAttachBody   =   "_equipment_cockpit_camera"
         points   =   {
            Default_Point   =   {
               x   =   -0.4
               y   =   -0.35
               z   =   0.7
               __type   =   "Vector3d"
            }
            Vector3d   =   {
               x   =   0.4
               y   =   -0.35
               z   =   0.7
            }
            Vector3d_1   =   {
               x   =   -0.4
               y   =   -0.35
               z   =   -0.3
               __type   =   "Vector3d"
            }
            Vector3d_2   =   {
               x   =   0.4
               y   =   -0.35
               z   =   -0.3
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
               "BoneTower_cdt",
               "Bone_IK_TowerPistonBase",
               "Bone_IK_TowerPiston"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     1,
                     0,
                     0
                  ]
                  min   =   -80
                  max   =   0
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     0,
                     0,
                     -1
                  ]
                  min   =   -2.5
                  max   =   2.5
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneCraneSegment_1_cdt"
                  bodyIKName   =   "Bone_IK_TowerPiston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_01_IK",
               "r_rack_01_IK_01_a",
               "r_rack_01_IK_01_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_truck_01"
                  bodyIKName   =   "r_rack_01_IK_01_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_01_IK",
               "r_rack_01_IK_02_a",
               "r_rack_01_IK_02_b",
               "r_rack_01_IK_02_c"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_truck_01"
                  bodyIKName   =   "r_rack_01_IK_02_c"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_01_IK",
               "r_rack_01_IK_03_a",
               "r_rack_01_IK_03_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
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
                  bodyPhysName   =   "r_wheel_truck_01"
                  bodyIKName   =   "r_rack_01_IK_03_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_01_IK",
               "l_rack_01_IK_01_a",
               "l_rack_01_IK_01_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_truck_01"
                  bodyIKName   =   "l_rack_01_IK_01_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_01_IK",
               "l_rack_01_IK_02_a",
               "l_rack_01_IK_02_b",
               "l_rack_01_IK_02_c"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_truck_01"
                  bodyIKName   =   "l_rack_01_IK_02_c"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_01_IK",
               "l_rack_01_IK_03_a",
               "l_rack_01_IK_03_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
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
                  bodyPhysName   =   "l_wheel_truck_01"
                  bodyIKName   =   "l_rack_01_IK_03_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneBody_cdt",
               "r_rack_01_steering_IK_01_a",
               "r_rack_01_steering_IK_01_b",
               "r_rack_01_steering_IK_01_c"
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
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_rack_01"
                  bodyIKName   =   "r_rack_01_steering_IK_01_c"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "r_rack_01_steering_IK_01_b",
               "r_rack_01_steering_IK_01_c",
               "r_rack_01_steering_IK_01_d"
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
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_rack_01"
                  bodyIKName   =   "r_rack_01_steering_IK_01_d"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneBody_cdt",
               "l_rack_01_steering_IK_01_a",
               "l_rack_01_steering_IK_01_b",
               "l_rack_01_steering_IK_01_c"
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
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_rack_01"
                  bodyIKName   =   "l_rack_01_steering_IK_01_c"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "l_rack_01_steering_IK_01_b",
               "l_rack_01_steering_IK_01_c",
               "l_rack_01_steering_IK_01_d"
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
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_rack_01"
                  bodyIKName   =   "l_rack_01_steering_IK_01_d"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "l_rack_01_steering_IK_01_a",
               "l_rack_01_steering_IK_01_e",
               "l_rack_01_steering_IK_01_f"
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
                  bodyPhysName   =   "r_rack_01_steering_IK_01_a"
                  bodyIKName   =   "l_rack_01_steering_IK_01_f"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "l_rack_01_steering_IK_01_a",
               "l_rack_01_steering_IK_01_g",
               "l_rack_01_steering_IK_01_h"
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
                  bodyPhysName   =   "BoneBody_cdt"
                  bodyIKName   =   "l_rack_01_steering_IK_01_h"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "l_rack_01_steering_IK_01_a",
               "l_rack_01_steering_IK_01_i",
               "l_rack_01_steering_IK_01_j",
               "l_rack_01_steering_IK_01_k"
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
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneBody_cdt"
                  bodyIKName   =   "l_rack_01_steering_IK_01_k"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneBody_cdt",
               "l_steering_IK_01_a",
               "l_steering_IK_01_b",
               "l_steering_IK_01_c"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -180
                  max   =   180
               },
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -1.08
                  max   =   1.08
               },
               {
                  type   =   "HINGE"
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
                  bodyPhysName   =   "l_rack_01_steering_IK_01_j"
                  bodyIKName   =   "l_steering_IK_01_c"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneBody_cdt",
               "l_steering_IK_02_a",
               "l_steering_IK_02_b",
               "l_steering_IK_02_c"
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
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_rack_01_steering_IK_01_j"
                  bodyIKName   =   "l_steering_IK_02_c"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneBody_cdt",
               "l_steering_IK_03_a",
               "l_steering_IK_03_b",
               "l_steering_IK_03_c"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -180
                  max   =   180
               },
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -1.08
                  max   =   1.08
               },
               {
                  type   =   "HINGE"
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
                  bodyPhysName   =   "l_steering_IK_02_e"
                  bodyIKName   =   "l_steering_IK_03_c"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "l_steering_IK_02_a",
               "l_steering_IK_02_d",
               "l_steering_IK_02_e",
               "l_steering_IK_02_f"
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
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneBody_cdt"
                  bodyIKName   =   "l_steering_IK_02_f"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_02_IK",
               "r_rack_02_IK_01_a",
               "r_rack_02_IK_01_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_truck_02"
                  bodyIKName   =   "r_rack_02_IK_01_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_02_IK",
               "r_rack_02_IK_02_a",
               "r_rack_02_IK_02_b",
               "r_rack_02_IK_02_c"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_truck_02"
                  bodyIKName   =   "r_rack_02_IK_02_c"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_02_IK",
               "r_rack_02_IK_03_a",
               "r_rack_02_IK_03_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
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
                  bodyPhysName   =   "r_wheel_truck_02"
                  bodyIKName   =   "r_rack_02_IK_03_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_02_IK",
               "l_rack_02_IK_01_a",
               "l_rack_02_IK_01_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_truck_02"
                  bodyIKName   =   "l_rack_02_IK_01_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_02_IK",
               "l_rack_02_IK_02_a",
               "l_rack_02_IK_02_b",
               "l_rack_02_IK_02_c"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_truck_02"
                  bodyIKName   =   "l_rack_02_IK_02_c"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_02_IK",
               "l_rack_02_IK_03_a",
               "l_rack_02_IK_03_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
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
                  bodyPhysName   =   "l_wheel_truck_02"
                  bodyIKName   =   "l_rack_02_IK_03_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneBody_cdt",
               "r_rack_02_steering_IK_01_a",
               "r_rack_02_steering_IK_01_b",
               "r_rack_02_steering_IK_01_c",
               "r_rack_02_steering_IK_01_d"
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
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_rack_02"
                  bodyIKName   =   "r_rack_02_steering_IK_01_d"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneBody_cdt",
               "l_rack_02_steering_IK_01_a",
               "l_rack_02_steering_IK_01_b",
               "l_rack_02_steering_IK_01_c",
               "l_rack_02_steering_IK_01_d"
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
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_rack_02"
                  bodyIKName   =   "l_rack_02_steering_IK_01_d"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "l_rack_02_steering_IK_01_a",
               "l_rack_02_steering_IK_01_e",
               "l_rack_02_steering_IK_01_f"
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
                  bodyPhysName   =   "r_rack_02_steering_IK_01_a"
                  bodyIKName   =   "l_rack_02_steering_IK_01_f"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "l_rack_02_steering_IK_01_a",
               "l_rack_02_steering_IK_01_j",
               "l_rack_02_steering_IK_01_k"
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
                  bodyPhysName   =   "BoneBody_cdt"
                  bodyIKName   =   "l_rack_02_steering_IK_01_k"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_03_IK",
               "r_rack_03_IK_01_a",
               "r_rack_03_IK_01_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_truck_03"
                  bodyIKName   =   "r_rack_03_IK_01_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_03_IK",
               "r_rack_03_IK_02_a",
               "r_rack_03_IK_02_b",
               "r_rack_03_IK_02_c"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_truck_03"
                  bodyIKName   =   "r_rack_03_IK_02_c"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_03_IK",
               "r_rack_03_IK_03_a",
               "r_rack_03_IK_03_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
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
                  bodyPhysName   =   "r_wheel_truck_03"
                  bodyIKName   =   "r_rack_03_IK_03_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_03_IK",
               "l_rack_03_IK_01_a",
               "l_rack_03_IK_01_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_truck_03"
                  bodyIKName   =   "l_rack_03_IK_01_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_03_IK",
               "l_rack_03_IK_02_a",
               "l_rack_03_IK_02_b",
               "l_rack_03_IK_02_c"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_truck_03"
                  bodyIKName   =   "l_rack_03_IK_02_c"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_03_IK",
               "l_rack_03_IK_03_a",
               "l_rack_03_IK_03_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
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
                  bodyPhysName   =   "l_wheel_truck_03"
                  bodyIKName   =   "l_rack_03_IK_03_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_04_IK",
               "r_rack_04_IK_01_a",
               "r_rack_04_IK_01_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_truck_04"
                  bodyIKName   =   "r_rack_04_IK_01_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_04_IK",
               "r_rack_04_IK_02_a",
               "r_rack_04_IK_02_b",
               "r_rack_04_IK_02_c"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_truck_04"
                  bodyIKName   =   "r_rack_04_IK_02_c"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_04_IK",
               "r_rack_04_IK_03_a",
               "r_rack_04_IK_03_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
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
                  bodyPhysName   =   "r_wheel_truck_04"
                  bodyIKName   =   "r_rack_04_IK_03_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_04_IK",
               "l_rack_04_IK_01_a",
               "l_rack_04_IK_01_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_truck_04"
                  bodyIKName   =   "l_rack_04_IK_01_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_04_IK",
               "l_rack_04_IK_02_a",
               "l_rack_04_IK_02_b",
               "l_rack_04_IK_02_c"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_truck_04"
                  bodyIKName   =   "l_rack_04_IK_02_c"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_04_IK",
               "l_rack_04_IK_03_a",
               "l_rack_04_IK_03_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
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
                  bodyPhysName   =   "l_wheel_truck_04"
                  bodyIKName   =   "l_rack_04_IK_03_b"
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
                        1.246,
                        1.234,
                        9.558
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
                        2.284,
                        0.994,
                        0.621
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
                        2.284,
                        0.298,
                        0.861
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
                        3.075,
                        0.493,
                        1.595
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
                        2.103,
                        0.123,
                        7.739
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
                        2.103,
                        0.5,
                        0.256
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
                        0.655,
                        0.5,
                        0.251
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
                        0.655,
                        0.5,
                        0.251
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
                        1.853,
                        0.816,
                        0.898
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
                        2.445,
                        1.419,
                        1.36
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
                        2.445,
                        0.866,
                        0.275
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
                        2.445,
                        0.599,
                        0.275
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
                        2.482,
                        0.909,
                        1.827
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
                        2.482,
                        0.907,
                        0.262
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
                        2.482,
                        0.866,
                        1.565
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule15"
               bone   =   "_BoxCapsule15"
               geom   =   {
                  box   =   {
                     size   =   [
                        3.375,
                        0.137,
                        0.482
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
                        3.375,
                        0.158,
                        0.343
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
                        3.375,
                        0.122,
                        3.168
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
                        3.374,
                        0.08,
                        0.372
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
                        3.374,
                        0.08,
                        0.427
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
                        3.084,
                        0.498,
                        0.42
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
                        3.374,
                        0.08,
                        0.383
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
                        3.374,
                        0.08,
                        0.383
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
                        3.374,
                        0.121,
                        3.158
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
                        3.374,
                        0.08,
                        0.383
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
                        3.374,
                        0.08,
                        0.383
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
                        0.227,
                        0.507,
                        0.8
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule27"
               bone   =   "_BoxCapsule27"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.227,
                        1.05,
                        0.238
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule28"
               bone   =   "_BoxCapsule28"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.227,
                        0.264,
                        1.114
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule29"
               bone   =   "_BoxCapsule29"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.227,
                        0.375,
                        0.282
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule30"
               bone   =   "_BoxCapsule30"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.205,
                        0.918,
                        0.205
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule31"
               bone   =   "_BoxCapsule31"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.227,
                        0.507,
                        0.8
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule32"
               bone   =   "_BoxCapsule32"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.227,
                        1.05,
                        0.238
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule33"
               bone   =   "_BoxCapsule33"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.227,
                        0.264,
                        1.114
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule34"
               bone   =   "_BoxCapsule34"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.227,
                        0.375,
                        0.282
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule35"
               bone   =   "_BoxCapsule35"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.205,
                        0.918,
                        0.205
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule36"
               bone   =   "_BoxCapsule36"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.104,
                        0.567,
                        0.102
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule37"
               bone   =   "_BoxCapsule37"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.104,
                        0.567,
                        0.102
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule38"
               bone   =   "_BoxCapsule38"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.47,
                        0.203,
                        0.47
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule39"
               bone   =   "_BoxCapsule39"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.47,
                        0.203,
                        0.47
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule40"
               bone   =   "_BoxCapsule40"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.227,
                        0.507,
                        0.8
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule41"
               bone   =   "_BoxCapsule41"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.227,
                        1.05,
                        0.238
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule42"
               bone   =   "_BoxCapsule42"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.227,
                        0.264,
                        1.114
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule43"
               bone   =   "_BoxCapsule43"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.227,
                        0.375,
                        0.282
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule44"
               bone   =   "_BoxCapsule44"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.205,
                        0.918,
                        0.205
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule45"
               bone   =   "_BoxCapsule45"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.104,
                        0.567,
                        0.102
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule46"
               bone   =   "_BoxCapsule46"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.47,
                        0.203,
                        0.47
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule47"
               bone   =   "_BoxCapsule47"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.8,
                        0.507,
                        0.227
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule48"
               bone   =   "_BoxCapsule48"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.227,
                        1.05,
                        0.238
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule49"
               bone   =   "_BoxCapsule49"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.227,
                        0.264,
                        1.114
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule50"
               bone   =   "_BoxCapsule50"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.282,
                        0.375,
                        0.227
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule51"
               bone   =   "_BoxCapsule51"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.205,
                        0.918,
                        0.205
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule52"
               bone   =   "_BoxCapsule52"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.102,
                        0.567,
                        0.104
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule53"
               bone   =   "_BoxCapsule53"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.47,
                        0.203,
                        0.47
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule54"
               bone   =   "_BoxCapsule54"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.887,
                        0.659,
                        2.461
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule55"
               bone   =   "_BoxCapsule55"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.887,
                        1.231,
                        1.369
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule56"
               bone   =   "_BoxCapsule56"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.887,
                        1.281,
                        0.341
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule57"
               bone   =   "_BoxCapsule57"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.689,
                        0.74,
                        1.291
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule58"
               bone   =   "_BoxCapsule58"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.689,
                        0.388,
                        0.658
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule59"
               bone   =   "_BoxCapsule59"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.689,
                        0.352,
                        0.744
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule60"
               bone   =   "_BoxCapsule60"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.981,
                        0.166,
                        1.993
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule61"
               bone   =   "_BoxCapsule61"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.981,
                        0.61,
                        2.339
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule62"
               bone   =   "_BoxCapsule62"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.529,
                        0.586,
                        0.473
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule63"
               bone   =   "_BoxCapsule63"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.824,
                        0.586,
                        0.139
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule65"
               bone   =   "_BoxCapsule65"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.824,
                        0.586,
                        0.139
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule66"
               bone   =   "_BoxCapsule66"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.981,
                        0.179,
                        2.553
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule67"
               bone   =   "_BoxCapsule67"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.856,
                        0.641,
                        1.142
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule68"
               bone   =   "_BoxCapsule68"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.588,
                        0.822,
                        10.944
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule69"
               bone   =   "_BoxCapsule69"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.772,
                        1.066,
                        0.419
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule70"
               bone   =   "_BoxCapsule70"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.443,
                        0.568,
                        11.759
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule71"
               bone   =   "_BoxCapsule71"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.564,
                        1.306,
                        0.5
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule72"
               bone   =   "_BoxCapsule"
               boneOffset   =   [
                  0,
                  0.64,
                  0.62
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.446,
                        1.674,
                        11.898
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   10
               waterParams   =   {
                  influence   =   0
                  needToSpawnParticles   =   True
                  particlesSpawnFrequencyScale   =   3
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
                  2.5,
                  0.6,
                  1.72
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.8,
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
                  -2.5,
                  0.6,
                  1.72
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.8,
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
               name   =   "left_box_fast_grass1"
               boneOffset   =   [
                  2.5,
                  0.6,
                  -3.39
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.8,
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
               name   =   "right_box_fast_grass1"
               boneOffset   =   [
                  -2.5,
                  0.6,
                  -3.39
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.8,
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
               bone   =   "BoneRoot"
               boneOffset   =   [
                  0,
                  2.47,
                  3.77
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   1.61
                     radius   =   0.89
                     scaleX   =   1.36
                  }
                  capsule   =   {
                     height   =   2.139999
                     radius   =   1.25
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_01"
               bone   =   "BoneRoot"
               boneOffset   =   [
                  0,
                  1.87,
                  -0.16
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   10.82
                     radius   =   0.26
                     scaleX   =   4.07
                  }
                  capsule   =   {
                     height   =   10.74
                     radius   =   0.47
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_02"
               bone   =   "BoneRoot"
               boneOffset   =   [
                  0,
                  1.03,
                  -0.16
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   10.38
                     radius   =   0.34
                     scaleX   =   1.29
                  }
                  capsule   =   {
                     height   =   10.74
                     radius   =   0.47
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_05"
               bone   =   "BoneTower_cdt"
               boneOffset   =   [
                  0.93,
                  0.96,
                  0.32
               ]
               boneRotation   =   [
                  90,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   0.37
                     radius   =   0.73
                     scaleX   =   0.68
                  }
                  capsule   =   {
                     height   =   0.07
                     radius   =   1.26
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_06"
               bone   =   "BoneCraneSegment_1_cdt"
               boneOffset   =   [
                  0,
                  0.56,
                  4.2
               ]
               geom   =   {
                  capsule   =   {
                     height   =   11.5
                     radius   =   0.43
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "shadow_05"
               bone   =   "BoneTower_cdt"
               boneOffset   =   [
                  -0.48,
                  0.36,
                  -0.2
               ]
               boneRotation   =   [
                  0,
                  0,
                  90
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   0.58
                     radius   =   0.73
                     scaleX   =   0.68
                  }
                  capsule   =   {
                     height   =   0.07
                     radius   =   1.26
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
         mirror_upper_left   =   {
            fov   =   70
            centerLocatorName   =   "pip_camera_top_left"
            objName   =   "_hp_cab_interior_top_left"
            pipCameraMaterialName   =   "truck_mirror"
            __type   =   "MirrorParams"
         }
         mirror_bottom_left   =   {
            fov   =   45
            centerLocatorName   =   "pip_camera_bottom_left"
            objName   =   "_hp_cab_interior_bottom_left"
            pipCameraMaterialName   =   "truck_mirror"
            __type   =   "MirrorParams"
         }
         mirror_upper_right   =   {
            fov   =   70
            centerLocatorName   =   "pip_camera_top_right"
            objName   =   "_hp_cab_interior_top_right"
            pipCameraMaterialName   =   "truck_mirror"
            __type   =   "MirrorParams"
         }
         mirror_bottom_right   =   {
            fov   =   40
            centerLocatorName   =   "pip_camera_bottom_right"
            objName   =   "_hp_cab_interior_bottom_right"
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
         "_hp_cab_crane_glass_raindrops",
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
         MOVE_BY_POINTS   =   {
            truckSettings   =   {
               awd   =   True
               overrideSteerSpeed   =   True
               maxSteerSpeed   =   0.03
               backSteerSpeed   =   0.06
               lwiPoiValue   =   8
               __type   =   "AiTruckSettings"
            }
            nodePassSquaredDistance   =   25
            targetVelocity   =   2
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
                  0,
                  0.000003,
                  0,
                  9,
                  0,
                  36,
                  0.225,
                  225,
                  0
               ]
               __type   =   "SplineCurve1d"
            }
            decelerationScaleByAngle   =   {
               spline   =   [
                  0,
                  1,
                  90,
                  1,
                  140,
                  0.8,
                  155,
                  0.6,
                  170,
                  0.35,
                  175,
                  0,
                  180,
                  0
               ]
               __type   =   "SplineCurve1d"
            }
            applySteerByDistanceSquared   =   {
               spline   =   [
                  25,
                  1,
                  49,
                  0.2
               ]
               __type   =   "SplineCurve1d"
            }
            steerByAngle   =   {
               spline   =   [
                  0,
                  1,
                  90,
                  1,
                  140,
                  1,
                  146.0377,
                  0.627778,
                  154.5283,
                  0.366667,
                  164.5047,
                  0.155556,
                  180,
                  0.1
               ]
               __type   =   "SplineCurve1d"
            }
            steerScale   =   1.55
            pointMixing   =   {
               spline   =   [
                  0,
                  0
               ]
               __type   =   "SplineCurve1d"
            }
            applyDecelerationDistanceSquared   =   {
               spline   =   [
                  0,
                  1,
                  9,
                  1,
                  100,
                  0
               ]
               __type   =   "SplineCurve1d"
            }
            applyDecelerationDistance   =   {
               spline   =   [
                  0,
                  1,
                  3,
                  1,
                  10,
                  0
               ]
               __type   =   "SplineCurve1d"
            }
            __type   =   "MoveByPointsRouteBehaviourDesc"
         }
         MOVE_STUCK_CANCEL   =   {
            truckSettings   =   {
               awd   =   True
               overrideSteerSpeed   =   True
               maxSteerSpeed   =   0.03
               backSteerSpeed   =   0.06
               __type   =   "AiTruckSettings"
            }
            nodePassSquaredDistance   =   36
            targetVelocity   =   4
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
                  0,
                  0.000003,
                  0,
                  9,
                  0,
                  36,
                  0.225,
                  225,
                  0
               ]
               __type   =   "SplineCurve1d"
            }
            decelerationScaleByAngle   =   {
               spline   =   [
                  0,
                  1,
                  90,
                  1,
                  140,
                  0.8,
                  155,
                  0.6,
                  170,
                  0.35,
                  175,
                  0,
                  180,
                  0
               ]
               __type   =   "SplineCurve1d"
            }
            applySteerByDistanceSquared   =   {
               spline   =   [
                  25,
                  1,
                  49,
                  0.2
               ]
               __type   =   "SplineCurve1d"
            }
            steerByAngle   =   {
               spline   =   [
                  0,
                  1,
                  90,
                  1,
                  140,
                  1,
                  146.0377,
                  0.627778,
                  154.5283,
                  0.366667,
                  164.5047,
                  0.155556,
                  180,
                  0.1
               ]
               __type   =   "SplineCurve1d"
            }
            steerScale   =   1.55
            pointMixing   =   {
               spline   =   [
                  0,
                  0
               ]
               __type   =   "SplineCurve1d"
            }
            applyDecelerationDistanceSquared   =   {
               spline   =   [
                  0,
                  1,
                  9,
                  1,
                  100,
                  0
               ]
               __type   =   "SplineCurve1d"
            }
            applyDecelerationDistance   =   {
               spline   =   [
                  0,
                  1,
                  3,
                  1,
                  10,
                  0
               ]
               __type   =   "SplineCurve1d"
            }
            __type   =   "MoveByPointsStuckCancelRouteBehaviourDesc"
         }
         MOVE_FROM_GARAGE_ON_START   =   {
            truckSettings   =   {
               awd   =   True
               overrideSteerSpeed   =   True
               maxSteerSpeed   =   0.03
               backSteerSpeed   =   0.06
               __type   =   "AiTruckSettings"
            }
            nodePassSquaredDistance   =   36
            __type   =   "MoveFromGarageBehaviourDesc"
         }
         MOVE_TO_GARAGE_ON_FINISH   =   {
            truckSettings   =   {
               awd   =   True
               overrideSteerSpeed   =   True
               maxSteerSpeed   =   0.03
               backSteerSpeed   =   0.06
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
         "BoneCabin_cdt",
         "BoneTower_cdt",
         "BoneCraneSegment_1_cdt",
         "BoneCraneSegment_2_cdt"
      ]
   }
   prop_truck_axles_controller   =   {
      independentAxles   =   [
         {
            frame   =   "r_wheel_truck_01"
            singleWheelID   =   -1
         },
         {
            frame   =   "l_wheel_truck_01"
            singleWheelID   =   -1
         },
         {
            frame   =   "r_wheel_truck_02"
            singleWheelID   =   -1
         },
         {
            frame   =   "l_wheel_truck_02"
            singleWheelID   =   -1
         },
         {
            frame   =   "r_wheel_truck_03"
            singleWheelID   =   -1
         },
         {
            frame   =   "l_wheel_truck_03"
            singleWheelID   =   -1
         },
         {
            frame   =   "r_wheel_truck_04"
            singleWheelID   =   -1
         },
         {
            frame   =   "l_wheel_truck_04"
            singleWheelID   =   -1
         }
      ]
      steeringRacks   =   [
         {
            frame   =   "rack_01_IK"
            rightWheelFrame   =   "r_rack_01"
            leftWheelFrame   =   "l_rack_01"
            rackHalfLength   =   1.039
         },
         {
            frame   =   "rack_02_IK"
            rightWheelFrame   =   "r_rack_02"
            leftWheelFrame   =   "l_rack_02"
            rackHalfLength   =   1.039
         }
      ]
   }
   prop_cardan_shaft   =   {
      shafts   =   [
         {
            shaftActorDesc   =   {
               properties   =   {
                  geom   =   {
                     nameTpl   =   "shaft_heavy_transpoerter_small"
                  }
               }
               __type   =   "shaft_view"
            }
            shaftFasteningPositionA   =   "r_rack_01_shaft_a"
            shaftFasteningPositionB   =   "r_rack_01_shaft_b"
            wheels   =   [
               0
            ]
            torqueTransmissionRatio   =   -1.5
         },
         {
            shaftActorDesc   =   {
               properties   =   {
                  geom   =   {
                     nameTpl   =   "shaft_heavy_transpoerter_small"
                  }
               }
               __type   =   "shaft_view"
            }
            shaftFasteningPositionA   =   "l_rack_01_shaft_a"
            shaftFasteningPositionB   =   "l_rack_01_shaft_b"
            wheels   =   [
               1
            ]
         },
         {
            shaftActorDesc   =   {
               properties   =   {
                  geom   =   {
                     nameTpl   =   "shaft_heavy_transpoerter_small"
                  }
               }
               __type   =   "shaft_view"
            }
            shaftFasteningPositionA   =   "r_rack_02_shaft_a"
            shaftFasteningPositionB   =   "r_rack_02_shaft_b"
            wheels   =   [
               2
            ]
            torqueTransmissionRatio   =   -1.5
         },
         {
            shaftActorDesc   =   {
               properties   =   {
                  geom   =   {
                     nameTpl   =   "shaft_heavy_transpoerter_small"
                  }
               }
               __type   =   "shaft_view"
            }
            shaftFasteningPositionA   =   "l_rack_02_shaft_a"
            shaftFasteningPositionB   =   "l_rack_02_shaft_b"
            wheels   =   [
               3
            ]
         },
         {
            shaftActorDesc   =   {
               properties   =   {
                  geom   =   {
                     nameTpl   =   "shaft_heavy_transpoerter_small"
                  }
               }
               __type   =   "shaft_view"
            }
            shaftFasteningPositionA   =   "r_rack_03_shaft_a"
            shaftFasteningPositionB   =   "r_rack_03_shaft_b"
            wheels   =   [
               4
            ]
            torqueTransmissionRatio   =   -1.5
         },
         {
            shaftActorDesc   =   {
               properties   =   {
                  geom   =   {
                     nameTpl   =   "shaft_heavy_transpoerter_small"
                  }
               }
               __type   =   "shaft_view"
            }
            shaftFasteningPositionA   =   "l_rack_03_shaft_a"
            shaftFasteningPositionB   =   "l_rack_03_shaft_b"
            wheels   =   [
               5
            ]
         },
         {
            shaftActorDesc   =   {
               properties   =   {
                  geom   =   {
                     nameTpl   =   "shaft_heavy_transpoerter_small"
                  }
               }
               __type   =   "shaft_view"
            }
            shaftFasteningPositionA   =   "r_rack_04_shaft_a"
            shaftFasteningPositionB   =   "r_rack_04_shaft_b"
            wheels   =   [
               6
            ]
            torqueTransmissionRatio   =   -1.5
         },
         {
            shaftActorDesc   =   {
               properties   =   {
                  geom   =   {
                     nameTpl   =   "shaft_heavy_transpoerter_small"
                  }
               }
               __type   =   "shaft_view"
            }
            shaftFasteningPositionA   =   "l_rack_04_shaft_a"
            shaftFasteningPositionB   =   "l_rack_04_shaft_b"
            wheels   =   [
               6
            ]
         }
      ]
   }
   prop_truck_crane_rb   =   {
      craneWinchModeSettings   =   "SWITCH_SINGLE_AND_MULTI_WINCH"
      winch   =   {
         maxLength   =   30
         modifyDamping   =   True
         strength   =   0.3
         __type   =   "TruckWinch"
      }
      winchSource   =   {
         bodyName   =   "BoneCraneSegment_2_cdt"
         offsetInBodySpace   =   {
            x   =   0
            y   =   -0.603
            z   =   0
            __type   =   "Vector3d"
         }
         __type   =   "WinchPoint"
      }
      minLength   =   4
   }
   prop_truck_view_mobile_crane_controller   =   {
      winchController   =   {
         craneZoneRadius   =   10
         craneZoneMaxLenght   =   30
         scannerShape   =   {
            radius   =   10
            __type   =   "Sphere"
         }
         previewSourceOffset   =   {
            y   =   -0.3
            __type   =   "Vector3d"
         }
         __type   =   "CraneWinchController"
      }
      movementLerpCoef   =   3
   }
   prop_ik   =   {
      movementspeedXZ   =   2
      movementspeedY   =   2.3
      maxTargetPositionError   =   0.2
      bodyNames   =   [
         "BoneBody_cdt",
         "BoneTower_cdt",
         "BoneCraneSegment_1_cdt",
         "BoneCraneSegment_2_cdt"
      ]
      rootBodyLocalOffset   =   {
         z   =   0
         __type   =   "Vector3d"
      }
      constraintInertiaStabilizationAmount   =   0
   }
   prop_phys_shape_checker   =   {
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
   prop_rigid_body_scanner   =   {
      shapes   =   [
         {
            offset   =   [
               0,
               1.67,
               -0.84
            ]
            size   =   [
               2.7,
               2.1,
               6
            ]
         },
         {
            offset   =   [
               0,
               2.46,
               5.96
            ]
            size   =   [
               0.8,
               0.7,
               8
            ]
         },
         {
            offset   =   [
               0,
               1.8,
               9.64
            ]
            size   =   [
               0.6,
               0.7,
               0.8
            ]
         }
      ]
      locator   =   "BoneBody_cdt"
      collisionGroups   =   [
         "new_group",
         "new_group_1"
      ]
   }
   prop_truck_reset_module_controller   =   {
      moduleRootBody   =   "BoneTower_cdt"
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
            maxRotationAngle   =   160
            dashboardSubtype   =   "SPEED"
            damping   =   0.05
            scale   =   2.5
            __type   =   "DashboardElementCockpit"
         }
         "1"   =   {
            nameBone   =   "ctrl_dashboard_rpm"
            axis   =   "Y"
            maxRotationAngle   =   120
            dashboardSubtype   =   "RPM"
            damping   =   0.1
            increase   =   -35
            __type   =   "DashboardElementCockpit"
         }
         "2"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_1"
            axis   =   "Y"
            maxRotationAngle   =   210
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "3"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_2"
            axis   =   "Y"
            maxRotationAngle   =   150
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "4"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_oil"
            axis   =   "Y"
            maxRotationAngle   =   55
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "5"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_1_crane"
            axis   =   "Y"
            maxRotationAngle   =   210
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.01
            __type   =   "DashboardElementCockpit"
         }
         "6"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_2_crane"
            axis   =   "Y"
            maxRotationAngle   =   150
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "7"   =   {
            nameBone   =   "ctrl_dashboard_engine_voltage"
            axis   =   "Y"
            maxRotationAngle   =   15
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.02
            __type   =   "DashboardElementCockpit"
         }
         "8"   =   {
            nameBone   =   "ctrl_pedal_drive"
            axis   =   "Y"
            maxRotationAngle   =   20
            dashboardSubtype   =   "RPM"
            damping   =   0.1
            increase   =   -20
            __type   =   "DashboardElementCockpit"
         }
         "9"   =   {
            nameBone   =   "ctrl_steering_wheel"
            axis   =   "Y"
            minRotationAngle   =   -180
            maxRotationAngle   =   180
            steeringSubtype   =   "WHEEL"
            __type   =   "SteerigElementCockpit"
         }
         "10"   =   {
            nameBone   =   "ctrl_switch_handbrake"
            axis   =   "Y"
            maxRotationAngle   =   60
            speed   =   180
            switcherSubtype   =   "HANDBRAKE"
            __type   =   "SwitcherElementCockpit"
         }
         "11"   =   {
            nameBone   =   "ctrl_gear_stick_low"
            axis   =   "Y"
            maxRotationAngle   =   30
            speed   =   90
            switcherSubtype   =   "LOW_GEAR"
            __type   =   "SwitcherElementCockpit"
         }
         "12"   =   {
            nameBone   =   "ctrl_gear_stick"
            rotationSpeed   =   30
            states   =   {
               AUTO   =   {
                  primary   =   {
                     angle   =   10
                     __type   =   "InfoGearState"
                  }
                  __type   =   "GearStateItem"
               }
               REVERSE   =   {
                  primary   =   {
                     axis   =   "Y"
                     angle   =   -10
                     __type   =   "InfoGearState"
                  }
                  secondary   =   {
                     axis   =   "X"
                     angle   =   10
                     __type   =   "InfoGearState"
                  }
                  __type   =   "GearStateItem"
               }
            }
            __type   =   "GearStickElementCockpit"
         }
         "13"   =   {
            nameBone   =   "ctrl_grapple_left"
            lastElements   =   [
               {
                  axis   =   "Y"
                  rangeAngle   =   {
                     x   =   -20
                     y   =   20
                     __type   =   "Vector2dRnd"
                  }
                  actionType   =   "CRANE_Z"
                  speed   =   30
                  withCenteredPosition   =   True
               },
               {
                  rangeAngle   =   {
                     x   =   -20
                     y   =   20
                     __type   =   "Vector2dRnd"
                  }
                  actionType   =   "CRANE_X"
                  speed   =   30
                  withCenteredPosition   =   True
               }
            ]
            __type   =   "EquipmentChainOrientationInputElementCockpit"
         }
         "14"   =   {
            nameBone   =   "ctrl_grapple_right"
            lastElements   =   [
               {
                  axis   =   "Y"
                  rangeAngle   =   {
                     x   =   -20
                     y   =   20
                     __type   =   "Vector2dRnd"
                  }
                  actionType   =   "CRANE_Y"
                  speed   =   30
                  withCenteredPosition   =   True
               },
               {
                  axis   =   "X"
                  rangeAngle   =   {
                     x   =   -20
                     y   =   20
                     __type   =   "Vector2dRnd"
                  }
                  actionType   =   "CRANE_WINCH"
                  speed   =   30
                  withCenteredPosition   =   True
               }
            ]
            __type   =   "EquipmentChainOrientationInputElementCockpit"
         }
      }
   }
   prop_truck_view_actions_mapper   =   {
      uiModeName   =   "UID_HUD_CRANE_MODE"
      uiAlternativeModeName   =   "UID_HUD_ALTERNATIVE_CRANE_MODE_LABEL"
      firstControlSectionUiName   =   "UID_HUD_FIRST_SECTION_CRANE"
      secondControlSectionUiName   =   "UID_HUD_SECOND_SECTION_CRANE"
      axisControls   =   [
         {
            uiActionDescription   =   "UID_HUD_CRANE_Z"
            actionData   =   {
               actionType   =   "CRANE_Z"
               __type   =   "AxisActionData"
            }
            axisDirectionType   =   "Y_AXIS"
         },
         {
            uiActionDescription   =   "UID_HUD_CRANE_X"
            actionData   =   {
               actionType   =   "CRANE_X"
               __type   =   "AxisActionData"
            }
         },
         {
            uiActionDescription   =   "UID_HUD_CRANE_Y"
            actionData   =   {
               actionType   =   "CRANE_Y"
               __type   =   "AxisActionData"
            }
            activationInputType   =   "LEFT_MOUSE_BUTTON"
            axisDirectionType   =   "Y_AXIS"
            controlModeType   =   "WITH_BUTTONS"
         },
         {
            uiActionDescription   =   "UID_HUD_CRANE_WINCH_ROTATE"
            actionData   =   {
               actionType   =   "CRANE_ROTATE"
               __type   =   "AxisActionData"
            }
            activationInputType   =   "LEFT_MOUSE_BUTTON"
            controlModeType   =   "WITH_BUTTONS"
         },
         {
            uiActionDescription   =   "UID_HUD_CRANE_WINCH_LENGTH"
            actionData   =   {
               actionType   =   "CRANE_WINCH"
               __type   =   "AxisActionData"
            }
            activationInputType   =   "RIGHT_MOUSE_BUTTON"
            axisDirectionType   =   "Y_AXIS"
            controlModeType   =   "WITH_BUTTONS"
         },
         {
            uiActionDescription   =   "UID_HUD_CRANE_WINCH_ROTATE"
            actionData   =   {
               actionType   =   "CRANE_ROTATE"
               __type   =   "AxisActionData"
            }
            activationInputType   =   "RIGHT_MOUSE_BUTTON"
            controlModeType   =   "WITH_BUTTONS"
         }
      ]
      staticTruckAxisControls   =   [
         {
            uiActionDescription   =   "UID_HUD_CRANE_Z"
            inputLink   =   {
               inputLink   =   "Game.FirstVerticalAxis"
               __type   =   "InputLinkVector"
            }
            axisDirectionType   =   "Y_AXIS"
            actionData   =   {
               actionType   =   "CRANE_Z"
               __type   =   "AxisActionData"
            }
         },
         {
            uiActionDescription   =   "UID_HUD_CRANE_X"
            inputLink   =   {
               inputLink   =   "Game.FirstHorizontalAxis"
               __type   =   "InputLinkVector"
            }
            actionData   =   {
               actionType   =   "CRANE_X"
               __type   =   "AxisActionData"
            }
         },
         {
            uiActionDescription   =   "UID_HUD_CRANE_Y"
            inputLink   =   {
               inputLink   =   "Game.SecondVerticalAxis"
               __type   =   "InputLinkVector"
            }
            axisDirectionType   =   "Y_AXIS"
            actionData   =   {
               actionType   =   "CRANE_Y"
               __type   =   "AxisActionData"
            }
         },
         {
            uiActionDescription   =   "UID_HUD_CRANE_WINCH_ROTATE"
            inputLink   =   {
               inputLink   =   "Game.ThirdHorizontalAxis"
               __type   =   "InputLinkVector"
            }
            actionData   =   {
               actionType   =   "CRANE_ROTATE"
               __type   =   "AxisActionData"
            }
         },
         {
            uiActionDescription   =   "UID_HUD_CRANE_WINCH_LENGTH"
            inputLink   =   {
               inputLink   =   "Game.ThirdVerticalAxis"
               __type   =   "InputLinkVector"
            }
            axisDirectionType   =   "Y_AXIS"
            actionData   =   {
               actionType   =   "CRANE_WINCH"
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
            isActionActive   =   False
         },
         {
         },
         {
         }
      ]
      alternativeActionsInDefaultMode   =   [
         {
            isActionActive   =   False
            isHoldableActionActive   =   False
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
            actionMappingType   =   "GENERIC_ACTION"
            uiActionDescription   =   "UID_HUD_CRANE_WINCH_ATTACH"
            isToggleable   =   True
            altUiActionDescription   =   "UID_HUD_CRANE_WINCH_DETACH"
            namedActionType   =   "TOGGLE_CRANE_WINCH"
            holdableAction   =   {
               uiActionDescription   =   "UID_HUD_SWITCH_WINCH_MODE"
               namedActionType   =   "SWITCH_CRANE_WINCH_MODE"
               canWorkWithEngineOff   =   True
               __type   =   "HoldableAction"
            }
            canWorkWithEngineOff   =   True
            holdThreshold   =   1
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
            uiActionDescription   =   "UID_HUD_CRANE_NEXT_TARGET"
            namedActionType   =   "CYCLE_CRANE_TARGET"
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
            uiActionDescription   =   "UID_HUD_CRANE_ANCHORS"
            namedActionType   =   "TOGGLE_CRANE_ANCHORS"
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
         actionMappingType   =   "GENERIC_ACTION"
         uiActionDescription   =   "UID_HUD_CRANE_WINCH_ATTACH"
         isToggleable   =   True
         altUiActionDescription   =   "UID_HUD_CRANE_WINCH_DETACH"
         namedActionType   =   "TOGGLE_CRANE_WINCH"
         canWorkWithEngineOff   =   True
         __type   =   "ActionMapping"
      }
      secondAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         uiActionDescription   =   "UID_HUD_CRANE_NEXT_TARGET"
         namedActionType   =   "CYCLE_CRANE_TARGET"
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
         uiActionDescription   =   "UID_HUD_SWITCH_WINCH_MODE"
         namedActionType   =   "SWITCH_CRANE_WINCH_MODE"
         canWorkWithEngineOff   =   True
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
         uiActionDescription   =   "UID_HUD_CRANE_ANCHORS"
         namedActionType   =   "TOGGLE_CRANE_ANCHORS"
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
            isHoldableActionActive   =   False
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
            actionMappingType   =   "GENERIC_ACTION"
            uiActionDescription   =   "UID_HUD_CRANE_WINCH_ATTACH"
            isToggleable   =   True
            altUiActionDescription   =   "UID_HUD_CRANE_WINCH_DETACH"
            namedActionType   =   "TOGGLE_CRANE_WINCH"
            holdableAction   =   {
               uiActionDescription   =   "UID_HUD_SWITCH_WINCH_MODE"
               namedActionType   =   "SWITCH_CRANE_WINCH_MODE"
               canWorkWithEngineOff   =   True
               __type   =   "HoldableAction"
            }
            canWorkWithEngineOff   =   True
            holdThreshold   =   1
         },
         {
            actionMappingType   =   "GENERIC_ACTION"
            uiActionDescription   =   "UID_HUD_CRANE_NEXT_TARGET"
            namedActionType   =   "CYCLE_CRANE_TARGET"
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
            uiActionDescription   =   "UID_HUD_CRANE_ANCHORS"
            namedActionType   =   "TOGGLE_CRANE_ANCHORS"
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
         mouseSensitivity   =   0.05
         __type   =   "TruckInputConfiguration"
      }
   }
   prop_camera_equipment_preset   =   {
      preset   =   {
         cameraFocusPointOffset   =   {
            y   =   -2
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
               distance   =   15
               followTerrainOffset   =   4
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "1"   =   {
               distance   =   17
               followTerrainOffset   =   4.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "2"   =   {
               distance   =   19
               followTerrainOffset   =   5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "3"   =   {
               distance   =   21
               followTerrainOffset   =   5.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "4"   =   {
               distance   =   23
               followTerrainOffset   =   6
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "5"   =   {
               distance   =   25
               followTerrainOffset   =   6.25
               __type   =   "RbVehicleCameraScrollPoint"
            }
         }
         __type   =   "RbVehicleCameraParams"
      }
      equipmentCameraType   =   "CRANE"
      craneCameraVerticalSpeed   =   4
   }
   prop_truck_camera_equipment_cockpit_preset   =   {
      preset   =   {
         cameraMouseSensitivity   =   0.3
         cameraGamepadSensitivity   =   0.3
         eyeOffset   =   {
            y   =   0.03
            __type   =   "Vector3d"
         }
         rotationLimitsX   =   {
            x   =   -60
            y   =   40
            __type   =   "Vector2dRnd"
         }
         rotationLimitsY   =   {
            x   =   -160
            y   =   170
            __type   =   "Vector2dRnd"
         }
         leftSideRearView   =   {
            isEnabled   =   True
            transitionStart   =   100
            transitionEnd   =   145
            baseRotation   =   {
               __type   =   "Vector2dRnd"
            }
            eyeOffset   =   {
               x   =   0.55
               z   =   0.3
               __type   =   "Vector3d"
            }
            rollAngle   =   -3
            rotationLimitsX   =   {
               x   =   -30
               y   =   60
               __type   =   "Vector2dRnd"
            }
            __type   =   "RbCockpitCameraRearViewParams"
         }
         boundingVolumeObjectName   =   "cutoff_volume_02"
         __type   =   "RbCockpitCameraParams"
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
      velocityScale   =   1.15
      stuckVelocityThreshold   =   2
      stuckScaleChange   =   0.5
      steerScaleByAngle   =   {
         spline   =   [
            0,
            0.392653,
            0,
            -18.58505,
            1.741938,
            0.388271,
            45.18588,
            0.51803,
            45.18588,
            0.51803,
            45.18588,
            0.51803,
            75.35004,
            0.758457,
            75.35004,
            0.758457,
            75.35004,
            0.758457,
            89.89815,
            0.982149,
            89.89815,
            0.982149,
            89.89815,
            0.982149
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
         z   =   2
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
            shakerBone   =   "BoneBody_cdt"
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
         Cabine   =   {
            shakerBone   =   "BoneCabin_cdt"
            frequency   =   100
            maxAngleOffsetScale   =   1
            minAngle   =   [
               0,
               0,
               -0.05
            ]
            maxAngle   =   [
               0,
               0,
               0.05
            ]
            angleMultiplier   =   [
               0,
               1,
               1,
               0.5
            ]
            maxPositionOffsetScale   =   1
            minOffset   =   [
               -0.001,
               0,
               -0.001
            ]
            maxOffset   =   [
               0.001,
               0,
               0.001
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
               1,
               1
            ]
         }
         Engine   =   {
            shakerBone   =   "Bone_Shaker_Engine"
            frequency   =   100
            maxAngleOffsetScale   =   1
            minAngle   =   [
               0,
               0,
               -0.05
            ]
            maxAngle   =   [
               0,
               0,
               0.05
            ]
            angleMultiplier   =   [
               0,
               1,
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
               1,
               1
            ]
         }
         Exhaust_Flap_lft   =   {
            shakerBone   =   "Bone_Shaker_Flap_lft"
            frequency   =   0.5
            maxAngleOffsetScale   =   1
            backAngleOffsetScale   =   0.5
            minAngle   =   [
               60,
               0,
               0
            ]
            maxAngle   =   [
               90,
               0,
               0
            ]
            angleMultiplier   =   [
               0,
               0.6,
               1,
               1
            ]
            shakeOnStartTimeMs   =   0
            dampingStep   =   15
            frequencyMultiplier   =   [
               0,
               0.2,
               1,
               1
            ]
         }
         Exhaust_Flap_rht   =   {
            shakerBone   =   "Bone_Shaker_Flap_rht"
            frequency   =   0.5
            maxAngleOffsetScale   =   1
            backAngleOffsetScale   =   0.5
            minAngle   =   [
               60,
               0,
               0
            ]
            maxAngle   =   [
               90,
               0,
               0
            ]
            angleMultiplier   =   [
               0,
               0.6,
               1,
               1
            ]
            shakeOnStartTimeMs   =   0
            dampingStep   =   15
            frequencyMultiplier   =   [
               0,
               0.2,
               1,
               1
            ]
         }
         CraneCompressor   =   {
            shakerBone   =   "Bone_Shaker_Crane"
            frequency   =   100
            maxAngleOffsetScale   =   1
            minAngle   =   [
               0,
               0,
               -0.1
            ]
            maxAngle   =   [
               0,
               0,
               0.1
            ]
            angleMultiplier   =   [
               0,
               1,
               1,
               0.5
            ]
            maxPositionOffsetScale   =   1
            minOffset   =   [
               -0.004,
               0,
               -0.004
            ]
            maxOffset   =   [
               0.004,
               0,
               0.004
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
   prop_truck_anchors_no_collision_controller   =   {
      anchors   =   [
         {
            anchorConstraints   =   [
               {
                  constraintName   =   "LegFrontLeft_a"
                  speed   =   0.5
                  angularSpeed   =   40
                  maxAngle   =   -90
                  maxPosition   =   1.5
               },
               {
                  constraintName   =   "LegFrontLeft_b"
                  speed   =   0.515
                  maxPosition   =   -0.515
               }
            ]
            platformAttachedToAnchor   =   "geo_Anchor_left_front"
            platformAttachedToTruck   =   "geo_TruckAnchor_left_front"
            platformVisibilityStage   =   1
         },
         {
            anchorConstraints   =   [
               {
                  constraintName   =   "LegFrontRight_a"
                  speed   =   0.5
                  angularSpeed   =   40
                  maxAngle   =   90
                  maxPosition   =   1.5
               },
               {
                  constraintName   =   "LegFrontRight_b"
                  speed   =   0.515
                  maxPosition   =   -0.515
               }
            ]
            platformAttachedToAnchor   =   "geo_Anchor_right_front"
            platformAttachedToTruck   =   "geo_TruckAnchor_right_front"
            platformVisibilityStage   =   1
         },
         {
            anchorConstraints   =   [
               {
                  constraintName   =   "LegRearLeft_a"
                  speed   =   0.5
                  angularSpeed   =   80
                  maxAngle   =   -175
                  maxPosition   =   1.5
               },
               {
                  constraintName   =   "LegRearLeft_b"
                  speed   =   0.515
                  maxPosition   =   -0.515
               }
            ]
            platformAttachedToAnchor   =   "geo_Anchor_left_rear"
            platformAttachedToTruck   =   "geo_TruckAnchor_left_rear"
            platformVisibilityStage   =   1
         },
         {
            anchorConstraints   =   [
               {
                  constraintName   =   "LegRearRright_a"
                  speed   =   0.5
                  angularSpeed   =   80
                  maxAngle   =   175
                  maxPosition   =   1.5
               },
               {
                  constraintName   =   "LegRearRright_b"
                  speed   =   0.515
                  maxPosition   =   -0.515
               }
            ]
            platformAttachedToAnchor   =   "geo_Anchor_right_rear"
            platformAttachedToTruck   =   "geo_TruckAnchor_right_rear"
            platformVisibilityStage   =   1
         }
      ]
      fallingThreshold   =   20
      massScalers   =   [
         {
            bodyName   =   "BoneBody_cdt"
            scaler   =   3
         },
         {
            bodyName   =   "BoneLegFL_a_cdt"
            scaler   =   4
         },
         {
            bodyName   =   "BoneLegFR_a_cdt"
            scaler   =   4
         },
         {
            bodyName   =   "BoneLegRL_a_cdt"
            scaler   =   4
         },
         {
            bodyName   =   "BoneLegRR_a_cdt"
            scaler   =   4
         },
         {
            bodyName   =   "BoneLegFL_b_cdt"
            scaler   =   2
         },
         {
            bodyName   =   "BoneLegFR_b_cdt"
            scaler   =   2
         },
         {
            bodyName   =   "BoneLegRL_b_cdt"
            scaler   =   2
         },
         {
            bodyName   =   "BoneLegRR_b_cdt"
            scaler   =   2
         }
      ]
      anchorsNames   =   [
         "BoneLegFL_b_cdt",
         "BoneLegFR_b_cdt",
         "BoneLegRL_b_cdt",
         "BoneLegRR_b_cdt"
      ]
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
   prop_vehicle_lights_material   =   {
      lights   =   {
         "0"   =   {
            defaultName   =   "default"
            geomNames   =   [
               "reflector_headlight",
               "reflector_headlight_crane"
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
               "marker_lights"
            ]
            __type   =   "Headlights"
         }
         "4"   =   {
            defaultName   =   "default"
            lightName   =   "lights_emissive"
            geomNames   =   [
               "_hp_cab_indicators",
               "_hp_cab_crane_gauges"
            ]
            __type   =   "CockpitLights"
         }
      }
   }
   prop_truck_mirror   =   {
      mirrors   =   [
         {
            name   =   "mirror_case_top_left"
            angleRotateX   =   -5.8
            angleRotateY   =   -10.7
            angleRotateZ   =   0
         },
         {
            name   =   "mirror_case_bottom_left"
            angleRotateX   =   3.4
            angleRotateY   =   -4
            angleRotateZ   =   3
         },
         {
            name   =   "mirror_case_top_right"
            angleRotateX   =   -3
            angleRotateY   =   -2
            angleRotateZ   =   0
         },
         {
            name   =   "mirror_case_bottom_right"
            angleRotateX   =   1.8
            angleRotateY   =   -5.1
            angleRotateZ   =   0
         }
      ]
   }
}
__type   =   "truck_view"
