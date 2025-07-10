properties   =   {
   geom   =   {
      nameTpl   =   "aramatsu_forester_neo_crane"
   }
   prop_truck_view_controller   =   {
      engineFiringDelay   =   1000
   }
   prop_truck_view   =   {
      truckName   =   "aramatsu_forester_neo_crane_new"
      truckType   =   "tracked_heavy"
      truckVisibilityInFogOfWar   =   60
   }
   prop_truck_rb   =   {
      suspensionSet   =   {
         front   =   {
            max   =   0
            strength   =   0.08
            damping   =   0.8
         }
      }
      suspensionAxleCollection   =   [
         {
            max   =   0
            strength   =   0.08
            damping   =   0.8
         },
         {
            min   =   -0.25
            max   =   0.25
            height   =   0.08
            strength   =   0.085
            damping   =   0.8
         },
         {
            min   =   -0.25
            max   =   0.25
            height   =   0.01
            strength   =   0.08
            damping   =   0.8
         }
      ]
      suspensionCollectionMap   =   {
         Other   =   {
            __value   =   0
         }
         Cabin   =   {
            __value   =   1
         }
         Crane   =   {
            __value   =   2
         }
      }
      engine   =   {
         params   =   {
            torque   =   320000
            brakesDelay   =   0.5
            maxDeltaAngVel   =   0.002
            responsiveness   =   0.1
            jerkingScale   =   0.1
            __type   =   "TruckEngineParams"
         }
         __type   =   "TruckEngine"
      }
      gearbox   =   {
         params   =   {
            gears   =   [
               {
                  sslModule   =   "physics.truck.truck_components"
                  angularVelocity   =   1.25
                  gearRatio   =   4.2
                  targetSpeedRangeKmh   =   {
                     y   =   8
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   4
                  gearRatio   =   3.4
                  targetSpeedRangeKmh   =   {
                     x   =   8
                     y   =   14
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   6.5
                  gearRatio   =   2.8
                  targetSpeedRangeKmh   =   {
                     x   =   14
                     y   =   17
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   9
                  gearRatio   =   2.2
                  targetSpeedRangeKmh   =   {
                     x   =   17
                     y   =   40
                     __type   =   "Vector2dRnd"
                  }
               }
            ]
            reverseGear   =   {
               angularVelocity   =   1.25
               gearRatio   =   6
               __type   =   "TruckSingleGearParams"
            }
            highGear   =   {
               angularVelocity   =   6
               __type   =   "TruckSingleGearParams"
            }
            lowRangeGear   =   {
               angularVelocity   =   0.1
               gearRatio   =   4.4
               __type   =   "TruckSingleGearParams"
            }
            isLowRangeModeReverseEnabled   =   True
            isLowRangeModeClutchingEnabled   =   False
            defaultGearSwitchDelay   =   0.32
            upperGearSwitchDelayBase   =   0.8
            downGearSwitchDelay   =   0.5
            neutralGearSwitchingDelay   =   3
            __type   =   "TruckGearboxParams"
         }
         __type   =   "TruckGearbox"
      }
      maxSteerSpeed   =   0.025
      backSteerSpeed   =   0.04
      pedalsResponsiveness   =   0.15
      isNeutralGearWheelResistanceEnabled   =   False
      isReverseWheelResistanceEnabled   =   True
      projectCallbacks   =   {
         __type   =   "TruckRoadbuilderCallbacks"
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
            0.85,
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
            geomName   =   "roller_front_l_cabin"
            parentFrame   =   "BoneRearBogie_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "wheel_front"
         },
         {
            geomName   =   "fakeWheel_l_0_cabin"
            parentFrame   =   "BoneRearBogie_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_l_1_cabin"
            parentFrame   =   "BoneRearBogie_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_l_2_cabin"
            parentFrame   =   "BoneRearBogie_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_l_3_cabin"
            parentFrame   =   "BoneRearBogie_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "roller_rear_l_cabin"
            parentFrame   =   "BoneRearBogie_L_cdt"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "wheel_rear"
         },
         {
            geomName   =   "roller_front_r_cabin"
            parentFrame   =   "BoneRearBogie_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "wheel_front"
         },
         {
            geomName   =   "fakeWheel_r_0_cabin"
            parentFrame   =   "BoneRearBogie_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_r_1_cabin"
            parentFrame   =   "BoneRearBogie_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_r_2_cabin"
            parentFrame   =   "BoneRearBogie_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_r_3_cabin"
            parentFrame   =   "BoneRearBogie_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "roller_rear_r_cabin"
            parentFrame   =   "BoneRearBogie_R_cdt"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "wheel_rear"
         },
         {
            geomName   =   "roller_front_l_crane"
            parentFrame   =   "BoneFrontBogie_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "wheel_front"
         },
         {
            geomName   =   "fakeWheel_l_0_crane"
            parentFrame   =   "BoneFrontBogie_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake_crane"
         },
         {
            geomName   =   "fakeWheel_l_1_crane"
            parentFrame   =   "BoneFrontBogie_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake_crane"
         },
         {
            geomName   =   "fakeWheel_l_2_crane"
            parentFrame   =   "BoneFrontBogie_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake_crane"
         },
         {
            geomName   =   "fakeWheel_l_3_crane"
            parentFrame   =   "BoneFrontBogie_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake_crane"
         },
         {
            geomName   =   "fakeWheel_l_4_crane"
            parentFrame   =   "BoneFrontBogie_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake_crane"
         },
         {
            geomName   =   "roller_rear_l_crane"
            parentFrame   =   "BoneFrontBogie_L_cdt"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "wheel_rear_crane"
         },
         {
            geomName   =   "roller_front_r_crane"
            parentFrame   =   "BoneFrontBogie_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "wheel_front"
         },
         {
            geomName   =   "fakeWheel_r_0_crane"
            parentFrame   =   "BoneFrontBogie_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake_crane"
         },
         {
            geomName   =   "fakeWheel_r_1_crane"
            parentFrame   =   "BoneFrontBogie_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake_crane"
         },
         {
            geomName   =   "fakeWheel_r_2_crane"
            parentFrame   =   "BoneFrontBogie_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake_crane"
         },
         {
            geomName   =   "fakeWheel_r_3_crane"
            parentFrame   =   "BoneFrontBogie_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake_crane"
         },
         {
            geomName   =   "fakeWheel_r_4_crane"
            parentFrame   =   "BoneFrontBogie_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake_crane"
         },
         {
            geomName   =   "roller_rear_r_crane"
            parentFrame   =   "BoneFrontBogie_R_cdt"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "wheel_rear_crane"
         }
      ]
      wheelsWithTrail   =   {
         roller_front_l_cabin   =   {
            __type   =   "WheelTrailDesc"
         }
         roller_rear_l_cabin   =   {
            isRear   =   True
            __type   =   "WheelTrailDesc"
         }
         roller_front_r_cabin   =   {
            __type   =   "WheelTrailDesc"
         }
         roller_rear_r_cabin   =   {
            isRear   =   True
            __type   =   "WheelTrailDesc"
         }
         roller_front_l_crane   =   {
            __type   =   "WheelTrailDesc"
         }
         roller_rear_l_crane   =   {
            isRear   =   True
            __type   =   "WheelTrailDesc"
         }
         roller_front_r_crane   =   {
            __type   =   "WheelTrailDesc"
         }
         roller_rear_r_crane   =   {
            isRear   =   True
            __type   =   "WheelTrailDesc"
         }
      }
      wheelPool   =   {
         wheel_front   =   {
            __value   =   "auto_wheel_aramatsu_forester_neo_crane_new_wheel_front"
         }
         wheel_middle   =   {
            __value   =   "auto_wheel_aramatsu_forester_neo_crane_new_wheel_middle"
         }
         wheel_rear   =   {
            __value   =   "auto_wheel_aramatsu_forester_neo_crane_new_wheel_rear"
         }
         wheel_top_visual   =   {
            __value   =   "auto_wheel_aramatsu_forester_neo_crane_new_wheel_top_visual"
         }
         wheel_fake   =   {
            __value   =   "auto_wheel_aramatsu_forester_neo_crane_new_wheel_fake"
         }
         wheel_middle_crane   =   {
            __value   =   "auto_wheel_aramatsu_forester_neo_crane_new_wheel_middle_crane"
         }
         wheel_rear_crane   =   {
            __value   =   "auto_wheel_aramatsu_forester_neo_crane_new_wheel_rear_crane"
         }
         wheel_fake_crane   =   {
            __value   =   "auto_wheel_aramatsu_forester_neo_crane_new_wheel_fake_crane"
         }
      }
      controllableSteeringConstraints   =   [
         {
            constraintName   =   "steering"
            angularSpeed   =   20
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
                     "PlaySound_1/Play"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown   =   {
                  viewData   =   {
                     x   =   3338.561
                     y   =   5000
                  }
                  OnEngineShutdown   =   [
                     "PlaySound_2/Play"
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
                     "PlaySound_5/Play",
                     "TriggerEvent_E3le063H1/TriggerBlueprintEvent"
                  ]
                  OnHandbrakeOff   =   [
                     "PlaySound_6/Play",
                     "TriggerEvent_E3le063H/TriggerBlueprintEvent"
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
               SetSoundSwitch_1   =   {
                  viewData   =   {
                     x   =   3550
                     y   =   4650
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
                     x   =   3850
                     y   =   4650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mule_t1_engine_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1   =   {
                  viewData   =   {
                     x   =   3850
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_8/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mule_t1_engine_ramp"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2   =   {
                  viewData   =   {
                     x   =   3850
                     y   =   5050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1/Stop",
                     "PlaySound_8/Stop",
                     "PlaySound/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mule_t1_engine_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3   =   {
                  viewData   =   {
                     x   =   3850
                     y   =   5250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mule_t1_brake_pull"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_4   =   {
                  viewData   =   {
                     x   =   3850
                     y   =   5450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mule_t1_brake_release"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_5   =   {
                  viewData   =   {
                     x   =   3850
                     y   =   5650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mule_t1_handbrake_on"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_6   =   {
                  viewData   =   {
                     x   =   3850
                     y   =   6050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mule_t1_handbrake_off"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnGearUpdate   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   6150
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
                     "PlaySound_3_1/Play"
                  ]
                  GetLastGear   =   [
                     "SetSoundParameter_1_2/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               SetSoundParameter_1_2   =   {
                  viewData   =   {
                     x   =   6450
                     y   =   6250
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
               PlaySound_3_1   =   {
                  viewData   =   {
                     x   =   6450
                     y   =   6050
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
               OnEngineAcceleration_2   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   7400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAcceleration   =   [
                     "SetSoundParameter_1_1_1_1/SetParameter",
                     "Schedule_E3jcLyaC/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               SetSoundParameter_1_1_1_1   =   {
                  viewData   =   {
                     x   =   6550
                     y   =   7400
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
                     x   =   6550
                     y   =   7700
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
                     x   =   6050
                     y   =   7700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnInertia   =   [
                     "SetSoundParameter_1_1_1_1_1/SetParameter",
                     "Schedule_E3jcLyaC/Start"
                  ]
                  __type   =   "BlueprintNodeOnEngineInertia"
               }
               GetTruckRpm   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   6800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  Get   =   [
                     "FloatSubtract/aFloat/cb",
                     "FloatSwitch/trueValue/cb"
                  ]
                  __type   =   "BlueprintNodeGetTruckRpm"
               }
               OnInit_1   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   6700
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
                     x   =   6247.742
                     y   =   6700
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
                     x   =   6050
                     y   =   7050
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
               SetSoundParameter_1_1   =   {
                  viewData   =   {
                     x   =   7900
                     y   =   6700
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
                     x   =   7900
                     y   =   6950
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
                     x   =   6500
                     y   =   6900
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
                     x   =   6700
                     y   =   6850
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
                     x   =   7150
                     y   =   6800
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
                     x   =   6900
                     y   =   6900
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
                     x   =   6050
                     y   =   6900
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
                     x   =   7750
                     y   =   6800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  Float   =   [
                     "SetSoundParameter_1_1/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatsubstract"
               }
               GetTruckAngularVelocity   =   {
                  viewData   =   {
                     x   =   7150
                     y   =   6900
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
                     x   =   7550
                     y   =   6900
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
                     "FloatSubtract_1/bFloat/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatmultiplication"
               }
               FloatAbs   =   {
                  viewData   =   {
                     x   =   7400
                     y   =   6900
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
               PlaySound_8   =   {
                  viewData   =   {
                     x   =   4600
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
               Schedule_E3jcLyaC   =   {
                  viewData   =   {
                     x   =   6250
                     y   =   7550
                  }
                  OnPeriod   =   [
                     "PlaySound_E3jcLyaC1/Play"
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
               PlaySound_E3jcLyaC1   =   {
                  viewData   =   {
                     x   =   6550
                     y   =   7550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mule_t1_brake_release"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnEngineShutdown_E3jcLyaC2   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   7550
                  }
                  OnEngineShutdown   =   [
                     "Schedule_E3jcLyaC/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               PlaySound_2_E3ldVkf7   =   {
                  viewData   =   {
                     x   =   7190.464
                     y   =   4902.124
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "Schedule_E3ldVkf76/Start"
                  ]
                  OnSoundEnd   =   [
                     "Schedule_E3ldVkf76/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_track_medium_right"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_1_E3ldVkf71   =   {
                  viewData   =   {
                     x   =   6550
                     y   =   4902.124
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_2_E3ldVkf7/Play"
                  ]
                  OnSoundEnd   =   [
                     "PlaySound_2_E3ldVkf7/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_track_medium_left"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               HandleEvent_E3ldVkf72   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   4902.124
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnHandle   =   [
                     "PlaySound_2_1_E3ldVkf71/Play",
                     "PlaySound_2_1_E3ldVkf7b/Play"
                  ]
                  eventUidRefParam   =   {
                     def   =   "snd_track_on"
                     __type   =   "StringRefParam"
                  }
                  __type   =   "BlueprintNodeHandleEvent"
               }
               HandleEvent_E3ldVkf73   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   5102.124
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnHandle   =   [
                     "PlaySound_2_1_E3ldVkf71/Stop",
                     "PlaySound_2_1_E3ldVkf7b/Stop"
                  ]
                  eventUidRefParam   =   {
                     def   =   "snd_track_off"
                     __type   =   "StringRefParam"
                  }
                  __type   =   "BlueprintNodeHandleEvent"
               }
               SetSoundParameter_1_1_E3ldVkf74   =   {
                  viewData   =   {
                     x   =   8800
                     y   =   4902.124
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
               SetSoundParameter_1_2_E3ldVkf75   =   {
                  viewData   =   {
                     x   =   8300
                     y   =   4900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "SetSoundParameter_1_1_E3ldVkf74/SetParameter"
                  ]
                  nameRef   =   {
                     def   =   "rpm_l"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               Schedule_E3ldVkf76   =   {
                  viewData   =   {
                     x   =   7890.316
                     y   =   4902.124
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_1_2_E3ldVkf75/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               GetTruckTrackSlidingVelocity_E3ldVkf77   =   {
                  viewData   =   {
                     x   =   7700
                     y   =   5302.124
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSlidingVelocity   =   [
                     "FloatAbs_E3ldVkf79/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeTruckTrackGetSlidingVelocity"
               }
               GetTruckTrackSlidingVelocity_E3ldVkf78   =   {
                  viewData   =   {
                     x   =   8150
                     y   =   5302.124
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
                     "FloatAbs_E3ldVkf7a/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeTruckTrackGetSlidingVelocity"
               }
               FloatAbs_E3ldVkf79   =   {
                  viewData   =   {
                     x   =   8050
                     y   =   5102.124
                  }
                  aFloat   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetFloat   =   [
                     "SetSoundParameter_1_2_E3ldVkf75/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeFloatAbs"
               }
               FloatAbs_E3ldVkf7a   =   {
                  viewData   =   {
                     x   =   8600
                     y   =   5102.124
                  }
                  aFloat   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetFloat   =   [
                     "SetSoundParameter_1_1_E3ldVkf74/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeFloatAbs"
               }
               PlaySound_2_1_E3ldVkf7b   =   {
                  viewData   =   {
                     x   =   6550
                     y   =   5102.124
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_2_E3ldVkf7c/Play"
                  ]
                  OnSoundEnd   =   [
                     "PlaySound_2_E3ldVkf7c/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_track_medium_left"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_E3ldVkf7c   =   {
                  viewData   =   {
                     x   =   7200
                     y   =   5102.124
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_track_medium_right"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               TriggerEvent_E3le063H   =   {
                  viewData   =   {
                     x   =   3850
                     y   =   5950
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
               TriggerEvent_E3le063H1   =   {
                  viewData   =   {
                     x   =   3850
                     y   =   5850
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
               CloneSoundEmitter_F25acrfF   =   {
                  viewData   =   {
                     x   =   6150
                     y   =   4650
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_1_E3ldVkf71/emitterRef/cb",
                     "SetSoundParameter_1_2_E3ldVkf75/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "fakeWheel_l_2_cabin"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        x   =   -0.5
                        __type   =   "Vector3d"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_F25acrfF1   =   {
                  viewData   =   {
                     x   =   6950
                     y   =   4650
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_E3ldVkf7/emitterRef/cb",
                     "SetSoundParameter_1_1_E3ldVkf74/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "fakeWheel_r_2_cabin"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        x   =   0.5
                        __type   =   "Vector3d"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_F25acP9C   =   {
                  viewData   =   {
                     x   =   6150
                     y   =   5350
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_1_E3ldVkf7b/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "fakeWheel_l_2_crane"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        x   =   -0.5
                        __type   =   "Vector3d"
                     }
                     __type   =   "Tracker"
                  }
                  trackerLocalRotation   =   {
                     x   =   0
                     __type   =   "Vector3d"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_F25acP9C1   =   {
                  viewData   =   {
                     x   =   6950
                     y   =   5350
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_E3ldVkf7c/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "fakeWheel_r_2_crane"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        x   =   0.5
                        __type   =   "Vector3d"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_F3jemO7a   =   {
                  viewData   =   {
                     x   =   4250
                     y   =   5850
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
            }
            groups   =   {
               "[SOUND] acceleration input"   =   {
                  x   =   6000
                  y   =   7300
                  width   =   1200
                  height   =   574
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] gear update"   =   {
                  x   =   6000
                  y   =   5950
                  width   =   1250
                  height   =   500
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] rpm and speed"   =   {
                  x   =   6000
                  y   =   6550
                  width   =   2350
                  height   =   650
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] Tracks - Playback"   =   {
                  x   =   6000
                  y   =   4400
                  width   =   3200
                  height   =   1403.124
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
                  zeroBorderEnergy   =   15000
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
                     def   =   3
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
               OnTPLAnimationBegin_F3jhXT2R   =   {
                  viewData   =   {
                     x   =   5750
                     y   =   1400
                  }
                  OnAnimStart   =   [
                     "PlaySound_F3jhXT2R2/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnBegin"
               }
               OnTPLAnimationEnd_F3jhXT2R1   =   {
                  viewData   =   {
                     x   =   5750
                     y   =   1600
                  }
                  OnAnimStop   =   [
                     "PlaySound_F3jhXT2R3/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnEnd"
               }
               PlaySound_F3jhXT2R2   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   1400
                  }
                  OnSoundStart   =   [
                     "PlaySound_F3jhXT2R4/Play"
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
               PlaySound_F3jhXT2R3   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   1600
                  }
                  OnSoundStart   =   [
                     "PlaySound_F3jhXT2R5/Play"
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
               PlaySound_F3jhXT2R4   =   {
                  viewData   =   {
                     x   =   6700
                     y   =   1400
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
               PlaySound_F3jhXT2R5   =   {
                  viewData   =   {
                     x   =   6700
                     y   =   1600
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
               CloneSoundEmitter_F3jhXT2R6   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1400
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_F3jhXT2R4/emitterRef/cb",
                     "PlaySound_F3jhXT2R5/emitterRef/cb"
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
               CloneSoundEmitter_F3jhXT2R7   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1600
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_F3jhXT2R2/emitterRef/cb",
                     "PlaySound_F3jhXT2R3/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneWiper_rear_2"
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
               PlaySound_F3jhWF8T   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "Schedule_F3jhWF8T2/Start"
                  ]
                  OnSoundEnd   =   [
                     "Schedule_F3jhWF8T2/Stop"
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
               GetInfoElementCockpitForSoundWithSchedule_F3jhWF8T1   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_F3jhWF8T/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_F3jhWF8T/Stop"
                  ]
                  nameBoneBro   =   "ctrl_steering_wheel"
                  isWheel   =   True
                  GetCurrentSteerSpeed   =   [
                     "SetSoundParameter_F3jhWF8T3/valueRef/cb"
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
               Schedule_F3jhWF8T2   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   3550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_F3jhWF8T3/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               SetSoundParameter_F3jhWF8T3   =   {
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
               CloneSoundEmitter_F3jhWF8T4   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_F3jhWF8T/emitterRef/cb",
                     "SetSoundParameter_F3jhWF8T3/emitterRef/cb"
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
               GetInfoElementCockpitForSoundWithEvent_F3jhWF8T5   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_F3jhWF8T6/Play"
                  ]
                  nameBoneBro   =   "ctrl_grapple_left"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_F3jhWF8T6   =   {
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
               CloneSoundEmitter_F3jhWF8T7   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_F3jhWF8T6/emitterRef/cb"
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
               GetInfoElementCockpitForSoundWithEvent_F3jhWF8T8   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_F3jhWF8T9/Play"
                  ]
                  nameBoneBro   =   "ctrl_grapple_right"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_F3jhWF8T9   =   {
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
               CloneSoundEmitter_F3jhWF8Ta   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_F3jhWF8T9/emitterRef/cb"
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
               GetInfoElementCockpitForSoundWithEvent_F3jhWF8Tb   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_F3jhWF8Tc/Play"
                  ]
                  nameBoneBro   =   "ctrl_gear_stick_low"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_F3jhWF8Tc   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   4500
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
               CloneSoundEmitter_F3jhWF8Td   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_F3jhWF8Tc/emitterRef/cb"
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
               OnEngineStarting_E9ocmW0P   =   {
                  viewData   =   {
                     x   =   4300
                     y   =   5250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineStarting   =   [
                     "VFXRestart_E9ocmW0P9/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarting"
               }
               OnEngineStarted_E9ocmW0P1   =   {
                  viewData   =   {
                     x   =   4300
                     y   =   4500
                  }
                  OnEngineStarted   =   [
                     "VFXRestart_E9ocmW0P5/Input",
                     "VFXRestart_E9ocmW0P7/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown_E9ocmW0P2   =   {
                  viewData   =   {
                     x   =   4300
                     y   =   4623.828
                  }
                  OnEngineShutdown   =   [
                     "VFXStop_E9ocmW0P6/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               OnEngineAcceleration_E9ocmW0P3   =   {
                  viewData   =   {
                     x   =   4300
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAcceleration   =   [
                     "VFXRestart_E9ocmW0Pa/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9ocsd9I/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse_E9ocmW0P4   =   {
                  viewData   =   {
                     x   =   4300
                     y   =   5050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineReverse   =   [
                     "VFXRestart_E9ocmW0Pa/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9ocsd9I/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               VFXRestart_E9ocmW0P5   =   {
                  viewData   =   {
                     x   =   4750
                     y   =   4600
                  }
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9ocmW0P6   =   {
                  viewData   =   {
                     x   =   4750
                     y   =   4700
                  }
                  OnExit   =   [
                     "VFXStop_E9ocBUfN/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_E9ocmW0P7   =   {
                  viewData   =   {
                     x   =   4750
                     y   =   4500
                  }
                  OnExit   =   [
                     "VFXRestart_E9ocBI1d/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_gas_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_E9ocmW0P9   =   {
                  viewData   =   {
                     x   =   4750
                     y   =   5250
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_oil"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_E9ocmW0Pa   =   {
                  viewData   =   {
                     x   =   4750
                     y   =   4900
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9ocsd9I   =   {
                  viewData   =   {
                     x   =   4750
                     y   =   5030.124
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_E9ocBI1d   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   4500
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_neutral_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9ocBUfN   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   4700
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
               CloneSoundEmitter_E3lghH75   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   7500
                  }
                  GetSoundEmitter   =   [
                     "CraneAxisControlSoundNode_E3lghH75b/logic/nodes/PlaySound_10_3/emitterRef/cb",
                     "CraneAxisControlSoundNode_E3lghH75b/logic/nodes/PlaySound_10_2_1_1/emitterRef/cb",
                     "CraneAxisControlSoundNode_E3lghH75b/logic/nodes/PlaySound_10_1_1_1_1/emitterRef/cb",
                     "CraneAxisControlSoundNode_E3lghH75b/logic/nodes/PlaySound_10_2_2/emitterRef/cb",
                     "CraneAxisControlSoundNode_E3lghH75b/logic/nodes/PlaySound_10_1_1_2/emitterRef/cb",
                     "CraneAxisControlSoundNode_E3lghH75b/logic/nodes/PlaySound_10_1_2/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneTower_cdt"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_E3lghH753   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   6600
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_1_1_E3lghH75l/emitterRef/cb",
                     "PlaySound_2_1_1_E3lghH75k/emitterRef/cb",
                     "PlaySound_2_1_1_1_E3lghH75h/emitterRef/cb",
                     "PlaySound_2_1_1_2_E3lghH75g/emitterRef/cb",
                     "SetSoundParameter_3_E3lghH75d/emitterRef/cb",
                     "PlaySound_2_1_1_1_E3lghH75f/emitterRef/cb",
                     "PlaySound_2_1_1_2_E3lghH75e/emitterRef/cb",
                     "SetSoundParameter_3_E3lghH75c/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneArm_2"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               OnCraneArrowChanged_1_E3lghH754   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   6900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnUpdated   =   [
                     "CraneAxisControlSoundNode_E3lghH75b/logic/nodes/Pipe/Input"
                  ]
                  GetX   =   [
                     "CraneAxisControlSoundNode_E3lghH75b/logic/nodes/CraneValueMovement_3_1/newValueRef/cb"
                  ]
                  GetY   =   [
                     "CraneAxisControlSoundNode_E3lghH75b/logic/nodes/CraneValueMovement_1_1_1/newValueRef/cb"
                  ]
                  GetZ   =   [
                     "CraneAxisControlSoundNode_E3lghH75b/logic/nodes/CraneValueMovement_2_1_1/newValueRef/cb"
                  ]
                  rootBodyName   =   "BoneTower_cdt"
                  hookBodyName   =   "BoneArm_cdt"
                  hookPosThreshold   =   0.003
                  xConstraintName   =   "tower"
                  __type   =   "BlueprintNodeOnCraneArrowPositionChanged"
               }
               GetSoundDesc_1_E3lghH755   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   7350
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
                     "CraneAxisControlSoundNode_E3lghH75b/logic/nodes/PlaySound_10_1_1_2/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_E3lghH756   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   7300
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
                     "CraneAxisControlSoundNode_E3lghH75b/logic/nodes/PlaySound_10_2_2/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_E3lghH757   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   7250
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
                     "CraneAxisControlSoundNode_E3lghH75b/logic/nodes/PlaySound_10_1_1_1_1/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_E3lghH758   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   7200
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
                     "CraneAxisControlSoundNode_E3lghH75b/logic/nodes/PlaySound_10_2_1_1/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_E3lghH759   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   7150
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
                     "CraneAxisControlSoundNode_E3lghH75b/logic/nodes/PlaySound_10_1_2/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_E3lghH75a   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   7100
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
                     "CraneAxisControlSoundNode_E3lghH75b/logic/nodes/PlaySound_10_3/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               CraneAxisControlSoundNode_E3lghH75b   =   {
                  viewData   =   {
                     x   =   5950
                     y   =   7100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  logic   =   {
                     nodes   =   {
                        Pipe_1   =   {
                           Output   =   [
                              "../../../SetSoundParameter_3_E3lghH75d/SetParameter",
                              "../../../SetSoundParameter_3_E3lghH75c/SetParameter"
                           ]
                           __type   =   "BlueprintLibraryPipe"
                        }
                     }
                     __type   =   "BluePrintFunction"
                  }
                  __type   =   "BlueprintFunctionCraneAxisControlSoundNode"
               }
               SetSoundParameter_3_E3lghH75c   =   {
                  viewData   =   {
                     x   =   6450
                     y   =   7350
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
               SetSoundParameter_3_E3lghH75d   =   {
                  viewData   =   {
                     x   =   6450
                     y   =   6750
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
               PlaySound_2_1_1_2_E3lghH75e   =   {
                  viewData   =   {
                     x   =   6500
                     y   =   7150
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
               PlaySound_2_1_1_1_E3lghH75f   =   {
                  viewData   =   {
                     x   =   6500
                     y   =   6950
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
               PlaySound_2_1_1_2_E3lghH75g   =   {
                  viewData   =   {
                     x   =   6500
                     y   =   6500
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
               PlaySound_2_1_1_1_E3lghH75h   =   {
                  viewData   =   {
                     x   =   6500
                     y   =   6300
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
               CraneValueMovement_E3lghH75i   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   6950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStartMoving   =   [
                     "PlaySound_2_1_1_1_E3lghH75f/Play"
                  ]
                  OnStopMoving   =   [
                     "PlaySound_2_1_1_2_E3lghH75e/Play",
                     "PlaySound_2_1_1_1_E3lghH75f/Stop"
                  ]
                  newValueRef   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetStatus   =   [
                     "SetSoundParameter_3_E3lghH75c/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeCraneValueMovement"
               }
               CraneValueMovement_E3lghH75j   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   6400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStartMoving   =   [
                     "PlaySound_2_1_1_1_E3lghH75h/Play"
                  ]
                  OnStopMoving   =   [
                     "PlaySound_2_1_1_2_E3lghH75g/Play",
                     "PlaySound_2_1_1_1_E3lghH75h/Stop"
                  ]
                  newValueRef   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetStatus   =   [
                     "SetSoundParameter_3_E3lghH75d/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeCraneValueMovement"
               }
               PlaySound_2_1_1_E3lghH75k   =   {
                  viewData   =   {
                     x   =   6500
                     y   =   6100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_2_1_1_1_E3lghH75h/Stop",
                     "PlaySound_2_1_1_1_E3lghH75f/Stop"
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
               PlaySound_2_1_1_E3lghH75l   =   {
                  viewData   =   {
                     x   =   6500
                     y   =   5900
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
               OnCraneWinchChanged_E3lghH75m   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   6350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAttached   =   [
                     "PlaySound_2_1_1_E3lghH75l/Play"
                  ]
                  OnDetached   =   [
                     "PlaySound_2_1_1_E3lghH75k/Play"
                  ]
                  OnLengthUpdated   =   [
                     "CraneValueMovement_E3lghH75j/Input"
                  ]
                  OnRotateUpdated   =   [
                     "CraneValueMovement_E3lghH75i/Input"
                  ]
                  GetLength   =   [
                     "CraneValueMovement_E3lghH75j/newValueRef/cb"
                  ]
                  GetRotate   =   [
                     "CraneValueMovement_E3lghH75i/newValueRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnCraneWinchChanged"
               }
               CloneSoundEmitter_Ebha0ObX   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   8800
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ebha0ObX2/emitterRef/cb",
                     "PlaySound_2_Ebha0ObX4/emitterRef/cb",
                     "PlaySound_2_Ebha0ObX3/emitterRef/cb",
                     "PlaySound_2_1_Ebha0ObX5/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneFront_4"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               OnAnchorsStateChanged_Ebha0ObX1   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   8500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnOpenStarted   =   [
                     "PlaySound_Ebha0ObX2/Play",
                     "PlaySound_2_Ebha0ObX3/Stop"
                  ]
                  OnOpenEnded   =   [
                     "PlaySound_2_Ebha0ObX4/Play"
                  ]
                  OnCloseStarted   =   [
                     "PlaySound_Ebha0ObX2/Stop",
                     "PlaySound_2_Ebha0ObX3/Play"
                  ]
                  OnCloseEnded   =   [
                     "PlaySound_2_1_Ebha0ObX5/Play"
                  ]
                  __type   =   "BlueprintNodeOnAnchorsStateChanged"
               }
               PlaySound_Ebha0ObX2   =   {
                  viewData   =   {
                     x   =   6200
                     y   =   8300
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
               PlaySound_2_Ebha0ObX3   =   {
                  viewData   =   {
                     x   =   6200
                     y   =   8700
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
               PlaySound_2_Ebha0ObX4   =   {
                  viewData   =   {
                     x   =   6200
                     y   =   8500
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
               PlaySound_2_1_Ebha0ObX5   =   {
                  viewData   =   {
                     x   =   6200
                     y   =   8900
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
               OnTruckModuleReset_EbhanV6G   =   {
                  viewData   =   {
                     x   =   5100
                     y   =   7700
                  }
                  OnReseted   =   [
                     "PlaySound_EbhanV6G1/Play"
                  ]
                  __type   =   "BlueprintNodeOnTruckModuleReset"
               }
               PlaySound_EbhanV6G1   =   {
                  viewData   =   {
                     x   =   5950
                     y   =   7700
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
            }
            groups   =   {
               "[SOUND] addon - crane & winch"   =   {
                  x   =   5000
                  y   =   5700
                  width   =   2299
                  height   =   2300
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] addon - legs"   =   {
                  x   =   5000
                  y   =   8100
                  width   =   2300
                  height   =   1097
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
            __type   =   "AutoAramatsuForesterNeoCraneNewReplicated"
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
      awdMode   =   "ALWAYS_OFF"
      difflockMode   =   "ALWAYS_OFF"
      isLowGearAvailable   =   True
   }
   prop_fuel_tank   =   {
      maxFuelTankVolume   =   200
      startFuelTankVolume   =   200
      fuelConsumption   =   0.08
      reverseFuelConsumptionCoeff   =   1.2
      lowRangeFuelConsumptionCoeff   =   1.4
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
         y   =   1.7
         z   =   4.5
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
      tag   =   "UID_MODULE_CRANE"
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
      boneOffset   =   {
         x   =   0.04
         y   =   -0.875
         z   =   -0.055
         __type   =   "Vector3d"
      }
   }
   prop_pre_soft_keyframe_updater   =   {
      syncBodyNames   =   [
         "BoneFront_cdt",
         "BoneTower_cdt",
         "BoneArmHinge_cdt",
         "BoneArm_cdt",
         "BoneLegRear_L_A_cdt",
         "BoneLegRear_R_A_cdt",
         "BoneLegFront_L_A_cdt",
         "BoneLegFront_R_A_cdt",
         "BoneLegRear_L_B_cdt",
         "BoneLegRear_R_B_cdt",
         "BoneLegFront_L_B_cdt",
         "BoneLegFront_R_B_cdt"
      ]
   }
   prop_truck_track   =   {
      tracks   =   [
         {
            trackTensionDefault   =   0.08
            section   =   {
               height   =   0.16
               tpl   =   "aramatsu_forester_neo_track"
               segmentLength   =   0.1
               segmentBones   =   [
                  "bone0",
                  "bone1",
                  "bone2",
                  "bone3",
                  "bone4"
               ]
               __type   =   "TruckTrackSection"
            }
            parentTracker   =   {
               locator   =   "BoneRearBogie_L_cdt"
               __type   =   "Tracker"
            }
            decalDescIndex   =   0
            wheelIds   =   [
               0,
               5
            ]
            visualWheelSlots   =   [
               {
                  geomName   =   "roller_middle_l_1_cabin"
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_l_2_cabin"
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_l_3_cabin"
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_l_4_cabin"
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_top_l_cabin"
                  editableWheel   =   "wheel_top_visual"
               }
            ]
            fakeWheelIds   =   [
               1,
               2,
               3,
               4
            ]
         },
         {
            trackTensionDefault   =   0.08
            section   =   {
               height   =   0.16
               tpl   =   "aramatsu_forester_neo_track"
               segmentLength   =   0.1
               segmentBones   =   [
                  "bone0",
                  "bone1",
                  "bone2",
                  "bone3",
                  "bone4"
               ]
               __type   =   "TruckTrackSection"
            }
            parentTracker   =   {
               locator   =   "BoneRearBogie_R_cdt"
               __type   =   "Tracker"
            }
            decalDescIndex   =   0
            wheelIds   =   [
               6,
               11
            ]
            visualWheelSlots   =   [
               {
                  geomName   =   "roller_middle_r_1_cabin"
                  isRightSided   =   True
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_r_2_cabin"
                  isRightSided   =   True
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_r_3_cabin"
                  isRightSided   =   True
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_r_4_cabin"
                  isRightSided   =   True
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_top_r_cabin"
                  isRightSided   =   True
                  editableWheel   =   "wheel_top_visual"
               }
            ]
            fakeWheelIds   =   [
               7,
               8,
               9,
               10
            ]
         },
         {
            trackTensionDefault   =   0.1
            section   =   {
               height   =   0.16
               tpl   =   "aramatsu_forester_neo_track"
               segmentLength   =   0.1
               segmentBones   =   [
                  "bone0",
                  "bone1",
                  "bone2",
                  "bone3",
                  "bone4"
               ]
               __type   =   "TruckTrackSection"
            }
            parentTracker   =   {
               locator   =   "BoneFrontBogie_L_cdt"
               __type   =   "Tracker"
            }
            decalDescIndex   =   0
            wheelIds   =   [
               12,
               18
            ]
            visualWheelSlots   =   [
               {
                  geomName   =   "roller_middle_l_1_crane"
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_l_2_crane"
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_l_3_crane"
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_l_4_crane"
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_top_l_crane"
                  editableWheel   =   "wheel_top_visual"
               }
            ]
            fakeWheelIds   =   [
               13,
               14,
               15,
               16,
               17
            ]
         },
         {
            trackTensionDefault   =   0.1
            section   =   {
               height   =   0.16
               tpl   =   "aramatsu_forester_neo_track"
               segmentLength   =   0.1
               segmentBones   =   [
                  "bone0",
                  "bone1",
                  "bone2",
                  "bone3",
                  "bone4"
               ]
               __type   =   "TruckTrackSection"
            }
            parentTracker   =   {
               locator   =   "BoneFrontBogie_R_cdt"
               __type   =   "Tracker"
            }
            decalDescIndex   =   0
            wheelIds   =   [
               19,
               25
            ]
            visualWheelSlots   =   [
               {
                  geomName   =   "roller_middle_r_1_crane"
                  isRightSided   =   True
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_r_2_crane"
                  isRightSided   =   True
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_r_3_crane"
                  isRightSided   =   True
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_r_4_crane"
                  isRightSided   =   True
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_top_r_crane"
                  isRightSided   =   True
                  editableWheel   =   "wheel_top_visual"
               }
            ]
            fakeWheelIds   =   [
               20,
               21,
               22,
               23,
               24
            ]
         }
      ]
      decalDescs   =   [
         {
            decalMeshNames   =   [
               "dirt_chunk_05truck",
               "asphalt_chunk_01"
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
            bodyName   =   "BoneRear_cdt"
            offsetInBodySpace   =   {
               x   =   0.765
               y   =   0.984
               z   =   -1.196
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneRear_cdt"
            offsetInBodySpace   =   {
               x   =   -0.765
               y   =   0.984
               z   =   -1.196
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneFront_cdt"
            offsetInBodySpace   =   {
               x   =   0.888
               y   =   0.392
               z   =   -2.111
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneFront_cdt"
            offsetInBodySpace   =   {
               x   =   -0.888
               y   =   0.392
               z   =   -2.111
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneFront_cdt"
            offsetInBodySpace   =   {
               x   =   0.117
               y   =   -0.036
               z   =   -6.077
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneRear_cdt"
            offsetInBodySpace   =   {
               x   =   0.398
               y   =   0.133
               z   =   2.981
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneRear_cdt"
            offsetInBodySpace   =   {
               x   =   -0.398
               y   =   0.133
               z   =   2.981
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneFront_cdt"
            offsetInBodySpace   =   {
               x   =   -1.231
               y   =   0.472
               z   =   -3.583
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneFront_cdt"
            offsetInBodySpace   =   {
               x   =   1.231
               y   =   0.472
               z   =   -3.583
               __type   =   "Vector3d"
            }
         }
      ]
      rotationFactor   =   0.65
      amountOfWinchPoints   =   4
   }
   prop_truck_default_camera_equipment_state   =   {
   }
   prop_truck_camera_preset   =   {
      preset   =   {
         cameraFocusPointOffset   =   {
            y   =   0
            __type   =   "Vector3d"
         }
         attachmentBone   =   "_third_person_camera"
         minSpeedToFollow   =   2
         firstLaunchCameraAngles   =   {
            x   =   20
            __type   =   "Vector2d"
         }
         followTerrainLerpSpeed   =   0.9
         followYAngleLimit   =   10
         followChangeDirectionSpeedThreshold   =   2
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
                  y   =   230
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
                  y   =   250
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   -6
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
                  x   =   -6
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
                  x   =   -6
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
                  y   =   330
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
                  y   =   150
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
                  y   =   130
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
                  y   =   110
                  __type   =   "Vector2d"
               }
               position   =   {
                  x   =   6
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
                  x   =   6
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
                  x   =   6
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
                  y   =   30
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
                  z   =   -6
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
                  y   =   0
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
                  x   =   0
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
                  x   =   0
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
         interestPointLerpSpeed   =   1.2
         elasticParams   =   {
            accelerationEffectMultiplier   =   1.3
            accelerationBoostCameraCS   =   {
               x   =   0.9
               z   =   1
               __type   =   "Vector3d"
            }
            maxAccelerationEffectLength   =   {
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
         eyeOffset   =   {
            z   =   -0.01
            __type   =   "Vector3d"
         }
         rotationLimitsX   =   {
            x   =   -40
            y   =   50
            __type   =   "Vector2dRnd"
         }
         rotationLimitsY   =   {
            x   =   -190
            y   =   190
            __type   =   "Vector2dRnd"
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
         __type   =   "RbCockpitCameraParams"
      }
   }
   prop_truck_cockpit_under_water_checker   =   {
      vehicleChecker   =   {
         checkerAttachBody   =   "_cockpit_camera"
         points   =   {
            Default_Point   =   {
               x   =   -1.7
               y   =   -0.4
               z   =   0.7
               __type   =   "Vector3d"
            }
            Vector3d   =   {
               x   =   0.5
               y   =   -0.4
               z   =   0.7
            }
            Vector3d_1   =   {
               x   =   -1.7
               y   =   -0.4
               z   =   -0.3
               __type   =   "Vector3d"
            }
            Vector3d_2   =   {
               x   =   0.5
               y   =   -0.4
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
               "BoneFront_cdt",
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
                  bodyPhysName   =   "BoneMiddle_cdt"
                  bodyIKName   =   "Bone_IK_Rear_L_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneFront_cdt",
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
                  bodyPhysName   =   "BoneMiddle_cdt"
                  bodyIKName   =   "Bone_IK_Rear_R_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTower_cdt",
               "Bone_IK_Arm_PistonBase",
               "Bone_IK_Arm_Piston"
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
                  bodyPhysName   =   "BoneArmHinge_cdt"
                  bodyIKName   =   "Bone_IK_Arm_Piston"
               }
            ]
         }
      ]
   }
   vfx   =   {
      vfxSkeleton   =   {
         vfxBones   =   [
            {
               name   =   "Shadow_01"
               bone   =   "BoneRear_cdt"
               boneOffset   =   [
                  0,
                  0.52,
                  0.48
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   2.6
                     radius   =   0.76
                     scaleX   =   0.84
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "Shadow_02"
               bone   =   "BoneRear_cdt"
               boneOffset   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   2.6
                     radius   =   0.16
                     scaleX   =   5.53
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "Shadow_03"
               bone   =   "BoneFront_cdt"
               boneOffset   =   [
                  0,
                  0.44,
                  -3.87
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   3.96
                     radius   =   0.16
                     scaleX   =   5.89
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "Shadow_04"
               bone   =   "BoneFront_cdt"
               boneOffset   =   [
                  0,
                  0.04,
                  -3.59
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   4.28
                     radius   =   0.24
                     scaleX   =   1.86
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "Shadow_05"
               bone   =   "BoneTower_cdt"
               boneOffset   =   [
                  0,
                  0.4,
                  0.48
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   1.24
                     radius   =   0.48
                     scaleX   =   1.52
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "Shadow_06"
               bone   =   "BoneArmHinge_cdt"
               boneOffset   =   [
                  0.12,
                  0,
                  -1.82
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   3.98
                     radius   =   0.12
                     scaleX   =   1.63
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "Grass_side_01"
               bone   =   "BoneRear_cdt"
               boneOffset   =   [
                  -2,
                  -0.5,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.2,
                        0.5,
                        1.2
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   8
               grassParams   =   {
                  influence   =   0.1
                  fadeDistance   =   0.5
                  speedMultiplier   =   0.4
               }
            },
            {
               name   =   "Grass_side_02"
               bone   =   "BoneRear_cdt"
               boneOffset   =   [
                  2,
                  -0.5,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.2,
                        0.5,
                        1.2
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   8
               grassParams   =   {
                  influence   =   0.1
                  fadeDistance   =   0.5
                  speedMultiplier   =   0.4
               }
            },
            {
               name   =   "Grass_side_03"
               bone   =   "BoneTower_cdt"
               boneOffset   =   [
                  -2,
                  -1,
                  0.5
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.2,
                        0.5,
                        1.2
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   8
               grassParams   =   {
                  influence   =   0.1
                  fadeDistance   =   0.5
                  speedMultiplier   =   0.4
               }
            },
            {
               name   =   "Grass_side_04"
               bone   =   "BoneTower_cdt"
               boneOffset   =   [
                  2,
                  -1,
                  0.5
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.2,
                        0.5,
                        1.2
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   8
               grassParams   =   {
                  influence   =   0.1
                  fadeDistance   =   0.5
                  speedMultiplier   =   0.4
               }
            },
            {
               name   =   "Grassbox_01"
               bone   =   "BoneRear_cdt"
               boneOffset   =   [
                  0,
                  0.52,
                  0.52
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        2.12,
                        1.6,
                        4.34
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
               name   =   "Grassbox_02"
               bone   =   "BoneTower_cdt"
               boneOffset   =   [
                  0,
                  -0.23,
                  0.04
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        2.64,
                        0.8000001,
                        4.34
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
               name   =   "track_r_1_box"
               bone   =   "_track_r_1_box"
               boneOffset   =   [
                  0.24,
                  -0.16,
                  0.12
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.85,
                        1.01,
                        3.8
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
               name   =   "track_l_1_box"
               bone   =   "_track_l_1_box"
               boneOffset   =   [
                  -0.24,
                  -0.16,
                  0.12
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.85,
                        1.01,
                        3.8
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
               name   =   "cabin_1_box"
               bone   =   "_cabin_1_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.54,
                        1.66,
                        4
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
               name   =   "cabin_2_box"
               bone   =   "_cabin_2_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.45,
                        1.46,
                        2
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "track_r_2_box"
               bone   =   "_track_r_2_box"
               boneOffset   =   [
                  0.24,
                  -0.16,
                  0.12
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.98,
                        0.9400001,
                        5
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
               name   =   "track_l_2_box"
               bone   =   "_track_l_2_box"
               boneOffset   =   [
                  -0.24,
                  -0.16,
                  0.12
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.98,
                        0.9400001,
                        5
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
               name   =   "body_1_box"
               bone   =   "_body_1_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.7,
                        0.48,
                        5.4
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
                        1,
                        1.85,
                        1
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "crane_1_box"
               bone   =   "_crane_1_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.5,
                        0.4,
                        4.2
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
               name   =   "crane_2_box"
               bone   =   "_crane_2_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.65,
                        0.54,
                        2.78
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "crane_3_box"
               bone   =   "_crane_3_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.53,
                        0.5,
                        0.9
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "crane_4_box"
               bone   =   "_crane_4_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.2,
                        0.35,
                        4.2
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "crane_5_box"
               bone   =   "_crane_5_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.16,
                        0.3,
                        3.76
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "crane_6_box"
               bone   =   "_crane_6_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.29,
                        0.6,
                        0.33
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "crane_LegRear_R_A_box"
               bone   =   "_crane_LegRear_R_A_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1,
                        0.28,
                        0.18
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "crane_LegRear_R_B_cylinder"
               bone   =   "_crane_LegRear_R_B_cylinder"
               geom   =   {
                  cylinder   =   {
                     height   =   1.3
                     radius   =   0.085
                  }
                  __type   =   "local__cylinder"
               }
               systems   =   18
            },
            {
               name   =   "crane_LegRear_R_C_cylinder"
               bone   =   "_crane_LegRear_R_C_cylinder"
               geom   =   {
                  cylinder   =   {
                     height   =   0.5
                     radius   =   0.07
                  }
                  __type   =   "local__cylinder"
               }
               systems   =   18
            },
            {
               name   =   "crane_LegRear_R_C_box"
               bone   =   "_crane_LegRear_R_C_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.4,
                        0.35,
                        0.1
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "crane_LegRear_L_A_box"
               bone   =   "_crane_LegRear_L_A_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1,
                        0.28,
                        0.18
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "crane_LegRear_L_B_cylinder"
               bone   =   "_crane_LegRear_L_B_cylinder"
               geom   =   {
                  cylinder   =   {
                     height   =   1.3
                     radius   =   0.085
                  }
                  __type   =   "local__cylinder"
               }
               systems   =   18
            },
            {
               name   =   "crane_LegRear_L_C_cylinder"
               bone   =   "_crane_LegRear_L_C_cylinder"
               geom   =   {
                  cylinder   =   {
                     height   =   0.5
                     radius   =   0.07
                  }
                  __type   =   "local__cylinder"
               }
               systems   =   18
            },
            {
               name   =   "crane_LegRear_L_C_box"
               bone   =   "_crane_LegRear_L_C_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.4,
                        0.35,
                        0.1
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "crane_LegFront_R_A_box"
               bone   =   "_crane_LegFront_R_A_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1,
                        0.28,
                        0.18
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "crane_LegFront_R_B_cylinder"
               bone   =   "_crane_LegFront_R_B_cylinder"
               geom   =   {
                  cylinder   =   {
                     height   =   1.3
                     radius   =   0.085
                  }
                  __type   =   "local__cylinder"
               }
               systems   =   18
            },
            {
               name   =   "crane_LegFront_R_C_cylinder"
               bone   =   "_crane_LegFront_R_C_cylinder"
               geom   =   {
                  cylinder   =   {
                     height   =   0.5
                     radius   =   0.07
                  }
                  __type   =   "local__cylinder"
               }
               systems   =   18
            },
            {
               name   =   "crane_LegFront_R_C_box"
               bone   =   "_crane_LegFront_R_C_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.4,
                        0.35,
                        0.1
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "crane_LegFront_L_A_box"
               bone   =   "_crane_LegFront_L_A_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1,
                        0.28,
                        0.18
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "crane_LegFront_L_B_cylinder"
               bone   =   "_crane_LegFront_L_B_cylinder"
               geom   =   {
                  cylinder   =   {
                     height   =   1.3
                     radius   =   0.085
                  }
                  __type   =   "local__cylinder"
               }
               systems   =   18
            },
            {
               name   =   "crane_LegFront_L_C_cylinder"
               bone   =   "_crane_LegFront_L_C_cylinder"
               geom   =   {
                  cylinder   =   {
                     height   =   0.5
                     radius   =   0.07
                  }
                  __type   =   "local__cylinder"
               }
               systems   =   18
            },
            {
               name   =   "crane_LegFront_L_C_box"
               bone   =   "_crane_LegFront_L_C_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.4,
                        0.35,
                        0.1
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
      forwardAnimation   =   "wipers_forward"
      backwardAnimation   =   "wipers_backward"
      forwardDelay   =   0.5
      backwardDelay   =   0.05
   }
   prop_phys_substance_target   =   {
      volumeMultiplier   =   0.05
      waterDragMultiplier   =   4.25
      oilDragMultiplier   =   8.5
      bodies   =   [
         "BoneRear_cdt",
         "BoneFront_cdt",
         "BoneRearBogie_R_cdt",
         "BoneRearBogie_L_cdt",
         "BoneFrontBogie_R_cdt",
         "BoneFrontBogie_L_cdt",
         "BoneLegRear_L_A_cdt",
         "BoneLegRear_R_A_cdt",
         "BoneLegFront_L_A_cdt",
         "BoneLegFront_R_A_cdt",
         "BoneTower_cdt",
         "BoneArmHinge_cdt",
         "BoneArm_cdt",
         "BoneLegRear_L_B_cdt",
         "BoneLegRear_R_B_cdt",
         "BoneLegFront_L_B_cdt",
         "BoneLegFront_R_B_cdt"
      ]
   }
   prop_truck_track_swing   =   {
      swings   =   [
         {
            swing   =   "BoneCart_1_l_cabin"
            parentPhysWheelA   =   2
            parentPhysWheelB   =   1
         },
         {
            swing   =   "BoneCart_2_l_cabin"
            parentPhysWheelA   =   4
            parentPhysWheelB   =   3
         },
         {
            swing   =   "BoneCart_1_r_cabin"
            parentPhysWheelA   =   8
            parentPhysWheelB   =   7
         },
         {
            swing   =   "BoneCart_2_r_cabin"
            parentPhysWheelA   =   10
            parentPhysWheelB   =   9
         },
         {
            swing   =   "BoneCart_1_l_crane"
            parentPhysWheelA   =   14
            parentPhysWheelB   =   13
         },
         {
            swing   =   "BoneCart_2_l_crane"
            parentPhysWheelA   =   17
            parentPhysWheelB   =   16
         },
         {
            swing   =   "BoneCart_1_r_crane"
            parentPhysWheelA   =   21
            parentPhysWheelB   =   20
         },
         {
            swing   =   "BoneCart_2_r_crane"
            parentPhysWheelA   =   24
            parentPhysWheelB   =   23
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
                  boneName   =   "BoneRear_cdt"
                  weight   =   1
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneFront_cdt"
                  weight   =   1
               }
            ]
            shaftFasteningPositionA   =   "shaft_1_a"
            shaftFasteningPositionB   =   "shaft_1_b"
         }
      ]
   }
   prop_truck_crane_rb   =   {
      craneWinchModeSettings   =   "SWITCH_SINGLE_AND_MULTI_WINCH"
      winch   =   {
         maxLength   =   25
         modifyDamping   =   True
         strength   =   0.4
         __type   =   "TruckWinch"
      }
      winchSource   =   {
         bodyName   =   "BoneArm_cdt"
         offsetInBodySpace   =   {
            __type   =   "null"
         }
         __type   =   "WinchPoint"
      }
      minLength   =   1.8
   }
   prop_truck_view_mobile_crane_controller   =   {
      winchController   =   {
         craneZoneRadius   =   8
         craneZoneMaxLenght   =   25
         scannerShape   =   {
            radius   =   8
            __type   =   "Sphere"
         }
         previewSourceOffset   =   {
            __type   =   "Vector3d"
         }
         __type   =   "CraneWinchController"
      }
   }
   prop_ik   =   {
      movementspeedXZ   =   1.7
      movementspeedY   =   1.2
      maxTargetPositionError   =   0.5
      bodyNames   =   [
         "BoneFront_cdt",
         "BoneTower_cdt",
         "BoneArmHinge_cdt",
         "BoneArm_cdt"
      ]
      rootBodyLocalOffset   =   {
         x   =   0.003
         z   =   -3.891
         __type   =   "Vector3d"
      }
      constraintInertiaStabilizationAmount   =   0
      ikSystem   =   {
         maxPrismaticConstraintVelocity   =   0.9
         maxHingeConstraintVelocityInDegPerSecond   =   50
         __type   =   "PhysIkSystem"
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
   prop_rigid_body_scanner   =   {
      shapes   =   [
         {
            offset   =   [
               0,
               1.3,
               -4.755
            ]
            size   =   [
               0.5,
               1,
               5.2
            ]
         }
      ]
      locator   =   "BoneFront_cdt"
      collisionGroups   =   [
         "truck",
         "crane"
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
            nameBone   =   "ctrl_dashboard_rpm"
            axis   =   "Y"
            maxRotationAngle   =   70
            dashboardSubtype   =   "RPM"
            damping   =   0.05
            increase   =   -10
            __type   =   "DashboardElementCockpit"
         }
         "1"   =   {
            nameBone   =   "ctrl_dashboard_fuel"
            axis   =   "Y"
            maxRotationAngle   =   115
            dashboardSubtype   =   "FUEL"
            damping   =   0.005
            __type   =   "DashboardElementCockpit"
         }
         "2"   =   {
            nameBone   =   "ctrl_dashboard_engine_temp_coolant"
            axis   =   "Y"
            maxRotationAngle   =   60
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.002
            __type   =   "DashboardElementCockpit"
         }
         "3"   =   {
            nameBone   =   "ctrl_dashboard_engine_temp_oil_hyd"
            axis   =   "Y"
            maxRotationAngle   =   55
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.002
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
            nameBone   =   "ctrl_pedal_drive_2"
            axis   =   "Y"
            maxRotationAngle   =   20
            dashboardSubtype   =   "RPM"
            damping   =   0.1
            increase   =   -20
            __type   =   "DashboardElementCockpit"
         }
         "6"   =   {
            nameBone   =   "ctrl_steering_wheel"
            axis   =   "Y"
            minRotationAngle   =   -360
            maxRotationAngle   =   360
            steeringSubtype   =   "WHEEL"
            __type   =   "SteerigElementCockpit"
         }
         "7"   =   {
            nameBone   =   "ctrl_switch_handbrake"
            axis   =   "Y"
            maxRotationAngle   =   20
            switcherSubtype   =   "HANDBRAKE"
            __type   =   "SwitcherElementCockpit"
         }
         "8"   =   {
            nameBone   =   "ctrl_gear_stick_low"
            axis   =   "Y"
            maxRotationAngle   =   15
            speed   =   45
            switcherSubtype   =   "LOW_GEAR"
            __type   =   "SwitcherElementCockpit"
         }
         "9"   =   {
            nameBone   =   "BoneChair_cdt"
            axis   =   "Y"
            maxRotationAngle   =   180
            speed   =   90
            switcherSubtype   =   "DRIVE_ORIENTATION"
            __type   =   "SwitcherElementCockpit"
         }
         "10"   =   {
            nameBone   =   "ctrl_gear_stick"
            rotationSpeed   =   30
            states   =   {
               AUTO   =   {
                  primary   =   {
                     axis   =   "Y"
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
                  __type   =   "GearStateItem"
               }
            }
            __type   =   "GearStickElementCockpit"
         }
         "11"   =   {
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
         "12"   =   {
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
         cameraMouseSensitivity   =   0.45
         cameraGamepadSensitivity   =   1.45
         cameraFocusPointOffset   =   {
            y   =   -2
            __type   =   "Vector3d"
         }
         attachmentBone   =   "_equipment_camera"
         followTimeout   =   0
         minSpeedToFollow   =   0
         firstLaunchCameraAngles   =   {
            __type   =   "null"
         }
         cdtBackwardCollisionRefine   =   {
            cdtOnCamera   =   True
            __type   =   "CdtRefine"
         }
         followTerrainLerpSpeed   =   0
         followYAngleLimit   =   0
         followChangeDirectionSpeedThreshold   =   0
         followChangeDirectionLerpSpeed   =   0
         angleSlerpRate   =   0
         distanceLerpSpeed   =   0.9
         xAngleLimits   =   {
            x   =   33
            y   =   85
            __type   =   "Vector2d"
         }
         interestPointLerpSpeed   =   1.2
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
      velocityScale   =   1.34
      stuckVelocityThreshold   =   2
      stuckScaleChange   =   0.5
      masterConnectType   =   "CENTER"
      masterOffset   =   {
         y   =   1
         z   =   1.5
         __type   =   "Vector3d"
      }
      slaveConnectType   =   "LOCATOR"
      slaveLocator   =   "BoneFront_cdt"
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
                  constraintName   =   "LegRear_L_A"
                  speed   =   0.7
                  maxPosition   =   0.7
               },
               {
                  constraintName   =   "LegRear_L_B"
                  angularSpeed   =   90
                  maxAngle   =   90
               },
               {
                  constraintName   =   "LegRear_L_C"
                  speed   =   0.3
                  maxPosition   =   0.2
               }
            ]
            platformVisibilityStage   =   -1
         },
         {
            anchorConstraints   =   [
               {
                  constraintName   =   "LegRear_R_A"
                  speed   =   0.7
                  maxPosition   =   0.7
               },
               {
                  constraintName   =   "LegRear_R_B"
                  angularSpeed   =   90
                  maxAngle   =   90
               },
               {
                  constraintName   =   "LegRear_R_C"
                  speed   =   0.3
                  maxPosition   =   0.2
               }
            ]
            platformVisibilityStage   =   -1
         },
         {
            anchorConstraints   =   [
               {
                  constraintName   =   "LegFront_L_A"
                  speed   =   0.7
                  maxPosition   =   0.7
               },
               {
                  constraintName   =   "LegFront_L_B"
                  angularSpeed   =   90
                  maxAngle   =   90
               },
               {
                  constraintName   =   "LegFront_L_C"
                  speed   =   0.3
                  maxPosition   =   0.2
               }
            ]
            platformVisibilityStage   =   -1
         },
         {
            anchorConstraints   =   [
               {
                  constraintName   =   "LegFront_R_A"
                  speed   =   0.7
                  maxPosition   =   0.7
               },
               {
                  constraintName   =   "LegFront_R_B"
                  angularSpeed   =   90
                  maxAngle   =   90
               },
               {
                  constraintName   =   "LegFront_R_C"
                  speed   =   0.3
                  maxPosition   =   0.2
               }
            ]
            platformVisibilityStage   =   -1
         }
      ]
      fallingThreshold   =   20
      massScalers   =   [
         {
            bodyName   =   "BoneLegRear_L_A_cdt"
            scaler   =   3
         },
         {
            bodyName   =   "BoneLegRear_L_B_cdt"
            scaler   =   3
         },
         {
            bodyName   =   "BoneLegRear_L_C_cdt"
            scaler   =   3
         },
         {
            bodyName   =   "BoneLegRear_R_A_cdt"
            scaler   =   3
         },
         {
            bodyName   =   "BoneLegRear_R_B_cdt"
            scaler   =   3
         },
         {
            bodyName   =   "BoneLegRear_R_C_cdt"
            scaler   =   3
         },
         {
            bodyName   =   "BoneLegFront_L_A_cdt"
            scaler   =   3
         },
         {
            bodyName   =   "BoneLegFront_L_B_cdt"
            scaler   =   3
         },
         {
            bodyName   =   "BoneLegFront_L_C_cdt"
            scaler   =   3
         },
         {
            bodyName   =   "BoneLegFront_R_A_cdt"
            scaler   =   3
         },
         {
            bodyName   =   "BoneLegFront_R_B_cdt"
            scaler   =   3
         },
         {
            bodyName   =   "BoneLegFront_R_C_cdt"
            scaler   =   3
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
   prop_malfunction   =   {
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
            lightName   =   "lights_emissive"
            geomNames   =   [
               "_hp_cab_interior",
               "_hp_cab_interior_gauges"
            ]
            __type   =   "CockpitLights"
         }
      }
   }
}
__type   =   "truck_view"
