properties   =   {
   geom   =   {
      nameTpl   =   "greenway_ht500_dozer_new"
   }
   prop_truck_view_controller   =   {
      engineFiringDelay   =   1000
   }
   prop_truck_view   =   {
      truckName   =   "greenway_ht500_dozer_new"
      truckType   =   "default"
      truckVisibilityInFogOfWar   =   60
   }
   prop_truck_rb   =   {
      suspensionAxleCollection   =   [
         {
            max   =   0
            strength   =   0.7
            damping   =   0.15
         },
         {
            max   =   0
         },
         {
            min   =   -0.12
            max   =   0.12
            height   =   0.15
            strength   =   0.3
            damping   =   0.9
         }
      ]
      suspensionCollectionMap   =   {
         Idler   =   {
            __value   =   0
         }
         sprocket   =   {
            __value   =   1
         }
         Fake   =   {
            __value   =   2
         }
      }
      engine   =   {
         params   =   {
            torque   =   480000
            brakesDelay   =   0.5
            maxDeltaAngVel   =   0.001
            responsiveness   =   0.08
            __type   =   "TruckEngineParams"
         }
         __type   =   "TruckEngine"
      }
      gearbox   =   {
         params   =   {
            gears   =   [
               {
                  angularVelocity   =   0.9
                  gearRatio   =   3.9
                  targetSpeedRangeKmh   =   {
                     y   =   6
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   3.5
                  gearRatio   =   3.3
                  targetSpeedRangeKmh   =   {
                     x   =   6
                     y   =   12
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   6
                  gearRatio   =   3
                  targetSpeedRangeKmh   =   {
                     x   =   12
                     y   =   20
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   14
                  gearRatio   =   2.9
                  targetSpeedRangeKmh   =   {
                     x   =   20
                     y   =   33
                     __type   =   "Vector2dRnd"
                  }
               }
            ]
            reverseGear   =   {
               angularVelocity   =   0.3
               gearRatio   =   4.2
               __type   =   "TruckSingleGearParams"
            }
            highGear   =   {
               angularVelocity   =   0.75
               gearRatio   =   3.9
               __type   =   "TruckSingleGearParams"
            }
            lowRangeGear   =   {
               angularVelocity   =   0.15
               gearRatio   =   4.2
               __type   =   "TruckSingleGearParams"
            }
            isLowRangeModeReverseEnabled   =   True
            isLowRangeModeClutchingEnabled   =   False
            clutchSwitchTime   =   0
            defaultGearSwitchDelay   =   0.25
            upperGearSwitchDelayBase   =   0.35
            upperGearSwitchDelayGearNumMultiplier   =   0.45
            downGearSwitchDelay   =   0.2
            neutralGearSwitchingDelay   =   0
            lowRangeMultiplier   =   0.5
            __type   =   "TruckGearboxParams"
         }
         __type   =   "TruckGearbox"
      }
      isBackSteerIgnored   =   True
      maxSteerSpeed   =   0.2
      pedalsResponsiveness   =   0.8
      linImpulseTriggerWheelAngVelMax   =   21
      isNeutralGearWheelResistanceEnabled   =   False
      isReverseWheelResistanceEnabled   =   True
      trackControls   =   {
         steeringInputToInnerTrackTorqueMult   =   {
            spline   =   [
               0,
               1,
               0.3988669,
               0.0360586,
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
      decals   =   {
         singleDecalDesc   =   {
            components   =   {
               EcsComponentTransform   =   {
               }
               EcsComponentLwiDynDataDecalCoef   =   {
               }
               EcsComponentSingleMeshDecalAttach   =   {
               }
            }
            __type   =   "EcsEntityDesc"
         }
         mediumAreaSize   =   0.003
         smallRandomTreshold   =   1
         bigDecalRandomOffsetMult   =   0.9
         bigDecalSize   =   1.5
         mediumDecalMaxSize   =   1
         decalTypes   =   [
            {
               meshName   =   "mud_mesh_decal_01"
               yTransformScale   =   0.5
            },
            {
               meshName   =   "mud_mesh_decal_02"
               yTransformScale   =   0.4
            },
            {
               meshName   =   "mud_mesh_decal_03"
               yTransformScale   =   0.4
            }
         ]
         angleBetweenPanelsTreshold   =   0.2
         __type   =   "TruckEcsMeshDecals"
      }
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
            0.75,
            0.5,
            0.65,
            1,
            0.65
         ]
         __type   =   "SplineCurve1d"
      }
      wheelSlotWithDescs   =   [
         {
            geomName   =   "roller_front_l_0"
            parentFrame   =   "BoneTrackSusp_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "wheel_front"
         },
         {
            geomName   =   "roller_rear_l_9"
            parentFrame   =   "BoneTrackSusp_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "wheel_front"
         },
         {
            geomName   =   "roller_rear_top_l_10"
            parentFrame   =   "BoneTrackSusp_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "wheel_rear"
         },
         {
            geomName   =   "fakeWheel_l_0"
            parentFrame   =   "BoneTrackSusp_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_l_1"
            parentFrame   =   "BoneTrackSusp_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_l_2"
            parentFrame   =   "BoneTrackSusp_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_l_3"
            parentFrame   =   "BoneTrackSusp_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_l_4"
            parentFrame   =   "BoneTrackSusp_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_l_5"
            parentFrame   =   "BoneTrackSusp_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_l_6"
            parentFrame   =   "BoneTrackSusp_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_l_7"
            parentFrame   =   "BoneTrackSusp_L_cdt"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "roller_front_r_0"
            parentFrame   =   "BoneTrackSusp_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "wheel_front"
         },
         {
            geomName   =   "roller_rear_r_9"
            parentFrame   =   "BoneTrackSusp_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "wheel_front"
         },
         {
            geomName   =   "roller_rear_top_r_10"
            parentFrame   =   "BoneTrackSusp_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "wheel_rear"
         },
         {
            geomName   =   "fakeWheel_r_0"
            parentFrame   =   "BoneTrackSusp_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_r_1"
            parentFrame   =   "BoneTrackSusp_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_r_2"
            parentFrame   =   "BoneTrackSusp_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_r_3"
            parentFrame   =   "BoneTrackSusp_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_r_4"
            parentFrame   =   "BoneTrackSusp_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_r_5"
            parentFrame   =   "BoneTrackSusp_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_r_6"
            parentFrame   =   "BoneTrackSusp_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake"
         },
         {
            geomName   =   "fakeWheel_r_7"
            parentFrame   =   "BoneTrackSusp_R_cdt"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.1
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "wheel_fake"
         }
      ]
      wheelPool   =   {
         wheel_front   =   {
            __value   =   "auto_wheel_greenway_ht500_dozer_new_wheel_front"
         }
         wheel_middle   =   {
            __value   =   "auto_wheel_greenway_ht500_dozer_new_wheel_middle"
         }
         wheel_rear   =   {
            __value   =   "auto_wheel_greenway_ht500_dozer_new_wheel_rear"
         }
         wheel_fake   =   {
            __value   =   "auto_wheel_greenway_ht500_dozer_new_wheel_fake"
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
               __type   =   "TruckGraderSavablePropDesc"
            }
         }
      ]
   }
   prop_replicated   =   {
      repEntityBrand   =   {
         type   =   {
            __type   =   "AutoGreenwayHt500DozerNewReplicated"
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
      isLowGearAvailable   =   True
   }
   prop_fuel_tank   =   {
      maxFuelTankVolume   =   1224
      startFuelTankVolume   =   1224
      fuelConsumption   =   0.6
      reverseFuelConsumptionCoeff   =   1.2
      lowRangeFuelConsumptionCoeff   =   1.3
   }
   prop_truck_constraint_view   =   {
      controllableConstraints   =   [
         {
            constraintName   =   "Dump"
            angularSpeed   =   15
            minAngle   =   -10
            maxAngle   =   10
            inertiaInput   =   {
               inertiaRelaxationTime   =   0.25
               __type   =   "ConstraintInertiaInput"
            }
         },
         {
            constraintName   =   "Blade"
            angularSpeed   =   15
            minAngle   =   -10
            maxAngle   =   10
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
                  constraint   =   "Dump"
                  power   =   1
               }
            ]
            __type   =   "TruckConstraintChain"
         }
         close   =   {
            links   =   [
               {
                  constraint   =   "Dump"
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
                  y   =   2
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
   prop_tagged   =   {
      tag   =   "UID_MODULE_DOZER"
   }
   prop_water_falloff   =   {
      falloffDuration   =   1
      particlesCount   =   100
   }
   prop_water_impact_scatter   =   {
      location   =   {
         __type   =   "Tracker"
      }
      minVelocityForSplash   =   4
   }
   prop_truck_water_interaction   =   {
      noiseScaleLow   =   0.15
      noiseScaleHigh   =   0.05
   }
   prop_driver   =   {
      boneName   =   "BoneDozer_cdt"
      boneOffset   =   {
         x   =   0.035
         y   =   0.835
         z   =   -1.785
         __type   =   "Vector3d"
      }
   }
   prop_pre_soft_keyframe_updater   =   {
      syncBodyNames   =   [
         "BoneDozer_cdt",
         "BoneDump_cdt",
         "BoneBlade_cdt"
      ]
   }
   prop_truck_track   =   {
      tracks   =   [
         {
            section   =   {
               height   =   0.185
               tpl   =   "greenway_ht500_dozer_new_track"
               segmentLength   =   0.275
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
               locator   =   "BoneTrackSusp_L_cdt"
               __type   =   "Tracker"
            }
            decalDescIndex   =   0
            wheelIds   =   [
               0,
               1,
               2
            ]
            visualWheelSlots   =   [
               {
                  geomName   =   "roller_middle_l_1"
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_l_2"
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_l_3"
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_l_4"
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_l_5"
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_l_6"
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_l_7"
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_l_8"
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_top_l_11"
                  editableWheel   =   "wheel_middle"
               }
            ]
            fakeWheelIds   =   [
               3,
               4,
               5,
               6,
               7,
               8,
               9,
               10
            ]
         },
         {
            section   =   {
               height   =   0.185
               tpl   =   "greenway_ht500_dozer_new_track"
               segmentLength   =   0.275
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
               locator   =   "BoneTrackSusp_R_cdt"
               __type   =   "Tracker"
            }
            decalDescIndex   =   0
            wheelIds   =   [
               11,
               12,
               13
            ]
            visualWheelSlots   =   [
               {
                  geomName   =   "roller_middle_r_1"
                  isRightSided   =   True
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_r_2"
                  isRightSided   =   True
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_r_3"
                  isRightSided   =   True
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_r_4"
                  isRightSided   =   True
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_r_5"
                  isRightSided   =   True
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_r_6"
                  isRightSided   =   True
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_r_7"
                  isRightSided   =   True
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_middle_r_8"
                  isRightSided   =   True
                  editableWheel   =   "wheel_middle"
               },
               {
                  geomName   =   "roller_top_r_11"
                  isRightSided   =   True
                  editableWheel   =   "wheel_middle"
               }
            ]
            fakeWheelIds   =   [
               14,
               15,
               16,
               17,
               18,
               19,
               20,
               21
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
            bodyName   =   "BoneDozer_cdt"
            offsetInBodySpace   =   {
               x   =   0.7
               y   =   1
               z   =   1
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneDozer_cdt"
            offsetInBodySpace   =   {
               x   =   -0.7
               y   =   1
               z   =   1
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneDozer_cdt"
            offsetInBodySpace   =   {
               x   =   0.543
               y   =   1.065
               z   =   -2.785
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneDozer_cdt"
            offsetInBodySpace   =   {
               x   =   -0.543
               y   =   1.065
               z   =   -2.785
               __type   =   "Vector3d"
            }
         }
      ]
      rotationFactor   =   0.65
      amountOfWinchPoints   =   4
   }
   prop_constraint_solving_method_changer   =   {
      constraintNames   =   [
         "TrackSusp_L",
         "TrackSusp_R"
      ]
   }
   prop_truck_default_camera_equipment_state   =   {
   }
   prop_truck_camera_preset   =   {
      preset   =   {
         attachmentBone   =   "_third_person_camera"
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
               x   =   -1
               y   =   -0.2
               z   =   0.7
               __type   =   "Vector3d"
            }
            Vector3d   =   {
               x   =   0.1
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
               x   =   0.1
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
               "BoneDump_cdt",
               "Bone_IK_Dump_L_A",
               "Bone_IK_Dump_L_B"
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
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneBlade_cdt"
                  bodyIKName   =   "Bone_IK_Dump_L_B"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "Bone_IK_Dump_L_A",
               "Bone_IK_Dump_L_PistonBase",
               "Bone_IK_Dump_L_Piston"
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
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneBlade_cdt"
                  bodyIKName   =   "Bone_IK_Dump_L_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneDozer_cdt",
               "Bone_IK_Blade_L_PistonBase",
               "Bone_IK_Blade_L_Piston"
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
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneBlade_cdt"
                  bodyIKName   =   "Bone_IK_Blade_L_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneDump_cdt",
               "Bone_IK_Dump_R_A",
               "Bone_IK_Dump_R_B"
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
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneBlade_cdt"
                  bodyIKName   =   "Bone_IK_Dump_R_B"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "Bone_IK_Dump_R_A",
               "Bone_IK_Dump_R_PistonBase",
               "Bone_IK_Dump_R_Piston"
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
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneBlade_cdt"
                  bodyIKName   =   "Bone_IK_Dump_R_Piston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneDozer_cdt",
               "Bone_IK_Blade_R_PistonBase",
               "Bone_IK_Blade_R_Piston"
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
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneBlade_cdt"
                  bodyIKName   =   "Bone_IK_Blade_R_Piston"
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
         "BoneDozer_cdt",
         "BoneDump_cdt",
         "BoneBlade_cdt"
      ]
   }
   prop_truck_track_swing   =   {
      swings   =   [
         {
            swing   =   "BoneCart_1_l"
            parentPhysWheelA   =   3
            parentPhysWheelB   =   4
         },
         {
            swing   =   "BoneCart_2_l"
            parentPhysWheelA   =   5
            parentPhysWheelB   =   6
         },
         {
            swing   =   "BoneCart_3_l"
            parentPhysWheelA   =   7
            parentPhysWheelB   =   8
         },
         {
            swing   =   "BoneCart_4_l"
            parentPhysWheelA   =   9
            parentPhysWheelB   =   10
         },
         {
            swing   =   "BoneCart_1_r"
            parentPhysWheelA   =   14
            parentPhysWheelB   =   15
         },
         {
            swing   =   "BoneCart_2_r"
            parentPhysWheelA   =   16
            parentPhysWheelB   =   17
         },
         {
            swing   =   "BoneCart_3_r"
            parentPhysWheelA   =   18
            parentPhysWheelB   =   19
         },
         {
            swing   =   "BoneCart_4_r"
            parentPhysWheelA   =   20
            parentPhysWheelB   =   21
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
   prop_terraforming_bucket   =   {
      emptyBladeAngle   =   -10
      fullBladeAngle   =   10
      rigidBodyNames   =   [
         "BoneBlade_cdt"
      ]
      allowedPenetrationDistance   =   0
   }
   prop_terraforming_permission_checker   =   {
   }
   prop_truck_view_grader_controller   =   {
      useChains   =   True
      centerBodyName   =   "BoneBlade_cdt"
      graderModesOrder   =   [
         "SAND_FLATTEN",
         "MARCHING",
         "MANUAL",
         "ASPHALT_REMOVER"
      ]
   }
   prop_grader_chain_controller   =   {
      positionChainDown   =   "open"
      positionChainUp   =   "close"
      centerBodyName   =   "BoneBlade_cdt"
      autoModeLocalOffset   =   {
         y   =   0
         __type   =   "Vector3d"
      }
      sandFlattenTerrainOffset   =   0.55
      sandHeightMissTolerance   =   0.225
   }
   prop_grader_blades_controller   =   {
      firstBladeConstraintData   =   {
         name   =   "Blade"
         minPosition   =   -10
         maxPosition   =   10
         isAngle   =   True
         motorSpeed   =   15
         __type   =   "GraderConstraintData"
      }
   }
   prop_truck_flattener   =   {
      flattenerLocator   =   "BoneBlade_cdt"
      flattener   =   {
         size   =   {
            x   =   5
            y   =   4.5
            z   =   4
            __type   =   "Vector3d"
         }
         smoothRadius   =   0.25
         velocityPowerMultiplier   =   10
         maxPowerPerSecond   =   35
         normalIgnoringPercent   =   1
         borderHeight   =   0.05
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
            z   =   3.35
            __type   =   "Vector3d"
         }
         __type   =   "Tracker"
      }
   }
   prop_truck_customization   =   {
   }
   prop_customization_graffiti   =   {
   }
   prop_truck_view_actions_mapper   =   {
      uiModeName   =   "UID_HUD_GRADER_MODE"
      firstControlSectionUiName   =   "UID_HUD_FIRST_SECTION_GRADER_BATM"
      secondControlSectionUiName   =   "UID_HUD_SECOND_SECTION_GRADER_BATM"
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
      steeringThreshold   =   12
      reverseAngleThreshold   =   0
      velocityScale   =   1.45
      stuckVelocityThreshold   =   2
      stuckScaleChange   =   0.5
      velocityPedalControl   =   {
         spline   =   [
            -3,
            -0.9997755,
            -7.98315,
            -1.008146,
            0,
            -0.9914044,
            0,
            0,
            0,
            0,
            0,
            0,
            5,
            0.9999998,
            2,
            0.9960949,
            13.30876,
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
         z   =   1
         __type   =   "Vector3d"
      }
      isCaterpillars   =   True
   }
   prop_truck_upside_down_checker   =   {
   }
   prop_wheel_particles_base   =   {
      waterSfxWheels   =   {
         __type   =   "CustomSfxEmitter"
      }
      waterSfxTrack   =   {
         __type   =   "CustomSfxEmitter"
      }
      waterWheelSettings   =   {
         __type   =   "WheelParticleMaterialSettings"
      }
      waterTrackSettings   =   {
         __type   =   "TrackParticleMaterialSettings"
      }
   }
   prop_truck_warning_notification   =   {
   }
   prop_truck_shaker_native_controller   =   {
      shakers   =   {
         Exhaust_L   =   {
            shakerBone   =   "BoneExhaust_L"
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
         ExhaustCap_L   =   {
            shakerBone   =   "BoneExhaustCap_L"
            frequency   =   20
            maxAngleOffsetScale   =   1
            backAngleOffsetScale   =   0.5
            minAngle   =   [
               -60,
               0,
               0
            ]
            maxAngle   =   [
               -20,
               0,
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
         Exhaust_R   =   {
            shakerBone   =   "BoneExhaust_R"
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
         ExhaustCap_R   =   {
            shakerBone   =   "BoneExhaustCap_R"
            frequency   =   20
            maxAngleOffsetScale   =   1
            backAngleOffsetScale   =   0.5
            minAngle   =   [
               -60,
               0,
               0
            ]
            maxAngle   =   [
               -20,
               0,
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
      rigidBodyNames   =   [
         "BoneBlade_cdt"
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
}
__type   =   "truck_view"
