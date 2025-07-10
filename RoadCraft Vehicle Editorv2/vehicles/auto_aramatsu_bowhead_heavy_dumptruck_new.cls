properties   =   {
   geom   =   {
      nameTpl   =   "aramatsu_bowhead_30t"
   }
   prop_truck_view_controller   =   {
      engineFiringDelay   =   1000
   }
   prop_truck_view   =   {
      truckName   =   "aramatsu_bowhead_heavy_dumptruck_new"
      truckType   =   "tracked_light"
      truckVisibilityInFogOfWar   =   60
   }
   prop_truck_rb   =   {
      suspensionSet   =   {
         front   =   {
            min   =   -0.3
            max   =   0
            strength   =   0.8
            damping   =   0.8
         }
         rearDiffers   =   True
         rear   =   {
            min   =   -0.15
            max   =   0.25
            height   =   -0.01
            strength   =   0.08
            damping   =   0.75
         }
      }
      suspensionAxleCollection   =   [
         {
            min   =   -0.3
            max   =   0
            strength   =   0.8
            damping   =   0.8
         },
         {
            min   =   -0.15
            max   =   0.25
            height   =   0.01
            strength   =   0.08
            damping   =   0.75
         },
         {
            min   =   -0.15
            max   =   0.25
            height   =   0.05
            strength   =   0.08
            damping   =   0.75
         }
      ]
      suspensionCollectionMap   =   {
         Front   =   {
            __value   =   0
         }
         Fake   =   {
            __value   =   1
         }
         Trail   =   {
            __value   =   2
         }
      }
      engine   =   {
         params   =   {
            torque   =   600000
            brakesDelay   =   0.5
            maxDeltaAngVel   =   0.01
            responsiveness   =   0.045
            jerkingScale   =   0.1
            rpmDropTimeOnHandbrake   =   1
            __type   =   "TruckEngineParams"
         }
         __type   =   "TruckEngine"
      }
      gearbox   =   {
         params   =   {
            gears   =   [
               {
                  sslModule   =   "physics.truck.truck_components"
                  angularVelocity   =   2
                  gearRatio   =   3
                  targetSpeedRangeKmh   =   {
                     y   =   11
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   4
                  gearRatio   =   2.5
                  targetSpeedRangeKmh   =   {
                     x   =   11
                     y   =   20
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   8
                  gearRatio   =   2
                  targetSpeedRangeKmh   =   {
                     x   =   20
                     y   =   60
                     __type   =   "Vector2dRnd"
                  }
               }
            ]
            reverseGear   =   {
               angularVelocity   =   1
               __type   =   "TruckSingleGearParams"
            }
            highGear   =   {
               angularVelocity   =   5
               gearRatio   =   4.2
               __type   =   "TruckSingleGearParams"
            }
            lowRangeGear   =   {
               angularVelocity   =   0.25
               gearRatio   =   4.2
               __type   =   "TruckSingleGearParams"
            }
            isLowRangeModeReverseEnabled   =   True
            isLowRangeModeClutchingEnabled   =   False
            defaultGearSwitchDelay   =   0.12
            upperGearSwitchDelayBase   =   0.2
            upperGearSwitchDelayGearNumMultiplier   =   0.4
            downGearSwitchDelay   =   0.2
            neutralGearSwitchingDelay   =   0
            __type   =   "TruckGearboxParams"
         }
         __type   =   "TruckGearbox"
      }
      isBackSteerIgnored   =   True
      maxSteerSpeed   =   0.5
      pedalsResponsiveness   =   0.4
      isNeutralGearWheelResistanceEnabled   =   False
      isReverseWheelResistanceEnabled   =   True
      resetPedalsAfterGearReversing   =   True
      trackControls   =   {
         steeringInputToInnerTrackTorqueMult   =   {
            spline   =   [
               0,
               1,
               0.5,
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
            0.4,
            0.5,
            0.45,
            1,
            0.45
         ]
         __type   =   "SplineCurve1d"
      }
      wheelSlotWithDescs   =   [
         {
            geomName   =   "roller_front_l"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "w_front"
         },
         {
            geomName   =   "roller_middle_trail_l_0"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "w_trail"
         },
         {
            geomName   =   "roller_middle_trail_l_5"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "w_trail"
         },
         {
            geomName   =   "roller_rear_l"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "w_rear"
         },
         {
            geomName   =   "roller_front_r"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "w_front"
         },
         {
            geomName   =   "roller_middle_trail_r_0"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "w_trail"
         },
         {
            geomName   =   "roller_middle_trail_r_5"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "w_trail"
         },
         {
            geomName   =   "roller_rear_r"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "w_rear"
         },
         {
            geomName   =   "fakeWheel_l_1"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "w_fake"
         },
         {
            geomName   =   "fakeWheel_l_2"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "w_fake"
         },
         {
            geomName   =   "fakeWheel_l_3"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "w_fake"
         },
         {
            geomName   =   "fakeWheel_l_4"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "w_fake"
         },
         {
            geomName   =   "fakeWheel_r_1"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "w_fake"
         },
         {
            geomName   =   "fakeWheel_r_2"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "w_fake"
         },
         {
            geomName   =   "fakeWheel_r_3"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "w_fake"
         },
         {
            geomName   =   "fakeWheel_r_4"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "w_fake"
         }
      ]
      wheelsWithTrail   =   {
         roller_middle_trail_l_5   =   {
            isRear   =   True
            __type   =   "WheelTrailDesc"
         }
         roller_middle_trail_r_5   =   {
            isRear   =   True
            __type   =   "WheelTrailDesc"
         }
         roller_middle_trail_l_0   =   {
            __type   =   "WheelTrailDesc"
         }
         roller_middle_trail_r_0   =   {
            __type   =   "WheelTrailDesc"
         }
      }
      wheelPool   =   {
         w_front   =   {
            __value   =   "auto_wheel_aramatsu_bowhead_heavy_dumptruck_new_w_front"
         }
         w_middle   =   {
            __value   =   "auto_wheel_aramatsu_bowhead_heavy_dumptruck_new_w_middle"
         }
         w_rear   =   {
            __value   =   "auto_wheel_aramatsu_bowhead_heavy_dumptruck_new_w_rear"
         }
         w_top_visual   =   {
            __value   =   "auto_wheel_aramatsu_bowhead_heavy_dumptruck_new_w_top_visual"
         }
         w_fake   =   {
            __value   =   "auto_wheel_aramatsu_bowhead_heavy_dumptruck_new_w_fake"
         }
         w_trail   =   {
            __value   =   "auto_wheel_aramatsu_bowhead_heavy_dumptruck_new_w_trail"
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
                     "TruckShaker_Dct2DJ37/Play",
                     "TruckShaker_Dct2DJ371/Stop",
                     "SetSoundSwitch_DcddoR5aa/SetSwitchState"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarting"
               }
               OnEngineStarted   =   {
                  viewData   =   {
                     x   =   3340.561
                     y   =   4850
                  }
                  OnEngineStarted   =   [
                     "PlaySound_DcddoR5ac/Play"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown   =   {
                  viewData   =   {
                     x   =   3338.561
                     y   =   5000
                  }
                  OnEngineShutdown   =   [
                     "PlaySound_DcddoR5ad/Play",
                     "TruckShaker_Dct2DJ371/Play",
                     "TruckShaker_Dct2DJ37/Stop"
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
                     "PlaySound_DcddoR5ae/Play"
                  ]
                  __type   =   "BlueprintNodeOnBrakePull"
               }
               OnBrakeRelease   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5750
                  }
                  OnBrakeReleased   =   [
                     "PlaySound_DcddoR5af/Play"
                  ]
                  __type   =   "BlueprintNodeOnBrakeRelease"
               }
               OnHandbrakeStateChanged   =   {
                  viewData   =   {
                     x   =   3335.334
                     y   =   5900
                  }
                  OnHandbrakeOn   =   [
                     "TriggerEvent_E1edEG5o1/TriggerBlueprintEvent",
                     "PlaySound_E27fR39v/Play"
                  ]
                  OnHandbrakeOff   =   [
                     "TriggerEvent_E1edEG5o/TriggerBlueprintEvent",
                     "PlaySound_E27fRH9V/Play"
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
               SetSoundSwitch_DcddoR5aa   =   {
                  viewData   =   {
                     x   =   3800
                     y   =   4650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "PlaySound_DcddoR5ab/Play"
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
               PlaySound_DcddoR5ab   =   {
                  viewData   =   {
                     x   =   4100
                     y   =   4650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_aramatsu_bowhead_engine_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_DcddoR5ac   =   {
                  viewData   =   {
                     x   =   4100
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_DcddoR5aH/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_aramatsu_bowhead_engine_ramp"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_DcddoR5ad   =   {
                  viewData   =   {
                     x   =   4100
                     y   =   5050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_DcddoR5ac/Stop",
                     "PlaySound_DcddoR5aH/Stop",
                     "PlaySound_DcddoR5ab/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_aramatsu_bowhead_engine_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_DcddoR5ae   =   {
                  viewData   =   {
                     x   =   3800
                     y   =   5250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_aramatsu_bowhead_brake_pull"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_DcddoR5af   =   {
                  viewData   =   {
                     x   =   3800
                     y   =   5450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_aramatsu_bowhead_brake_release"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnGearUpdate_DcddoR5aj   =   {
                  viewData   =   {
                     x   =   5700
                     y   =   5600
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
                     "SetSoundParameter_1_DcddoR5ak/SetParameter"
                  ]
                  GetLastGear   =   [
                     "SetSoundParameter_1_DcddoR5ak/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               SetSoundParameter_1_DcddoR5ak   =   {
                  viewData   =   {
                     x   =   6500
                     y   =   5800
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
               OnEngineAcceleration_DcddoR5am   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   7350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAcceleration   =   [
                     "SetSoundParameter_1_1_1_DcddoR5an/SetParameter",
                     "Schedule_DcddoR5aI/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               SetSoundParameter_1_1_1_DcddoR5an   =   {
                  viewData   =   {
                     x   =   6100
                     y   =   7350
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
               SetSoundParameter_1_1_1_1_DcddoR5ao   =   {
                  viewData   =   {
                     x   =   6100
                     y   =   7750
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
               OnEngineInertia_DcddoR5ap   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   7700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnInertia   =   [
                     "SetSoundParameter_1_1_1_1_DcddoR5ao/SetParameter",
                     "Schedule_DcddoR5aI/Start"
                  ]
                  __type   =   "BlueprintNodeOnEngineInertia"
               }
               GetTruckRpm_DcddoR5as   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   6579
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  Get   =   [
                     "FloatSubtract_DcddoR5az/aFloat/cb",
                     "FloatSwitch_DcddoR5aA/trueValue/cb"
                  ]
                  __type   =   "BlueprintNodeGetTruckRpm"
               }
               OnInit_DcddoR5at   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   6479
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "Schedule_DcddoR5au/Start"
                  ]
                  __type   =   "BlueprintCommonLibraryOninit"
               }
               Schedule_DcddoR5au   =   {
                  viewData   =   {
                     x   =   5847.742
                     y   =   6479
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_1_DcddoR5aw/SetParameter",
                     "SetSoundParameter_1_1_DcddoR5ax/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               TruckVelocity_DcddoR5av   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   6829
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetLinearVelocity   =   [
                     "SetSoundParameter_1_1_DcddoR5ax/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               SetSoundParameter_1_DcddoR5aw   =   {
                  viewData   =   {
                     x   =   7500
                     y   =   6479
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
               SetSoundParameter_1_1_DcddoR5ax   =   {
                  viewData   =   {
                     x   =   7500
                     y   =   6729
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
               FloatCommutator_DcddoR5ay   =   {
                  viewData   =   {
                     x   =   6100
                     y   =   6679
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
                     "FloatSubtract_DcddoR5az/bFloat/cb"
                  ]
                  __type   =   "BlueprintNodeFloatCommutator"
               }
               FloatSubtract_DcddoR5az   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   6629
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  Float   =   [
                     "FloatCompare_DcddoR5aB/aFloat/cb",
                     "FloatSwitch_DcddoR5aA/falseValue/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatsubstract"
               }
               FloatSwitch_DcddoR5aA   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   6579
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
                     "FloatSum_DcdiP28R/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeBoolToFloatCommutator"
               }
               FloatCompare_DcddoR5aB   =   {
                  viewData   =   {
                     x   =   6500
                     y   =   6679
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
                     "FloatSwitch_DcddoR5aA/condition/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatcompare"
               }
               SuspensionOscillations_DcddoR5aC   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   6679
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  zeroBorder   =   0.04
                  diffMultiplier   =   400
                  OnOscillationsStarted   =   [
                     "FloatCommutator_DcddoR5ay/PassFirstValue"
                  ]
                  OnOscillationsStopped   =   [
                     "FloatCommutator_DcddoR5ay/PassSecondValue"
                  ]
                  __type   =   "BlueprintNodeSuspensionOscillations"
               }
               GetTruckAngularVelocity_DcddoR5aE   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   6679
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetAngularVelocity   =   [
                     "FloatAbs_DcddoR5aG/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeTruckAngularVelocity"
               }
               FloatMultiplication_DcddoR5aF   =   {
                  viewData   =   {
                     x   =   7150
                     y   =   6679
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
                     "FloatSum_DcdiP28R/bFloat/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatmultiplication"
               }
               FloatAbs_DcddoR5aG   =   {
                  viewData   =   {
                     x   =   7000
                     y   =   6679
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  aFloat   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetFloat   =   [
                     "FloatMultiplication_DcddoR5aF/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeFloatAbs"
               }
               PlaySound_DcddoR5aH   =   {
                  viewData   =   {
                     x   =   4850
                     y   =   4850
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
               Schedule_DcddoR5aI   =   {
                  viewData   =   {
                     x   =   5850
                     y   =   7550
                  }
                  OnPeriod   =   [
                     "PlaySound_DcddoR5aJ/Play"
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
               PlaySound_DcddoR5aJ   =   {
                  viewData   =   {
                     x   =   6100
                     y   =   7550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_aramatsu_bowhead_brake_release"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               FloatSum_DcdiP28R   =   {
                  viewData   =   {
                     x   =   7350
                     y   =   6558
                  }
                  Float   =   [
                     "SetSoundParameter_1_DcddoR5aw/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatsum"
               }
               TruckShaker_Dct2DJ37   =   {
                  viewData   =   {
                     x   =   3800
                     y   =   4950
                  }
                  duration   =   3.2
                  shakerName   =   "EngineStart"
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_Dct2DJ371   =   {
                  viewData   =   {
                     x   =   3800
                     y   =   5150
                  }
                  duration   =   2.8
                  shakerName   =   "EngineShutdown"
                  maxRPM   =   True
                  __type   =   "BlueprintNodeTruckShaker"
               }
               PlaySound_E1ec7PdL   =   {
                  viewData   =   {
                     x   =   6750
                     y   =   4650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "Schedule_E1ec7PdL8/Start"
                  ]
                  OnSoundEnd   =   [
                     "Schedule_E1ec7PdL8/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_track_heavy_right"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_E1ec7PdL2   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   4650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_E1ec7PdL/Play"
                  ]
                  OnSoundEnd   =   [
                     "PlaySound_E1ec7PdL/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_track_heavy_left"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               HandleEvent_E1ec7PdL4   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   4650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnHandle   =   [
                     "PlaySound_2_E1ec7PdL2/Play"
                  ]
                  eventUidRefParam   =   {
                     def   =   "snd_track_on"
                     __type   =   "StringRefParam"
                  }
                  __type   =   "BlueprintNodeHandleEvent"
               }
               HandleEvent_E1ec7PdL5   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   4750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnHandle   =   [
                     "PlaySound_2_E1ec7PdL2/Stop"
                  ]
                  eventUidRefParam   =   {
                     def   =   "snd_track_off"
                     __type   =   "StringRefParam"
                  }
                  __type   =   "BlueprintNodeHandleEvent"
               }
               SetSoundParameter_1_E1ec7PdL6   =   {
                  viewData   =   {
                     x   =   8200
                     y   =   4650
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
               SetSoundParameter_1_E1ec7PdL7   =   {
                  viewData   =   {
                     x   =   7800
                     y   =   4650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "SetSoundParameter_1_E1ec7PdL6/SetParameter"
                  ]
                  nameRef   =   {
                     def   =   "rpm_l"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               Schedule_E1ec7PdL8   =   {
                  viewData   =   {
                     x   =   7450
                     y   =   4650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_1_E1ec7PdL7/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               GetTruckTrackSlidingVelocity_E1ec7PdL9   =   {
                  viewData   =   {
                     x   =   7150
                     y   =   4950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSlidingVelocity   =   [
                     "FloatAbs_E28ksg53/value/cb"
                  ]
                  __type   =   "BlueprintNodeTruckTrackGetSlidingVelocity"
               }
               GetTruckTrackSlidingVelocity_E1ec7PdLa   =   {
                  viewData   =   {
                     x   =   7650
                     y   =   4950
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
                     "FloatAbs_E28ksP0b/value/cb"
                  ]
                  __type   =   "BlueprintNodeTruckTrackGetSlidingVelocity"
               }
               TriggerEvent_E1edEG5o   =   {
                  viewData   =   {
                     x   =   3800
                     y   =   6000
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
               TriggerEvent_E1edEG5o1   =   {
                  viewData   =   {
                     x   =   3800
                     y   =   5900
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
               OnEngineShutdown_E1fhO759   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   7550
                  }
                  OnEngineShutdown   =   [
                     "Schedule_DcddoR5aI/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               PlaySound_E27fR39v   =   {
                  viewData   =   {
                     x   =   3800
                     y   =   5650
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
               PlaySound_E27fRH9V   =   {
                  viewData   =   {
                     x   =   3800
                     y   =   6100
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
               FloatAbs_E28ksg53   =   {
                  viewData   =   {
                     x   =   7550
                     y   =   4850
                  }
                  Abs   =   [
                     "SetSoundParameter_1_E1ec7PdL7/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatabs"
               }
               FloatAbs_E28ksP0b   =   {
                  viewData   =   {
                     x   =   8050
                     y   =   4850
                  }
                  Abs   =   [
                     "SetSoundParameter_1_E1ec7PdL6/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatabs"
               }
               CloneSoundEmitter_Ea96c0dH   =   {
                  viewData   =   {
                     x   =   4100
                     y   =   5850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E27fR39v/emitterRef/cb",
                     "PlaySound_E27fRH9V/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneTruck_11"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_Ea96hS37   =   {
                  viewData   =   {
                     x   =   5700
                     y   =   4900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_E1ec7PdL2/emitterRef/cb",
                     "SetSoundParameter_1_E1ec7PdL7/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "roller_middle_l_3"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        x   =   1
                        __type   =   "Vector3d"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_Ea96hS371   =   {
                  viewData   =   {
                     x   =   6450
                     y   =   4900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E1ec7PdL/emitterRef/cb",
                     "SetSoundParameter_1_E1ec7PdL6/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "roller_middle_r_3"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        x   =   -1
                        __type   =   "Vector3d"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               OnEngineRunningOnInit_F72bS34a   =   {
                  viewData   =   {
                     x   =   3150
                     y   =   5100
                  }
                  OnEngineRunning   =   [
                     "TruckShaker_Dct2DJ37/Stop",
                     "TruckShaker_Dct2DJ371/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineRunningOnInit"
               }
            }
            groups   =   {
               "[SOUND] acceleration input"   =   {
                  x   =   5600
                  y   =   7200
                  width   =   1300
                  height   =   800
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] gear update"   =   {
                  x   =   5600
                  y   =   5400
                  width   =   1600
                  height   =   697.9316
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] rpm and speed"   =   {
                  x   =   5600
                  y   =   6300
                  width   =   2400
                  height   =   700
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] Tracks"   =   {
                  x   =   5600
                  y   =   4400
                  width   =   3050
                  height   =   800
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
               OnTPLAnimationBegin_EaucnB0j   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1650
                  }
                  OnAnimStart   =   [
                     "PlaySound_EaucnB0j2/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnBegin"
               }
               OnTPLAnimationEnd_EaucnB0j1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1850
                  }
                  OnAnimStop   =   [
                     "PlaySound_EaucnB0j3/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnEnd"
               }
               PlaySound_EaucnB0j2   =   {
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
               PlaySound_EaucnB0j3   =   {
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
               OnGearUpdate_Ec48jodW   =   {
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
                     "PlaySound_3_Ec48jodW2/Play"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               PlaySound_3_Ec48jodW2   =   {
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
               CloneSoundEmitter_Ec48jodW3   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   2100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_3_Ec48jodW2/emitterRef/cb"
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
               CloneSoundEmitter_EauggS1B   =   {
                  viewData   =   {
                     x   =   4400
                     y   =   1650
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_EaucnB0j2/emitterRef/cb",
                     "PlaySound_EaucnB0j3/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneAnim_Wipers_01_c"
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
               PlaySound_Ea96wcg3   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "Schedule_Ea96wcg32/Start"
                  ]
                  OnSoundEnd   =   [
                     "Schedule_Ea96wcg32/Stop"
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
               GetInfoElementCockpitForSoundWithSchedule_Ea96wcg31   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ea96wcg3/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_Ea96wcg3/Stop"
                  ]
                  nameBoneBro   =   "ctrl_steering_wheel"
                  isWheel   =   True
                  GetCurrentSteerSpeed   =   [
                     "SetSoundParameter_Ea96wcg33/valueRef/cb"
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
               Schedule_Ea96wcg32   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   3550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_Ea96wcg33/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               SetSoundParameter_Ea96wcg33   =   {
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
               CloneSoundEmitter_Ea96wcg34   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea96wcg3/emitterRef/cb",
                     "SetSoundParameter_Ea96wcg33/emitterRef/cb"
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
               GetInfoElementCockpitForSoundWithEvent_Ea96wcg35   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ea96wcg36/Play"
                  ]
                  nameBoneBro   =   "ctrl_gear_stick_low"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_Ea96wcg36   =   {
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
                        name   =   "vhc_body_cockpit_switch"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_Ea96wcg37   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea96wcg36/emitterRef/cb"
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
               GetInfoElementCockpitForSoundWithEvent_Ea96xmau   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ea96xmau1/Play"
                  ]
                  nameBoneBro   =   "ctrl_grapple_rotate"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_Ea96xmau1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   4150
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
               CloneSoundEmitter_Ea96xmau2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea96xmau1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_grapple_rotate"
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
                     "BoneBase_cdt",
                     "BoneDump_cdt"
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
               OnTruckPourSand_E8mhoy9k   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   6950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_E8mhoy9k2/Input"
                  ]
                  OnStop   =   [
                     "DeactivateForceFeedback_E8mhoy9k3/Input"
                  ]
                  __type   =   "BlueprintNodeOnTruckPourSand"
               }
               OnTruckLoadVolumeRefill_E8mhoy9k1   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   7150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_E8mhoy9k2/Input"
                  ]
                  OnStop   =   [
                     "DeactivateForceFeedback_E8mhoy9k3/Input"
                  ]
                  __type   =   "BlueprintNodeOnTruckLoadVolumeRefill"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_E8mhoy9k2   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   6950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "pour_sand_2"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeActivateForcefeedbackIfTruckIsCurrent"
               }
               DeactivateForceFeedback_E8mhoy9k3   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   7150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "pour_sand_2"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeDeactivateForcefeedbackPreset"
               }
               OnInit_E8mhoL6W   =   {
                  viewData   =   {
                     x   =   4700
                     y   =   7950
                  }
                  OnExit   =   [
                     "SetGravityFactorForPhysObject_E8mhoW4S/Input"
                  ]
                  __type   =   "BlueprintCommonLibraryOninit"
               }
               SetGravityFactorForPhysObject_E8mhoW4S   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   7950
                  }
                  factorRef   =   {
                     def   =   1.2
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintNodePhysSystemSetGravityFactor"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1_F5merH9d   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   7400
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
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1_F5merH9d1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   7600
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
               OnControllableConstraintStateChangeNew_F5merH9d2   =   {
                  viewData   =   {
                     x   =   4400
                     y   =   7400
                  }
                  OnStartIncrease   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1_F5merH9d/Input"
                  ]
                  OnStartDecrease   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1_F5merH9d1/Input"
                  ]
                  OnStop   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1_F5merH9d3/Input"
                  ]
                  name   =   "dump"
                  __type   =   "BlueprintNodeOnControllableStateChangeNew"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1_F5merH9d3   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   7750
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
               OnControllableConstraintStateChangeNew_F5meDKf1   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   8200
                  }
                  OnStartIncrease   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1_F5meEIc3/Input"
                  ]
                  OnStartDecrease   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1_F5meEIc3/Input"
                  ]
                  OnStop   =   [
                     "DeactivateForceFeedback_F5meEIc31/Input"
                  ]
                  name   =   "tower"
                  __type   =   "BlueprintNodeOnControllableStateChangeNew"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1_F5meEIc3   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   8200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "claws_rotation"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeActivateForcefeedbackIfTruckIsCurrent"
               }
               DeactivateForceFeedback_F5meEIc31   =   {
                  viewData   =   {
                     x   =   5005.062
                     y   =   8339.324
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "claws_rotation"
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
               OnEngineStarted_E9parI7C   =   {
                  viewData   =   {
                     x   =   4740.721
                     y   =   3160
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineStarted   =   [
                     "VFXRestart_E9parI7C3/Input",
                     "VFXRestart_1_E9parI7C4/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown_E9parI7C1   =   {
                  viewData   =   {
                     x   =   4729.28
                     y   =   3310
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineShutdown   =   [
                     "VFXStop_E9parI7C2/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               VFXStop_E9parI7C2   =   {
                  viewData   =   {
                     x   =   5240.721
                     y   =   3410
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "VFXStop_E9parI7C5/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_E9parI7C3   =   {
                  viewData   =   {
                     x   =   5240.721
                     y   =   3310
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
               VFXRestart_1_E9parI7C4   =   {
                  viewData   =   {
                     x   =   5240.721
                     y   =   3160
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "VFXRestart_1_E9parI7Ca/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_exhaust_faint_smoke_up_gas_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9parI7C5   =   {
                  viewData   =   {
                     x   =   5790.721
                     y   =   3410
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
               OnEngineAcceleration_E9parI7C6   =   {
                  viewData   =   {
                     x   =   4740.721
                     y   =   3560
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAcceleration   =   [
                     "VFXRestart_E9parI7C8/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9parI7C9/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse_E9parI7C7   =   {
                  viewData   =   {
                     x   =   4740.721
                     y   =   3760
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineReverse   =   [
                     "VFXRestart_E9parI7C8/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9parI7C9/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               VFXRestart_E9parI7C8   =   {
                  viewData   =   {
                     x   =   5240.721
                     y   =   3610
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_faint_smoke_up_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9parI7C9   =   {
                  viewData   =   {
                     x   =   5240.721
                     y   =   3710
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_faint_smoke_up_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_1_E9parI7Ca   =   {
                  viewData   =   {
                     x   =   5790.721
                     y   =   3160
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
               OnEngineStarting_E9pato8E   =   {
                  viewData   =   {
                     x   =   4750
                     y   =   3950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineStarting   =   [
                     "VFXRestart_1_E9pato8E1/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarting"
               }
               VFXRestart_1_E9pato8E1   =   {
                  viewData   =   {
                     x   =   5250
                     y   =   3950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
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
         Addon   =   {
            nodes   =   {
               OnTruckLoadVolumeRefill_Ea96og32   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   6100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ea96og321/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_Ea96og322/Play"
                  ]
                  __type   =   "BlueprintNodeOnTruckLoadVolumeRefill"
               }
               PlaySound_Ea96og321   =   {
                  viewData   =   {
                     x   =   5550
                     y   =   6000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "sfx_sand_upload_loop_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_Ea96og322   =   {
                  viewData   =   {
                     x   =   5550
                     y   =   6200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "sfx_sand_upload_loop_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_Ea96og323   =   {
                  viewData   =   {
                     x   =   5550
                     y   =   6600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "sfx_sand_unload_loop_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_Ea96og324   =   {
                  viewData   =   {
                     x   =   5550
                     y   =   6400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "sfx_sand_unload_loop_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnTruckPourSand_Ea96og325   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   6500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ea96og324/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_Ea96og323/Play"
                  ]
                  __type   =   "BlueprintNodeOnTruckPourSand"
               }
               PlaySound_Ea96og326   =   {
                  viewData   =   {
                     x   =   5850
                     y   =   5150
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_dump_bed_heavy_open_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_9_Ea96og327   =   {
                  viewData   =   {
                     x   =   5850
                     y   =   5350
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_dump_bed_heavy_close_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_9_1_Ea96og328   =   {
                  viewData   =   {
                     x   =   5850
                     y   =   5550
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_dump_bed_heavy_move_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_Ea96og329   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   5550
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea96og326/emitterRef/cb",
                     "PlaySound_9_Ea96og327/emitterRef/cb",
                     "PlaySound_9_1_Ea96og328/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneDump_8"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        z   =   0
                        __type   =   "null"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               OnControllableConstraintStateChange_Ea96og32a   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   5150
                  }
                  OnStart   =   [
                     "PlaySound_Ea96og326/Play",
                     "PlaySound_9_Ea96og327/Stop"
                  ]
                  OnStop   =   [
                     "PlaySound_Ea96og326/Stop",
                     "PlaySound_9_1_Ea96og328/Play"
                  ]
                  name   =   "dump"
                  __type   =   "BlueprintNodeOnControllableStateChange"
               }
               OnControllableConstraintStateChange_Ea96og32b   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   5350
                  }
                  OnStart   =   [
                     "PlaySound_9_Ea96og327/Play",
                     "PlaySound_Ea96og326/Stop"
                  ]
                  OnStop   =   [
                     "PlaySound_9_Ea96og327/Stop",
                     "PlaySound_9_1_Ea96og328/Play"
                  ]
                  name   =   "dump"
                  isIncrease   =   True
                  __type   =   "BlueprintNodeOnControllableStateChange"
               }
               PlaySound_F5682f3S   =   {
                  viewData   =   {
                     x   =   5750
                     y   =   4250
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_arm_move_x_start"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_9_1_F5682f3S1   =   {
                  viewData   =   {
                     x   =   5750
                     y   =   4450
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_crane_arm_move_x_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_F5682f3S2   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   4550
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_F5682f3S/emitterRef/cb",
                     "PlaySound_9_1_F5682f3S1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneBase_11"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               OncePerFrame_F5682f3S3   =   {
                  viewData   =   {
                     x   =   5550
                     y   =   4250
                  }
                  OnExit   =   [
                     "PlaySound_F5682f3S/Play"
                  ]
                  __type   =   "BlueprintNodeOncePerFrame"
               }
               OncePerFrame_F5682f3S4   =   {
                  viewData   =   {
                     x   =   5550
                     y   =   4450
                  }
                  OnExit   =   [
                     "PlaySound_9_1_F5682f3S1/Play"
                  ]
                  __type   =   "BlueprintNodeOncePerFrame"
               }
               OnControllableConstraintStateChangeNew_F5682f3S5   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   4350
                  }
                  OnStartIncrease   =   [
                     "OncePerFrame_F5682f3S3/CheckFrame"
                  ]
                  OnStartDecrease   =   [
                     "OncePerFrame_F5682f3S3/CheckFrame"
                  ]
                  OnStop   =   [
                     "OncePerFrame_F5682f3S4/CheckFrame"
                  ]
                  name   =   "tower"
                  __type   =   "BlueprintNodeOnControllableStateChangeNew"
               }
            }
            groups   =   {
               "[SOUND] addon - dump bed"   =   {
                  x   =   5000
                  y   =   5000
                  width   =   1550
                  height   =   849
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] sand upload & unload"   =   {
                  x   =   5000
                  y   =   5900
                  width   =   1550
                  height   =   900
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] tower rotate"   =   {
                  x   =   5000
                  y   =   4050
                  width   =   1550
                  height   =   849
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
               __type   =   "TruckLoadVolumeSavablePropDesc"
            }
         }
      ]
   }
   prop_replicated   =   {
      repEntityBrand   =   {
         type   =   {
            __type   =   "AutoAramatsuBowheadHeavyDumptruckNewReplicated"
         }
         __type   =   "RepEntityBrand"
      }
   }
   prop_lwi_cdt_poi_rb   =   {
      poiRadius   =   48
   }
   prop_truck_gearbox_controller   =   {
      isLowGearAvailable   =   True
   }
   prop_fuel_tank   =   {
      maxFuelTankVolume   =   300
      startFuelTankVolume   =   300
      fuelConsumption   =   0.16
      reverseFuelConsumptionCoeff   =   1.2
      lowRangeFuelConsumptionCoeff   =   1.4
   }
   prop_truck_constraint_view   =   {
      powerConstraints   =   [
         {
            constraintName   =   "lid"
            states   =   {
               opened   =   {
                  isAngular   =   True
                  targetAngle   =   20
                  angularSpeed   =   27
                  targetPosition   =   0.26
                  __type   =   "TruckPowerConstraintState"
               }
               closed   =   {
                  isAngular   =   True
                  angularSpeed   =   27
                  targetPosition   =   0.04
                  __type   =   "TruckPowerConstraintState"
               }
            }
         }
      ]
      controllableConstraints   =   [
         {
            constraintName   =   "tower"
            angularSpeed   =   27
            minAngle   =   -3600
            maxAngle   =   3600
            inertiaInput   =   {
               inertiaRelaxationTime   =   0.3
               __type   =   "ConstraintInertiaInput"
            }
         },
         {
            constraintName   =   "dump"
            angularSpeed   =   25
            maxAngle   =   60
            inertiaInput   =   {
               inertiaRelaxationTime   =   0.15
               __type   =   "ConstraintInertiaInput"
            }
         }
      ]
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
         x   =   -1.095
         y   =   2.771
         z   =   2.502
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
                  y   =   -0.25
                  z   =   0.25
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
                  y   =   5
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
         LoadVolumeWarningMarker   =   {
            marker   =   {
               assetPoolLink   =   "LoadVolumeWarningMarkerPool"
               isShowOutOfView   =   True
               isCullByDistance   =   False
               isLimitBySafeZone   =   False
               __type   =   "UiMarker2D"
            }
            positionTracker   =   {
               locator   =   "_load_volume"
               posOffset   =   {
                  y   =   0.1
                  __type   =   "Vector3d"
               }
               __type   =   "Tracker"
            }
            viewController   =   {
               fadeOutDelayMs   =   2700
               __type   =   "UiSandLoadingWarningMarkerController"
            }
            visibilityRules   =   {
               LoadingWarningRule   =   {
                  __type   =   "MarkerVisibilityRuleLoadingWarning"
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
      tag   =   "UID_MODULE_HEAVY_TRACKED_DUMP_TRUCK"
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
         }
         track_particles_wet_mud_down_01   =   {
         }
         track_particles_wet_dirt_02   =   {
         }
         part_track_exhaust_gas_01   =   {
         }
         part_track_exhaust_neutral_01   =   {
         }
         part_track_exhaust_gas_old_01   =   {
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
               EditBNormal_04   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
               EditBNormal_01   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
               EditBNormal_03   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
               EditBNormal_02   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         part_exhaust_faint_smoke_up_gas_01   =   {
            emitters2   =   {
               Smoke_Flow_7   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_8   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               EditBNormal_01   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
               EditBNormal_02   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         part_exhaust_faint_smoke_up_gas_old_01   =   {
         }
         part_exhaust_faint_smoke_up_old   =   {
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
         part_track_acceleration_old_tuz_01   =   {
         }
         part_track_acceleration_tuz_01   =   {
         }
         part_track_exhaust_gas_old_tuz_01   =   {
         }
         part_track_exhaust_gas_tuz_01   =   {
         }
         part_track_exhaust_neutral_tuz_01   =   {
         }
         track_particles_oil_02   =   {
         }
         track_particles_mud_01_wet   =   {
            emitters2   =   {
               covering_med_car_mud_WET_ON   =   {
                  isVisible   =   False
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
               covering_med_car_mud_WET_ON   =   {
                  isVisible   =   False
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
         grapple_dump_rotator   =   {
            rotatorVelocityCondition   =   {
               constraintName   =   "dump"
               __type   =   "RotatorConditionConstraintNative"
            }
            isStartedOnInit   =   True
            rotatorBone   =   "ctrl_grapple_dump"
            velocityScalers   =   {
               scale   =   {
                  value   =   10
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
      boneName   =   "BoneTruck_cdt"
      boneOffset   =   {
         x   =   0.975
         y   =   0.23
         z   =   3.35
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
                  distance   =   35
               }
            }
            focusDistance   =   35
            __type   =   "SmartEntryPointTruckSandStorage"
         }
      }
   }
   prop_pre_soft_keyframe_updater   =   {
      syncBodyNames   =   [
         "BoneTruck_cdt",
         "BoneDump_cdt",
         "BoneLid_cdt"
      ]
   }
   prop_truck_track   =   {
      tracks   =   [
         {
            section   =   {
               height   =   0.116
               tpl   =   "aramatsu_bowhead_30t_track"
               segmentLength   =   0.2055
               segmentBones   =   [
                  "bone_0",
                  "bone_1",
                  "bone_2",
                  "bone_3",
                  "bone_4",
                  "bone_5",
                  "bone_6",
                  "bone_7"
               ]
               __type   =   "TruckTrackSection"
            }
            decalDescIndex   =   0
            wheelIds   =   [
               0,
               1,
               2,
               3
            ]
            visualWheelSlots   =   [
               {
                  geomName   =   "roller_top_fl"
                  editableWheel   =   "w_top_visual"
               },
               {
                  geomName   =   "roller_top_rl"
                  editableWheel   =   "w_top_visual"
               },
               {
                  geomName   =   "roller_middle_l_0"
                  editableWheel   =   "w_middle"
               },
               {
                  geomName   =   "roller_middle_l_1"
                  editableWheel   =   "w_middle"
               },
               {
                  geomName   =   "roller_middle_l_2"
                  editableWheel   =   "w_middle"
               },
               {
                  geomName   =   "roller_middle_l_3"
                  editableWheel   =   "w_middle"
               },
               {
                  geomName   =   "roller_middle_l_4"
                  editableWheel   =   "w_middle"
               },
               {
                  geomName   =   "roller_middle_l_5"
                  editableWheel   =   "w_middle"
               }
            ]
            fakeWheelIds   =   [
               8,
               9,
               10,
               11
            ]
         },
         {
            section   =   {
               height   =   0.116
               tpl   =   "aramatsu_bowhead_30t_track"
               segmentLength   =   0.2055
               segmentBones   =   [
                  "bone_0",
                  "bone_1",
                  "bone_2",
                  "bone_3",
                  "bone_4",
                  "bone_5",
                  "bone_6",
                  "bone_7"
               ]
               __type   =   "TruckTrackSection"
            }
            decalDescIndex   =   0
            wheelIds   =   [
               4,
               5,
               6,
               7
            ]
            visualWheelSlots   =   [
               {
                  geomName   =   "roller_top_fr"
                  isRightSided   =   True
                  editableWheel   =   "w_top_visual"
               },
               {
                  geomName   =   "roller_top_rr"
                  isRightSided   =   True
                  editableWheel   =   "w_top_visual"
               },
               {
                  geomName   =   "roller_middle_r_0"
                  isRightSided   =   True
                  editableWheel   =   "w_middle"
               },
               {
                  geomName   =   "roller_middle_r_1"
                  isRightSided   =   True
                  editableWheel   =   "w_middle"
               },
               {
                  geomName   =   "roller_middle_r_2"
                  isRightSided   =   True
                  editableWheel   =   "w_middle"
               },
               {
                  geomName   =   "roller_middle_r_3"
                  isRightSided   =   True
                  editableWheel   =   "w_middle"
               },
               {
                  geomName   =   "roller_middle_r_4"
                  isRightSided   =   True
                  editableWheel   =   "w_middle"
               },
               {
                  geomName   =   "roller_middle_r_5"
                  isRightSided   =   True
                  editableWheel   =   "w_middle"
               }
            ]
            fakeWheelIds   =   [
               12,
               13,
               14,
               15
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
            bodyName   =   "BoneTruck_cdt"
            offsetInBodySpace   =   {
               x   =   1.435
               y   =   1.173
               z   =   4.147
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTruck_cdt"
            offsetInBodySpace   =   {
               x   =   -1.416
               y   =   0.741
               z   =   4.147
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneDump_cdt"
            offsetInBodySpace   =   {
               x   =   1.452
               y   =   1.287
               z   =   1.25
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneDump_cdt"
            offsetInBodySpace   =   {
               x   =   -1.452
               y   =   1.287
               z   =   1.25
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTruck_cdt"
            offsetInBodySpace   =   {
               y   =   -0.494
               z   =   4.268
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneBase_cdt"
            offsetInBodySpace   =   {
               y   =   0.688
               z   =   -3.873
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
            y   =   -0.25
            z   =   0.25
            __type   =   "Vector3d"
         }
         attachmentBone   =   "_third_person_camera"
         minSpeedToFollow   =   2
         firstLaunchCameraAngles   =   {
            x   =   11
            y   =   35
            __type   =   "Vector2d"
         }
         followChangeDirectionSpeedThreshold   =   2
         scrollPoints   =   {
            "0"   =   {
               distance   =   11
               followTerrainOffset   =   3
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "1"   =   {
               distance   =   13
               followTerrainOffset   =   3.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "2"   =   {
               distance   =   15
               followTerrainOffset   =   4
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "3"   =   {
               distance   =   17
               followTerrainOffset   =   4.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "4"   =   {
               distance   =   19
               followTerrainOffset   =   5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "5"   =   {
               distance   =   21
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
         eyeOffset   =   {
            y   =   0.1
            z   =   -0.15
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
         leftSideRearView   =   {
            isEnabled   =   True
            transitionStart   =   100
            transitionEnd   =   140
            baseRotation   =   {
               __type   =   "Vector2dRnd"
            }
            eyeOffset   =   {
               x   =   0.6
               z   =   0.3
               __type   =   "Vector3d"
            }
            rollAngle   =   -5
            rotationLimitsX   =   {
               x   =   -40
               y   =   45
               __type   =   "Vector2dRnd"
            }
            __type   =   "RbCockpitCameraRearViewParams"
         }
         __type   =   "RbCockpitCameraParams"
      }
   }
   prop_truck_cockpit_under_water_checker   =   {
      vehicleChecker   =   {
         checkerAttachBody   =   "_cockpit_camera"
         points   =   {
            Default_Point   =   {
               x   =   -0.4
               y   =   -1
               z   =   1
               __type   =   "Vector3d"
            }
            Vector3d   =   {
               x   =   0.4
               y   =   -1
               z   =   1
            }
            Vector3d_1   =   {
               x   =   -0.4
               y   =   -0.4
               z   =   -0.6
               __type   =   "Vector3d"
            }
            Vector3d_2   =   {
               x   =   0.4
               y   =   -0.4
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
               "BoneTruck_cdt",
               "BoneIK_Piston_a",
               "BoneIK_Piston_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     1,
                     0,
                     0
                  ]
                  limitType   =   "DEGREE"
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
                  bodyPhysName   =   "BoneDump_cdt"
                  bodyIKName   =   "BoneIK_Piston_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneLid_cdt",
               "BoneIK_LidPiston_a",
               "BoneIK_LidPiston_b",
               "BoneIK_LidPiston_c"
            ]
            ikConstraints   =   [
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
                  min   =   0
                  max   =   0.07
               },
               {
                  vAxis   =   [
                     1,
                     0,
                     0
                  ]
                  limitType   =   "DEGREE"
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
                  bodyPhysName   =   "BoneDump_cdt"
                  bodyIKName   =   "BoneIK_LidPiston_c"
               }
            ]
         }
      ]
   }
   vfx   =   {
      vfxSkeleton   =   {
         vfxBones   =   [
            {
               name   =   "water_01"
               bone   =   "BoneBase_cdt"
               boneOffset   =   [
                  0,
                  0.84,
                  -0.74
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.95,
                        0.81,
                        5.87
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
               bone   =   "BoneBase_cdt"
               boneOffset   =   [
                  -0.67,
                  0.76,
                  2.6
               ]
               boneRotation   =   [
                  0,
                  -14.77,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.5,
                        0.73,
                        2
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
               bone   =   "BoneBase_cdt"
               boneOffset   =   [
                  0.67,
                  0.76,
                  2.6
               ]
               boneRotation   =   [
                  0,
                  14.77,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.5,
                        0.73,
                        2
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
               waterParams   =   {
                  influence   =   0
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
               bone   =   "BoneBase_cdt"
               boneOffset   =   [
                  -1.47,
                  0.76,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.86,
                        0.97,
                        7.12
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
               waterParams   =   {
                  influence   =   0.5
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
               bone   =   "BoneBase_cdt"
               boneOffset   =   [
                  1.47,
                  0.76,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.86,
                        0.97,
                        7.12
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
               waterParams   =   {
                  influence   =   0.5
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
               name   =   "water_06"
               bone   =   "BoneTruck_cdt"
               boneOffset   =   [
                  0,
                  -0.32,
                  0.2
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.05,
                        0.4,
                        8.23
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
               name   =   "water_07"
               bone   =   "BoneTruck_cdt"
               boneOffset   =   [
                  0,
                  0.11,
                  2.88
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        2.97,
                        1.24,
                        2.67
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
               name   =   "water_08"
               bone   =   "BoneTruck_cdt"
               boneOffset   =   [
                  0.96,
                  0.35,
                  3.48
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.99,
                        1.84,
                        1.55
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
               name   =   "water_09"
               bone   =   "BoneDump_cdt"
               boneOffset   =   [
                  0,
                  0.76,
                  2.36
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.05,
                        1.16,
                        5.6
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
               name   =   "water_10"
               bone   =   "BoneDump_cdt"
               boneOffset   =   [
                  0,
                  1,
                  5.35
               ]
               boneRotation   =   [
                  -60.64,
                  0,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.09,
                        0.44,
                        1.67
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
               name   =   "water_10"
               bone   =   "BoneDump_cdt"
               boneOffset   =   [
                  0,
                  1.74,
                  6.03
               ]
               boneRotation   =   [
                  -10.5,
                  0,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.09,
                        0.2,
                        0.91
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
               waterParams   =   {
                  influence   =   0
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
               name   =   "left_box_fast_grass"
               boneOffset   =   [
                  2.5,
                  0.6,
                  1.15
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.2,
                        0.5,
                        1.6
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
               boneOffset   =   [
                  -2.5,
                  0.6,
                  1.15
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.2,
                        0.5,
                        1.6
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
               bone   =   "BoneTruck_cdt"
               boneOffset   =   [
                  0,
                  0.08,
                  2.98
               ]
               boneRotation   =   [
                  90,
                  0,
                  90
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   0.43
                     radius   =   1.44
                     scaleX   =   0.52
                  }
                  capsule   =   {
                     height   =   0.43
                     radius   =   1.44
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_06"
               bone   =   "root"
               boneOffset   =   [
                  0,
                  0.76,
                  -0.88
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   4.87
                     radius   =   0.27
                     scaleX   =   3.5
                  }
                  capsule   =   {
                     height   =   5.23
                     radius   =   0.5
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_07"
               bone   =   "root"
               boneOffset   =   [
                  -1.48,
                  0.7,
                  0
               ]
               boneRotation   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   6.19
                     radius   =   0.58
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
               name   =   "shadow_08"
               bone   =   "BoneDump_cdt"
               boneOffset   =   [
                  0,
                  0.23,
                  2.6
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   4.71
                     scaleX   =   3.14
                  }
                  capsule   =   {
                     height   =   5.23
                     radius   =   0.5
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_09"
               bone   =   "root"
               boneOffset   =   [
                  1.48,
                  0.7,
                  0
               ]
               boneRotation   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   6.19
                     radius   =   0.58
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
               name   =   "shadow_10"
               bone   =   "BoneTruck_cdt"
               boneOffset   =   [
                  1.04,
                  0.4,
                  3.42
               ]
               boneRotation   =   [
                  90,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   0.15
                     radius   =   0.88
                     scaleX   =   0.64
                  }
                  capsule   =   {
                     height   =   0.43
                     radius   =   1.44
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
            fov   =   45
            centerLocatorName   =   "pip_camera_left"
            objName   =   "_hp_cab_interior_mirror_left"
            pipCameraMaterialName   =   "truck_mirror"
            __type   =   "MirrorParams"
         }
         mirror_right   =   {
            fov   =   35
            centerLocatorName   =   "pip_camera_right"
            objName   =   "_hp_cab_inerior_mirror_right"
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
         MOVE_WITH_TASKS   =   {
            truckSettings   =   {
               maxSteerSpeed   =   0.5
               backSteerSpeed   =   1
               lwiPoiValue   =   7
               __type   =   "AiTruckSettings"
            }
            targetVelocity   =   2.5
            cinematicVelocity   =   4
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
                  99.17866,
                  0.991074,
                  903.2424,
                  0.018208
               ]
               __type   =   "SplineCurve1d"
            }
            steerByAngle   =   {
               spline   =   [
                  0.864873,
                  1,
                  151.7329,
                  0.722445,
                  180,
                  0.001
               ]
               __type   =   "SplineCurve1d"
            }
            steerScale   =   2.5
            pointMixing   =   {
               spline   =   [
                  0,
                  0,
                  0.320537,
                  0.475529,
                  0.999507,
                  0.014087
               ]
               __type   =   "SplineCurve1d"
            }
            lastNodeOffset   =   12
            nodeOffset   =   2
            gearboxSettings   =   {
               __type   =   "AiTruckSettings"
            }
            __type   =   "MoveByPointsWithTasksRouteBehaviourDesc"
         }
         MOVE_STUCK_CANCEL   =   {
            truckSettings   =   {
               maxSteerSpeed   =   0.5
               backSteerSpeed   =   1
               lwiPoiValue   =   7
               __type   =   "AiTruckSettings"
            }
            targetVelocity   =   6
            cinematicVelocity   =   4
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
               maxSteerSpeed   =   0.5
               backSteerSpeed   =   1
               lwiPoiValue   =   7
               __type   =   "AiTruckSettings"
            }
            targetVelocity   =   6
            cinematicVelocity   =   4
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
               overrideSteerSpeed   =   True
               maxSteerSpeed   =   0.85
               backSteerSpeed   =   1
               lwiPoiValue   =   7
               __type   =   "AiTruckSettings"
            }
            firstPointOffset   =   6.5
            thresholdDistSquare   =   15
            cosThreshold   =   0.06
            pedal   =   0.8
            steerScale   =   1
            minSteer   =   1
            __type   =   "MoveToStartPointCaterpillarsRouteBehaviourDesc"
         }
         MOVE_FROM_GARAGE_ON_START   =   {
            truckSettings   =   {
               awd   =   False
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
            nodePassSquaredDistance   =   25
            targetVelocity   =   6.5
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
            __type   =   "MoveToGarageBehaviourDesc"
         }
      }
   }
   prop_road_plan_worker   =   {
      loadVolumeSettings   =   {
         minSandForWork   =   15
         offsetFromTruck   =   7
         height   =   0.22
         radius   =   0.65
         changeScale   =   0.5
         __type   =   "AiLoadVolumeSettings"
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
         "BoneBase_cdt",
         "BoneTruck_cdt",
         "BoneDump_cdt"
      ]
   }
   prop_load_volume   =   {
      volumeMass   =   20000
      parentBody   =   "BoneDump_cdt"
      leftWall   =   "_load_border_left"
      rightWall   =   "_load_border_right"
      frontWall   =   "_load_border_front"
      volumeMesh   =   "_load_volume"
      pourMultiplier   =   1.5
   }
   prop_load_volume_controller   =   {
      refillSpeed   =   0.25
      openingDelay   =   100
      upliftConstraintName   =   "dump"
      angleToOpenLid   =   20
      minVolumeDifToForceLid   =   0.001
      minVolumeToForceLid   =   0.05
      sandForceScalar   =   6
      motorMaxForce   =   1000
      dumpBodyName   =   "_load_volume"
      isRefiller   =   True
      isHydraulicLidEnabled   =   True
      lidConstraintName   =   "lid"
      lidOpenState   =   "opened"
      lidCloseState   =   "closed"
   }
   prop_truck_load_volume_warning   =   {
      planeCurrentStateDesc   =   {
         __type   =   "IactorDesc"
      }
      planeDesiredStateDesc   =   {
         __type   =   "IactorDesc"
      }
      duration   =   3000
   }
   prop_terraforming_permission_checker   =   {
   }
   prop_load_volume_permission_checker   =   {
   }
   prop_dump_constraint_controller   =   {
      dumpConstraintName   =   "dump"
   }
   prop_truck_track_swing   =   {
      swings   =   [
         {
            swing   =   "BoneCart_FL"
            parentPhysWheelA   =   1
            parentPhysWheelB   =   8
         },
         {
            swing   =   "BoneCart_CL"
            parentPhysWheelA   =   9
            parentPhysWheelB   =   10
         },
         {
            swing   =   "BoneCart_RL"
            parentPhysWheelA   =   11
            parentPhysWheelB   =   2
         },
         {
            swing   =   "BoneCart_FR"
            parentPhysWheelA   =   5
            parentPhysWheelB   =   12
         },
         {
            swing   =   "BoneCart_CR"
            parentPhysWheelA   =   13
            parentPhysWheelB   =   14
         },
         {
            swing   =   "BoneCart_RR"
            parentPhysWheelA   =   15
            parentPhysWheelB   =   6
         }
      ]
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
            x   =   -0.522
            y   =   0.493
            z   =   3.028
         },
         {
            x   =   0.522
            y   =   0.493
            z   =   3.028
         },
         {
            x   =   0.494
            y   =   0.653
            z   =   -3.678
         },
         {
            x   =   -0.494
            y   =   0.653
            z   =   -3.678
         }
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
            nameBone   =   "ctrl_pedal_drive"
            axis   =   "Y"
            maxRotationAngle   =   20
            dashboardSubtype   =   "RPM"
            damping   =   0.1
            increase   =   -20
            __type   =   "DashboardElementCockpit"
         }
         "1"   =   {
            nameBone   =   "ctrl_dashboard_rpm"
            axis   =   "Y"
            maxRotationAngle   =   185
            dashboardSubtype   =   "RPM"
            damping   =   0.05
            increase   =   -30
            __type   =   "DashboardElementCockpit"
         }
         "2"   =   {
            nameBone   =   "ctrl_steering_wheel"
            axis   =   "Y"
            minRotationAngle   =   -360
            maxRotationAngle   =   360
            steeringSubtype   =   "WHEEL"
            rotationSpeed   =   180
            isOnlyInputOrientation   =   True
            __type   =   "SteerigElementCockpit"
         }
         "3"   =   {
            nameBone   =   "ctrl_gear_stick_low"
            axis   =   "Y"
            maxRotationAngle   =   60
            speed   =   180
            switcherSubtype   =   "LOW_GEAR"
            __type   =   "SwitcherElementCockpit"
         }
         "4"   =   {
            nameBone   =   "ctrl_dashboard_rpm_arrow_offset"
            isAngular   =   False
            axis   =   "Y"
            maxPosition   =   0.002
            switcherType   =   "TUMBLER"
            switcherSubtype   =   "ENGINE_ENABLED"
            __type   =   "SwitcherElementCockpit"
         }
         "5"   =   {
            nameBone   =   "ctrl_gear_stick"
            rotationSpeed   =   45
            states   =   {
               AUTO   =   {
                  primary   =   {
                     axis   =   "Y"
                     angle   =   15
                     __type   =   "InfoGearState"
                  }
                  __type   =   "GearStateItem"
               }
               REVERSE   =   {
                  primary   =   {
                     axis   =   "Y"
                     angle   =   -15
                     __type   =   "InfoGearState"
                  }
                  __type   =   "GearStateItem"
               }
            }
            __type   =   "GearStickElementCockpit"
         }
         "6"   =   {
            nameBone   =   "ctrl_grapple_rotate"
            lastElements   =   [
               {
                  axis   =   "Y"
                  rangeAngle   =   {
                     x   =   -10
                     y   =   10
                     __type   =   "Vector2dRnd"
                  }
                  actionType   =   "SIMPLE_CONTROLLABLE_CONSTRAINT"
                  speed   =   20
                  withCenteredPosition   =   True
               }
            ]
            __type   =   "EquipmentChainOrientationInputElementCockpit"
         }
      }
   }
   prop_truck_view_actions_mapper   =   {
      firstControlSectionUiName   =   "UID_HUD_FIRST_SECTION_DUMP"
      secondControlSectionUiName   =   "UID_HUD_FIRST_SECTION_DUMP"
      axisControls   =   [
         {
            uiActionDescription   =   "UID_HUD_OPEN_AND_CLOSE_DUMP"
            actionData   =   {
               actionType   =   "DUMP_CONSTRAINT"
               __type   =   "AxisActionData"
            }
            activationInputType   =   "LEFT_MOUSE_BUTTON"
            axisDirectionType   =   "Y_AXIS"
         },
         {
            uiActionDescription   =   "UID_HUD_ROTATE_TRUCK_BASE"
            actionData   =   {
               actionType   =   "SIMPLE_CONTROLLABLE_CONSTRAINT"
               controllableConstraintName   =   "tower"
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
         actionMappingType   =   "GENERIC_ACTION"
         uiActionDescription   =   "UID_HUD_OPEN_DUMP"
         namedActionType   =   "OPEN_DUMP_TRUCK"
         isHoldable   =   True
         __type   =   "ActionMapping"
      }
      secondAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         uiActionDescription   =   "UID_HUD_CLOSE_DUMP"
         namedActionType   =   "CLOSE_DUMP_TRUCK"
         isHoldable   =   True
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
         mouseSensitivity   =   0.05
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
      steeringThreshold   =   5
      reverseAngleThreshold   =   0
      velocityScale   =   1.45
      stuckVelocityThreshold   =   2
      stuckScaleChange   =   0.5
      velocityPedalControl   =   {
         spline   =   [
            -3,
            -0.999776,
            -7.98315,
            -1.008146,
            0,
            -0.991404,
            0,
            0,
            0,
            0,
            0,
            0,
            5,
            1,
            2,
            0.996095,
            13.30876,
            0.823842
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
      isCaterpillars   =   True
      intersectsToBlockInput   =   1
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
            shakerBone   =   "BoneBase_cdt"
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
            shakerBone   =   "BoneBase_cdt"
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
         ExhaustAndEngine   =   {
            shakerBone   =   "_shacker_engine"
            frequency   =   20
            maxPositionOffsetScale   =   1
            minOffset   =   [
               -0.01,
               -0.01,
               -0.01
            ]
            maxOffset   =   [
               0.01,
               0.01,
               0.01
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
         Cabin   =   {
            shakerBone   =   "BoneEngine_cdt"
            frequency   =   20
            maxPositionOffsetScale   =   1
            minOffset   =   [
               -0.001,
               -0.001,
               -0.001
            ]
            maxOffset   =   [
               0.001,
               0.001,
               0.001
            ]
            positionMultiplier   =   [
               0,
               0.2,
               0.5,
               0.5,
               1,
               0.3
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
               properties   =   {
                  sfx   =   {
                     list   =   {
                        part_leaves_red_01   =   {
                           emitters2   =   {
                              CPU_LWI_Leaves   =   {
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
                                             }
                                             __type   =   "local__sphere"
                                          }
                                       }
                                       __type   =   "local__geomPrimitive"
                                    }
                                 }
                                 typeParams   =   {
                                    lwiGeom   =   {
                                       typeInst   =   {
                                          range   =   {
                                             typeInstRange   =   [
                                                0,
                                                3
                                             ]
                                          }
                                          __type   =   "local__default"
                                       }
                                    }
                                    __type   =   "local__lwiGeom"
                                 }
                                 __type   =   "CPU_EMITTER"
                              }
                           }
                        }
                     }
                     __onlyOn   =   "visual"
                  }
               }
               __type   =   "sfx_leaves_red_01"
            }
            __type   =   "IactorDesc"
         }
      }
   }
   prop_load_volume_particle_controller   =   {
      sfxPourActorDesc   =   {
         type   =   {
            __type   =   "gpu_sand_pour"
         }
         __type   =   "IactorDesc"
      }
      sfxPourName   =   "part_gpu_sand_pour"
      sfxRainPourName   =   "part_gpu_sand_pour_wet"
      sfxRefillLocalPosition   =   {
         y   =   4.5
         z   =   -1.5
         __type   =   "Vector3d"
      }
      sfxRefillActorDesc   =   {
         type   =   {
            __type   =   "sfx_sand_refill"
         }
         __type   =   "IactorDesc"
      }
      sfxRainRefillActorDesc   =   {
         type   =   {
            __type   =   "sfx_sand_refill_in_rain"
         }
         __type   =   "IactorDesc"
      }
   }
   prop_vehicle_lights_material   =   {
      lights   =   {
         "0"   =   {
            geomNames   =   [
               "_lights_head"
            ]
            __type   =   "Headlights"
         }
         "1"   =   {
            geomNames   =   [
               "_lights_brake"
            ]
            __type   =   "BrakeHeadlights"
         }
         "2"   =   {
            geomNames   =   [
               "_lights_reverse"
            ]
            __type   =   "ReverseHeadlights"
         }
         "3"   =   {
            defaultName   =   "default"
            lightName   =   "lights_emissive"
            geomNames   =   [
               "_hp_cab_gauges"
            ]
            __type   =   "CockpitLights"
         }
      }
   }
   prop_truck_mirror   =   {
      mirrors   =   [
         {
            name   =   "mirror_case_left"
            angleRotateX   =   0.5
            angleRotateY   =   -4.2
            angleRotateZ   =   5.5
         },
         {
            name   =   "mirror_case_right"
            angleRotateX   =   -0.6
            angleRotateY   =   2.3
            angleRotateZ   =   -7.6
         }
      ]
   }
}
__type   =   "truck_view"
