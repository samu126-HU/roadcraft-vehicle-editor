properties   =   {
   geom   =   {
      nameTpl   =   "zikz_605e_mobile_scalper_old"
   }
   prop_truck_view_controller   =   {
      engineFiringDelay   =   1000
   }
   prop_truck_view   =   {
      truckName   =   "zikz_605e_mobile_scalper_old"
      truckType   =   "truck_heavy"
      truckVisibilityInFogOfWar   =   60
   }
   prop_truck_rb   =   {
      suspensionSet   =   {
         front   =   {
            min   =   -0.25
            max   =   0.3
            height   =   0.1
            strength   =   0.03
            damping   =   0.2
         }
         rearDiffers   =   True
         rear   =   {
            min   =   -0.1
            max   =   0.1
            strength   =   0.95
            damping   =   0.8
         }
      }
      suspensionAxleCollection   =   [
         {
            min   =   -0.25
            max   =   0.3
            height   =   0.1
            strength   =   0.03
            damping   =   0.2
         },
         {
            max   =   0.01
            height   =   0.001
            strength   =   0.8
            damping   =   0.8
         },
         {
            min   =   -0.1
            max   =   0.1
            strength   =   0.95
            damping   =   0.9
         }
      ]
      suspensionCollectionMap   =   {
         Front   =   {
            __value   =   0
         }
         Rear   =   {
            __value   =   1
         }
         Trailer   =   {
            __value   =   2
         }
      }
      engine   =   {
         params   =   {
            torque   =   300000
            brakesDelay   =   0.1
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
                  angularVelocity   =   1.3
                  gearRatio   =   5.2
                  targetSpeedRangeKmh   =   {
                     y   =   13
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   2.5
                  gearRatio   =   4.2
                  targetSpeedRangeKmh   =   {
                     x   =   13
                     y   =   17
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   3.4
                  gearRatio   =   3.7
                  targetSpeedRangeKmh   =   {
                     x   =   17
                     y   =   22
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   4.5
                  gearRatio   =   3.2
                  targetSpeedRangeKmh   =   {
                     x   =   22
                     y   =   46
                     __type   =   "Vector2dRnd"
                  }
               }
            ]
            reverseGear   =   {
               angularVelocity   =   0.9
               gearRatio   =   4
               __type   =   "TruckSingleGearParams"
            }
            highGear   =   {
               angularVelocity   =   7.5
               __type   =   "TruckSingleGearParams"
            }
            lowRangeGear   =   {
               angularVelocity   =   0.25
               gearRatio   =   4.2
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
      maxSteerSpeed   =   0.016
      backSteerSpeed   =   0.016
      pedalsResponsiveness   =   0.2
      linImpulseTriggerLinVelMax   =   21
      linImpulseTriggerWheelAngVelMax   =   22
      isNeutralGearWheelResistanceEnabled   =   False
      isReverseWheelResistanceEnabled   =   True
      diffLockType   =   "ALWAYS"
      wheelsSubstanceResistanceMult   =   {
         spline   =   [
            0,
            0.5,
            0.5,
            0.7,
            1,
            0.7
         ]
         __type   =   "SplineCurve1d"
      }
      steerRotateEngineControl   =   False
      wheelSlotWithDescs   =   [
         {
            steeringAngle   =   37
            geomName   =   "r_wheel_truck_01"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.02
            customSteeringJointObjName   =   "r_rack_01"
            suspensionCollectionAxleIndex   =   0
            enableLateralForce   =   True
            editableWheel   =   "truck_wheel"
         },
         {
            steeringAngle   =   37
            geomName   =   "r_wheel_truck_02"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.02
            suspensionCollectionAxleIndex   =   0
            enableLateralForce   =   True
            editableWheel   =   "truck_wheel"
         },
         {
            geomName   =   "r_wheel_truck_03"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.02
            suspensionCollectionAxleIndex   =   1
            enableLateralForce   =   True
            editableWheel   =   "truck_wheel"
         },
         {
            geomName   =   "r_wheel_truck_04"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.02
            suspensionCollectionAxleIndex   =   1
            enableLateralForce   =   True
            editableWheel   =   "truck_wheel"
         },
         {
            steeringAngle   =   37
            geomName   =   "l_wheel_truck_01"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.02
            customSteeringJointObjName   =   "l_rack_01"
            suspensionCollectionAxleIndex   =   0
            enableLateralForce   =   True
            editableWheel   =   "truck_wheel"
         },
         {
            steeringAngle   =   37
            geomName   =   "l_wheel_truck_02"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.02
            suspensionCollectionAxleIndex   =   0
            enableLateralForce   =   True
            editableWheel   =   "truck_wheel"
         },
         {
            geomName   =   "l_wheel_truck_03"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.02
            suspensionCollectionAxleIndex   =   1
            enableLateralForce   =   True
            editableWheel   =   "truck_wheel"
         },
         {
            geomName   =   "l_wheel_truck_04"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.02
            suspensionCollectionAxleIndex   =   1
            enableLateralForce   =   True
            editableWheel   =   "truck_wheel"
         },
         {
            geomName   =   "r_wheel_trailer_01"
            isRightSided   =   True
            isRear   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "semitrailer_wheel"
         },
         {
            geomName   =   "r_wheel_trailer_02"
            isRightSided   =   True
            isRear   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "semitrailer_wheel"
         },
         {
            geomName   =   "r_wheel_trailer_03"
            isRightSided   =   True
            isRear   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "semitrailer_wheel"
         },
         {
            geomName   =   "l_wheel_trailer_01"
            isRear   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "semitrailer_wheel"
         },
         {
            geomName   =   "l_wheel_trailer_02"
            isRear   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "semitrailer_wheel"
         },
         {
            geomName   =   "l_wheel_trailer_03"
            isRear   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "semitrailer_wheel"
         }
      ]
      wheelPool   =   {
         truck_wheel   =   {
            __value   =   "auto_wheel_zikz_605e_mobile_scalper_old_truck_wheel"
         }
         semitrailer_wheel   =   {
            __value   =   "auto_wheel_zikz_605e_mobile_scalper_old_semitrailer_wheel"
         }
      }
      controllableSteeringConstraints   =   [
         {
            constraintName   =   "r_steer_rod_01"
            angularSpeed   =   95
            minAngle   =   -25
            maxAngle   =   25
         },
         {
            constraintName   =   "r_steer_rod_02"
            angularSpeed   =   95
            minAngle   =   -25
            maxAngle   =   25
         },
         {
            constraintName   =   "l_steer_rod_01"
            angularSpeed   =   95
            minAngle   =   -25
            maxAngle   =   25
         },
         {
            constraintName   =   "l_steer_rod_02"
            angularSpeed   =   95
            minAngle   =   -25
            maxAngle   =   25
         }
      ]
      deformSyncData   =   {
         regions   =   [
            {
               size   =   {
                  x   =   2
                  y   =   4
                  __type   =   "Vector2d"
               }
               offset   =   {
                  y   =   -0.5
                  __type   =   "Vector2d"
               }
               attachNode   =   "geo_frame"
            },
            {
               size   =   {
                  x   =   2
                  y   =   3
                  __type   =   "Vector2d"
               }
               offset   =   {
                  y   =   -3.2
                  __type   =   "Vector2d"
               }
               attachNode   =   "geo_trailer_2x2"
            }
         ]
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
                     "TruckShaker_Dcsmf50e/Play",
                     "TruckShaker_Dcsmf50e1/Stop",
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
                     "PlaySound_9_1/Play",
                     "PlaySound_Eb6ah8fc/Play"
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
                     "TruckShaker_Dcsmf50e1/Play",
                     "TruckShaker_Dcsmf50e/Stop"
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
               }
               SetSoundSwitch   =   {
                  viewData   =   {
                     x   =   3650
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
               PlaySound_9   =   {
                  viewData   =   {
                     x   =   4000
                     y   =   5000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_9_1/Stop",
                     "PlaySound_9_3/Stop",
                     "PlaySound_Eb6ah8fc/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_zikz_605e_engine_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_9_1   =   {
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
                        name   =   "vhc_zikz_605e_engine"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_9_3   =   {
                  viewData   =   {
                     x   =   4000
                     y   =   4600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_zikz_605e_engine_start"
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
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_zikz_605e_brake_pull"
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
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_zikz_605e_brake_release"
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
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_zikz_605e_handbrake_on"
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
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_zikz_605e_handbrake_off"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnGearUpdate   =   {
                  viewData   =   {
                     x   =   5700
                     y   =   4850
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
                     "PlaySound_5/Play"
                  ]
                  GetLastGear   =   [
                     "SetSoundParameter_1_2/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               SetSoundParameter_1_2   =   {
                  viewData   =   {
                     x   =   6150
                     y   =   5150
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
               PlaySound_5   =   {
                  viewData   =   {
                     x   =   6150
                     y   =   4850
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
               TruckShaker_Dcsmf50e   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   4900
                  }
                  duration   =   5
                  shakerName   =   "EngineStart"
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_Dcsmf50e1   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   5100
                  }
                  duration   =   3
                  shakerName   =   "EngineShutdown"
                  maxRPM   =   True
                  __type   =   "BlueprintNodeTruckShaker"
               }
               OnEngineAcceleration_E259Tg0O   =   {
                  viewData   =   {
                     x   =   5700.676
                     y   =   6450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAcceleration   =   [
                     "SetSoundParameter_1_1_1_E259Tg0O1/SetParameter",
                     "Schedule_E259Tg0O4/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               SetSoundParameter_1_1_1_E259Tg0O1   =   {
                  viewData   =   {
                     x   =   6300.676
                     y   =   6450
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
               SetSoundParameter_1_1_1_1_E259Tg0O2   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   6850
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
               OnEngineInertia_E259Tg0O3   =   {
                  viewData   =   {
                     x   =   5700
                     y   =   6850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnInertia   =   [
                     "SetSoundParameter_1_1_1_1_E259Tg0O2/SetParameter",
                     "Schedule_E259Tg0O4/Start"
                  ]
                  __type   =   "BlueprintNodeOnEngineInertia"
               }
               Schedule_E259Tg0O4   =   {
                  viewData   =   {
                     x   =   5950
                     y   =   6650
                  }
                  OnPeriod   =   [
                     "PlaySound_3_E259Tg0O5/Play"
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
               PlaySound_3_E259Tg0O5   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   6650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_zikz_605e_brake_release"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnEngineShutdown_E259Tg0O6   =   {
                  viewData   =   {
                     x   =   5700
                     y   =   6650
                  }
                  OnEngineShutdown   =   [
                     "Schedule_E259Tg0O4/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               CloneSoundEmitter_Ea2bnxb3   =   {
                  viewData   =   {
                     x   =   4150
                     y   =   6200
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
               CloneSoundEmitter_Ea2cab6f   =   {
                  viewData   =   {
                     x   =   4150
                     y   =   5350
                  }
                  GetSoundEmitter   =   [
                     "SetSoundParameter_1_1_1_E259Tg0O1/emitterRef/cb",
                     "PlaySound_3_E259Tg0O5/emitterRef/cb",
                     "SetSoundParameter_1_1_1_1_E259Tg0O2/emitterRef/cb",
                     "PlaySound_9_3/emitterRef/cb",
                     "PlaySound_9_1/emitterRef/cb",
                     "PlaySound_9/emitterRef/cb",
                     "PlaySound_3_1/emitterRef/cb",
                     "PlaySound_3_2/emitterRef/cb",
                     "SetSoundParameter_1_Eb6ahA034/emitterRef/cb",
                     "SetSoundParameter_1_1_Eb6ahA035/emitterRef/cb",
                     "PlaySound_Eb6ah8fc/emitterRef/cb",
                     "PlaySound_5/emitterRef/cb",
                     "SetSoundParameter_1_2/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneChassis_19"
                     owner   =   "<OWNER>"
                     posOffset   =   {
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
               PlaySound_Eb6ah8fc   =   {
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
               GetTruckRpm_Eb6ahA03   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   5779
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  Get   =   [
                     "FloatSubtract_Eb6ahA037/aFloat/cb",
                     "FloatSwitch_Eb6ahA038/trueValue/cb"
                  ]
                  __type   =   "BlueprintNodeGetTruckRpm"
               }
               OnInit_Eb6ahA031   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   5679
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "Schedule_Eb6ahA032/Start"
                  ]
                  __type   =   "BlueprintCommonLibraryOninit"
               }
               Schedule_Eb6ahA032   =   {
                  viewData   =   {
                     x   =   5847.742
                     y   =   5679
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_1_Eb6ahA034/SetParameter",
                     "SetSoundParameter_1_1_Eb6ahA035/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               TruckVelocity_Eb6ahA033   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   6029
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetLinearVelocity   =   [
                     "SetSoundParameter_1_1_Eb6ahA035/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               SetSoundParameter_1_Eb6ahA034   =   {
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
               SetSoundParameter_1_1_Eb6ahA035   =   {
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
               FloatCommutator_Eb6ahA036   =   {
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
                     "FloatSubtract_Eb6ahA037/bFloat/cb"
                  ]
                  __type   =   "BlueprintNodeFloatCommutator"
               }
               FloatSubtract_Eb6ahA037   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   5829
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  Float   =   [
                     "FloatCompare_Eb6ahA039/aFloat/cb",
                     "FloatSwitch_Eb6ahA038/falseValue/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatsubstract"
               }
               FloatSwitch_Eb6ahA038   =   {
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
                     "FloatSum_Eb6ahA03e/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeBoolToFloatCommutator"
               }
               FloatCompare_Eb6ahA039   =   {
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
                     "FloatSwitch_Eb6ahA038/condition/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatcompare"
               }
               SuspensionOscillations_Eb6ahA03a   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   5879
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  zeroBorder   =   0.04
                  OnOscillationsStarted   =   [
                     "FloatCommutator_Eb6ahA036/PassFirstValue"
                  ]
                  OnOscillationsStopped   =   [
                     "FloatCommutator_Eb6ahA036/PassSecondValue"
                  ]
                  __type   =   "BlueprintNodeSuspensionOscillations"
               }
               GetTruckAngularVelocity_Eb6ahA03b   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   5879
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetAngularVelocity   =   [
                     "FloatAbs_Eb6ahA03d/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeTruckAngularVelocity"
               }
               FloatMultiplication_Eb6ahA03c   =   {
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
                     "FloatSum_Eb6ahA03e/bFloat/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatmultiplication"
               }
               FloatAbs_Eb6ahA03d   =   {
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
                     "FloatMultiplication_Eb6ahA03c/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeFloatAbs"
               }
               FloatSum_Eb6ahA03e   =   {
                  viewData   =   {
                     x   =   7350
                     y   =   5758
                  }
                  Float   =   [
                     "SetSoundParameter_1_Eb6ahA034/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatsum"
               }
            }
            groups   =   {
               "[SOUND] gear update"   =   {
                  x   =   5600
                  y   =   4600
                  width   =   1800
                  height   =   854
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] acceleration input"   =   {
                  x   =   5600
                  y   =   6300
                  width   =   1800
                  height   =   750
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] rpm and speed_Eb6ahA03f"   =   {
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
                  zeroBorderEnergy   =   50000
                  timeInterval   =   200
                  exceptionalBodyNames   =   [
                     "BoneRampRight_cdt",
                     "BoneRampLeft_cdt",
                     "BoneRampLeft_end_cdt",
                     "BoneRampRight_end_cdt"
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
                     def   =   1
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
                  zeroBorder   =   1.001
                  diffMultiplier   =   800
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
                     def   =   "old"
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
               OnTPLAnimationBegin_E4jekj73   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1650
                  }
                  OnAnimStart   =   [
                     "PlaySound_E4jekj732/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnBegin"
               }
               OnTPLAnimationEnd_E4jekj731   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1850
                  }
                  OnAnimStop   =   [
                     "PlaySound_E4jekj733/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnEnd"
               }
               PlaySound_E4jekj732   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1650
                  }
                  OnSoundStart   =   [
                     "PlaySound_EaecI78s/Play"
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
               PlaySound_E4jekj733   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1850
                  }
                  OnSoundStart   =   [
                     "PlaySound_EaecI78s1/Play"
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
               IntCheck_E4jekj734   =   {
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
                     "PlaySound_E4jekj736/Play"
                  ]
                  __type   =   "BlueprintLibraryCheckint"
               }
               OnHandbrakeStateChanged_E4jekj735   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1400
                  }
                  OnHandbrakeOn   =   [
                     "IntCheck_E4jekj734/Input"
                  ]
                  __type   =   "BlueprintNodeOnHandbrakeStateChanged"
               }
               PlaySound_E4jekj736   =   {
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
               GetTruckVelocity_E4jekj737   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1500
                  }
                  GetLinearVelocity   =   [
                     "IntCheck_E4jekj734/intToCheck/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               OnGearUpdate_Ec28h50f   =   {
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
                     "PlaySound_3_Ec28h50f1/Play"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               PlaySound_3_Ec28h50f1   =   {
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
               CloneSoundEmitter_Ec28h50f2   =   {
                  viewData   =   {
                     x   =   4400
                     y   =   2100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_3_Ec28h50f1/emitterRef/cb",
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
               CloneSoundEmitter_EaecHO2M   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   1650
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_EaecI78s/emitterRef/cb",
                     "PlaySound_EaecI78s1/emitterRef/cb"
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
               CloneSoundEmitter_EaecHO2M1   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   1850
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E4jekj732/emitterRef/cb",
                     "PlaySound_E4jekj733/emitterRef/cb"
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
               PlaySound_EaecI78s   =   {
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
               PlaySound_EaecI78s1   =   {
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
               PlaySound_E8maFvap   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "Schedule_E8maFvap2/Start"
                  ]
                  OnSoundEnd   =   [
                     "Schedule_E8maFvap2/Stop"
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
               GetInfoElementCockpitForSoundWithSchedule_E8maFvap1   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_E8maFvap/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_E8maFvap/Stop"
                  ]
                  nameBoneBro   =   "ctrl_steering_wheel"
                  isWheel   =   True
                  GetCurrentSteerSpeed   =   [
                     "SetSoundParameter_E8maFvap3/valueRef/cb"
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
               Schedule_E8maFvap2   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   3550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_E8maFvap3/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               SetSoundParameter_E8maFvap3   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   3550
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
               CloneSoundEmitter_E8maFvap4   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E8maFvap/emitterRef/cb",
                     "SetSoundParameter_E8maFvap3/emitterRef/cb"
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
               PlaySound_Ea2bA71B   =   {
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
                        name   =   "vhc_body_cockpit_lever"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               GetInfoElementCockpitForSoundWithEvent_Ea2bA71B1   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3850
                  }
                  OnStart   =   [
                     "PlaySound_Ea2bA71B/Play"
                  ]
                  nameBoneBro   =   "ctrl_gear_stick_low"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               CloneSoundEmitter_Ea2bA71B2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4000
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea2bA71B/emitterRef/cb"
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
                  withPhysPlants   =   True
                  withTruckWheels   =   True
                  notCollideBodiesOnlyWithTerrain   =   False
                  exceptionalBodyNames   =   [
                     "BoneTrailer_cdt",
                     "BoneRampRear_a_cdt",
                     "BoneRampRear_b_cdt",
                     "BoneRampLeft_a_cdt",
                     "BoneRampLeft_b_cdt",
                     "BoneLegLeft_1_cdt",
                     "BoneLegRight_1_cdt",
                     "BoneRampRight_a_cdt",
                     "BoneRampRight_b_cdt",
                     "BoneLegRight_2_cdt",
                     "BoneLegLeft_2_cdt",
                     "BoneLegRight_3_cdt",
                     "BoneLegLeft_3_cdt",
                     "BoneSuspensionRockerLeft_cdt",
                     "BoneSuspensionRockerRight_cdt",
                     "BoneFriction_cdt",
                     "BoneBeltL1_cdt",
                     "BoneBeltL2_cdt",
                     "BoneBeltR1_cdt",
                     "BoneBeltR2_cdt",
                     "BoneTrailer_PhysIK_cdt",
                     "BoneAxle3_BalancerBase",
                     "BoneAxle4_BalancerBase",
                     "BoneAxle5_BalancerBase",
                     "r_steering_rod_01",
                     "l_steering_rod_01",
                     "r_steering_rod_02",
                     "l_steering_rod_02",
                     "BoneSunshieldL_cdt",
                     "BoneSunshieldR_cdt"
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
                     y   =   6700
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
                        "Ramp"
                     ]
                  }
                  __type   =   "BlueprintNodeOnSequentialChainConstraintStateChanged"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   6700
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
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         SFX   =   {
            nodes   =   {
               OnEngineStarting   =   {
                  viewData   =   {
                     x   =   3850
                     y   =   8400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineStarting   =   [
                     "VFXRestart_3/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarting"
               }
               OnEngineStarted   =   {
                  viewData   =   {
                     x   =   3840.561
                     y   =   7250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineStarted   =   [
                     "VFXRestart/Input",
                     "VFXRestart_2/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown   =   {
                  viewData   =   {
                     x   =   3838.561
                     y   =   7400
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
                     x   =   3850
                     y   =   7900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAcceleration   =   [
                     "VFXRestart_1/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9ng3b7T/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse   =   {
                  viewData   =   {
                     x   =   3850
                     y   =   7700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineReverse   =   [
                     "VFXRestart_1/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9ng3b7T/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               VFXRestart   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   7400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze_xxxl"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   7500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "VFXStop_E9ng3X1r/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze_xxxl"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   7250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "VFXRestart_E9ng3Jat/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_exhaust_med_cars_gas_zikz_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_3   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   8400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "TruckShaker_Ea9dSR6c/Stop",
                     "TruckShaker_EaejUQeR/Stop",
                     "TruckShaker_EaejV1eH/Stop",
                     "TruckShaker_Eaek3Ufs/Stop"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_exhaust_oil"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_1   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   7750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_med_cars_acceleration_zikz_new"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               OnMobileSandScreenStateChanged_E6hfLK6S   =   {
                  viewData   =   {
                     x   =   3848.88
                     y   =   8752.213
                  }
                  OnBeltsUnfolded   =   [
                     "ShowHideGeomObjects_E6hfLK6S2/Input"
                  ]
                  OnStartSpawnSand   =   [
                     "ShowHideGeomObjects_E9qebI68/Input"
                  ]
                  OnBeltsStartFolding   =   [
                     "ShowHideGeomObjects_E6hfLK6S1/Input"
                  ]
                  OnStopSpawnSand   =   [
                     "StartStopRotators_Ea7dXp6g1/Input"
                  ]
                  OnStartOpeningChain   =   [
                     "ShowHideGeomObjects_Ea3fGf9B/Input"
                  ]
                  OnEndClosingChain   =   [
                     "ShowHideGeomObjects_Ea49TgfV/Input"
                  ]
                  __type   =   "BlueprintNodeOnMobileSandScreenStateChanged"
               }
               ShowHideGeomObjects_E6hfLK6S1   =   {
                  viewData   =   {
                     x   =   4300
                     y   =   8950
                  }
                  objNameRef   =   {
                     def   =   [
                        "geo_tape_1",
                        "geo_tape_2",
                        "geo_tape_3"
                     ]
                     __type   =   "GeomStringArrayRefParam"
                  }
                  __type   =   "BlueprintNodeShowHideGeomObjects"
               }
               ShowHideGeomObjects_E6hfLK6S2   =   {
                  viewData   =   {
                     x   =   4300
                     y   =   8700
                  }
                  objNameRef   =   {
                     def   =   [
                        "geo_tape_1",
                        "geo_tape_2",
                        "geo_tape_3"
                     ]
                     __type   =   "GeomStringArrayRefParam"
                  }
                  showRef   =   {
                     def   =   True
                     __type   =   "BoolRefParam"
                  }
                  OnExit   =   [
                     "ShowHideGeomObjects_Eai9d91J/Input"
                  ]
                  __type   =   "BlueprintNodeShowHideGeomObjects"
               }
               OnInit_E6hfLK6S3   =   {
                  viewData   =   {
                     x   =   3850
                     y   =   9500
                  }
                  OnExit   =   [
                     "ShowHideGeomObjects_E6hfLK6S4/Input"
                  ]
                  __type   =   "BlueprintCommonLibraryOninit"
               }
               ShowHideGeomObjects_E6hfLK6S4   =   {
                  viewData   =   {
                     x   =   4300
                     y   =   9500
                  }
                  objNameRef   =   {
                     def   =   [
                        "geo_tape_1",
                        "geo_tape_2",
                        "geo_tape_3"
                     ]
                     __type   =   "GeomStringArrayRefParam"
                  }
                  __type   =   "BlueprintNodeShowHideGeomObjects"
               }
               VFXStop_E9ng3b7T   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   7850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_med_cars_acceleration_zikz_new"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_E9ng3Jat   =   {
                  viewData   =   {
                     x   =   4950
                     y   =   7250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_met_cars_neutral_zikz_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9ng3X1r   =   {
                  viewData   =   {
                     x   =   4950
                     y   =   7500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_met_cars_neutral_zikz_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               ShowHideGeomObjects_E9qebI68   =   {
                  viewData   =   {
                     x   =   4301.649
                     y   =   8817.602
                  }
                  objNameRef   =   {
                     def   =   [
                        "sand_dirty_03",
                        "sand_dirty_02",
                        "sand_clean_03",
                        "sand_clean_01",
                        "sand_clean_02"
                     ]
                     __type   =   "GeomStringArrayRefParam"
                  }
                  showRef   =   {
                     def   =   True
                     __type   =   "BoolRefParam"
                  }
                  OnExit   =   [
                     "BlueprintNodeStartStopRotators_Ea7dXp6g/Input"
                  ]
                  __type   =   "BlueprintNodeShowHideGeomObjects"
               }
               ShowHideGeomObjects_Ea3fGf9B   =   {
                  viewData   =   {
                     x   =   4301.25
                     y   =   9069
                  }
                  objNameRef   =   {
                     def   =   [
                        "geo_hiding_parts1"
                     ]
                     __type   =   "GeomStringArrayRefParam"
                  }
                  OnExit   =   [
                     "VFXRestart_Ebbb6F0m/Input"
                  ]
                  __type   =   "BlueprintNodeShowHideGeomObjects"
               }
               ShowHideGeomObjects_Ea49TgfV   =   {
                  viewData   =   {
                     x   =   4300.665
                     y   =   9183.861
                  }
                  objNameRef   =   {
                     def   =   [
                        "geo_hiding_parts1"
                     ]
                     __type   =   "GeomStringArrayRefParam"
                  }
                  showRef   =   {
                     def   =   True
                     __type   =   "BoolRefParam"
                  }
                  __type   =   "BlueprintNodeShowHideGeomObjects"
               }
               BlueprintNodeStartStopRotators_Ea7dXp6g   =   {
                  viewData   =   {
                     x   =   4800
                     y   =   8800
                  }
                  startRef   =   {
                     def   =   True
                     __type   =   "BoolRefParam"
                  }
                  OnExit   =   [
                     "TruckShaker_Ea9dTy9A/Play",
                     "TruckShaker_Eaa9XH5w/Play",
                     "TruckShaker_Eaaa042P/Play",
                     "VFXRestart_Eauetvb4/Input",
                     "VFXRestart_Eauexc8r/Input"
                  ]
                  __type   =   "BlueprintNodeStartStopRotators"
               }
               StartStopRotators_Ea7dXp6g1   =   {
                  viewData   =   {
                     x   =   4800
                     y   =   9030.997
                  }
                  startRef   =   {
                     __type   =   "BoolRefParam"
                  }
                  OnExit   =   [
                     "TruckShaker_Ea9eCu0v/Play",
                     "TruckShaker_Ea9eyw0M/Play",
                     "TruckShaker_Eaaa3E9a/Play",
                     "TruckShaker_Eaaa3WfY/Play",
                     "VFXStop_EauetVdR/Input",
                     "VFXStop_Eaufzk31/Input"
                  ]
                  __type   =   "BlueprintNodeStartStopRotators"
               }
               TruckShaker_Ea9dSR6c   =   {
                  viewData   =   {
                     x   =   4900
                     y   =   8200
                  }
                  shakerName   =   "shaker1"
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_Ea9dTy9A   =   {
                  viewData   =   {
                     x   =   5150
                     y   =   8650
                  }
                  shakerName   =   "shaker1"
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_Ea9eyw0M   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   9000
                  }
                  duration   =   1.2
                  shakerName   =   "shaker1"
                  maxRPM   =   False
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_Ea9eCu0v   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   9100
                  }
                  duration   =   2
                  shakerName   =   "shaker1b"
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_Eaa9XH5w   =   {
                  viewData   =   {
                     x   =   5150
                     y   =   8750
                  }
                  duration   =   -1
                  shakerName   =   "shaker3"
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_Eaaa042P   =   {
                  viewData   =   {
                     x   =   5150
                     y   =   8850
                  }
                  duration   =   -1
                  shakerName   =   "shaker4"
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_Eaaa3E9a   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   9200
                  }
                  duration   =   1.2
                  shakerName   =   "shaker3"
                  maxRPM   =   False
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_Eaaa3WfY   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   9300
                  }
                  duration   =   1.2
                  shakerName   =   "shaker4"
                  maxRPM   =   False
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_EaejUQeR   =   {
                  viewData   =   {
                     x   =   4900
                     y   =   8400
                  }
                  shakerName   =   "shaker3"
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_EaejV1eH   =   {
                  viewData   =   {
                     x   =   4900
                     y   =   8500
                  }
                  shakerName   =   "shaker4"
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_Eaek3Ufs   =   {
                  viewData   =   {
                     x   =   4900
                     y   =   8300
                  }
                  duration   =   2
                  shakerName   =   "shaker1b"
                  __type   =   "BlueprintNodeTruckShaker"
               }
               ShowHideGeomObjects_Eai9d91J   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   8700
                  }
                  objNameRef   =   {
                     def   =   [
                        "sand_clean_03",
                        "sand_clean_01",
                        "sand_clean_02",
                        "sand_dirty_03",
                        "sand_dirty_02"
                     ]
                     __type   =   "GeomStringArrayRefParam"
                  }
                  __type   =   "BlueprintNodeShowHideGeomObjects"
               }
               VFXRestart_Eauetvb4   =   {
                  viewData   =   {
                     x   =   5317.898
                     y   =   8407.028
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_zikz_605_dust_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_EauetVdR   =   {
                  viewData   =   {
                     x   =   5412.231
                     y   =   9161.36
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_zikz_605_dust_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_Eauexc8r   =   {
                  viewData   =   {
                     x   =   5466.815
                     y   =   8569.235
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_zikz_605_sand_fall_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_Eaufzk31   =   {
                  viewData   =   {
                     x   =   5454.951
                     y   =   9021.31
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_zikz_605_sand_fall_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_Ebbb6F0m   =   {
                  viewData   =   {
                     x   =   4552.977
                     y   =   9187.614
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_zikz_605_dust_02"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               OnMobileSandScreenInvalidActivation_EbpapC4a   =   {
                  viewData   =   {
                     x   =   3900
                     y   =   9800
                  }
                  OnExit   =   [
                     "ShowHideGeom_EbpaBO7m/Input",
                     "OnTimelineTickWithoutRestartOnActivate_Ec2fOa1w/Restart"
                  ]
                  GetZoneActor   =   [
                     "SetGeomColor_EbparK0n/actorRef/cb",
                     "ShowHideGeom_EbpaBO7m/actorRef/cb",
                     "ShowHideGeom_EbpbNcae/actorRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnMobileSandScreenInvalidActivation"
               }
               SetGeomColor_EbparK0n   =   {
                  viewData   =   {
                     x   =   4950
                     y   =   9800
                  }
                  __type   =   "BlueprintNodeGeomSetColor"
               }
               ColorCreate_Ebpaseg0   =   {
                  viewData   =   {
                     x   =   4750
                     y   =   9850
                  }
                  alpha   =   {
                     __type   =   "FloatRefParam"
                  }
                  red   =   {
                     def   =   150
                     __type   =   "FloatRefParam"
                  }
                  green   =   {
                     __type   =   "FloatRefParam"
                  }
                  blue   =   {
                     def   =   10
                     __type   =   "FloatRefParam"
                  }
                  GetColor   =   [
                     "SetGeomColor_EbparK0n/color/cb"
                  ]
                  __type   =   "BlueprintLibraryCreatecolor"
               }
               ShowHideGeom_EbpaBO7m   =   {
                  viewData   =   {
                     x   =   4200
                     y   =   9950
                  }
                  __type   =   "BlueprintNodeGeomShowHide"
               }
               ShowHideGeom_EbpbNcae   =   {
                  viewData   =   {
                     x   =   4750
                     y   =   9950
                  }
                  showRef   =   {
                     def   =   False
                     __type   =   "BoolRefParam"
                  }
                  __type   =   "BlueprintNodeGeomShowHide"
               }
               OnTimelineTickWithoutRestartOnActivate_Ec2fOa1w   =   {
                  viewData   =   {
                     x   =   4250
                     y   =   9800
                  }
                  isAutostart   =   {
                     def   =   False
                     __type   =   "BoolRefParam"
                  }
                  spline   =   {
                     sourceSpline   =   {
                        spline   =   [
                           0,
                           0,
                           0,
                           0,
                           0,
                           0,
                           20,
                           255,
                           6.790726,
                           257.2229,
                           33.20927,
                           252.7771,
                           40,
                           0,
                           40,
                           0,
                           40,
                           0
                        ]
                        argumentScale   =   0.1
                        __type   =   "SplineBezier1d"
                     }
                     isCycled   =   False
                     __type   =   "MotionClip"
                  }
                  OnTick   =   [
                     "SetGeomColor_EbparK0n/SetColor"
                  ]
                  OnEnd   =   [
                     "ShowHideGeom_EbpbNcae/Input"
                  ]
                  GetValue   =   [
                     "ColorCreate_Ebpaseg0/alpha/cb"
                  ]
                  __type   =   "BlueprintNodeOnTimelineTick"
               }
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         Addon   =   {
            nodes   =   {
               CloneSoundEmitter_Eb3gDV9s   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   4900
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Eb3gDV9s2/emitterRef/cb",
                     "PlaySound_2_Eb3gDV9s4/emitterRef/cb",
                     "PlaySound_2_Eb3gDV9s3/emitterRef/cb",
                     "PlaySound_2_1_Eb3gDV9s5/emitterRef/cb",
                     "PlaySound_Eb3gDV9s6/emitterRef/cb",
                     "PlaySound_Eb3gDV9s7/emitterRef/cb",
                     "PlaySound_Eb3gDV9s8/emitterRef/cb",
                     "PlaySound_1_Eb3gDV9s9/emitterRef/cb",
                     "PlaySound_Eb3gDV9sb/emitterRef/cb",
                     "PlaySound_5_Eb3gDV9sc/emitterRef/cb",
                     "PlaySound_5_Eb3gDV9si/emitterRef/cb",
                     "PlaySound_5_Eb3gDV9sj/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_trailer43"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               OnAnchorsStateChanged_Eb3gDV9s1   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   4500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnOpenStarted   =   [
                     "PlaySound_Eb3gDV9s2/Play",
                     "PlaySound_2_Eb3gDV9s3/Stop"
                  ]
                  OnOpenEnded   =   [
                     "PlaySound_2_Eb3gDV9s4/Play"
                  ]
                  OnCloseStarted   =   [
                     "PlaySound_Eb3gDV9s2/Stop",
                     "PlaySound_2_Eb3gDV9s3/Play"
                  ]
                  OnCloseEnded   =   [
                     "PlaySound_2_1_Eb3gDV9s5/Play"
                  ]
                  __type   =   "BlueprintNodeOnAnchorsStateChanged"
               }
               PlaySound_Eb3gDV9s2   =   {
                  viewData   =   {
                     x   =   6450
                     y   =   4300
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
               PlaySound_2_Eb3gDV9s3   =   {
                  viewData   =   {
                     x   =   6450
                     y   =   4700
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
               PlaySound_2_Eb3gDV9s4   =   {
                  viewData   =   {
                     x   =   6450
                     y   =   4500
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
               PlaySound_2_1_Eb3gDV9s5   =   {
                  viewData   =   {
                     x   =   6450
                     y   =   4900
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
               PlaySound_Eb3gDV9s6   =   {
                  viewData   =   {
                     x   =   6450
                     y   =   5500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_conveyor_open_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_Eb3gDV9s7   =   {
                  viewData   =   {
                     x   =   6450
                     y   =   5700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_conveyor_open_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_Eb3gDV9s8   =   {
                  viewData   =   {
                     x   =   6450
                     y   =   5950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_conveyor_close_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1_Eb3gDV9s9   =   {
                  viewData   =   {
                     x   =   6450
                     y   =   6550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_conveyor_close_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnSequentialChainConstraintStateChange_Eb3gDV9sa   =   {
                  viewData   =   {
                     x   =   5502.5
                     y   =   5750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStartOpeningChain   =   [
                     "PlaySound_Eb3gDV9s6/Play",
                     "PlaySound_Eb3gDV9s8/Stop"
                  ]
                  OnStopOpeningChain   =   [
                     "PlaySound_Eb3gDV9s7/Play"
                  ]
                  OnStartClosingChain   =   [
                     "PlaySound_Eb3gDV9s8/Play",
                     "PlaySound_Eb3gDV9s6/Stop"
                  ]
                  OnStopClosingChain   =   [
                     "PlaySound_1_Eb3gDV9s9/Play"
                  ]
                  inputChainNameRef   =   {
                     def   =   [
                        "Ramp"
                     ]
                  }
                  __type   =   "BlueprintNodeOnSequentialChainConstraintStateChanged"
               }
               PlaySound_Eb3gDV9sb   =   {
                  viewData   =   {
                     x   =   6450
                     y   =   6800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_Eb3gDV9sd/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_conveyor_move_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_5_Eb3gDV9sc   =   {
                  viewData   =   {
                     x   =   6450
                     y   =   7000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_Eb3gDV9sg/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_conveyor_move_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_Eb3gDV9sd   =   {
                  viewData   =   {
                     x   =   7200
                     y   =   6800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_conveyor_work_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_Eb3gDV9se   =   {
                  viewData   =   {
                     x   =   7200
                     y   =   7250
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Eb3gDV9sd/emitterRef/cb",
                     "PlaySound_Eb3gDV9sg/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_trailer11"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               OnMobileSandScreenStateChanged_Eb3gDV9sf   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   6800
                  }
                  OnStartSpawnSand   =   [
                     "PlaySound_Eb3gDV9sb/Play"
                  ]
                  OnStopSpawnSand   =   [
                     "PlaySound_5_Eb3gDV9sc/Play"
                  ]
                  __type   =   "BlueprintNodeOnMobileSandScreenStateChanged"
               }
               PlaySound_Eb3gDV9sg   =   {
                  viewData   =   {
                     x   =   7200
                     y   =   7000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_conveyor_work_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnSequentialChainConstraintStageFinished_Eb3gDV9sh   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   6150
                  }
                  OnStageFinishedOpening   =   [
                     "PlaySound_5_Eb3gDV9si/Play"
                  ]
                  inputChainNameRef   =   {
                     def   =   "Ramp"
                     __type   =   "SequentialChainNameRefParam"
                  }
                  inputStageNameRef   =   {
                     def   =   "Stage1"
                     __type   =   "SequentialChainStageRefParam"
                  }
                  __type   =   "BlueprintNodeOnSequentialChainStageFinished"
               }
               PlaySound_5_Eb3gDV9si   =   {
                  viewData   =   {
                     x   =   6450
                     y   =   6150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_conveyor_open_joint"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_5_Eb3gDV9sj   =   {
                  viewData   =   {
                     x   =   6450
                     y   =   6350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_conveyor_close_joint"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnSequentialChainConstraintStageFinished_Eb3gDV9sk   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   6350
                  }
                  OnStageFinishedClosing   =   [
                     "PlaySound_5_Eb3gDV9sj/Play"
                  ]
                  inputChainNameRef   =   {
                     def   =   "Ramp"
                     __type   =   "SequentialChainNameRefParam"
                  }
                  inputStageNameRef   =   {
                     def   =   "Stage2"
                     __type   =   "SequentialChainStageRefParam"
                  }
                  __type   =   "BlueprintNodeOnSequentialChainStageFinished"
               }
            }
            groups   =   {
               "[SOUND] addon - legs"   =   {
                  x   =   5400
                  y   =   4000
                  width   =   2500
                  height   =   1202
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] addon - conveyor"   =   {
                  x   =   5400
                  y   =   5300
                  width   =   2500
                  height   =   2094.006
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
            }
            __type   =   "BlueprintClient"
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
               __type   =   "MobileSandScreenSavablePropDesc"
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
            __type   =   "AutoZikz605eMobileScalperOldReplicated"
         }
         __type   =   "RepEntityBrand"
      }
   }
   prop_lwi_cdt_poi_rb   =   {
      poiRadius   =   48
      interactiveActivationRadius   =   15
      geomToFollow   =   "_centr"
   }
   prop_truck_gearbox_controller   =   {
      awdMode   =   "ALWAYS_ON"
      difflockMode   =   "ALWAYS_ON"
      isLowGearAvailable   =   True
   }
   prop_fuel_tank   =   {
      maxFuelTankVolume   =   360
      startFuelTankVolume   =   360
      fuelConsumption   =   0
   }
   prop_truck_constraint_view   =   {
      constraintSequentialChains   =   {
         Ramp   =   {
            links   =   {
               Stage1   =   {
                  constraints   =   [
                     {
                        constraintName   =   "ramp_rear_a"
                        angularSpeed   =   19.209
                        maxAngle   =   76.836
                     },
                     {
                        constraintName   =   "ramp_rear_b"
                        angularSpeed   =   22.5
                        maxAngle   =   90
                     },
                     {
                        constraintName   =   "ramp_left_a"
                        angularSpeed   =   18.75
                        maxAngle   =   75
                     },
                     {
                        constraintName   =   "ramp_right_a"
                        angularSpeed   =   18.75
                        maxAngle   =   75
                     }
                  ]
                  __type   =   "TruckConstraintSequentialChainLink"
               }
               Stage2   =   {
                  constraints   =   [
                     {
                        constraintName   =   "ramp_left_b"
                        angularSpeed   =   45
                        maxAngle   =   -180
                     },
                     {
                        constraintName   =   "ramp_right_b"
                        angularSpeed   =   45
                        maxAngle   =   -180
                     }
                  ]
                  __type   =   "TruckConstraintSequentialChainLink"
               }
            }
            inertiaInput   =   {
               inertiaRelaxationTime   =   0.1
               __type   =   "ConstraintInertiaInput"
            }
            __type   =   "TruckConstraintSequentialChain"
         }
      }
   }
   prop_truck_teleporter   =   {
      waterHeightDelta   =   1.5
      useOffsetFromObbCenter   =   True
   }
   sound_emitter   =   {
      enableOcclusion   =   False
      maxOcclusionDistance   =   0
      __onlyOn   =   "visual"
   }
   prop_truck_under_water_cheker   =   {
      rootOffsetPosition   =   {
         y   =   1.2
         z   =   2
         __type   =   "Vector3d"
      }
      chekerAttachBody   =   "BoneChassis_cdt"
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
                  y   =   0.2
                  z   =   4
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
                  jointName   =   "BoneRampRear_a_cdt"
                  jointOffset   =   {
                     x   =   -0.25
                     y   =   1
                     z   =   10
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
         PlayerVehicleMarker   =   {
            positionTracker   =   {
               locator   =   "cdt_BoneChassis_19"
               __type   =   "Tracker"
            }
            __type   =   "UiUniversalMarker"
         }
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
      tag   =   "UID_MODULE_MOBILE_SAND_QUARRY_RUSTY"
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
         part_zikz_605_dust_01   =   {
            emitters2   =   {
               expl_01   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               expl_02   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Expl_03   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         part_zikz_605_sand_fall_01   =   {
         }
         part_zikz_605_dust_02   =   {
            emitters2   =   {
               Smoke_Flow_10   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_14   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_15   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_16   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_17   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_18   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_19   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_20   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_21   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_22   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_23   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_24   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_11   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_26   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_27   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_28   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_25   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
            }
            __type   =   "part_zikz_605_dust_01"
         }
      }
      __onlyOn   =   "visual"
   }
   prop_truck_rotator_native_controller   =   {
      rotators   =   {
         TruckRotatorNative   =   {
            rotatorBone   =   "Bone_tape3_rotator"
            velocityScalers   =   {
               SCALER   =   {
                  value   =   300
               }
            }
            axis   =   [
               -1,
               0,
               0
            ]
         }
         TruckRotatorNative_1   =   {
            rotatorVelocityCondition   =   {
               velocityRange   =   {
                  min   =   0.01
                  max   =   2
                  __type   =   "FloatRange"
               }
               __type   =   "null"
            }
            isSmoothStart   =   False
            rotatorBone   =   "Bone_tape2_rotator"
            accelerationOverTime   =   [
               0.041938,
               -0.049426,
               35.03321,
               49.09626
            ]
            deccelerationOverTime   =   [
               0.00202,
               0.539093,
               13.23167,
               -26.77258
            ]
            velocityScalers   =   {
               SCALER   =   {
                  value   =   300
               }
            }
            axis   =   [
               0,
               0,
               -1
            ]
            __type   =   "TruckRotatorNative"
         }
         TruckRotatorNative_2   =   {
            rotatorBone   =   "Bone_tape1_rotator"
            velocityScalers   =   {
               SCALER   =   {
                  value   =   300
               }
            }
            axis   =   [
               0,
               0,
               1
            ]
            __type   =   "TruckRotatorNative"
         }
         TruckRotatorNative_3   =   {
            rotatorBone   =   "Bone_lenta1_rotator"
            velocityScalers   =   {
               SCALER   =   {
                  value   =   300
               }
            }
            axis   =   [
               -1,
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
      boneName   =   "BoneChassis_cdt"
      boneOffset   =   {
         x   =   0.78
         y   =   0.6
         z   =   3.42
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
         SandStorage   =   {
            checkers   =   {
               UsableCheckerDistance   =   {
                  distance   =   120
                  tracker   =   {
                     locator   =   "SandReciever"
                     __type   =   "Tracker"
                  }
               }
            }
            focusDistance   =   120
            __type   =   "SmartEntryPointMobileSandScreen"
         }
      }
   }
   prop_pre_soft_keyframe_updater   =   {
      movingParts   =   [
         "BoneLegLeft_1_cdt",
         "BoneLegRight_1_cdt",
         "BoneLegRight_2_cdt",
         "BoneLegLeft_2_cdt",
         "BoneLegRight_3_cdt",
         "BoneLegLeft_3_cdt"
      ]
      syncBodyNames   =   [
         "BoneTrailer_cdt",
         "BoneRampRear_a_cdt",
         "BoneRampRear_b_cdt",
         "BoneRampLeft_a_cdt",
         "BoneRampLeft_b_cdt",
         "BoneRampRight_a_cdt",
         "BoneRampRight_b_cdt",
         "BoneTrailer_PhysIK_cdt"
      ]
   }
   prop_winchable   =   {
      winchSocketPoints   =   [
         {
            bodyName   =   "BoneChassis_cdt"
            offsetInBodySpace   =   {
               x   =   -1.45
               y   =   0.468
               z   =   1.648
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneChassis_cdt"
            offsetInBodySpace   =   {
               x   =   1.45
               y   =   0.468
               z   =   1.648
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTrailer_cdt"
            offsetInBodySpace   =   {
               x   =   -9.913
               y   =   -0.3
               z   =   -1.491
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTrailer_cdt"
            offsetInBodySpace   =   {
               x   =   -9.913
               y   =   -0.3
               z   =   1.491
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTrailer_cdt"
            offsetInBodySpace   =   {
               x   =   -15.2
               y   =   0.325
               z   =   -1.405
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTrailer_cdt"
            offsetInBodySpace   =   {
               x   =   -15.2
               y   =   0.325
               z   =   1.405
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTrailer_cdt"
            offsetInBodySpace   =   {
               x   =   -2.883
               y   =   0.789
               z   =   0
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneChassis_cdt"
            offsetInBodySpace   =   {
               y   =   -0.075
               z   =   4.408
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneChassis_cdt"
            offsetInBodySpace   =   {
               x   =   1.115
               y   =   1.625
               z   =   1.331
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneChassis_cdt"
            offsetInBodySpace   =   {
               x   =   -1.115
               y   =   1.625
               z   =   1.331
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneChassis_cdt"
            offsetInBodySpace   =   {
               y   =   -0.401
               z   =   -4.546
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
            y   =   0.2
            z   =   4
            __type   =   "Vector3d"
         }
         attachmentBone   =   "_third_person_camera"
         firstLaunchCameraAngles   =   {
            x   =   20
            __type   =   "Vector2d"
         }
         scrollPoints   =   {
            "0"   =   {
               distance   =   12
               followTerrainOffset   =   4.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "1"   =   {
               distance   =   16
               followTerrainOffset   =   5.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "2"   =   {
               distance   =   20
               followTerrainOffset   =   6.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "3"   =   {
               distance   =   24
               followTerrainOffset   =   7.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "4"   =   {
               distance   =   28
               followTerrainOffset   =   8.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "5"   =   {
               distance   =   30
               followTerrainOffset   =   9
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
            },
            {
               angles   =   {
                  y   =   20
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   4
                  z   =   5.5
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   4
            },
            {
               angles   =   {
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   5
                  z   =   6.5
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   5
            },
            {
               angles   =   {
                  y   =   340
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   4
                  z   =   5.5
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   4
            },
            {
               angles   =   {
                  y   =   40
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   3
                  z   =   4.5
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   3
            },
            {
               angles   =   {
                  x   =   0
                  y   =   320
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   3
                  z   =   4.5
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   3
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
            y   =   0.02
            z   =   -0.02
            __type   =   "Vector3d"
         }
         rotationLimitsX   =   {
            x   =   -40
            y   =   47
            __type   =   "Vector2dRnd"
         }
         rotationLimitsY   =   {
            x   =   -110
            y   =   165
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
               __type   =   "Vector3d"
            }
            rollAngle   =   -15
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
                  y   =   45
                  __type   =   "Vector2dRnd"
               }
               __type   =   "RbCockpitCameraFollowTurnParams"
            }
            rightTurnParams   =   {
               turnSpeedRange   =   {
                  y   =   45
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
               x   =   -1.8
               y   =   -0.25
               z   =   0.7
               __type   =   "Vector3d"
            }
            Vector3d   =   {
               x   =   0.2
               y   =   -0.25
               z   =   0.7
            }
            Vector3d_1   =   {
               x   =   -2
               y   =   -0.25
               z   =   -0.3
               __type   =   "Vector3d"
            }
            Vector3d_2   =   {
               x   =   0.45
               y   =   -0.25
               z   =   -0.3
               __type   =   "Vector3d"
            }
         }
         __type   =   "CockpitUnderwaterChecker"
      }
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
                  bodyIKName   =   "r_rack_01_IK_03_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_01_IK",
               "r_rack_01_IK_04_a",
               "r_rack_01_IK_04_b"
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
                  bodyIKName   =   "r_rack_01_IK_04_b"
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
                  bodyIKName   =   "l_rack_01_IK_03_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "axle_01_IK",
               "l_rack_01_IK_04_a",
               "l_rack_01_IK_04_b"
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
                  bodyIKName   =   "l_rack_01_IK_04_b"
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
                  bodyIKName   =   "l_rack_02_IK_03_b"
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
                  bodyIKName   =   "l_rack_04_IK_03_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTrailer_cdt",
               "r_damper_3_IK_a",
               "r_damper_3_IK_b"
            ]
            ikConstraints   =   [
               {
                  type   =   "HINGE2"
                  vAxis   =   [
                     1,
                     0,
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
                  min   =   -0.5
                  max   =   0.5
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneAxle3_BalancerBase"
                  bodyIKName   =   "r_damper_3_IK_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTrailer_cdt",
               "l_damper_3_IK_a",
               "l_damper_3_IK_b"
            ]
            ikConstraints   =   [
               {
                  type   =   "HINGE2"
                  vAxis   =   [
                     1,
                     0,
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
                  min   =   -0.5
                  max   =   0.5
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneAxle3_BalancerBase"
                  bodyIKName   =   "l_damper_3_IK_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTrailer_cdt",
               "r_damper_4_IK_a",
               "r_damper_4_IK_b"
            ]
            ikConstraints   =   [
               {
                  type   =   "HINGE2"
                  vAxis   =   [
                     1,
                     0,
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
                  min   =   -0.5
                  max   =   0.5
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneAxle4_BalancerBase"
                  bodyIKName   =   "r_damper_4_IK_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTrailer_cdt",
               "l_damper_4_IK_a",
               "l_damper_4_IK_b"
            ]
            ikConstraints   =   [
               {
                  type   =   "HINGE2"
                  vAxis   =   [
                     1,
                     0,
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
                  min   =   -0.5
                  max   =   0.5
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneAxle4_BalancerBase"
                  bodyIKName   =   "l_damper_4_IK_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTrailer_cdt",
               "r_damper_5_IK_a",
               "r_damper_5_IK_b"
            ]
            ikConstraints   =   [
               {
                  type   =   "HINGE2"
                  vAxis   =   [
                     1,
                     0,
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
                  min   =   -0.5
                  max   =   0.5
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneAxle5_BalancerBase"
                  bodyIKName   =   "r_damper_5_IK_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTrailer_cdt",
               "l_damper_5_IK_a",
               "l_damper_5_IK_b"
            ]
            ikConstraints   =   [
               {
                  type   =   "HINGE2"
                  vAxis   =   [
                     1,
                     0,
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
                  min   =   -0.5
                  max   =   0.5
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneAxle5_BalancerBase"
                  bodyIKName   =   "l_damper_5_IK_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "r_steering_rod_01",
               "r_rack_01_IK_05_a",
               "r_rack_01_IK_05_b",
               "r_rack_01_IK_05_c"
            ]
            ikConstraints   =   [
               {
                  type   =   "HINGE"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  type   =   "HINGE"
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -180
                  max   =   180
               },
               {
                  type   =   "HINGE"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
                  min   =   -180
                  max   =   180
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_rack_01"
                  bodyIKName   =   "r_rack_01_IK_05_c"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "l_steering_rod_01",
               "l_rack_01_IK_05_a",
               "l_rack_01_IK_05_b",
               "l_rack_01_IK_05_c"
            ]
            ikConstraints   =   [
               {
                  type   =   "HINGE"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  type   =   "HINGE"
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -180
                  max   =   180
               },
               {
                  type   =   "HINGE"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
                  min   =   -180
                  max   =   180
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_rack_01"
                  bodyIKName   =   "l_rack_01_IK_05_c"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "r_steering_rod_02",
               "r_rack_02_IK_05_a",
               "r_rack_02_IK_05_b",
               "r_rack_02_IK_05_c"
            ]
            ikConstraints   =   [
               {
                  type   =   "HINGE"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  type   =   "HINGE"
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -180
                  max   =   180
               },
               {
                  type   =   "HINGE"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
                  min   =   -180
                  max   =   180
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_rack_02"
                  bodyIKName   =   "r_rack_02_IK_05_c"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "l_steering_rod_02",
               "l_rack_02_IK_05_a",
               "l_rack_02_IK_05_b",
               "l_rack_02_IK_05_c"
            ]
            ikConstraints   =   [
               {
                  type   =   "HINGE"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
               },
               {
                  type   =   "HINGE"
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -180
                  max   =   180
               },
               {
                  type   =   "HINGE"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
                  min   =   -180
                  max   =   180
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_rack_02"
                  bodyIKName   =   "l_rack_02_IK_05_c"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneChassis_cdt",
               "l_steering_rod_02_IK_a",
               "l_steering_rod_02_IK_b",
               "l_steering_rod_02_IK_c"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     1,
                     0,
                     0
                  ]
               },
               {
                  type   =   "HINGE2"
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
                  bodyPhysName   =   "l_steering_rod_02"
                  bodyIKName   =   "l_steering_rod_02_IK_c"
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
                        2.534,
                        1.568,
                        4.179
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
            },
            {
               name   =   "BoxCapsule1"
               bone   =   "_BoxCapsule1"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.95,
                        0.76,
                        8.575
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
            },
            {
               name   =   "BoxCapsule2"
               bone   =   "_BoxCapsule2"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.91,
                        0.376,
                        1.348
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
            },
            {
               name   =   "shadow_root"
               bone   =   "_root"
               boneOffset   =   [
                  0,
                  1.99,
                  2.01
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   2.32
                     radius   =   0.99
                     scaleX   =   1.28
                  }
                  capsule   =   {
                     height   =   1.96
                     radius   =   1.43
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_root1"
               bone   =   "_root"
               boneOffset   =   [
                  0,
                  0.95,
                  -0.62
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   7
                     radius   =   0.47
                  }
                  capsule   =   {
                     height   =   4.55
                     radius   =   0.55
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_root2"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  0.4,
                  1.38,
                  0
               ]
               boneRotation   =   [
                  90,
                  0,
                  0
               ]
               geom   =   {
                  capsule   =   {
                     radius   =   1.61
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "shadow_root3"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -1.84,
                  1.3,
                  -0.32
               ]
               boneRotation   =   [
                  90,
                  0,
                  0
               ]
               geom   =   {
                  capsule   =   {
                     radius   =   1.21
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "shadow_root8"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -9.36,
                  0,
                  0
               ]
               boneRotation   =   [
                  0,
                  90,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   10.1
                     radius   =   0.5
                     scaleX   =   2.96
                  }
                  capsule   =   {
                     height   =   10.5
                     radius   =   0.5
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_root9"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -9.29,
                  1.64,
                  -0.44
               ]
               boneRotation   =   [
                  13.82,
                  90,
                  0
               ]
               geom   =   {
                  capsule   =   {
                     height   =   11.2
                     radius   =   0.37
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "shadow_root10"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -9.77,
                  1.04,
                  -0.44
               ]
               boneRotation   =   [
                  13.82,
                  90,
                  0
               ]
               geom   =   {
                  capsule   =   {
                     height   =   10.12
                     radius   =   0.37
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "shadow_root11"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -10.89,
                  0.6,
                  -0.44
               ]
               boneRotation   =   [
                  13.82,
                  90,
                  0
               ]
               geom   =   {
                  capsule   =   {
                     height   =   7.79
                     radius   =   0.37
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "shadow_root12"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -11.69,
                  0.2,
                  -0.44
               ]
               boneRotation   =   [
                  13.82,
                  90,
                  0
               ]
               geom   =   {
                  capsule   =   {
                     height   =   6.01
                     radius   =   0.37
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "shadow_root13"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -5.38,
                  2.74,
                  -0.04
               ]
               boneRotation   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsule   =   {
                     height   =   1.71
                     radius   =   0.49
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "shadow_root11"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -4.74,
                  1.32,
                  0.68
               ]
               boneRotation   =   [
                  -13.82,
                  90,
                  0
               ]
               geom   =   {
                  capsule   =   {
                     height   =   7.79
                     radius   =   0.25
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "water_01"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -11.42,
                  -0.28,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        7.12,
                        0.82,
                        3.04
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
               waterParams   =   {
                  influence   =   1
                  needToSpawnParticles   =   True
                  particlesSpawnFrequencyScale   =   1.5
               }
               grassParams   =   {
                  need_fast   =   False
                  need_lasting   =   True
                  influence   =   2
                  speedMultiplier   =   1
               }
            },
            {
               name   =   "water_02"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -6.73,
                  -0.36,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        2.76,
                        1.26,
                        1.32
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
               waterParams   =   {
                  influence   =   1
                  needToSpawnParticles   =   True
                  particlesSpawnFrequencyScale   =   1.5
               }
               grassParams   =   {
                  need_fast   =   False
                  need_lasting   =   True
                  influence   =   2
                  speedMultiplier   =   1
               }
            },
            {
               name   =   "water_03"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -4.67,
                  -0.08,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        2.76,
                        0.66,
                        1.84
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
               waterParams   =   {
                  influence   =   1
                  needToSpawnParticles   =   True
                  particlesSpawnFrequencyScale   =   1.5
               }
               grassParams   =   {
                  need_fast   =   False
                  need_lasting   =   True
                  influence   =   2
                  speedMultiplier   =   1
               }
            },
            {
               name   =   "water_04"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -6.64,
                  0.32,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        17.01,
                        0.42,
                        3.2
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   10
               waterParams   =   {
                  influence   =   1
                  needToSpawnParticles   =   True
                  particlesSpawnFrequencyScale   =   1.5
               }
               grassParams   =   {
                  need_fast   =   False
                  need_lasting   =   True
                  influence   =   2
                  speedMultiplier   =   1
               }
            },
            {
               name   =   "water_05"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  0.35,
                  0.92,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        2.88,
                        1.38,
                        2.52
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "water_06"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  0.51,
                  2.12,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.16,
                        1.3,
                        2.6
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "water_07"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -2.02,
                  1.52,
                  -0.44
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.76,
                        2.42,
                        1.36
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "water_08"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -3.46,
                  1.12,
                  -0.44
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.24,
                        1.78,
                        1.36
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "water_09"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -5.42,
                  1.4,
                  0.01
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.28,
                        1.9,
                        2.45
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "water_10"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -5.37,
                  2.73,
                  -0.03
               ]
               geom   =   {
                  capsule   =   {
                     height   =   1.46
                     radius   =   0.49
                  }
                  box   =   {
                     size   =   [
                        1.28,
                        1.9,
                        2.45
                     ]
                  }
                  __type   =   "local__capsule"
               }
               systems   =   18
            },
            {
               name   =   "water_11"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -6.34,
                  1.68,
                  0.01
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.12,
                        3.74,
                        3.49
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
               name   =   "water_12"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -4.98,
                  -0.18,
                  1.89
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1,
                        1.01,
                        0.64
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
               name   =   "water_13"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -4.9,
                  -0.18,
                  -1.81
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.16,
                        1.01,
                        0.76
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
               name   =   "water_14"
               bone   =   "BoneLegRight_1_cdt"
               boneOffset   =   [
                  2.76,
                  0.29,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.44,
                        1.26,
                        0.64
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
            },
            {
               name   =   "water_15"
               bone   =   "BoneLegLeft_1_cdt"
               boneOffset   =   [
                  -2.76,
                  0.29,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.44,
                        1.26,
                        0.64
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
               name   =   "water_16"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -2.97,
                  -0.58,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.2,
                        0.18,
                        2.28
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
               name   =   "water_17"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -10.53,
                  1.08,
                  0.84
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.48,
                        1.1,
                        1.24
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "water_18"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -13.92,
                  2.12,
                  -0.61
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        2.63,
                        2.21,
                        1.24
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "water_19"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -9.87,
                  1.32,
                  -0.49
               ]
               boneRotation   =   [
                  0,
                  0,
                  76.76
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.57,
                        6.17,
                        1.12
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "water_20"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -4.87,
                  1.44,
                  0.72
               ]
               boneRotation   =   [
                  0,
                  0,
                  -76.76
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.41,
                        8.21,
                        0.8
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "water_21"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -2.66,
                  1.36,
                  -1.61
               ]
               boneRotation   =   [
                  0,
                  0,
                  -15.98
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        2.88,
                        0.92,
                        0.33
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "water_22"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -11.91,
                  0.92,
                  -1.84
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.76,
                        0.91,
                        0.72
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "water_23"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -15.41,
                  2.04,
                  -1.84
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.8,
                        0.91,
                        0.72
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "water_22"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -14.44,
                  1.44,
                  -1.84
               ]
               boneRotation   =   [
                  0,
                  0,
                  -44.75
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.86,
                        0.67,
                        0.72
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "left_box_fast_grass"
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -0.85,
                  -0.91,
                  2.89
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.5,
                        0.5,
                        1.5
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
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -8.009999,
                  -0.91,
                  2.89
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.5,
                        0.5,
                        1.5
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
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -0.85,
                  -0.91,
                  -2.89
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.5,
                        0.5,
                        1.5
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
               bone   =   "BoneTrailer_cdt"
               boneOffset   =   [
                  -8.009999,
                  -0.91,
                  -2.89
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.5,
                        0.5,
                        1.5
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
               name   =   "water_23"
               bone   =   "BoneRampLeft_a_cdt"
               boneOffset   =   [
                  0.16,
                  1.51,
                  0
               ]
               boneRotation   =   [
                  0,
                  0,
                  88.5
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.63,
                        0.41,
                        0.98
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
            },
            {
               name   =   "water_24"
               bone   =   "BoneRampLeft_b_cdt"
               boneOffset   =   [
                  0.21,
                  1.47,
                  0
               ]
               boneRotation   =   [
                  0,
                  0,
                  88.5
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.19,
                        0.37,
                        0.98
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
            },
            {
               name   =   "water_25"
               bone   =   "BoneRampRight_a_cdt"
               boneOffset   =   [
                  -0.24,
                  1.51,
                  0
               ]
               boneRotation   =   [
                  0,
                  0,
                  88.5
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.63,
                        0.41,
                        0.98
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
            },
            {
               name   =   "water_26"
               bone   =   "BoneRampRight_b_cdt"
               boneOffset   =   [
                  0.21,
                  -1.47,
                  0
               ]
               boneRotation   =   [
                  0,
                  0,
                  88.5
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.19,
                        0.37,
                        0.98
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
            },
            {
               name   =   "water_27"
               bone   =   "BoneRampRear_a_cdt"
               boneOffset   =   [
                  0,
                  1.24,
                  -0.24
               ]
               boneRotation   =   [
                  90,
                  0,
                  90
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        2.51,
                        0.41,
                        0.98
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "water_28"
               bone   =   "BoneRampRear_b_cdt"
               boneOffset   =   [
                  0,
                  0.28,
                  1.56
               ]
               boneRotation   =   [
                  0,
                  90,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.19,
                        0.37,
                        0.98
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
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
            fov   =   43
            centerLocatorName   =   "pip_camera_left"
            objName   =   "_hp_cab_interior_mirror_left"
            __type   =   "MirrorParams"
         }
         mirror_right   =   {
            fov   =   43
            centerLocatorName   =   "pip_camera_right"
            objName   =   "_hp_cab_interior_mirror_right"
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
      supportedBehivours   =   {
         MOVE_BY_POINTS   =   {
            truckSettings   =   {
               awd   =   True
               overrideSteerSpeed   =   True
               maxSteerSpeed   =   0.03
               backSteerSpeed   =   0.06
               lwiPoiValue   =   15
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
               lwiPoiValue   =   15
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
               lwiPoiValue   =   15
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
               lwiPoiValue   =   15
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
            isCompositeTruck   =   True
            tracker   =   {
               locator   =   "BoneChassis_cdt"
               owner   =   "<OWNER>"
               posOffset   =   {
                  y   =   0.5
                  z   =   1
                  __type   =   "Vector3d"
               }
               __type   =   "Tracker"
            }
            obbSize   =   {
               x   =   3
               y   =   2.5
               z   =   7.5
               __type   =   "Vector3d"
            }
         },
         {
            isCompositeTruck   =   True
            tracker   =   {
               locator   =   "BoneTrailer_cdt"
               owner   =   "<OWNER>"
               posOffset   =   {
                  x   =   -7
                  y   =   0.5
                  z   =   0
                  __type   =   "Vector3d"
               }
               __type   =   "Tracker"
            }
            obbSize   =   {
               x   =   18
               y   =   5
               z   =   4
               __type   =   "Vector3d"
            }
         }
      ]
   }
   prop_phys_substance_target   =   {
      waterDragMultiplier   =   4.25
      oilDragMultiplier   =   8.5
      bodies   =   [
         "BoneChassis_cdt",
         "BoneTrailer_cdt"
      ]
   }
   prop_truck_axles_controller   =   {
      independentAxles   =   [
         {
            frame   =   "r_wheel_truck_01"
            singleWheelID   =   -1
         },
         {
            frame   =   "r_wheel_truck_02"
            singleWheelID   =   -1
         },
         {
            frame   =   "l_wheel_truck_01"
            singleWheelID   =   -1
         },
         {
            frame   =   "l_wheel_truck_02"
            singleWheelID   =   -1
         }
      ]
      steeringRacks   =   [
         {
            frame   =   "rack_01_IK"
            rightWheelFrame   =   "r_rack_01"
            leftWheelFrame   =   "l_rack_01"
            rackHalfLength   =   0.928
         },
         {
            frame   =   "rack_02_IK"
            rightWheelFrame   =   "r_rack_02"
            leftWheelFrame   =   "l_rack_02"
            rackHalfLength   =   0.928
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
            bonesA   =   [
               {
                  boneName   =   "BoneChassis_cdt"
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneChassis_cdt"
               }
            ]
            shaftFasteningPositionA   =   "shaft_1_a"
            shaftFasteningPositionB   =   "shaft_1_b"
         },
         {
            shaftActorDesc   =   {
               properties   =   {
                  geom   =   {
                     nameTpl   =   "shaft_heavy_transpoerter_big"
                  }
               }
               __type   =   "shaft_view"
            }
            bonesA   =   [
               {
                  boneName   =   "BoneChassis_cdt"
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneChassis_cdt"
               }
            ]
            shaftFasteningPositionA   =   "shaft_2_a"
            shaftFasteningPositionB   =   "shaft_2_b"
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
            bonesA   =   [
               {
                  boneName   =   "BoneChassis_cdt"
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneChassis_cdt"
               }
            ]
            shaftFasteningPositionA   =   "shaft_3_a"
            shaftFasteningPositionB   =   "shaft_3_b"
         },
         {
            shaftActorDesc   =   {
               properties   =   {
                  geom   =   {
                     nameTpl   =   "shaft_heavy_transpoerter_big"
                  }
               }
               __type   =   "shaft_view"
            }
            bonesA   =   [
               {
                  boneName   =   "BoneChassis_cdt"
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneChassis_cdt"
               }
            ]
            shaftFasteningPositionA   =   "shaft_4_a"
            shaftFasteningPositionB   =   "shaft_4_b"
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
            bonesA   =   [
               {
                  boneName   =   "BoneChassis_cdt"
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneChassis_cdt"
               }
            ]
            shaftFasteningPositionA   =   "shaft_5_a"
            shaftFasteningPositionB   =   "shaft_5_b"
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
            bonesA   =   [
               {
                  boneName   =   "BoneChassis_cdt"
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneChassis_cdt"
               }
            ]
            shaftFasteningPositionA   =   "shaft_6_a"
            shaftFasteningPositionB   =   "shaft_6_b"
         }
      ]
   }
   prop_truck_mobile_sand_screen   =   {
      chainName   =   "Ramp"
      allowedMaterials   =   [
         {
            material   =   "sand"
         },
         {
            material   =   "mud_sand"
         },
         {
            material   =   "sand_dry"
         },
         {
            material   =   "sand_mud"
         }
      ]
      locator   =   "SandReciever"
      sandOnBelt   =   True
      materialCheckRadius   =   6
      allowedPercent   =   0.4
      belt1SpeedCoef   =   0.3
      belt2SpeedCoef   =   0.8
   }
   prop_truck_customization   =   {
   }
   prop_customization_graffiti   =   {
   }
   prop_cockpit_dashboard   =   {
      elements   =   {
         "0"   =   {
            nameBone   =   "ctrl_dashboard_speed"
            axis   =   "Y"
            maxRotationAngle   =   110
            dashboardSubtype   =   "SPEED"
            damping   =   0.06
            scale   =   5
            __type   =   "DashboardElementCockpit"
         }
         "1"   =   {
            nameBone   =   "ctrl_dashboard_engine_temp_coolant"
            axis   =   "Y"
            maxRotationAngle   =   85
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.002
            __type   =   "DashboardElementCockpit"
         }
         "2"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_oil"
            axis   =   "Y"
            maxRotationAngle   =   70
            dashboardSubtype   =   "RPM"
            damping   =   0.01
            increase   =   -15
            __type   =   "DashboardElementCockpit"
         }
         "3"   =   {
            nameBone   =   "ctrl_dashboard_engine_temp_oil"
            axis   =   "Y"
            maxRotationAngle   =   80
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.002
            __type   =   "DashboardElementCockpit"
         }
         "4"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_brake"
            axis   =   "Y"
            maxRotationAngle   =   55
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.003
            __type   =   "DashboardElementCockpit"
         }
         "5"   =   {
            nameBone   =   "ctrl_dashboard_engine_temp_oil_transmission"
            axis   =   "Y"
            maxRotationAngle   =   40
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.002
            __type   =   "DashboardElementCockpit"
         }
         "6"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_oil_transmission"
            axis   =   "Y"
            maxRotationAngle   =   30
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.005
            __type   =   "DashboardElementCockpit"
         }
         "7"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_oil_frictions"
            axis   =   "Y"
            maxRotationAngle   =   85
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.005
            __type   =   "DashboardElementCockpit"
         }
         "8"   =   {
            nameBone   =   "ctrl_dashboard_engine_temp_oil_torque_converter"
            axis   =   "Y"
            maxRotationAngle   =   70
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.002
            __type   =   "DashboardElementCockpit"
         }
         "9"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_oil_torque_converter"
            axis   =   "Y"
            maxRotationAngle   =   70
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.005
            __type   =   "DashboardElementCockpit"
         }
         "10"   =   {
            nameBone   =   "ctrl_pedal_drive"
            axis   =   "Y"
            maxRotationAngle   =   20
            dashboardSubtype   =   "RPM"
            damping   =   0.1
            increase   =   -20
            __type   =   "DashboardElementCockpit"
         }
         "11"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_1"
            axis   =   "Y"
            maxRotationAngle   =   100
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.005
            __type   =   "DashboardElementCockpit"
         }
         "12"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_2"
            axis   =   "Y"
            maxRotationAngle   =   70
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.007
            __type   =   "DashboardElementCockpit"
         }
         "13"   =   {
            nameBone   =   "ctrl_steering_wheel"
            axis   =   "Y"
            minRotationAngle   =   -270
            maxRotationAngle   =   270
            steeringSubtype   =   "WHEEL"
            rotationSpeed   =   1
            __type   =   "SteerigElementCockpit"
         }
         "14"   =   {
            nameBone   =   "ctrl_switch_handbrake"
            axis   =   "Y"
            maxRotationAngle   =   25
            speed   =   50
            switcherSubtype   =   "HANDBRAKE"
            __type   =   "SwitcherElementCockpit"
         }
         "15"   =   {
            nameBone   =   "ctrl_gear_stick_low"
            axis   =   "Y"
            maxRotationAngle   =   70
            speed   =   100
            switcherSubtype   =   "LOW_GEAR"
            __type   =   "SwitcherElementCockpit"
         }
         "16"   =   {
            nameBone   =   "ctrl_gear_stick"
            rotationSpeed   =   40
            states   =   {
               AUTO   =   {
                  primary   =   {
                     axis   =   "Y"
                     angle   =   20
                     __type   =   "InfoGearState"
                  }
                  __type   =   "GearStateItem"
               }
               REVERSE   =   {
                  primary   =   {
                     axis   =   "Y"
                     angle   =   -14
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
      firstControlSectionUiName   =   "UID_HUD_FIRST_SECTION_MOBILE_SCALPER_CONTROL"
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
         uiActionDescription   =   "UID_HUD_HEAVY_TRANSPORTER_SAND_QUARRY_ACTIVATE"
         isToggleable   =   True
         altUiActionDescription   =   "UID_HUD_HEAVY_TRANSPORTER_SAND_QUARRY_DEACTIVATE"
         namedActionType   =   "TOGGLE_MOBILE_SAND_SCREEN_TRUCK"
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
   prop_camera_equipment_preset   =   {
      preset   =   {
         cameraFocusPointOffset   =   {
            x   =   -0.25
            y   =   1
            z   =   10
            __type   =   "Vector3d"
         }
         attachmentBone   =   "BoneRampRear_a_cdt"
         minSpeedToFollow   =   3
         firstLaunchCameraAngles   =   {
            __type   =   "null"
         }
         followChangeDirectionSpeedThreshold   =   3
         scrollPoints   =   {
            "0"   =   {
               distance   =   12
               followTerrainOffset   =   5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "1"   =   {
               distance   =   16
               followTerrainOffset   =   6
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "2"   =   {
               distance   =   20
               followTerrainOffset   =   7
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "3"   =   {
               distance   =   24
               followTerrainOffset   =   8
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "4"   =   {
               distance   =   28
               followTerrainOffset   =   9
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "5"   =   {
               distance   =   30
               followTerrainOffset   =   9.25
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
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   2
            },
            {
               angles   =   {
                  __type   =   "Vector2d"
               }
               position   =   {
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
                  y   =   200
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   4
                  z   =   -5.5
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
                  y   =   5
                  z   =   -6.5
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   5
            },
            {
               angles   =   {
                  y   =   160
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   4
                  z   =   -5.5
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   4
            },
            {
               angles   =   {
                  y   =   140
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   3
                  z   =   -4.5
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   3
            },
            {
               angles   =   {
                  y   =   220
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   3
                  z   =   -4.5
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   30
               weight   =   3
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
         __type   =   "RbVehicleCameraParams"
      }
      equipmentCameraType   =   "TRAILER"
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
      velocityScale   =   1.25
      stuckVelocityThreshold   =   2
      stuckScaleChange   =   0.5
      steerScaleByAngle   =   {
         spline   =   [
            0.144632,
            0.03118,
            0.144632,
            0.03118,
            0.144632,
            0.03118,
            39.98932,
            0.420645,
            39.98932,
            0.420645,
            39.98932,
            0.420645,
            79.88389,
            0.654117,
            79.88389,
            0.654117,
            79.88389,
            0.654117,
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
         z   =   0
         __type   =   "Vector3d"
      }
      slaveConnectType   =   "WINCH_POINT"
      slaveLocator   =   "BoneCabin_cdt"
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
            shakerBone   =   "BoneChassis_cdt"
            frequency   =   60
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
               0.002542,
               0.24825,
               0.198378,
               1.129868,
               1,
               0
            ]
            maxPositionOffsetScale   =   1
            minOffset   =   [
               -0.0007,
               0,
               -0.0007
            ]
            maxOffset   =   [
               0.0007,
               0,
               0.0007
            ]
            positionMultiplier   =   [
               -0.000576,
               0.218934,
               0.246277,
               1.029463,
               1.006583,
               0
            ]
            shakeOnStartTimeMs   =   0
            dampingStep   =   15
            frequencyMultiplier   =   [
               0.001051,
               0.393002,
               0.245802,
               0.976241,
               0.405579,
               0.089579,
               0.997887,
               0.010996
            ]
         }
         EngineShutdown   =   {
            shakerBone   =   "BoneChassis_cdt"
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
               0.401562,
               0.991075,
               1,
               0.000357
            ]
         }
         shaker1   =   {
            shakerBone   =   "BoneShaker_1"
            frequency   =   10
            maxAngleOffsetScale   =   0.5
            minAngle   =   [
               0,
               0,
               0
            ]
            maxAngle   =   [
               0,
               0,
               0
            ]
            maxPositionOffsetScale   =   0.5
            minOffset   =   [
               -0.02,
               -0.02,
               -0.02
            ]
            maxOffset   =   [
               0.02,
               0.02,
               0.02
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
               0.995668,
               0.99348,
               1,
               0
            ]
         }
         shaker1b   =   {
            shakerBone   =   "BoneShaker_1"
            frequency   =   1
            maxAngleOffsetScale   =   0.5
            minAngle   =   [
               0,
               0,
               0
            ]
            maxAngle   =   [
               0,
               0,
               0
            ]
            angleMultiplier   =   [
               0,
               0.4,
               1,
               1
            ]
            maxPositionOffsetScale   =   0.5
            pushPositionBack   =   False
            minOffset   =   [
               -0.04,
               -0.04,
               -0.04
            ]
            maxOffset   =   [
               0.04,
               0.04,
               0.04
            ]
            positionMultiplier   =   [
               0,
               0.4,
               1,
               1
            ]
            shakeOnStartTimeMs   =   5
            dampingStep   =   15
            frequencyMultiplier   =   [
               0.995668,
               0.99348,
               1,
               0
            ]
         }
         shaker3   =   {
            shakerBone   =   "BoneShaker_3"
            frequency   =   15
            maxAngleOffsetScale   =   0.5
            minAngle   =   [
               0,
               0,
               0
            ]
            maxAngle   =   [
               0,
               0,
               0
            ]
            angleMultiplier   =   [
               0,
               0.4,
               1,
               1
            ]
            maxPositionOffsetScale   =   0.5
            minOffset   =   [
               -0.05,
               -0.05,
               -0.05
            ]
            maxOffset   =   [
               0.05,
               0.05,
               0.05
            ]
            positionMultiplier   =   [
               0,
               0.4,
               1,
               1
            ]
            shakeOnStartTimeMs   =   10
            dampingStep   =   10
            frequencyMultiplier   =   [
               0.995668,
               0.99348,
               1,
               0
            ]
         }
         shaker4   =   {
            shakerBone   =   "BoneShaker_4"
            frequency   =   8
            maxAngleOffsetScale   =   0.5
            minAngle   =   [
               0,
               0,
               0
            ]
            maxAngle   =   [
               0,
               0,
               0
            ]
            angleMultiplier   =   [
               0,
               0.4,
               1,
               1
            ]
            maxPositionOffsetScale   =   0.5
            minOffset   =   [
               -0.05,
               -0.05,
               -0.05
            ]
            maxOffset   =   [
               0.05,
               0.05,
               0.05
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
               0.995668,
               0.99348,
               1,
               0
            ]
         }
         Cabin   =   {
            shakerBone   =   "BoneCabin_cdt"
            frequency   =   80
            maxAngleOffsetScale   =   0.495
            minAngle   =   [
               0,
               0,
               -0.01
            ]
            maxAngle   =   [
               0,
               0,
               0.01
            ]
            angleMultiplier   =   [
               0,
               0.5,
               1,
               0
            ]
            maxPositionOffsetScale   =   0.499
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
               0.5,
               1,
               0
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
   prop_truck_anchors_controller   =   {
      anchors   =   [
         {
            anchorConstraints   =   [
               {
                  constraintName   =   "anchor_l_1"
                  speed   =   0.8
                  maxPosition   =   0.62
               }
            ]
            platformVisibilityStage   =   -1
         },
         {
            anchorConstraints   =   [
               {
                  constraintName   =   "anchor_r_1"
                  speed   =   0.8
                  maxPosition   =   0.62
               }
            ]
            platformVisibilityStage   =   -1
         },
         {
            anchorConstraints   =   [
               {
                  constraintName   =   "anchor_r_2"
                  speed   =   0.8
                  maxPosition   =   0.62
               }
            ]
            platformVisibilityStage   =   -1
         },
         {
            anchorConstraints   =   [
               {
                  constraintName   =   "anchor_l_2"
                  speed   =   0.8
                  maxPosition   =   0.62
               }
            ]
            platformVisibilityStage   =   -1
         },
         {
            anchorConstraints   =   [
               {
                  constraintName   =   "anchor_r_3"
                  speed   =   0.8
                  maxPosition   =   0.62
               }
            ]
            platformVisibilityStage   =   -1
         },
         {
            anchorConstraints   =   [
               {
                  constraintName   =   "anchor_l_3"
                  speed   =   0.8
                  maxPosition   =   0.62
               }
            ]
            platformVisibilityStage   =   -1
         }
      ]
      massScalers   =   [
         {
            bodyName   =   "BoneLegLeft_1_cdt"
            scaler   =   10
         },
         {
            bodyName   =   "BoneLegRight_1_cdt"
            scaler   =   10
         },
         {
            bodyName   =   "BoneLegRight_2_cdt"
            scaler   =   10
         },
         {
            bodyName   =   "BoneLegLeft_2_cdt"
            scaler   =   10
         },
         {
            bodyName   =   "BoneLegRight_3_cdt"
            scaler   =   10
         },
         {
            bodyName   =   "BoneLegLeft_3_cdt"
            scaler   =   10
         },
         {
            bodyName   =   "BoneTrailer_cdt"
            scaler   =   3
         },
         {
            bodyName   =   "BoneRampRear_a_cdt"
            scaler   =   5
         },
         {
            bodyName   =   "BoneRampRear_b_cdt"
            scaler   =   5
         },
         {
            bodyName   =   "BoneRampLeft_a_cdt"
            scaler   =   5
         },
         {
            bodyName   =   "BoneRampLeft_b_cdt"
            scaler   =   5
         },
         {
            bodyName   =   "BoneRampRight_a_cdt"
            scaler   =   5
         },
         {
            bodyName   =   "BoneRampRight_b_cdt"
            scaler   =   5
         }
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
            defaultName   =   "default"
            geomNames   =   [
               "reflector_headlights"
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
               "marker_lights_1",
               "marker_lights_2"
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
            name   =   "mirror_left_case"
            angleRotateX   =   5.2
            angleRotateY   =   -0.3
         },
         {
            name   =   "mirror_right_case"
            angleRotateX   =   4
            angleRotateY   =   2.7
         }
      ]
   }
}
__type   =   "truck_view"
