properties   =   {
   geom   =   {
      nameTpl   =   "warden_kochevnik_res"
   }
   prop_truck_view_controller   =   {
      engineFiringDelay   =   1000
   }
   prop_truck_view   =   {
      truckName   =   "warden_kochevnik_mob_new"
      truckType   =   "tracked_heavy"
      truckVisibilityInFogOfWar   =   60
   }
   prop_truck_rb   =   {
      suspensionAxleCollection   =   [
         {
            max   =   0
         },
         {
            min   =   -0.15
            max   =   0.3
            height   =   0.15
            strength   =   0.03
            damping   =   0.2
         },
         {
            min   =   -0.15
            max   =   0.3
            height   =   0.15
            strength   =   0.02
            damping   =   0.4
         }
      ]
      suspensionCollectionMap   =   {
         FrontRear   =   {
            __value   =   0
         }
         Middle   =   {
            __value   =   1
         }
         FakeSus   =   {
            __value   =   2
         }
      }
      engine   =   {
         params   =   {
            torque   =   370000
            brakesDelay   =   0.5
            maxDeltaAngVel   =   0.002
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
                  angularVelocity   =   1.25
                  gearRatio   =   4.2
                  targetSpeedRangeKmh   =   {
                     y   =   9
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   4
                  gearRatio   =   3.4
                  targetSpeedRangeKmh   =   {
                     x   =   9
                     y   =   16
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   6.5
                  gearRatio   =   2.8
                  targetSpeedRangeKmh   =   {
                     x   =   16
                     y   =   20
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   19
                  gearRatio   =   2.2
                  targetSpeedRangeKmh   =   {
                     x   =   20
                     y   =   40
                     __type   =   "Vector2dRnd"
                  }
               }
            ]
            reverseGear   =   {
               angularVelocity   =   0.3
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
            defaultGearSwitchDelay   =   0.25
            upperGearSwitchDelayBase   =   0.8
            downGearSwitchDelay   =   0.5
            neutralGearSwitchingDelay   =   3
            __type   =   "TruckGearboxParams"
         }
         __type   =   "TruckGearbox"
      }
      maxSteerSpeed   =   0.015
      backSteerSpeed   =   0.03
      pedalsResponsiveness   =   0.15
      linImpulseTriggerWheelAngVelMax   =   24
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
            0.1,
            0.5,
            0.15,
            1,
            0.15
         ]
         __type   =   "SplineCurve1d"
      }
      steerRotateEngineControl   =   False
      wheelSlotWithDescs   =   [
         {
            geomName   =   "r_wheel_tractor_0"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "FrontWheel"
         },
         {
            geomName   =   "r_wheel_tractor_1"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "r_wheel_tractor_2"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "r_wheel_tractor_3"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheelSound"
         },
         {
            geomName   =   "r_wheel_tractor_4"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "r_wheel_tractor_5"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "r_wheel_tractor_6"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "r_wheel_tractor_7"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "RearWheel"
         },
         {
            geomName   =   "l_wheel_tractor_0"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "FrontWheel"
         },
         {
            geomName   =   "l_wheel_tractor_1"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "l_wheel_tractor_2"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheelSound"
         },
         {
            geomName   =   "l_wheel_tractor_3"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "l_wheel_tractor_4"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "l_wheel_tractor_5"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "l_wheel_tractor_6"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "l_wheel_tractor_7"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.001
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "RearWheel"
         },
         {
            geomName   =   "r_wheel_trailer_0"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "FrontWheel"
         },
         {
            geomName   =   "r_wheel_trailer_1"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "r_wheel_trailer_2"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "r_wheel_trailer_3"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheelSound"
         },
         {
            geomName   =   "r_wheel_trailer_4"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "r_wheel_trailer_5"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "r_wheel_trailer_6"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "r_wheel_trailer_7"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "RearWheel"
         },
         {
            geomName   =   "l_wheel_trailer_0"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "FrontWheel"
         },
         {
            geomName   =   "l_wheel_trailer_1"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "l_wheel_trailer_2"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "l_wheel_trailer_3"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheelSound"
         },
         {
            geomName   =   "l_wheel_trailer_4"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "l_wheel_trailer_5"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "l_wheel_trailer_6"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "l_wheel_trailer_7"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "RearWheel"
         },
         {
            geomName   =   "r_wheel_fake_tractor_01"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "r_wheel_fake_tractor_02"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "l_wheel_fake_tractor_01"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "l_wheel_fake_tractor_02"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "r_wheel_fake_trailer_01"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "r_wheel_fake_trailer_02"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "l_wheel_fake_trailer_01"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "l_wheel_fake_trailer_02"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.01
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "FakeWheel"
         }
      ]
      wheelsWithTrail   =   {
         r_wheel_tractor_1   =   {
            __type   =   "WheelTrailDesc"
         }
         r_wheel_tractor_6   =   {
            isRear   =   True
            __type   =   "WheelTrailDesc"
         }
         l_wheel_tractor_1   =   {
            __type   =   "WheelTrailDesc"
         }
         l_wheel_tractor_6   =   {
            isRear   =   True
            __type   =   "WheelTrailDesc"
         }
         r_wheel_trailer_1   =   {
            __type   =   "WheelTrailDesc"
         }
         r_wheel_trailer_6   =   {
            isRear   =   True
            __type   =   "WheelTrailDesc"
         }
         l_wheel_trailer_1   =   {
            __type   =   "WheelTrailDesc"
         }
         l_wheel_trailer_6   =   {
            isRear   =   True
            __type   =   "WheelTrailDesc"
         }
      }
      wheelPool   =   {
         FrontWheel   =   {
            __value   =   "auto_wheel_warden_kochevnik_mob_new_frontwheel"
         }
         MiddleWheel   =   {
            __value   =   "auto_wheel_warden_kochevnik_mob_new_middlewheel"
         }
         RearWheel   =   {
            __value   =   "auto_wheel_warden_kochevnik_mob_new_rearwheel"
         }
         FakeWheel   =   {
            __value   =   "auto_wheel_warden_kochevnik_mob_new_fakewheel"
         }
         MiddleWheelSound   =   {
            __value   =   "auto_wheel_warden_kochevnik_mob_new_middlewheelsound"
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
         regions   =   [
            {
               size   =   {
                  x   =   2
                  y   =   4
                  __type   =   "Vector2d"
               }
               attachNode   =   "BoneTractor_cdt"
            },
            {
               size   =   {
                  x   =   2
                  y   =   4
                  __type   =   "Vector2d"
               }
               attachNode   =   "geo_Trailer_p02"
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
                     "TruckShaker_Dcskqv4O/Play",
                     "TruckShaker_DcskqHbP/Stop",
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
                     "PlaySound_12/Play"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown   =   {
                  viewData   =   {
                     x   =   3338.561
                     y   =   5000
                  }
                  OnEngineShutdown   =   [
                     "PlaySound_11/Play",
                     "TruckShaker_DcskqHbP/Play",
                     "TruckShaker_Dcskqv4O/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               OnEngineAcceleration   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5300
                  }
                  OnAcceleration   =   [
                     "PlaySound/Play"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5450
                  }
                  OnEngineReverse   =   [
                     "PlaySound/Play"
                  ]
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
                  OnHandbrakeOn   =   [
                     "PlaySound_1/Play",
                     "TriggerEvent_1/TriggerBlueprintEvent"
                  ]
                  OnHandbrakeOff   =   [
                     "PlaySound_1_1/Play",
                     "TriggerEvent/TriggerBlueprintEvent"
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
                     "PlaySound_10/Play"
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
               PlaySound_10   =   {
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
                        name   =   "vhc_warden_kochevnik_engine_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_11   =   {
                  viewData   =   {
                     x   =   4000
                     y   =   5050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_12/Stop",
                     "PlaySound_10/Stop",
                     "PlaySound_Eb76GCdV/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_warden_kochevnik_engine_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_12   =   {
                  viewData   =   {
                     x   =   4000
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_Eb76GCdV/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_warden_kochevnik_engine"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   5650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_warden_kochevnik_handbrake_on"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1_1   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   6050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_warden_kochevnik_handbrake_off"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   5300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_warden_kochevnik_acc"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               TriggerEvent   =   {
                  viewData   =   {
                     x   =   3650
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
               TriggerEvent_1   =   {
                  viewData   =   {
                     x   =   3650
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
               TruckShaker_Dcskqv4O   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   4750
                  }
                  duration   =   3
                  shakerName   =   "EngineStart"
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_DcskqHbP   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   4900
                  }
                  duration   =   2.8
                  shakerName   =   "EngineShutdown"
                  maxRPM   =   True
                  __type   =   "BlueprintNodeTruckShaker"
               }
               PlaySound_2_E2lkO5dh   =   {
                  viewData   =   {
                     x   =   7190.464
                     y   =   4902.124
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "Schedule_E2lkO5dh6/Start"
                  ]
                  OnSoundEnd   =   [
                     "Schedule_E2lkO5dh6/Stop"
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
               PlaySound_2_1_E2lkO5dh1   =   {
                  viewData   =   {
                     x   =   6550
                     y   =   4902.124
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_2_E2lkO5dh/Play"
                  ]
                  OnSoundEnd   =   [
                     "PlaySound_2_E2lkO5dh/Stop"
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
               SetSoundParameter_1_1_E2lkO5dh4   =   {
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
               SetSoundParameter_1_2_E2lkO5dh5   =   {
                  viewData   =   {
                     x   =   8300
                     y   =   4900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "SetSoundParameter_1_1_E2lkO5dh4/SetParameter"
                  ]
                  nameRef   =   {
                     def   =   "rpm_l"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               Schedule_E2lkO5dh6   =   {
                  viewData   =   {
                     x   =   7890.316
                     y   =   4902.124
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_1_2_E2lkO5dh5/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               GetTruckTrackSlidingVelocity_E2lkO5dh7   =   {
                  viewData   =   {
                     x   =   7700
                     y   =   5302.124
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSlidingVelocity   =   [
                     "FloatAbs_E2lkO5dh9/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeTruckTrackGetSlidingVelocity"
               }
               GetTruckTrackSlidingVelocity_E2lkO5dh8   =   {
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
                     "FloatAbs_E2lkO5dha/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeTruckTrackGetSlidingVelocity"
               }
               FloatAbs_E2lkO5dh9   =   {
                  viewData   =   {
                     x   =   8050
                     y   =   5102.124
                  }
                  aFloat   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetFloat   =   [
                     "SetSoundParameter_1_2_E2lkO5dh5/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeFloatAbs"
               }
               FloatAbs_E2lkO5dha   =   {
                  viewData   =   {
                     x   =   8600
                     y   =   5102.124
                  }
                  aFloat   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetFloat   =   [
                     "SetSoundParameter_1_1_E2lkO5dh4/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeFloatAbs"
               }
               PlaySound_2_1_E2lkO5dhb   =   {
                  viewData   =   {
                     x   =   6550
                     y   =   5102.124
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_2_E2lkO5dhc/Play"
                  ]
                  OnSoundEnd   =   [
                     "PlaySound_2_E2lkO5dhc/Stop"
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
               PlaySound_2_E2lkO5dhc   =   {
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
                        name   =   "vhc_track_heavy_right"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_E2lkRjd9   =   {
                  viewData   =   {
                     x   =   6150
                     y   =   4650
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_1_E2lkO5dh1/emitterRef/cb",
                     "SetSoundParameter_1_2_E2lkO5dh5/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "l_wheel_tractor_4"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        x   =   -3
                        __type   =   "Vector3d"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_E2lkRjd92   =   {
                  viewData   =   {
                     x   =   6950
                     y   =   5350
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_E2lkO5dhc/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "r_wheel_trailer_4"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        x   =   3
                        __type   =   "Vector3d"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_E2lkRjd93   =   {
                  viewData   =   {
                     x   =   6150
                     y   =   5350
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_1_E2lkO5dhb/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "l_wheel_trailer_4"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        x   =   -3
                        __type   =   "Vector3d"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_E2lm8a7E   =   {
                  viewData   =   {
                     x   =   6950
                     y   =   4650
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_E2lkO5dh/emitterRef/cb",
                     "SetSoundParameter_1_1_E2lkO5dh4/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "r_wheel_tractor_4"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        x   =   3
                        __type   =   "Vector3d"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_Ea2a4dby   =   {
                  viewData   =   {
                     x   =   3900
                     y   =   5850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_1/emitterRef/cb",
                     "PlaySound_1_1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_04"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               OnEnterTruck_Eb1doldh   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   4900
                  }
                  OnEnter   =   [
                     "If_Eb1doldh1/Input"
                  ]
                  __type   =   "BlueprintNodeOnEnterTruck"
               }
               If_Eb1doldh1   =   {
                  viewData   =   {
                     x   =   6250
                     y   =   4900
                  }
                  OnTrue   =   [
                     "PlaySound_2_1_E2lkO5dh1/Play",
                     "PlaySound_2_1_E2lkO5dhb/Stop"
                  ]
                  __type   =   "BlueprintNodeIf"
               }
               IsCurrentTruck_Eb1doldh2   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   5050
                  }
                  IsCurrentTruck   =   [
                     "If_Eb1doldh1/condition/cb",
                     "If_Eb1doldh4/condition/cb"
                  ]
                  __type   =   "BlueprintNodeTruckIsCurrent"
               }
               If_Eb1doldh4   =   {
                  viewData   =   {
                     x   =   6250
                     y   =   5186.256
                  }
                  OnTrue   =   [
                     "PlaySound_2_1_E2lkO5dh1/Stop",
                     "PlaySound_2_1_E2lkO5dhb/Play"
                  ]
                  __type   =   "BlueprintNodeIf"
               }
               PlaySound_Eb76GCdV   =   {
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
                        name   =   "vhc_body_underneath"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               GetTruckRpm_Eb76H71D   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   6229
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  Get   =   [
                     "FloatSubtract_Eb76H71D7/aFloat/cb",
                     "FloatSwitch_Eb76H71D8/trueValue/cb"
                  ]
                  __type   =   "BlueprintNodeGetTruckRpm"
               }
               OnInit_Eb76H71D1   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   6129
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "Schedule_Eb76H71D2/Start"
                  ]
                  __type   =   "BlueprintCommonLibraryOninit"
               }
               Schedule_Eb76H71D2   =   {
                  viewData   =   {
                     x   =   6247.742
                     y   =   6129
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_1_Eb76H71D4/SetParameter",
                     "SetSoundParameter_1_1_Eb76H71D5/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               TruckVelocity_Eb76H71D3   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   6479
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetLinearVelocity   =   [
                     "SetSoundParameter_1_1_Eb76H71D5/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               SetSoundParameter_1_Eb76H71D4   =   {
                  viewData   =   {
                     x   =   7900
                     y   =   6129
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
               SetSoundParameter_1_1_Eb76H71D5   =   {
                  viewData   =   {
                     x   =   7900
                     y   =   6379
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
               FloatCommutator_Eb76H71D6   =   {
                  viewData   =   {
                     x   =   6500
                     y   =   6329
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
                     "FloatSubtract_Eb76H71D7/bFloat/cb"
                  ]
                  __type   =   "BlueprintNodeFloatCommutator"
               }
               FloatSubtract_Eb76H71D7   =   {
                  viewData   =   {
                     x   =   6700
                     y   =   6279
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  Float   =   [
                     "FloatCompare_Eb76H71D9/aFloat/cb",
                     "FloatSwitch_Eb76H71D8/falseValue/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatsubstract"
               }
               FloatSwitch_Eb76H71D8   =   {
                  viewData   =   {
                     x   =   7150
                     y   =   6229
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
                     "FloatSum_Eb76H71De/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeBoolToFloatCommutator"
               }
               FloatCompare_Eb76H71D9   =   {
                  viewData   =   {
                     x   =   6900
                     y   =   6329
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
                     "FloatSwitch_Eb76H71D8/condition/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatcompare"
               }
               SuspensionOscillations_Eb76H71Da   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   6329
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  zeroBorder   =   0.04
                  OnOscillationsStarted   =   [
                     "FloatCommutator_Eb76H71D6/PassFirstValue"
                  ]
                  OnOscillationsStopped   =   [
                     "FloatCommutator_Eb76H71D6/PassSecondValue"
                  ]
                  __type   =   "BlueprintNodeSuspensionOscillations"
               }
               GetTruckAngularVelocity_Eb76H71Db   =   {
                  viewData   =   {
                     x   =   7150
                     y   =   6329
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetAngularVelocity   =   [
                     "FloatAbs_Eb76H71Dd/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeTruckAngularVelocity"
               }
               FloatMultiplication_Eb76H71Dc   =   {
                  viewData   =   {
                     x   =   7550
                     y   =   6329
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
                     "FloatSum_Eb76H71De/bFloat/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatmultiplication"
               }
               FloatAbs_Eb76H71Dd   =   {
                  viewData   =   {
                     x   =   7400
                     y   =   6329
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  aFloat   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetFloat   =   [
                     "FloatMultiplication_Eb76H71Dc/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeFloatAbs"
               }
               FloatSum_Eb76H71De   =   {
                  viewData   =   {
                     x   =   7750
                     y   =   6208
                  }
                  Float   =   [
                     "SetSoundParameter_1_Eb76H71D4/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatsum"
               }
               OnExitTruck_Eb79tv2p   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   5200
                  }
                  OnExit   =   [
                     "If_Eb1doldh4/Input"
                  ]
                  __type   =   "BlueprintNodeOnExitTruck"
               }
               OnGearUpdate_EblbwQec   =   {
                  viewData   =   {
                     x   =   6050
                     y   =   7100
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
                     "SetSoundParameter_1_EblbwQec1/SetParameter"
                  ]
                  GetLastGear   =   [
                     "SetSoundParameter_1_EblbwQec1/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               SetSoundParameter_1_EblbwQec1   =   {
                  viewData   =   {
                     x   =   6800
                     y   =   7100
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
               OnEngineRunningOnInit_F72cgM5v   =   {
                  viewData   =   {
                     x   =   3050
                     y   =   4850
                  }
                  OnEngineRunning   =   [
                     "TruckShaker_Dcskqv4O/Stop",
                     "TruckShaker_DcskqHbP/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineRunningOnInit"
               }
            }
            groups   =   {
               "[SOUND] Tracks - Playback"   =   {
                  x   =   6000
                  y   =   4400
                  width   =   3200
                  height   =   1403.124
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] rpm and speed"   =   {
                  x   =   6000
                  y   =   5950
                  width   =   2350
                  height   =   750
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] gear update"   =   {
                  x   =   6000
                  y   =   6900
                  width   =   2344.812
                  height   =   700
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
                  zeroBorderEnergy   =   40000
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
                     def   =   1.25
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
                  zeroBorder   =   0.06
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
               OnTPLAnimationBegin_E4jek4do   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1650
                  }
                  OnAnimStart   =   [
                     "PlaySound_E4jek4do2/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnBegin"
               }
               OnTPLAnimationEnd_E4jek4do1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1850
                  }
                  OnAnimStop   =   [
                     "PlaySound_E4jek4do3/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnEnd"
               }
               PlaySound_E4jek4do2   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1650
                  }
                  OnSoundStart   =   [
                     "PlaySound_EaebOeck/Play"
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
               PlaySound_E4jek4do3   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1850
                  }
                  OnSoundStart   =   [
                     "PlaySound_EaebOeck1/Play"
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
               IntCheck_E4jek4do4   =   {
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
                     "PlaySound_E4jek4do6/Play"
                  ]
                  __type   =   "BlueprintLibraryCheckint"
               }
               OnHandbrakeStateChanged_E4jek4do5   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1400
                  }
                  OnHandbrakeOn   =   [
                     "IntCheck_E4jek4do4/Input"
                  ]
                  __type   =   "BlueprintNodeOnHandbrakeStateChanged"
               }
               PlaySound_E4jek4do6   =   {
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
               GetTruckVelocity_E4jek4do7   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1500
                  }
                  GetLinearVelocity   =   [
                     "IntCheck_E4jek4do4/intToCheck/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               OnGearUpdate_Ec28eQ1Q   =   {
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
                     "PlaySound_3_Ec28eQ1Q2/Play"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               PlaySound_3_Ec28eQ1Q2   =   {
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
                        name   =   "vhc_body_gear_scout"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_Ec28eQ1Q3   =   {
                  viewData   =   {
                     x   =   4400
                     y   =   2150
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_3_Ec28eQ1Q2/emitterRef/cb",
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
               CloneSoundEmitter_EaebKJdM   =   {
                  viewData   =   {
                     x   =   4300
                     y   =   1650
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E4jek4do2/emitterRef/cb",
                     "PlaySound_E4jek4do3/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneAnim_Wipers_R1"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_EaebKJdM1   =   {
                  viewData   =   {
                     x   =   4300
                     y   =   1850
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_EaebOeck/emitterRef/cb",
                     "PlaySound_EaebOeck1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneAnim_Wipers_R3"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_EaebKWeN   =   {
                  viewData   =   {
                     x   =   4300
                     y   =   2050
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_EaebOj8I/emitterRef/cb",
                     "PlaySound_EaebOj8I1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneAnim_Wipers_R4"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_EaebOeck   =   {
                  viewData   =   {
                     x   =   6000
                     y   =   1650
                  }
                  OnSoundStart   =   [
                     "PlaySound_EaebOj8I/Play"
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
               PlaySound_EaebOeck1   =   {
                  viewData   =   {
                     x   =   6000
                     y   =   1850
                  }
                  OnSoundStart   =   [
                     "PlaySound_EaebOj8I1/Play"
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
               PlaySound_EaebOj8I   =   {
                  viewData   =   {
                     x   =   6700
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
               PlaySound_EaebOj8I1   =   {
                  viewData   =   {
                     x   =   6700
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
               PlaySound_Ea2a1D9o   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "Schedule_Ea2a1D9o2/Start"
                  ]
                  OnSoundEnd   =   [
                     "Schedule_Ea2a1D9o2/Stop"
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
               GetInfoElementCockpitForSoundWithSchedule_Ea2a1D9o1   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ea2a1D9o/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_Ea2a1D9o/Stop"
                  ]
                  nameBoneBro   =   "ctrl_steering_wheel"
                  isWheel   =   True
                  GetCurrentSteerSpeed   =   [
                     "SetSoundParameter_Ea2a1D9o3/valueRef/cb"
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
               Schedule_Ea2a1D9o2   =   {
                  viewData   =   {
                     x   =   5650
                     y   =   3550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_Ea2a1D9o3/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               SetSoundParameter_Ea2a1D9o3   =   {
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
               CloneSoundEmitter_Ea2a1D9o4   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea2a1D9o/emitterRef/cb",
                     "SetSoundParameter_Ea2a1D9o3/emitterRef/cb"
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
               GetInfoElementCockpitForSoundWithEvent_Ec2cXraX   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ec2cXraX1/Play"
                  ]
                  nameBoneBro   =   "ctrl_gear_stick_low"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_Ec2cXraX1   =   {
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
               CloneSoundEmitter_Ec2cXraX2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ec2cXraX1/emitterRef/cb"
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
                     x   =   8700
                     y   =   5100
                  }
                  OnEngineStarted   =   [
                     "VFXRestart_1/Input",
                     "VFXRestart_2/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown   =   {
                  viewData   =   {
                     x   =   8700
                     y   =   5250
                  }
                  OnEngineShutdown   =   [
                     "VFXStop/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               OnEngineAcceleration   =   {
                  viewData   =   {
                     x   =   8700
                     y   =   5650
                  }
                  OnAcceleration   =   [
                     "VFXRestart/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9nfAp6A/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse   =   {
                  viewData   =   {
                     x   =   8700
                     y   =   5850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineReverse   =   [
                     "VFXRestart/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9nfAp6A/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               VFXRestart   =   {
                  viewData   =   {
                     x   =   9150
                     y   =   5700
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_med_cars_acceleration_zikz_new"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_1   =   {
                  viewData   =   {
                     x   =   9150
                     y   =   5250
                  }
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop   =   {
                  viewData   =   {
                     x   =   9150
                     y   =   5350
                  }
                  OnExit   =   [
                     "VFXStop_E9nfAK8V/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_2   =   {
                  viewData   =   {
                     x   =   9150
                     y   =   5100
                  }
                  OnExit   =   [
                     "VFXRestart_E9nfzT8o/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_exhaust_med_cars_gas_zikz_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_E9nfzT8o   =   {
                  viewData   =   {
                     x   =   9700
                     y   =   5100
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_met_cars_neutral_zikz_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9nfAp6A   =   {
                  viewData   =   {
                     x   =   9150
                     y   =   5800
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_med_cars_acceleration_zikz_new"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXStop_E9nfAK8V   =   {
                  viewData   =   {
                     x   =   9700
                     y   =   5350
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_met_cars_neutral_zikz_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               OnEngineStarting_Ea9genav   =   {
                  viewData   =   {
                     x   =   8701.77
                     y   =   6099.421
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineStarting   =   [
                     "VFXRestart_Ea9genav1/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarting"
               }
               VFXRestart_Ea9genav1   =   {
                  viewData   =   {
                     x   =   9201.77
                     y   =   6099.421
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
            __type   =   "AutoWardenKochevnikMobNewReplicated"
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
      maxFuelTankVolume   =   1500
      startFuelTankVolume   =   1500
      fuelConsumption   =   0.8
      reverseFuelConsumptionCoeff   =   1.2
      lowRangeFuelConsumptionCoeff   =   1.4
   }
   prop_truck_constraint_view   =   {
      powerConstraints   =   [
         {
            constraintName   =   "hinge_vertical"
            states   =   {
               pause   =   {
                  isAngular   =   True
                  isPause   =   True
                  __type   =   "TruckPowerConstraintState"
               }
               up   =   {
                  isAngular   =   True
                  angleErrorDegree   =   1
                  targetAngle   =   -30
                  angularSpeed   =   8
                  __type   =   "TruckPowerConstraintState"
               }
               down   =   {
                  isAngular   =   True
                  angleErrorDegree   =   1
                  targetAngle   =   30
                  angularSpeed   =   8
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
         y   =   1.45
         z   =   1.65
         __type   =   "Vector3d"
      }
      chekerAttachBody   =   "BoneTractor_cdt"
      warningLevel   =   0.55
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
                  y   =   0.35
                  z   =   4.5
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
                  jointName   =   "cdt_12"
                  jointOffset   =   {
                     y   =   0.5
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
      defaultTracker   =   {
         __type   =   "Tracker"
      }
      markers   =   {
         RecoveryMarker   =   {
            marker   =   {
               assetPoolLink   =   "RecoveryTargetsMarkerPool"
               isCullByDistance   =   False
               isLimitBySafeZone   =   False
               isMouseEnabled   =   True
               __type   =   "UiMarker2D"
            }
            positionTracker   =   {
               __type   =   "Tracker"
            }
            viewController   =   {
               __type   =   "UiRecoveryMarkerController"
            }
            visibilityRules   =   {
               IsRecoveryMode   =   {
                  __type   =   "MarkerVisibilityRuleIsRecoveryMode"
               }
               IsRecoveryPointUnlocked   =   {
                  __type   =   "MarkerVisibilityRuleIsRecoveryPointUnlocked"
               }
               IsCurrentTruck   =   {
                  isInverted   =   True
                  __type   =   "MarkerVisibilityRuleIsCurrentTruck"
               }
            }
            __type   =   "UiUniversalMarker"
         }
         RecoveryOffscreenMarker   =   {
            marker   =   {
               assetPoolLink   =   "ObjectiveHudMarkerPool"
               isShowInView   =   False
               isShowOutOfView   =   True
               isCullByDistance   =   False
               __type   =   "UiMarker2D"
            }
            positionTracker   =   {
               __type   =   "Tracker"
            }
            viewController   =   {
               __type   =   "UiRecoveryOffscreenMarkerController"
            }
            visibilityRules   =   {
               IsRecoveryMode   =   {
                  __type   =   "MarkerVisibilityRuleIsRecoveryMode"
               }
               IsRecoveryPointUnlocked   =   {
                  __type   =   "MarkerVisibilityRuleIsRecoveryPointUnlocked"
               }
               IsCurrentTruck   =   {
                  isInverted   =   True
                  __type   =   "MarkerVisibilityRuleIsCurrentTruck"
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
      tag   =   "UID_MODULE_MOBILE_OPERATIONS_BASE"
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
         y   =   -0.66
         z   =   -0.12
         __type   =   "Vector3d"
      }
   }
   prop_pre_soft_keyframe_updater   =   {
      syncBodyNames   =   [
         "BoneTractor_cdt",
         "BoneHingeX_cdt",
         "BoneHingeY_cdt",
         "BoneHingeZ_cdt"
      ]
   }
   prop_truck_track   =   {
      tracks   =   [
         {
            section   =   {
               height   =   0.08
               tpl   =   "warden_kochevnikatv_track"
               segmentLength   =   0.2
               segmentBones   =   [
                  "bone0",
                  "bone1",
                  "bone2",
                  "bone3"
               ]
               __type   =   "TruckTrackSection"
            }
            parentTracker   =   {
               locator   =   "BoneTractor_cdt"
               __type   =   "Tracker"
            }
            decalDescIndex   =   0
            wheelIds   =   [
               0,
               1,
               2,
               3,
               4,
               5,
               6,
               7
            ]
            fakeWheelIds   =   [
               32,
               33
            ]
         },
         {
            section   =   {
               height   =   0.08
               tpl   =   "warden_kochevnikatv_track"
               segmentLength   =   0.2
               segmentBones   =   [
                  "bone0",
                  "bone1",
                  "bone2",
                  "bone3"
               ]
               __type   =   "TruckTrackSection"
            }
            parentTracker   =   {
               locator   =   "BoneTractor_cdt"
               __type   =   "Tracker"
            }
            decalDescIndex   =   0
            wheelIds   =   [
               8,
               9,
               10,
               11,
               12,
               13,
               14,
               15
            ]
            fakeWheelIds   =   [
               34,
               35
            ]
         },
         {
            section   =   {
               height   =   0.08
               tpl   =   "warden_kochevnikatv_track"
               segmentLength   =   0.2
               segmentBones   =   [
                  "bone0",
                  "bone1",
                  "bone2",
                  "bone3"
               ]
               __type   =   "TruckTrackSection"
            }
            parentTracker   =   {
               locator   =   "BoneHingeZ_cdt"
               __type   =   "Tracker"
            }
            decalDescIndex   =   0
            wheelIds   =   [
               16,
               17,
               18,
               19,
               20,
               21,
               22,
               23
            ]
            fakeWheelIds   =   [
               36,
               37
            ]
         },
         {
            section   =   {
               height   =   0.08
               tpl   =   "warden_kochevnikatv_track"
               segmentLength   =   0.2
               segmentBones   =   [
                  "bone0",
                  "bone1",
                  "bone2",
                  "bone3"
               ]
               __type   =   "TruckTrackSection"
            }
            parentTracker   =   {
               locator   =   "BoneHingeZ_cdt"
               __type   =   "Tracker"
            }
            decalDescIndex   =   0
            wheelIds   =   [
               24,
               25,
               26,
               27,
               28,
               29,
               30,
               31
            ]
            fakeWheelIds   =   [
               38,
               39
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
            bodyName   =   "BoneTractor_cdt"
            offsetInBodySpace   =   {
               x   =   1.377
               y   =   1.989
               z   =   -0.168
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTractor_cdt"
            offsetInBodySpace   =   {
               x   =   -1.377
               y   =   1.989
               z   =   -0.168
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneHingeZ_cdt"
            offsetInBodySpace   =   {
               x   =   1.173
               y   =   2.212
               z   =   -1.408
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneHingeZ_cdt"
            offsetInBodySpace   =   {
               x   =   -1.173
               y   =   2.212
               z   =   -1.408
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneHingeZ_cdt"
            offsetInBodySpace   =   {
               y   =   -0.048
               z   =   -6.886
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneHingeZ_cdt"
            offsetInBodySpace   =   {
               x   =   1.241
               y   =   1.661
               z   =   -3.202
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneHingeZ_cdt"
            offsetInBodySpace   =   {
               x   =   -1.241
               y   =   1.661
               z   =   -4.81
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTractor_cdt"
            offsetInBodySpace   =   {
               x   =   0.422
               y   =   0.142
               z   =   4.095
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTractor_cdt"
            offsetInBodySpace   =   {
               x   =   -0.422
               y   =   0.142
               z   =   4.095
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTractor_cdt"
            offsetInBodySpace   =   {
               x   =   -1.56
               y   =   1.152
               z   =   2.615
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTractor_cdt"
            offsetInBodySpace   =   {
               x   =   1.56
               y   =   1.152
               z   =   2.615
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTractor_cdt"
            offsetInBodySpace   =   {
               x   =   1.517
               y   =   0.452
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneHingeZ_cdt"
            offsetInBodySpace   =   {
               x   =   1.455
               y   =   0.422
               z   =   -3.602
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneTractor_cdt"
            offsetInBodySpace   =   {
               x   =   -1.517
               y   =   0.452
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneHingeZ_cdt"
            offsetInBodySpace   =   {
               x   =   -1.455
               y   =   0.422
               z   =   -3.602
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
            y   =   0.35
            z   =   4.5
            __type   =   "Vector3d"
         }
         attachmentBone   =   "_third_person_camera"
         minSpeedToFollow   =   2
         firstLaunchCameraAngles   =   {
            x   =   20
            __type   =   "Vector2d"
         }
         followChangeDirectionSpeedThreshold   =   2
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
               weight   =   3
            },
            {
               angles   =   {
                  y   =   320
                  __type   =   "Vector2d"
               }
               position   =   {
                  y   =   3
                  z   =   4.5
                  __type   =   "Vector3d"
               }
               activationAngle   =   90
               activationDistance   =   36
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
         __type   =   "RbVehicleCameraParams"
      }
   }
   prop_truck_camera_cockpit_preset   =   {
      preset   =   {
         cameraMouseSensitivity   =   0.25
         eyeOffset   =   {
            x   =   0
            y   =   0.04
            z   =   -0.1
            __type   =   "Vector3d"
         }
         rotationLimitsX   =   {
            x   =   -45
            y   =   45
            __type   =   "Vector2dRnd"
         }
         rotationLimitsY   =   {
            x   =   -100
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
            transitionStart   =   80
            transitionEnd   =   170
            baseRotation   =   {
               __type   =   "Vector2dRnd"
            }
            eyeOffset   =   {
               x   =   0.6
               y   =   -0.2
               z   =   0.25
               __type   =   "Vector3d"
            }
            rollAngle   =   -10
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
         __type   =   "RbCockpitCameraParams"
      }
   }
   prop_truck_cockpit_under_water_checker   =   {
      vehicleChecker   =   {
         checkerAttachBody   =   "_cockpit_camera"
         points   =   {
            Default_Point   =   {
               x   =   -2.3
               y   =   -0.2
               z   =   0.6
               __type   =   "Vector3d"
            }
            Vector3d   =   {
               x   =   0.3
               y   =   -0.2
               z   =   0.6
            }
            Vector3d_1   =   {
               x   =   -2.3
               y   =   -0.2
               z   =   -1
               __type   =   "Vector3d"
            }
            Vector3d_2   =   {
               x   =   0.3
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
               "BoneHingeX_cdt",
               "BoneIK_3_a",
               "BoneIK_3_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -1000000
                  max   =   1000000
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
                  offset   =   [
                     0,
                     0,
                     0
                  ]
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneHingeY_cdt"
                  bodyIKName   =   "BoneIK_3_b"
                  offsetIk   =   [
                     0,
                     0,
                     0
                  ]
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHingeX_cdt",
               "BoneIK_2_a",
               "BoneIK_2_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     1,
                     0
                  ]
                  min   =   -1000000
                  max   =   1000000
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
                  offset   =   [
                     0,
                     0,
                     0
                  ]
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneHingeY_cdt"
                  bodyIKName   =   "BoneIK_2_b"
                  offsetIk   =   [
                     0,
                     0,
                     0
                  ]
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTractor_cdt",
               "BoneIK_1_a",
               "BoneIK_1_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     1,
                     0,
                     0
                  ]
                  min   =   -1000000
                  max   =   1000000
               },
               {
                  type   =   "PRISMATIC"
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
                  offset   =   [
                     0,
                     0,
                     0
                  ]
                  min   =   -1
                  max   =   1
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneHingeX_cdt"
                  bodyIKName   =   "BoneIK_1_b"
                  offsetIk   =   [
                     0,
                     0,
                     0
                  ]
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTractor_cdt",
               "Bone_IK_sus_tractor_lft_01_a",
               "Bone_IK_sus_tractor_lft_01_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_tractor_1"
                  bodyIKName   =   "Bone_IK_sus_tractor_lft_01_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTractor_cdt",
               "Bone_IK_sus_tractor_lft_02_a",
               "Bone_IK_sus_tractor_lft_02_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_tractor_2"
                  bodyIKName   =   "Bone_IK_sus_tractor_lft_02_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTractor_cdt",
               "Bone_IK_sus_tractor_lft_03_a",
               "Bone_IK_sus_tractor_lft_03_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_tractor_3"
                  bodyIKName   =   "Bone_IK_sus_tractor_lft_03_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTractor_cdt",
               "Bone_IK_sus_tractor_lft_04_a",
               "Bone_IK_sus_tractor_lft_04_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_tractor_4"
                  bodyIKName   =   "Bone_IK_sus_tractor_lft_04_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTractor_cdt",
               "Bone_IK_sus_tractor_lft_05_a",
               "Bone_IK_sus_tractor_lft_05_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_tractor_5"
                  bodyIKName   =   "Bone_IK_sus_tractor_lft_05_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTractor_cdt",
               "Bone_IK_sus_tractor_lft_06_a",
               "Bone_IK_sus_tractor_lft_06_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_tractor_6"
                  bodyIKName   =   "Bone_IK_sus_tractor_lft_06_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTractor_cdt",
               "Bone_IK_sus_tractor_rht_01_a",
               "Bone_IK_sus_tractor_rht_01_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_tractor_1"
                  bodyIKName   =   "Bone_IK_sus_tractor_rht_01_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTractor_cdt",
               "Bone_IK_sus_tractor_rht_02_a",
               "Bone_IK_sus_tractor_rht_02_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_tractor_2"
                  bodyIKName   =   "Bone_IK_sus_tractor_rht_02_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTractor_cdt",
               "Bone_IK_sus_tractor_rht_03_a",
               "Bone_IK_sus_tractor_rht_03_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_tractor_3"
                  bodyIKName   =   "Bone_IK_sus_tractor_rht_03_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTractor_cdt",
               "Bone_IK_sus_tractor_rht_04_a",
               "Bone_IK_sus_tractor_rht_04_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_tractor_4"
                  bodyIKName   =   "Bone_IK_sus_tractor_rht_04_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTractor_cdt",
               "Bone_IK_sus_tractor_rht_05_a",
               "Bone_IK_sus_tractor_rht_05_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_tractor_5"
                  bodyIKName   =   "Bone_IK_sus_tractor_rht_05_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneTractor_cdt",
               "Bone_IK_sus_tractor_rht_06_a",
               "Bone_IK_sus_tractor_rht_06_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_tractor_6"
                  bodyIKName   =   "Bone_IK_sus_tractor_rht_06_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHingeZ_cdt",
               "Bone_IK_sus_trailer_lft_01_a",
               "Bone_IK_sus_trailer_lft_01_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_trailer_1"
                  bodyIKName   =   "Bone_IK_sus_trailer_lft_01_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHingeZ_cdt",
               "Bone_IK_sus_trailer_lft_02_a",
               "Bone_IK_sus_trailer_lft_02_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_trailer_2"
                  bodyIKName   =   "Bone_IK_sus_trailer_lft_02_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHingeZ_cdt",
               "Bone_IK_sus_trailer_lft_03_a",
               "Bone_IK_sus_trailer_lft_03_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_trailer_3"
                  bodyIKName   =   "Bone_IK_sus_trailer_lft_03_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHingeZ_cdt",
               "Bone_IK_sus_trailer_lft_04_a",
               "Bone_IK_sus_trailer_lft_04_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_trailer_4"
                  bodyIKName   =   "Bone_IK_sus_trailer_lft_04_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHingeZ_cdt",
               "Bone_IK_sus_trailer_lft_05_a",
               "Bone_IK_sus_trailer_lft_05_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_trailer_5"
                  bodyIKName   =   "Bone_IK_sus_trailer_lft_05_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHingeZ_cdt",
               "Bone_IK_sus_trailer_lft_06_a",
               "Bone_IK_sus_trailer_lft_06_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "l_wheel_trailer_6"
                  bodyIKName   =   "Bone_IK_sus_trailer_lft_06_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHingeZ_cdt",
               "Bone_IK_sus_trailer_rht_01_a",
               "Bone_IK_sus_trailer_rht_01_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_trailer_1"
                  bodyIKName   =   "Bone_IK_sus_trailer_rht_01_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHingeZ_cdt",
               "Bone_IK_sus_trailer_rht_02_a",
               "Bone_IK_sus_trailer_rht_02_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_trailer_2"
                  bodyIKName   =   "Bone_IK_sus_trailer_rht_02_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHingeZ_cdt",
               "Bone_IK_sus_trailer_rht_03_a",
               "Bone_IK_sus_trailer_rht_03_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_trailer_3"
                  bodyIKName   =   "Bone_IK_sus_trailer_rht_03_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHingeZ_cdt",
               "Bone_IK_sus_trailer_rht_04_a",
               "Bone_IK_sus_trailer_rht_04_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_trailer_4"
                  bodyIKName   =   "Bone_IK_sus_trailer_rht_04_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHingeZ_cdt",
               "Bone_IK_sus_trailer_rht_05_a",
               "Bone_IK_sus_trailer_rht_05_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_trailer_5"
                  bodyIKName   =   "Bone_IK_sus_trailer_rht_05_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneHingeZ_cdt",
               "Bone_IK_sus_trailer_rht_06_a",
               "Bone_IK_sus_trailer_rht_06_b"
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
                  min   =   -0.2
                  max   =   0.2
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "r_wheel_trailer_6"
                  bodyIKName   =   "Bone_IK_sus_trailer_rht_06_b"
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
                        3.078,
                        1.386,
                        2.993
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
                        2.79,
                        0.749,
                        0.5
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
               waterParams   =   {
                  needToSpawnParticles   =   False
                  particlesSpawnFrequencyScale   =   2
               }
               grassParams   =   {
                  need_fast   =   False
                  need_lasting   =   True
                  influence   =   2
                  speedMultiplier   =   1
               }
            },
            {
               name   =   "BoxCapsule2"
               bone   =   "_BoxCapsule2"
               geom   =   {
                  box   =   {
                     size   =   [
                        3.046,
                        1.913,
                        4.316
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
                        3.07,
                        1.433,
                        0.914
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
               waterParams   =   {
                  needToSpawnParticles   =   True
                  particlesVelocityScale   =   1.2
                  particlesSpawnFrequencyScale   =   2
               }
               grassParams   =   {
                  need_fast   =   False
                  need_lasting   =   True
                  influence   =   2
                  speedMultiplier   =   1
               }
            },
            {
               name   =   "BoxCapsule4"
               bone   =   "_BoxCapsule4"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.227,
                        0.812,
                        6.209
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
               name   =   "BoxCapsule5"
               bone   =   "_BoxCapsule5"
               boneOffset   =   [
                  0,
                  -0.4,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        2.951,
                        2.7,
                        7.174
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
               name   =   "BoxCapsule6"
               bone   =   "_BoxCapsule6"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.225,
                        0.824,
                        6.66
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "BoxCapsule7"
               bone   =   "_BoxCapsule"
               boneOffset   =   [
                  -1.02,
                  -1.4,
                  -2.66
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.108,
                        0.836,
                        7.123
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   10
               waterParams   =   {
                  influence   =   0
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
               name   =   "BoxCapsule8"
               bone   =   "_BoxCapsule"
               boneOffset   =   [
                  1.02,
                  -1.4,
                  -2.66
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.108,
                        0.836,
                        7.123
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   10
               waterParams   =   {
                  influence   =   0
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
               name   =   "BoxCapsule9"
               bone   =   "_BoxCapsule"
               boneOffset   =   [
                  2.16,
                  -1.5,
                  -1.4
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
                  influence   =   0.5
                  fadeDistance   =   0.5
                  speedMultiplier   =   0.4
               }
            },
            {
               name   =   "BoxCapsule10"
               bone   =   "_BoxCapsule"
               boneOffset   =   [
                  -2.16,
                  -1.5,
                  -1.4
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
                  influence   =   0.5
                  fadeDistance   =   0.5
                  speedMultiplier   =   0.4
               }
            },
            {
               name   =   "BoxCapsule11"
               bone   =   "_BoxCapsule5"
               boneOffset   =   [
                  2.16,
                  -1.9,
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
                  influence   =   0.5
                  fadeDistance   =   0.5
                  speedMultiplier   =   0.4
               }
            },
            {
               name   =   "BoxCapsule12"
               bone   =   "_BoxCapsule5"
               boneOffset   =   [
                  -2.16,
                  -1.9,
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
                  influence   =   0.5
                  fadeDistance   =   0.5
                  speedMultiplier   =   0.4
               }
            },
            {
               name   =   "shadow_01"
               bone   =   "_BoxCapsule4"
               boneOffset   =   [
                  0,
                  0.88,
                  0.6
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   5.54
                     radius   =   0.91
                     scaleX   =   1.6
                  }
                  capsule   =   {
                     height   =   4.86
                     radius   =   1.87
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_02"
               bone   =   "_BoxCapsule5"
               boneOffset   =   [
                  0,
                  -0.4,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   4.27
                     radius   =   1.27
                     scaleX   =   1.17
                  }
                  capsule   =   {
                     height   =   3.95
                     radius   =   1.870001
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_05"
               bone   =   "_BoxCapsule4"
               boneOffset   =   [
                  0.95,
                  -0.3,
                  0.1
               ]
               boneRotation   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   5.15
                     radius   =   0.54
                     scaleX   =   1
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
               name   =   "shadow_06"
               bone   =   "_BoxCapsule4"
               boneOffset   =   [
                  -0.95,
                  -0.3,
                  0.1
               ]
               boneRotation   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   5.15
                     radius   =   0.54
                     scaleX   =   1
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
               name   =   "shadow_07"
               bone   =   "_BoxCapsule5"
               boneOffset   =   [
                  -0.95,
                  -1.72,
                  0
               ]
               boneRotation   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   5.15
                     radius   =   0.54
                     scaleX   =   1
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
               bone   =   "_BoxCapsule5"
               boneOffset   =   [
                  0.95,
                  -1.72,
                  0
               ]
               boneRotation   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   5.15
                     radius   =   0.54
                     scaleX   =   1
                  }
                  capsule   =   {
                     height   =   3.87
                     radius   =   0.66
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
            fov   =   50
            centerLocatorName   =   "pip_camera_left"
            objName   =   "_hp_cab_interior_mirror_left"
            pipCameraMaterialName   =   "truck_mirror"
            __type   =   "MirrorParams"
         }
         mirror_right   =   {
            fov   =   50
            centerLocatorName   =   "pip_camera_right"
            objName   =   "_hp_cab_interior_mirror_right"
            pipCameraMaterialName   =   "truck_mirror"
            __type   =   "MirrorParams"
         }
         mirror_rear   =   {
            fov   =   55
            centerLocatorName   =   "pip_camera_rear"
            objName   =   "_hp_cab_interior_mirror_rear"
            pipCameraMaterialName   =   "truck_mirror"
            __type   =   "MirrorParams"
         }
      }
   }
   prop_usable   =   {
      smartsEntryPoints   =   {
         ResourceStorage   =   {
            checkers   =   {
               DistanceChecker   =   {
                  distance   =   20
                  __type   =   "UsableCheckerDistance"
               }
            }
            __type   =   "SmartEntryPointMobileResourceStorage"
         }
         MalfuctionSmartPoint   =   {
            __type   =   "SmartEntryPointMalfunction"
         }
      }
   }
   prop_mobile_resource_storage   =   {
      groundPlacingOffset   =   0
      resZoneActivationDelay   =   1000
      validationZoneSize   =   {
         x   =   5
         y   =   5
         z   =   24
         __type   =   "Vector3d"
      }
      maxZoneHeightDiff   =   3.5
      intakeZoneDesc   =   {
         type   =   {
            properties   =   {
               prop_decal   =   {
                  visuals   =   {
                     tex   =   {
                        albedo   =   "bridgebuilding_texture"
                     }
                     color   =   [
                        30,
                        251,
                        186,
                        22
                     ]
                  }
               }
               prop_mobile_zone   =   {
                  borderDesc   =   {
                     type   =   {
                        properties   =   {
                           geom   =   {
                              geomColor   =   [
                                 30,
                                 251,
                                 186,
                                 22
                              ]
                           }
                        }
                        __type   =   "mobile_border_actor"
                     }
                     __type   =   "IactorDesc"
                  }
               }
            }
            __type   =   "mobile_zone_actor"
         }
         __type   =   "IactorDesc"
      }
      intakeOffset   =   {
         x   =   9
         z   =   -7
         __type   =   "Vector3d"
      }
      spawnZoneDesc   =   {
         type   =   {
            properties   =   {
               prop_decal   =   {
                  visuals   =   {
                     tex   =   {
                        albedo   =   "resourcesspawn_texture"
                     }
                     color   =   [
                        30,
                        251,
                        186,
                        22
                     ]
                  }
               }
               prop_mobile_zone   =   {
                  borderDesc   =   {
                     type   =   {
                        properties   =   {
                           geom   =   {
                              geomColor   =   [
                                 30,
                                 251,
                                 186,
                                 22
                              ]
                           }
                        }
                        __type   =   "mobile_border_actor"
                     }
                     __type   =   "IactorDesc"
                  }
               }
            }
            __type   =   "mobile_zone_actor"
         }
         __type   =   "IactorDesc"
      }
      spawnOffset   =   {
         x   =   9
         z   =   7
         __type   =   "Vector3d"
      }
   }
   prop_field_service_truck   =   {
   }
   prop_mobile_recover_target   =   {
      targetName   =   "UID_MODULE_MOBILE_OPERATIONS_BASE"
      targetType   =   "RECOVERY_COINS"
      cost   =   1
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
      forwardDelay   =   0.1
      backwardDelay   =   0.1
   }
   prop_phys_substance_target   =   {
      waterDragMultiplier   =   4.25
      oilDragMultiplier   =   8.5
      bodies   =   [
         "BoneTractor_cdt",
         "BoneHingeZ_cdt"
      ]
   }
   prop_truck_axles_controller   =   {
      independentAxles   =   [
         {
            frame   =   "l_wheel_tractor_1"
            singleWheelID   =   -1
         },
         {
            frame   =   "l_wheel_tractor_2"
            singleWheelID   =   -1
         },
         {
            frame   =   "l_wheel_tractor_3"
            singleWheelID   =   -1
         },
         {
            frame   =   "l_wheel_tractor_4"
            singleWheelID   =   -1
         },
         {
            frame   =   "l_wheel_tractor_5"
            singleWheelID   =   -1
         },
         {
            frame   =   "l_wheel_tractor_6"
            singleWheelID   =   -1
         },
         {
            frame   =   "r_wheel_tractor_1"
            singleWheelID   =   -1
         },
         {
            frame   =   "r_wheel_tractor_2"
            singleWheelID   =   -1
         },
         {
            frame   =   "r_wheel_tractor_3"
            singleWheelID   =   -1
         },
         {
            frame   =   "r_wheel_tractor_4"
            singleWheelID   =   -1
         },
         {
            frame   =   "r_wheel_tractor_5"
            singleWheelID   =   -1
         },
         {
            frame   =   "r_wheel_tractor_6"
            singleWheelID   =   -1
         },
         {
            frame   =   "l_wheel_trailer_1"
            singleWheelID   =   -1
         },
         {
            frame   =   "l_wheel_trailer_2"
            singleWheelID   =   -1
         },
         {
            frame   =   "l_wheel_trailer_3"
            singleWheelID   =   -1
         },
         {
            frame   =   "l_wheel_trailer_4"
            singleWheelID   =   -1
         },
         {
            frame   =   "l_wheel_trailer_5"
            singleWheelID   =   -1
         },
         {
            frame   =   "l_wheel_trailer_6"
            singleWheelID   =   -1
         },
         {
            frame   =   "r_wheel_trailer_1"
            singleWheelID   =   -1
         },
         {
            frame   =   "r_wheel_trailer_2"
            singleWheelID   =   -1
         },
         {
            frame   =   "r_wheel_trailer_3"
            singleWheelID   =   -1
         },
         {
            frame   =   "r_wheel_trailer_4"
            singleWheelID   =   -1
         },
         {
            frame   =   "r_wheel_trailer_5"
            singleWheelID   =   -1
         },
         {
            frame   =   "r_wheel_trailer_6"
            singleWheelID   =   -1
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
                  boneName   =   "BoneTractor_cdt"
                  weight   =   1
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneHingeX_cdt"
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
                  boneName   =   "BoneHingeX_cdt"
                  weight   =   1
               }
            ]
            bonesB   =   [
               {
                  boneName   =   "BoneHingeY_cdt"
                  weight   =   1
               }
            ]
            shaftFasteningPositionA   =   "shaft_2_a"
            shaftFasteningPositionB   =   "shaft_2_b"
         }
      ]
   }
   prop_phys_shape_checker   =   {
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
            x   =   -0.387
            y   =   -0.254
            z   =   3.382
         },
         {
            x   =   0.397
            y   =   -0.254
            z   =   3.382
         }
      ]
      strapGroups   =   [
         {
            bone   =   "BoneHingeZ_cdt"
            points   =   [
               {
                  x   =   -0.752
                  y   =   0.168
                  z   =   -6.843
               },
               {
                  x   =   0.74
                  y   =   0.18
                  z   =   -6.851
               }
            ]
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
            nameBone   =   "ctrl_dashboard_speed"
            axis   =   "Y"
            maxRotationAngle   =   275
            dashboardSubtype   =   "SPEED"
            __type   =   "DashboardElementCockpit"
         }
         "1"   =   {
            nameBone   =   "ctrl_dashboard_rpm"
            axis   =   "Y"
            maxRotationAngle   =   145
            dashboardSubtype   =   "RPM"
            __type   =   "DashboardElementCockpit"
         }
         "2"   =   {
            nameBone   =   "ctrl_dashboard_fuel"
            axis   =   "Y"
            maxRotationAngle   =   95
            dashboardSubtype   =   "FUEL"
            __type   =   "DashboardElementCockpit"
         }
         "3"   =   {
            nameBone   =   "ctrl_dashboard_engine_1"
            axis   =   "Y"
            maxRotationAngle   =   30
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "4"   =   {
            nameBone   =   "ctrl_dashboard_engine_2"
            axis   =   "Y"
            maxRotationAngle   =   40
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "5"   =   {
            nameBone   =   "ctrl_dashboard_engine_3"
            axis   =   "Y"
            maxRotationAngle   =   40
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "6"   =   {
            nameBone   =   "ctrl_dashboard_engine_4"
            axis   =   "Y"
            maxRotationAngle   =   15
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "7"   =   {
            nameBone   =   "ctrl_dashboard_engine_5"
            axis   =   "Y"
            maxRotationAngle   =   30
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "8"   =   {
            nameBone   =   "ctrl_dashboard_engine_6"
            axis   =   "Y"
            maxRotationAngle   =   45
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "9"   =   {
            nameBone   =   "ctrl_dashboard_engine_7"
            axis   =   "Y"
            maxRotationAngle   =   135
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "10"   =   {
            nameBone   =   "ctrl_dashboard_engine_8"
            axis   =   "Y"
            maxRotationAngle   =   80
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "11"   =   {
            nameBone   =   "ctrl_dashboard_engine_9"
            axis   =   "Y"
            maxRotationAngle   =   60
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "12"   =   {
            nameBone   =   "ctrl_dashboard_engine_10"
            axis   =   "Y"
            maxRotationAngle   =   80
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "13"   =   {
            nameBone   =   "ctrl_pedal_drive"
            axis   =   "Y"
            maxRotationAngle   =   10
            dashboardSubtype   =   "RPM"
            damping   =   0.1
            increase   =   -10
            __type   =   "DashboardElementCockpit"
         }
         "14"   =   {
            nameBone   =   "ctrl_steering_wheel"
            axis   =   "Y"
            minRotationAngle   =   -360
            maxRotationAngle   =   360
            steeringSubtype   =   "WHEEL"
            __type   =   "SteerigElementCockpit"
         }
         "15"   =   {
            nameBone   =   "ctrl_gear_stick_low"
            axis   =   "Y"
            maxRotationAngle   =   30
            speed   =   90
            switcherSubtype   =   "LOW_GEAR"
            __type   =   "SwitcherElementCockpit"
         }
         "16"   =   {
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
      }
   }
   prop_truck_view_actions_mapper   =   {
      firstControlSectionUiName   =   "UID_HUD_FIRST_SECTION_MOBILE_BASE_FUNCTIONS"
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
         uiActionDescription   =   "UID_FIELD_SERVICE_TRUCK_WIDGET_ACTIVATION"
         namedActionType   =   "ACTIVATE_FIELD_SERVICE_RECOVERY"
         __type   =   "ActionMapping"
      }
      secondAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         __type   =   "ActionMapping"
      }
      thirdAction   =   {
         actionMappingType   =   "GENERIC_ACTION"
         uiActionDescription   =   "UID_HUD_ACTIVATE_OBJECTIVE_SCANNER"
         namedActionType   =   "ACTIVATE_OBJECTIVE_SCANNER"
         canWorkWithEngineOff   =   True
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
   prop_domain_tracking_by_obb   =   {
   }
   prop_camera_equipment_preset   =   {
      preset   =   {
         cameraFocusPointOffset   =   {
            y   =   0.5
            __type   =   "Vector3d"
         }
         attachmentBone   =   "cdt_12"
         minSpeedToFollow   =   2
         firstLaunchCameraAngles   =   {
            __type   =   "null"
         }
         followChangeDirectionSpeedThreshold   =   2
         scrollPoints   =   {
            "0"   =   {
               distance   =   12
               followTerrainOffset   =   3.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "1"   =   {
               distance   =   16
               followTerrainOffset   =   4.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "2"   =   {
               distance   =   20
               followTerrainOffset   =   5.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "3"   =   {
               distance   =   24
               followTerrainOffset   =   6.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "4"   =   {
               distance   =   28
               followTerrainOffset   =   7.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "5"   =   {
               distance   =   32
               followTerrainOffset   =   8.5
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
               activationDistance   =   36
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
      velocityScale   =   1.4
      stuckVelocityThreshold   =   2
      stuckScaleChange   =   0.5
      masterConnectType   =   "CENTER"
      masterOffset   =   {
         y   =   1
         z   =   1.5
         __type   =   "Vector3d"
      }
      slaveConnectType   =   "WINCH_POINT"
      slaveOffset   =   {
         y   =   1
         __type   =   "Vector3d"
      }
      slaveLocator   =   "BoneTractor_cdt"
      isCaterpillars   =   True
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
            shakerBone   =   "BoneTractor_cdt"
            frequency   =   70
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
               0.000706,
               0.258137,
               0.409916,
               0.990926,
               1.004937,
               0.540126
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
               0.00107,
               0.164292,
               0.400971,
               1.029463,
               0.998354,
               0.51036
            ]
            shakeOnStartTimeMs   =   0
            dampingStep   =   15
            frequencyMultiplier   =   [
               0.001051,
               0.393002,
               0.378143,
               0.984934,
               0.997887,
               0.002651
            ]
         }
         EngineShutdown   =   {
            shakerBone   =   "BoneTractor_cdt"
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
               0.309641,
               0.991075,
               1,
               0.009282
            ]
         }
         Cabin   =   {
            shakerBone   =   "CabineShaker"
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
         Exhaust_right   =   {
            shakerBone   =   "Shaker_Exhaust_right"
            frequency   =   0.5
            maxAngleOffsetScale   =   1
            backAngleOffsetScale   =   0.5
            minAngle   =   [
               0,
               0,
               1
            ]
            maxAngle   =   [
               0,
               0,
               -1
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
         Exhaust_left   =   {
            shakerBone   =   "Shaker_Exhaust_left"
            frequency   =   0.5
            maxAngleOffsetScale   =   1
            backAngleOffsetScale   =   0.5
            minAngle   =   [
               0,
               0,
               1
            ]
            maxAngle   =   [
               0,
               0,
               -1
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
      searchWaveSpeed   =   15
      resourcesDisplayDuration   =   5
      resourcesHighlightEmissive   =   8
      objectiveScanner   =   {
         center   =   {
            posOffset   =   {
               __type   =   "Vector3d"
            }
            __type   =   "Tracker"
         }
         radius   =   50
         __type   =   "ScannerTag"
      }
      scannerVfxActorDesc   =   {
         type   =   {
            __type   =   "sfx_radar_objective_sphere"
         }
         __type   =   "IactorDesc"
      }
      vfxActorOffset   =   {
         y   =   0.6
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
               "reverse_lights"
            ]
            __type   =   "ReverseHeadlights"
         }
         "3"   =   {
            defaultName   =   "default"
            lightName   =   "lights_emissive"
            geomNames   =   [
               "marker_lights",
               "marker_lights_trailer"
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
            name   =   "mirror_left_case"
            angleRotateX   =   4.15
            angleRotateY   =   2.9
         },
         {
            name   =   "mirror_right_case"
            angleRotateX   =   4.25
            angleRotateY   =   -2.9
         },
         {
            name   =   "mirror_rear_case"
            angleRotateX   =   2.8
            angleRotateY   =   -2.5
         }
      ]
   }
   prop_truck_bone_locator   =   {
      bones   =   [
         {
            nameBoneSkinning   =   "Mirror_front_rht"
            parentBones   =   [
               {
                  name   =   "CabineShaker"
                  weight   =   1
               }
            ]
         },
         {
            nameBoneSkinning   =   "Mirror_front_lft"
            parentBones   =   [
               {
                  name   =   "CabineShaker"
                  weight   =   1
               }
            ]
         },
         {
            nameBoneSkinning   =   "BoneAnim_Wipers_R1"
            parentBones   =   [
               {
                  name   =   "CabineShaker"
                  weight   =   1
               }
            ]
         },
         {
            nameBoneSkinning   =   "BoneAnim_Wipers_R3"
            parentBones   =   [
               {
                  name   =   "CabineShaker"
                  weight   =   1
               }
            ]
         },
         {
            nameBoneSkinning   =   "BoneAnim_Wipers_R4"
            parentBones   =   [
               {
                  name   =   "CabineShaker"
                  weight   =   1
               }
            ]
         },
         {
            nameBoneSkinning   =   "BoneSunshield_cdt"
            parentBones   =   [
               {
                  name   =   "CabineShaker"
                  weight   =   1
               }
            ]
         }
      ]
   }
}
__type   =   "truck_view"
