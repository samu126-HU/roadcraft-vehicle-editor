properties   =   {
   geom   =   {
      nameTpl   =   "mtk_2006_harvester_new"
   }
   prop_truck_view_controller   =   {
      engineFiringDelay   =   1000
   }
   prop_truck_view   =   {
      truckName   =   "mtk_2006_harvester_new"
      truckType   =   "truck_heavy"
      truckVisibilityInFogOfWar   =   60
   }
   prop_truck_rb   =   {
      suspensionSet   =   {
         front   =   {
            min   =   -0.1
            max   =   0
            strength   =   0.07
            damping   =   0.9
         }
         rearDiffers   =   True
         rear   =   {
            min   =   -0.2
            max   =   0
            height   =   0.02
            strength   =   0.05
            damping   =   0.9
         }
      }
      suspensionAxleCollection   =   [
         {
            min   =   -0.1
            max   =   0
            strength   =   0.07
            damping   =   0.9
         },
         {
            min   =   -0.2
            max   =   0
            strength   =   0.05
            damping   =   0.8
         }
      ]
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
            torque   =   165000
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
                  angularVelocity   =   0.35
                  gearRatio   =   6
                  targetSpeedRangeKmh   =   {
                     y   =   6.5
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   1.2
                  gearRatio   =   5
                  targetSpeedRangeKmh   =   {
                     x   =   6.5
                     y   =   12
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   2.6
                  gearRatio   =   4.5
                  targetSpeedRangeKmh   =   {
                     x   =   12
                     y   =   16
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   4
                  gearRatio   =   4.2
                  targetSpeedRangeKmh   =   {
                     x   =   16
                     y   =   25
                     __type   =   "Vector2dRnd"
                  }
               }
            ]
            reverseGear   =   {
               angularVelocity   =   0.85
               gearRatio   =   4.5
               __type   =   "TruckSingleGearParams"
            }
            highGear   =   {
               angularVelocity   =   0.25
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
            clutchSwitchTime   =   0.2
            defaultGearSwitchDelay   =   0.4
            upperGearSwitchDelayBase   =   0.35
            upperGearSwitchDelayGearNumMultiplier   =   0.45
            downGearSwitchDelay   =   2
            neutralGearSwitchingDelay   =   1
            __type   =   "TruckGearboxParams"
         }
         __type   =   "TruckGearbox"
      }
      maxSteerSpeed   =   0.015
      backSteerSpeed   =   0.03
      pedalsResponsiveness   =   0.3
      isNeutralGearWheelResistanceEnabled   =   False
      isReverseWheelResistanceEnabled   =   True
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
            steeringAngle   =   30
            geomName   =   "wheel_front_left"
            parentFrame   =   "BoneSuspensionFront_cdt"
            torqueType   =   "full"
            handbrakeStrength   =   0.3
            suspensionCollectionAxleIndex   =   0
            enableLateralForce   =   True
            editableWheel   =   "WheelFront"
         },
         {
            steeringAngle   =   30
            geomName   =   "wheel_front_right"
            parentFrame   =   "BoneSuspensionFront_cdt"
            isRightSided   =   True
            torqueType   =   "full"
            handbrakeStrength   =   0.3
            suspensionCollectionAxleIndex   =   0
            enableLateralForce   =   True
            editableWheel   =   "WheelFront"
         },
         {
            geomName   =   "wheel_rear_left"
            isRear   =   True
            torqueType   =   "full"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.03
            suspensionCollectionAxleIndex   =   1
            enableLateralForce   =   True
            editableWheel   =   "WheelRear"
         },
         {
            geomName   =   "wheel_rear_right"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "full"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.03
            suspensionCollectionAxleIndex   =   1
            enableLateralForce   =   True
            editableWheel   =   "WheelRear"
         }
      ]
      wheelPool   =   {
         WheelFront   =   {
            __value   =   "auto_wheel_mtk_2006_harvester_new_wheelfront"
         }
         WheelRear   =   {
            __value   =   "auto_wheel_mtk_2006_harvester_new_wheelrear"
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
                  __type   =   "BlueprintNodeOnEngineStarting"
               }
               OnEngineStarted   =   {
                  viewData   =   {
                     x   =   3340.561
                     y   =   4850
                  }
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown   =   {
                  viewData   =   {
                     x   =   3338.561
                     y   =   5000
                  }
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
                  zeroBorderEnergy   =   10
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
               PlaySound_Ea792nd31   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   3850
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
               CloneSoundEmitter_Ea792nd32   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea792nd31/emitterRef/cb"
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
               PlaySound_Ea792nd34   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   4150
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
               CloneSoundEmitter_Ea792nd35   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea792nd34/emitterRef/cb"
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
               PlaySound_Ea7940f61   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   4450
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
               CloneSoundEmitter_Ea7940f62   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea7940f61/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_switch_start_engine"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_Ea795l3K1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   3550
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
               CloneSoundEmitter_Ea795l3K2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea795l3K1/emitterRef/cb"
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
               PlaySound_Ea79vVbw1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   4750
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
               CloneSoundEmitter_Ea79vVbw2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea79vVbw1/emitterRef/cb"
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
               PlaySound_Ea79La4E1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   5050
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
               CloneSoundEmitter_Ea79La4E2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   5150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea79La4E1/emitterRef/cb"
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
               OnHarvesterTreeCutting_E4bm9k6w   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   6900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_E4bm9k6w2/Input"
                  ]
                  OnStop   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_E4bm9k6w2/Input"
                  ]
                  __type   =   "BlueprintNodeOnHarvesterTreeCutting"
               }
               OnHarvesterTreeRolling_E4bm9k6w1   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   7150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1_E4bm9k6w4/Input"
                  ]
                  OnStop   =   [
                     "DeactivateForceFeedback_E4bm9k6w3/Input"
                  ]
                  __type   =   "BlueprintNodeOnHarvesterTreeTrimming"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_E4bm9k6w2   =   {
                  viewData   =   {
                     x   =   4950
                     y   =   6900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "tree_cutting"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeActivateForcefeedbackIfTruckIsCurrent"
               }
               DeactivateForceFeedback_E4bm9k6w3   =   {
                  viewData   =   {
                     x   =   4950
                     y   =   7250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "tree_rolling"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeDeactivateForcefeedbackPreset"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1_E4bm9k6w4   =   {
                  viewData   =   {
                     x   =   4950
                     y   =   7150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "tree_rolling"
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
               VFXRestart   =   {
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_1   =   {
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_gas_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_E9p8PwbI   =   {
                  vfxUidRef   =   {
                     def   =   ""
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_E9p8SadV   =   {
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_neutral_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9p8Si5U   =   {
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_neutral_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXStop_E9p8SM4m   =   {
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         AddonTreeCut   =   {
            nodes   =   {
               OnHarvesterClawsMoving_E3pfib8D   =   {
                  viewData   =   {
                     x   =   5700
                     y   =   4750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "If_E3pfib8D1/Input"
                  ]
                  GetIsOpening   =   [
                     "If_E3pfib8D1/condition/cb"
                  ]
                  __type   =   "BlueprintNodeOnHarvesterClawsMoving"
               }
               If_E3pfib8D1   =   {
                  viewData   =   {
                     x   =   5950
                     y   =   4750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnTrue   =   [
                     "PlaySound_E3pfib8D2/Play"
                  ]
                  OnFalse   =   [
                     "PlaySound_3_E3pfib8D3/Play"
                  ]
                  __type   =   "BlueprintNodeIf"
               }
               PlaySound_E3pfib8D2   =   {
                  viewData   =   {
                     x   =   6250
                     y   =   4650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_harvester_claws_open"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_E3pfib8D3   =   {
                  viewData   =   {
                     x   =   6250
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_harvester_claws_close"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnHarvesterTreeCutting_E3pfib8D4   =   {
                  viewData   =   {
                     x   =   5700
                     y   =   5150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_4_E3pfib8D5/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_4_1_E3pfib8D6/Play"
                  ]
                  __type   =   "BlueprintNodeOnHarvesterTreeCutting"
               }
               PlaySound_4_E3pfib8D5   =   {
                  viewData   =   {
                     x   =   6250
                     y   =   5050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_harvester_tree_sawing_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_4_1_E3pfib8D6   =   {
                  viewData   =   {
                     x   =   6250
                     y   =   5250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_E3pfib8Dd/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_harvester_tree_sawing_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnHarvesterTreeRolling_E3pfib8D7   =   {
                  viewData   =   {
                     x   =   5700
                     y   =   5550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_4_1_E3pfib8D8/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_4_1_1_E3pfib8D9/Play"
                  ]
                  __type   =   "BlueprintNodeOnHarvesterTreeTrimming"
               }
               PlaySound_4_1_E3pfib8D8   =   {
                  viewData   =   {
                     x   =   6250
                     y   =   5450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_8_1_E3pfib8Df/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_harvester_tree_rolling_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_4_1_1_E3pfib8D9   =   {
                  viewData   =   {
                     x   =   6250
                     y   =   5650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_8_E3pfib8De/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_harvester_tree_rolling_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnHarvesterHeadRotation_E3pfib8Da   =   {
                  viewData   =   {
                     x   =   5700
                     y   =   6050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_E3pfib8Db/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_5_E3pfib8Dc/Play",
                     "PlaySound_E3pfib8Db/Stop"
                  ]
                  __type   =   "BlueprintNodeOnHarvesterHeadRotation"
               }
               PlaySound_E3pfib8Db   =   {
                  viewData   =   {
                     x   =   6250
                     y   =   5900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_harvester_head_rotatation_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_5_E3pfib8Dc   =   {
                  viewData   =   {
                     x   =   6250
                     y   =   6100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_harvester_head_rotatation_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_E3pfib8Dd   =   {
                  viewData   =   {
                     x   =   6950
                     y   =   5250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "sfx_destr_tree_cut_break"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_8_E3pfib8De   =   {
                  viewData   =   {
                     x   =   6950
                     y   =   5650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "sfx_destr_tree_rolling_debris_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_8_1_E3pfib8Df   =   {
                  viewData   =   {
                     x   =   6950
                     y   =   5450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "sfx_destr_tree_rolling_debris_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_E3pfib8Dg   =   {
                  viewData   =   {
                     x   =   5400
                     y   =   4950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E3pfib8Db/emitterRef/cb",
                     "PlaySound_5_E3pfib8Dc/emitterRef/cb",
                     "PlaySound_4_E3pfib8D5/emitterRef/cb",
                     "PlaySound_4_1_E3pfib8D6/emitterRef/cb",
                     "PlaySound_E3pfib8Dd/emitterRef/cb",
                     "PlaySound_8_1_E3pfib8Df/emitterRef/cb",
                     "PlaySound_8_E3pfib8De/emitterRef/cb",
                     "PlaySound_E3pfib8D2/emitterRef/cb",
                     "PlaySound_3_E3pfib8D3/emitterRef/cb",
                     "PlaySound_4_1_E3pfib8D8/emitterRef/cb",
                     "PlaySound_4_1_1_E3pfib8D9/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneHeadSpin_cdt"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               Schedule_Ea7ai394   =   {
                  viewData   =   {
                     x   =   5750
                     y   =   7400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_Ea7ai3945/SetParameter",
                     "SetSoundParameter_Ea7ai3949/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               OnInit_Ea7ai3941   =   {
                  viewData   =   {
                     x   =   5300
                     y   =   7400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "Schedule_Ea7ai394/Start"
                  ]
                  __type   =   "BlueprintCommonLibraryOninit"
               }
               OnHarvesterArmChanged_Ea7ai3942   =   {
                  viewData   =   {
                     x   =   5300
                     y   =   6800
                  }
                  firstUpdateDelayMs   =   2000
                  headRootBodyName   =   "BoneChassis_cdt"
                  OnUpdate   =   [
                     "CraneValueMovement_Ea7ai3947/Input",
                     "CraneValueMovement_Ea7ai3943/Input"
                  ]
                  GetX   =   [
                     "CraneValueMovement_Ea7ai3943/newValueRef/cb"
                  ]
                  GetZ   =   [
                     "CraneValueMovement_Ea7ai3947/newValueRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnHarvesterArmPositionChanged"
               }
               CraneValueMovement_Ea7ai3943   =   {
                  viewData   =   {
                     x   =   5750
                     y   =   6600
                  }
                  zeroBorder   =   0.2
                  stopDelay   =   0
                  OnStartMoving   =   [
                     "PlaySound_Ea7ai3944/Play"
                  ]
                  OnStopMoving   =   [
                     "PlaySound_10_Ea7ai3946/Play",
                     "PlaySound_Ea7ai3944/Stop"
                  ]
                  newValueRef   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetStatus   =   [
                     "SetSoundParameter_Ea7ai3945/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeCraneValueMovement"
               }
               PlaySound_Ea7ai3944   =   {
                  viewData   =   {
                     x   =   6250
                     y   =   6450
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
               SetSoundParameter_Ea7ai3945   =   {
                  viewData   =   {
                     x   =   6250
                     y   =   7350
                  }
                  nameRef   =   {
                     def   =   "rtpc_crane_move_x_velocity"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               PlaySound_10_Ea7ai3946   =   {
                  viewData   =   {
                     x   =   6250
                     y   =   6650
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
               CraneValueMovement_Ea7ai3947   =   {
                  viewData   =   {
                     x   =   5750
                     y   =   7000
                  }
                  OnStartMoving   =   [
                     "PlaySound_10_Ea7ai3948/Play",
                     "PlaySound_10_1_Ea7ai394a/Stop"
                  ]
                  OnStopMoving   =   [
                     "PlaySound_10_1_Ea7ai394a/Play",
                     "PlaySound_10_Ea7ai3948/Stop"
                  ]
                  newValueRef   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetStatus   =   [
                     "SetSoundParameter_Ea7ai3949/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeCraneValueMovement"
               }
               PlaySound_10_Ea7ai3948   =   {
                  viewData   =   {
                     x   =   6250
                     y   =   6900
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_harvester_crane_move_z_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               SetSoundParameter_Ea7ai3949   =   {
                  viewData   =   {
                     x   =   6250
                     y   =   7500
                  }
                  nameRef   =   {
                     def   =   "rtpc_crane_move_z_velocity"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               PlaySound_10_1_Ea7ai394a   =   {
                  viewData   =   {
                     x   =   6250
                     y   =   7100
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_harvester_crane_move_z_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
            }
            groups   =   {
               "[SOUND] addon - head with claws and tree cut"   =   {
                  x   =   5200
                  y   =   4381.1
                  width   =   2628
                  height   =   1915.209
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] tower and arm"   =   {
                  x   =   5200
                  y   =   6350
                  width   =   1798
                  height   =   1350
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
               __type   =   "HarvesterSavablePropDesc"
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
            __type   =   "AutoMtk2006HarvesterNewReplicated"
         }
         __type   =   "RepEntityBrand"
      }
   }
   prop_lwi_cdt_poi_rb   =   {
      poiRadius   =   48
      interactiveActivationRadius   =   15
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
      maxFuelTankVolume   =   160
      startFuelTankVolume   =   160
      fuelConsumption   =   0.08
      reverseFuelConsumptionCoeff   =   1.2
      lowRangeFuelConsumptionCoeff   =   1.4
   }
   prop_truck_constraint_view   =   {
      powerConstraints   =   [
         {
            constraintName   =   "Claw_T_L"
            states   =   {
               open   =   {
                  isAngular   =   True
                  angularSpeed   =   20
                  __type   =   "TruckPowerConstraintState"
               }
               close   =   {
                  isAngular   =   True
                  targetAngle   =   20
                  angularSpeed   =   20
                  __type   =   "TruckPowerConstraintState"
               }
            }
         },
         {
            constraintName   =   "Claw_T_R"
            states   =   {
               open   =   {
                  isAngular   =   True
                  angularSpeed   =   20
                  __type   =   "TruckPowerConstraintState"
               }
               close   =   {
                  isAngular   =   True
                  targetAngle   =   20
                  angularSpeed   =   20
                  __type   =   "TruckPowerConstraintState"
               }
            }
         },
         {
            constraintName   =   "Claw_B_L"
            states   =   {
               open   =   {
                  isAngular   =   True
                  angularSpeed   =   20
                  __type   =   "TruckPowerConstraintState"
               }
               close   =   {
                  isAngular   =   True
                  targetAngle   =   15
                  angularSpeed   =   20
                  __type   =   "TruckPowerConstraintState"
               }
            }
         },
         {
            constraintName   =   "Claw_B_R"
            states   =   {
               open   =   {
                  isAngular   =   True
                  angularSpeed   =   20
                  __type   =   "TruckPowerConstraintState"
               }
               close   =   {
                  isAngular   =   True
                  targetAngle   =   15
                  angularSpeed   =   20
                  __type   =   "TruckPowerConstraintState"
               }
            }
         },
         {
            constraintName   =   "Saw"
            states   =   {
               open   =   {
                  isAngular   =   True
                  angularSpeed   =   60
                  __type   =   "TruckPowerConstraintState"
               }
               close   =   {
                  isAngular   =   True
                  targetAngle   =   120
                  angularSpeed   =   60
                  __type   =   "TruckPowerConstraintState"
               }
            }
         },
         {
            constraintName   =   "Head_Spin"
            states   =   {
               open   =   {
                  isAngular   =   True
                  targetAngle   =   90
                  angularSpeed   =   65
                  speed   =   0
                  __type   =   "TruckPowerConstraintState"
               }
               close   =   {
                  isAngular   =   True
                  angularSpeed   =   65
                  speed   =   0
                  __type   =   "TruckPowerConstraintState"
               }
            }
         },
         {
            constraintName   =   "Head_Rotate"
            states   =   {
               open   =   {
                  isAngular   =   True
                  targetAngle   =   90
                  angularSpeed   =   65
                  __type   =   "TruckPowerConstraintState"
               }
               close   =   {
                  isAngular   =   True
                  angularSpeed   =   65
                  __type   =   "TruckPowerConstraintState"
               }
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
         y   =   0.7
         z   =   -0.5
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
         equipment   =   {
            info   =   {
               cameraUid   =   "game_camera_vehicle_equipment"
               transitionUid   =   "to_truck_camera_transition"
               attachmentRule   =   {
                  jointName   =   "_equipment_camera"
                  jointOffset   =   {
                     y   =   2
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
   prop_tagged   =   {
      tag   =   "UID_MODULE_HARVESTER"
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
         x   =   -0.075
         y   =   0.75
         z   =   0.2
         __type   =   "Vector3d"
      }
   }
   prop_pre_soft_keyframe_updater   =   {
      syncBodyNames   =   [
         "BoneChassis_cdt",
         "BoneTower_cdt",
         "BoneSegment1_cdt",
         "BoneSegment2_cdt",
         "BoneHeadNod_cdt",
         "BoneHeadRotate_cdt",
         "BoneHeadSpin_cdt",
         "BoneClawLeftTop_cdt",
         "BoneClawRightTop_cdt",
         "BoneClawLeftBottom_cdt",
         "BoneClawRightBottom_cdt"
      ]
   }
   prop_winchable   =   {
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
         followTimeout   =   2.5
         minSpeedToFollow   =   1.5
         firstLaunchCameraAngles   =   {
            x   =   20
            __type   =   "Vector2d"
         }
         cdtBackwardCollisionRefine   =   {
            cdtOnCamera   =   True
            __type   =   "CdtRefine"
         }
         followTerrainLerpSpeed   =   0.9
         followYAngleLimit   =   4
         followChangeDirectionSpeedThreshold   =   1.5
         followChangeDirectionLerpSpeed   =   0.3
         followYAngleLimitLerpSpeed   =   0.9
         distanceLerpSpeed   =   0.95
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
                  x   =   12
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   1.2
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
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   2
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
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   3
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
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   4
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
         interestPointLerpSpeed   =   1.2
         elasticParams   =   {
            accelerationEffectMultiplier   =   1.3
            accelerationBoostCameraCS   =   {
               x   =   0.9
               z   =   1
               __type   =   "Vector3d"
            }
            maxAccelerationEffectLength   =   {
               x   =   0.5
               y   =   0.5
               z   =   0.5
               __type   =   "Vector3d"
            }
            restElasticLengthCameraCS   =   {
               x   =   0.8
               z   =   1
               __type   =   "Vector3d"
            }
            falloffCameraDistance   =   {
               x   =   2
               __type   =   "Vector2d"
            }
            stabilizerLength   =   {
               x   =   0.5
               y   =   0.5
               z   =   0.5
               __type   =   "Vector3d"
            }
            __type   =   "RbElasticOffsetParams"
         }
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
            x   =   -40
            y   =   30
            __type   =   "Vector2dRnd"
         }
         rotationLimitsY   =   {
            x   =   -190
            y   =   190
            __type   =   "Vector2dRnd"
         }
         __type   =   "RbCockpitCameraParams"
      }
   }
   prop_truck_cockpit_under_water_checker   =   {
      vehicleChecker   =   {
         checkerAttachBody   =   "_cockpit_camera"
         points   =   {
            Default_Point   =   {
               x   =   -0.6
               y   =   -0.7
               z   =   0.8
               __type   =   "Vector3d"
            }
            Vector3d   =   {
               x   =   0.6
               y   =   -0.7
               z   =   0.8
            }
            Vector3d_1   =   {
               x   =   -0.6
               y   =   -0.3
               z   =   -0.85
               __type   =   "Vector3d"
            }
            Vector3d_2   =   {
               x   =   0.6
               y   =   -0.3
               z   =   -0.85
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
               "Bone_IK_Tower_PistonBase",
               "Bone_IK_Tower_Piston"
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
                  bodyPhysName   =   "BoneSegment1_cdt"
                  bodyIKName   =   "Bone_IK_Tower_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneSegment1_cdt",
               "Bone_IK_Segment1_Rocker_A",
               "Bone_IK_Segment1_Rocker_B"
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
                  bodyPhysName   =   "BoneSegment2_cdt"
                  bodyIKName   =   "Bone_IK_Segment1_Rocker_B"
                  offsetIk   =   [
                     0.336,
                     0,
                     0
                  ]
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneSegment1_cdt",
               "Bone_IK_Segment1_PistonBase",
               "Bone_IK_Segment1_Piston"
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
                  bodyPhysName   =   "Bone_IK_Segment1_Rocker_B"
                  bodyIKName   =   "Bone_IK_Segment1_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHeadRotate_cdt",
               "Bone_IK_HeadSpin_PistonBase",
               "Bone_IK_HeadSpin_Piston"
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
                  bodyPhysName   =   "BoneHeadSpin_cdt"
                  bodyIKName   =   "Bone_IK_HeadSpin_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHeadSpin_cdt",
               "Bone_IK_ClawLeftTop_PistonBase",
               "Bone_IK_ClawLeftTop_Piston"
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
                  bodyPhysName   =   "BoneClawLeftTop_cdt"
                  bodyIKName   =   "Bone_IK_ClawLeftTop_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHeadSpin_cdt",
               "Bone_IK_ClawRightTop_PistonBase",
               "Bone_IK_ClawRightTop_Piston"
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
                  bodyPhysName   =   "BoneClawRightTop_cdt"
                  bodyIKName   =   "Bone_IK_ClawRightTop_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHeadSpin_cdt",
               "Bone_IK_ClawLeftBottom_PistonBase",
               "Bone_IK_ClawLeftBottom_Piston"
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
                  bodyPhysName   =   "BoneClawLeftBottom_cdt"
                  bodyIKName   =   "Bone_IK_ClawLeftBottom_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHeadSpin_cdt",
               "Bone_IK_ClawRightBottom_PistonBase",
               "Bone_IK_ClawRightBottom_Piston"
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
                  bodyPhysName   =   "BoneClawRightBottom_cdt"
                  bodyIKName   =   "Bone_IK_ClawRightBottom_Piston"
               }
            ]
         }
      ]
   }
   vfx   =   {
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
   prop_phys_substance_target   =   {
      waterDragMultiplier   =   4.25
      oilDragMultiplier   =   8.5
      bodies   =   [
         "BoneChassis_cdt",
         "BoneTower_cdt",
         "BoneSegment1_cdt",
         "BoneSegment2_cdt",
         "BoneHeadSpin_cdt"
      ]
   }
   prop_truck_axles_controller   =   {
      steeringRacks   =   [
         {
            frame   =   "BoneRack"
            rightWheelFrame   =   "BoneRackRight"
            leftWheelFrame   =   "BoneRackLeft"
            rackHalfLength   =   0.526
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
                  boneName   =   "BoneSuspensionFront_cdt"
                  weight   =   1
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneChassis_cdt"
                  weight   =   1
               }
            ]
            shaftFasteningPositionA   =   "shaft_1_a"
            shaftFasteningPositionB   =   "shaft_1_b"
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
            shaftFasteningPositionA   =   "shaft_2_a"
            shaftFasteningPositionB   =   "shaft_2_b"
         }
      ]
   }
   prop_collision_disabler   =   {
   }
   prop_multiple_ik   =   {
      ikBranches   =   {
         Arm   =   {
            effectorOffset   =   {
               y   =   0.475
               z   =   5.8
               __type   =   "Vector3d"
            }
            rootBodyName   =   "BoneChassis_cdt"
            bodyNames   =   [
               "BoneChassis_cdt",
               "BoneTower_cdt",
               "BoneSegment1_cdt",
               "BoneSegment2_cdt"
            ]
            ikSystem   =   {
               syncMode   =   "SYNC_IK_TO_PHYSICS"
               __type   =   "PhysIkSystem"
            }
            horizontalSpeed   =   2.3
            verticalSpeed   =   1.8
            controllableBranches   =   {
               Nod   =   {
                  effectorOffset   =   {
                     y   =   1
                     __type   =   "Vector3d"
                  }
                  rootBodyName   =   "BoneTower_cdt"
                  bodyNames   =   [
                     "BoneSegment2_cdt",
                     "BoneHeadNod_cdt"
                  ]
                  ikSystem   =   {
                     syncMode   =   "SYNC_IK_TO_PHYSICS"
                     __type   =   "PhysIkSystem"
                  }
                  __type   =   "IkBranchSlave"
               }
            }
            __type   =   "IkBranchMaster"
         }
      }
   }
   prop_truck_view_harvester_controller_ecs   =   {
      handController   =   {
         heightFromTruck   =   {
            spline   =   [
               2.1,
               -0.516,
               -0.2005727,
               -0.516,
               4.400572,
               -0.516,
               9.001718,
               1,
               5.093544,
               0.9940799,
               12.9099,
               1.005921
            ]
            __type   =   "SplineBezier1d"
         }
         bodyName   =   "BoneHeadSpin_cdt"
         offset   =   {
            y   =   0
            z   =   0.5
            __type   =   "Vector3d"
         }
         armIkName   =   "Arm"
         nodIkName   =   "Nod"
         alternativeUpdate   =   True
         rotateConstraintName   =   "Head_Rotate"
         treeLeanThreshold   =   10
         spinConstraintName   =   "Head_Spin"
         __type   =   "HarvesterHandController"
      }
      treeScannerController   =   {
         treeScannerCooldawn   =   3
         treeScannerRadius   =   20
         __type   =   "HarvesterTreeScannerController"
      }
      collisionController   =   {
         noCollisionBodies   =   [
            "BoneHeadNod_cdt",
            "BoneHeadRotate_cdt",
            "BoneHeadSpin_cdt",
            "BoneSaw_cdt",
            "BoneClawLeftTop_cdt",
            "BoneClawRightTop_cdt",
            "BoneClawLeftBottom_cdt",
            "BoneClawRightBottom_cdt"
         ]
         __type   =   "HarvesterCollisionController"
      }
      sfxController   =   {
         treeDustSfx   =   "part_sawdust_01"
         sawSfx   =   "part_saw_chips_01"
         chipSfxes   =   [
            "part_chips_center_01",
            "part_chips_lower_01",
            "part_chips_upper_01"
         ]
         __type   =   "HarvesterSfxController"
      }
      animationController   =   {
         clawsAnimation   =   {
            clawConstraints   =   [
               "Claw_T_L",
               "Claw_T_R",
               "Claw_B_L",
               "Claw_B_R"
            ]
            openState   =   "open"
            closeState   =   "close"
            __type   =   "ClawsHarvesterAnimation"
         }
         sawAnimation   =   {
            sawConstraint   =   "Saw"
            openState   =   "open"
            closeState   =   "close"
            __type   =   "SawHarvesterAnimation"
         }
         headAnimation   =   {
            needAdditional   =   True
            additionalConstraintName   =   "Head_Rotate"
            additionalOpenState   =   "open"
            additionalCloseState   =   "close"
            headConstraintName   =   "Head_Spin"
            openState   =   "open"
            closeState   =   "close"
            __type   =   "HeadHarvesterAnimation"
         }
         __type   =   "HarvesterAnimationController"
      }
      treeCatcherController   =   {
         treeCutOffset   =   {
            x   =   0
            y   =   0.686
            z   =   0
            __type   =   "Vector3d"
         }
         treeAttachAngle   =   87.5
         minTruckDistance   =   4
         maxHandDistance   =   8
         distanceToFindTree   =   10
         distanceToAttachSuccessXZ   =   0.3
         constraintAttachPoints   =   [
            {
               x   =   0
               y   =   -0.4
               z   =   0.2
            },
            {
               x   =   0
               y   =   0.5
               z   =   0.2
            }
         ]
         breakTime   =   3
         __type   =   "HarvesterTreeCatcherController"
      }
      sawTreeController   =   {
         sawTreeLogSpawnOffset   =   {
            y   =   -6.62
            z   =   0
            __type   =   "Vector3d"
         }
         sawTreeBreakBranchPoint   =   {
            x   =   0
            y   =   0.67
            z   =   0
            __type   =   "Vector3d"
         }
         debarkingMaxValModifier   =   0.85
         __type   =   "HarvesterSawTreeController"
      }
   }
   prop_cut_zone_controller   =   {
      objectMatPairsActive   =   [
         {
            object   =   "pPlane1"
            material   =   "tree_cut"
         }
      ]
      rotationSpeed   =   15
      objectMatPairsInactive   =   [
         {
            object   =   "pPlane1"
            material   =   "tree_cut_red"
         }
      ]
      cutZoneDesc   =   {
         type   =   {
            properties   =   {
               geom   =   {
                  scale   =   3
               }
            }
            __type   =   "cut_zone"
         }
         __type   =   "IactorDesc"
      }
   }
   prop_harvester_scanner_vfx   =   {
      scannerVfxActorDesc   =   {
         type   =   {
            properties   =   {
               sfx   =   {
                  list   =   {
                     part_radar_tree_01   =   {
                        emitters2   =   {
                           CPU_Geo_Pieces_01_10   =   {
                              particleParams   =   {
                                 size   =   {
                                    ageSize   =   {
                                       spline   =   [
                                          0,
                                          3,
                                          1,
                                          20
                                       ]
                                    }
                                    __type   =   "local__ageSize"
                                 }
                              }
                              __type   =   "CPU_EMITTER"
                           }
                        }
                     }
                  }
                  __onlyOn   =   "visual"
               }
            }
            __type   =   "sfx_radar_tree_01"
         }
         __type   =   "IactorDesc"
      }
      scannerOffset   =   {
         y   =   2
         __type   =   "Vector3d"
      }
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
   prop_truck_customization   =   {
   }
   prop_customization_graffiti   =   {
   }
   prop_truck_view_actions_mapper   =   {
      firstControlSectionUiName   =   "UID_HUD_FIRST_SECTION_CRANE"
      secondControlSectionUiName   =   "UID_HUD_SECOND_SECTION_CRANE"
      axisControls   =   [
         {
            uiActionDescription   =   "UID_HUD_HARVESTER_X"
            actionData   =   {
               actionType   =   "HARVESTER_X"
               strengthFactor   =   0.75
               __type   =   "AxisActionData"
            }
         },
         {
            uiActionDescription   =   "UID_HUD_HARVESTER_Z"
            actionData   =   {
               actionType   =   "HARVESTER_Z"
               strengthFactor   =   0.75
               __type   =   "AxisActionData"
            }
            activationInputType   =   "LEFT_MOUSE_BUTTON"
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
         actionMappingType   =   "GENERIC_ACTION"
         uiActionDescription   =   "UID_HUD_HARVEST_TREE"
         namedActionType   =   "ACTIVATE_HARVESTER"
         __type   =   "ActionMapping"
      }
      secondAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         __type   =   "ActionMapping"
      }
      thirdAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         uiActionDescription   =   "UID_HUD_ACTIVATE_TREE_SCANNER"
         namedActionType   =   "ACTIVATE_HARVESTER_SCANNER"
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
         uiActionDescription   =   "UID_HUD_CRANE_ANCHORS"
         namedActionType   =   "TOGGLE_FORWARDER_ANCHORS"
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
         mouseSensitivity   =   0.05
         __type   =   "TruckInputConfiguration"
      }
   }
   prop_camera_equipment_preset   =   {
      preset   =   {
         attachmentBone   =   "_equipment_camera"
         firstLaunchCameraAngles   =   {
            __type   =   "null"
         }
         xAngleLimits   =   {
            x   =   33
            y   =   85
            __type   =   "Vector2d"
         }
         __type   =   "RbVehicleCameraParams"
      }
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
      velocityScale   =   1.5
      stuckVelocityThreshold   =   2
      stuckScaleChange   =   0.5
      steerScaleByAngle   =   {
         spline   =   [
            0.3042085,
            0.0875399,
            0.3042085,
            0.0875399,
            0.3042085,
            0.0875399,
            49.69028,
            0.4870817,
            49.69028,
            0.4870817,
            49.69028,
            0.4870817,
            60.84038,
            0.6335175,
            60.84038,
            0.6335175,
            60.84038,
            0.6335175,
            82.01106,
            0.8126867,
            82.01106,
            0.8126867,
            82.01106,
            0.8126867,
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
                  constraintName   =   "Leg_L"
                  speed   =   0.5
                  maxPosition   =   0.37
               }
            ]
            platformVisibilityStage   =   -1
         },
         {
            anchorConstraints   =   [
               {
                  constraintName   =   "Leg_R"
                  speed   =   0.5
                  maxPosition   =   0.37
               }
            ]
            platformVisibilityStage   =   -1
         }
      ]
      fallingThreshold   =   20
      massScalers   =   [
         {
            bodyName   =   "BoneChassis_cdt"
            scaler   =   2
         },
         {
            bodyName   =   "BoneLeg_L_cdt"
            scaler   =   30
         },
         {
            bodyName   =   "BoneLeg_R_cdt"
            scaler   =   30
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
   prop_malfunction   =   {
   }
}
__type   =   "truck_view"
