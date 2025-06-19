properties   =   {
   geom   =   {
      nameTpl   =   "vostok_tk53krot"
   }
   prop_truck_view_controller   =   {
      engineFiringDelay   =   1000
   }
   prop_truck_view   =   {
      truckName   =   "vostok_tk53krot_cable_layer_old"
      truckType   =   "tracked_heavy"
      truckVisibilityInFogOfWar   =   60
   }
   prop_truck_rb   =   {
      suspensionSet   =   {
         front   =   {
            min   =   -0.15
            max   =   0
            strength   =   0.9
            damping   =   0.85
         }
         rearDiffers   =   True
         rear   =   {
            min   =   -0.15
            max   =   0.15
            height   =   0.1
            strength   =   0.06
            damping   =   0.2
         }
      }
      suspensionAxleCollection   =   [
         {
            min   =   -0.1
            max   =   0
            strength   =   0.9
            damping   =   0.85
         },
         {
            min   =   -0.15
            max   =   0.1
            height   =   0.12
            strength   =   0.02
            damping   =   0.2
         },
         {
            min   =   -0.15
            max   =   0
            strength   =   0.015
            damping   =   0.2
         }
      ]
      suspensionCollectionMap   =   {
         FrontRear   =   {
            __value   =   0
         }
         Middle   =   {
            __value   =   1
         }
         FakeFrontRear   =   {
            __value   =   2
         }
      }
      engine   =   {
         params   =   {
            torque   =   400000
            brakesDelay   =   0.5
            maxDeltaAngVel   =   0.001
            responsiveness   =   0.65
            __type   =   "TruckEngineParams"
         }
         __type   =   "TruckEngine"
      }
      gearbox   =   {
         params   =   {
            gears   =   [
               {
                  sslModule   =   "physics.truck.truck_components"
                  angularVelocity   =   0.25
                  gearRatio   =   4.2
                  targetSpeedRangeKmh   =   {
                     y   =   6
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   1.5
                  gearRatio   =   3.5
                  targetSpeedRangeKmh   =   {
                     x   =   6
                     y   =   11
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   4
                  gearRatio   =   2.7
                  targetSpeedRangeKmh   =   {
                     x   =   11
                     y   =   18
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   5
                  gearRatio   =   2.3
                  targetSpeedRangeKmh   =   {
                     x   =   18
                     y   =   30
                     __type   =   "Vector2dRnd"
                  }
               }
            ]
            reverseGear   =   {
               angularVelocity   =   0.15
               __type   =   "TruckSingleGearParams"
            }
            highGear   =   {
               angularVelocity   =   4
               gearRatio   =   4.4
               __type   =   "TruckSingleGearParams"
            }
            lowRangeGear   =   {
               angularVelocity   =   0.095
               gearRatio   =   4.4
               __type   =   "TruckSingleGearParams"
            }
            isLowRangeModeReverseEnabled   =   True
            isLowRangeModeClutchingEnabled   =   False
            defaultGearSwitchDelay   =   0.325
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
      pedalsResponsiveness   =   0.6
      isNeutralGearWheelResistanceEnabled   =   False
      isReverseWheelResistanceEnabled   =   True
      trackControls   =   {
         steeringInputToInnerTrackTorqueMult   =   {
            spline   =   [
               0,
               1,
               0.15,
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
            0.7,
            0.5,
            0.02,
            1,
            0.02
         ]
         __type   =   "SplineCurve1d"
      }
      wheelSlotWithDescs   =   [
         {
            geomName   =   "roller_left0"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "FrontWheel"
         },
         {
            geomName   =   "roller_left1"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "roller_left2"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "roller_left3"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheelSounding"
         },
         {
            geomName   =   "roller_left4"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "roller_left5"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "roller_left6"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "RearWheel"
         },
         {
            geomName   =   "roller_right0"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "FrontWheel"
         },
         {
            geomName   =   "roller_right1"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "roller_right2"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "roller_right3"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheelSounding"
         },
         {
            geomName   =   "roller_right4"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "roller_right5"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "MiddleWheel"
         },
         {
            geomName   =   "roller_right6"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   0
            editableWheel   =   "RearWheel"
         },
         {
            geomName   =   "fake_roller_left_0"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_roller_left_1"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_roller_left_2"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_roller_right_0"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_roller_right_1"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   1
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_roller_right_2"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            suspensionCollectionAxleIndex   =   2
            editableWheel   =   "FakeWheel"
         }
      ]
      wheelsWithTrail   =   {
         roller_left1   =   {
            __type   =   "WheelTrailDesc"
         }
         roller_right1   =   {
            __type   =   "WheelTrailDesc"
         }
         roller_left5   =   {
            isRear   =   True
            __type   =   "WheelTrailDesc"
         }
         roller_right5   =   {
            isRear   =   True
            __type   =   "WheelTrailDesc"
         }
      }
      wheelPool   =   {
         FrontWheel   =   {
            __value   =   "auto_wheel_vostok_tk53krot_cable_layer_old_frontwheel"
         }
         MiddleWheel   =   {
            __value   =   "auto_wheel_vostok_tk53krot_cable_layer_old_middlewheel"
         }
         RearWheel   =   {
            __value   =   "auto_wheel_vostok_tk53krot_cable_layer_old_rearwheel"
         }
         FakeWheel   =   {
            __value   =   "auto_wheel_vostok_tk53krot_cable_layer_old_fakewheel"
         }
         MiddleWheelSounding   =   {
            __value   =   "auto_wheel_vostok_tk53krot_cable_layer_old_middlewheelsounding"
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
                     "TruckShaker_Dct2yIdi/Play",
                     "TruckShaker_Dct2yIdi1/Stop",
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
                     "PlaySound_1/Play",
                     "PlaySound_Eb76Lx9S/Play"
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
                     "TruckShaker_Dct2yIdi1/Play",
                     "TruckShaker_Dct2yIdi/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               OnEngineAcceleration   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5300
                  }
                  OnAcceleration   =   [
                     "PlaySound_3_1_1_1/Play"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5450
                  }
                  OnEngineReverse   =   [
                     "PlaySound_3_1_1_1/Play"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               OnBrakePull   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5600
                  }
                  OnBrakePulled   =   [
                     "PlaySound_3_1_1/Play"
                  ]
                  __type   =   "BlueprintNodeOnBrakePull"
               }
               OnBrakeRelease   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   5750
                  }
                  OnBrakeReleased   =   [
                     "PlaySound_3_1_2/Play"
                  ]
                  __type   =   "BlueprintNodeOnBrakeRelease"
               }
               OnHandbrakeStateChanged   =   {
                  viewData   =   {
                     x   =   3335.334
                     y   =   5900
                  }
                  OnHandbrakeOn   =   [
                     "PlaySound_3/Play",
                     "TriggerEvent_1/TriggerBlueprintEvent"
                  ]
                  OnHandbrakeOff   =   [
                     "TriggerEvent/TriggerBlueprintEvent",
                     "PlaySound_3_1/Play"
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
               PlaySound_7   =   {
                  viewData   =   {
                     x   =   4000
                     y   =   4650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_vostok_tk53krot_engine_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               SetSoundSwitch   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   4650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "PlaySound_7/Play"
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
                     x   =   4000
                     y   =   5000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1/Stop",
                     "PlaySound_7/Stop",
                     "PlaySound_Eb76Lx9S/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_vostok_tk53krot_engine_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1   =   {
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
                        name   =   "vhc_vostok_tk53krot_engine"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3   =   {
                  viewData   =   {
                     x   =   4000
                     y   =   5900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_vostok_tk53krot_handbrake_on"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_1_1   =   {
                  viewData   =   {
                     x   =   4000
                     y   =   5500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_vostok_tk53krot_brake_pull"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_1_2   =   {
                  viewData   =   {
                     x   =   4000
                     y   =   5700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_vostok_tk53krot_brake_release"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_1_1_1   =   {
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
                        name   =   "vhc_vostok_tk53krot_acc"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2   =   {
                  viewData   =   {
                     x   =   6990.464
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "Schedule/Start"
                  ]
                  OnSoundEnd   =   [
                     "Schedule/Stop"
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
               CloneSoundEmitter   =   {
                  viewData   =   {
                     x   =   5990.464
                     y   =   5100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_1/emitterRef/cb",
                     "SetSoundParameter_1_2/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "roller_left4"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_2_1   =   {
                  viewData   =   {
                     x   =   6340.464
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_2/Play"
                  ]
                  OnSoundEnd   =   [
                     "PlaySound_2/Stop"
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
               CloneSoundEmitter_1   =   {
                  viewData   =   {
                     x   =   6690.464
                     y   =   5100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2/emitterRef/cb",
                     "SetSoundParameter_1_1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "roller_right4"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_3_1   =   {
                  viewData   =   {
                     x   =   4000
                     y   =   6300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_vostok_tk53krot_handbrake_off"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               TriggerEvent   =   {
                  viewData   =   {
                     x   =   4000
                     y   =   6200
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
                     x   =   4000
                     y   =   6100
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
               HandleEvent   =   {
                  viewData   =   {
                     x   =   5889.063
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnHandle   =   [
                     "PlaySound_2_1/Play"
                  ]
                  eventUidRefParam   =   {
                     def   =   "snd_track_on"
                     __type   =   "StringRefParam"
                  }
                  __type   =   "BlueprintNodeHandleEvent"
               }
               HandleEvent_1   =   {
                  viewData   =   {
                     x   =   5890.464
                     y   =   4950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnHandle   =   [
                     "PlaySound_2_1/Stop"
                  ]
                  eventUidRefParam   =   {
                     def   =   "snd_track_off"
                     __type   =   "StringRefParam"
                  }
                  __type   =   "BlueprintNodeHandleEvent"
               }
               SetSoundParameter_1_1   =   {
                  viewData   =   {
                     x   =   8440.464
                     y   =   4850
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
               SetSoundParameter_1_2   =   {
                  viewData   =   {
                     x   =   8040.464
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "SetSoundParameter_1_1/SetParameter"
                  ]
                  nameRef   =   {
                     def   =   "rpm_l"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               Schedule   =   {
                  viewData   =   {
                     x   =   7690.317
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_1_2/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               GetTruckTrackSlidingVelocity   =   {
                  viewData   =   {
                     x   =   7490.464
                     y   =   5150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSlidingVelocity   =   [
                     "FloatAbs_E28cRv8v/value/cb"
                  ]
                  __type   =   "BlueprintNodeTruckTrackGetSlidingVelocity"
               }
               GetTruckTrackSlidingVelocity_1   =   {
                  viewData   =   {
                     x   =   7940.464
                     y   =   5150
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
                     "FloatAbs_E28cRSc6/value/cb"
                  ]
                  __type   =   "BlueprintNodeTruckTrackGetSlidingVelocity"
               }
               TruckShaker_Dct2yIdi   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   4900
                  }
                  duration   =   3.2
                  shakerName   =   "EngineStart"
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_Dct2yIdi1   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   5100
                  }
                  duration   =   5.5
                  shakerName   =   "EngineShutdown"
                  maxRPM   =   True
                  __type   =   "BlueprintNodeTruckShaker"
               }
               FloatAbs_E28cRv8v   =   {
                  viewData   =   {
                     x   =   7840.464
                     y   =   5050
                  }
                  Abs   =   [
                     "SetSoundParameter_1_2/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatabs"
               }
               FloatAbs_E28cRSc6   =   {
                  viewData   =   {
                     x   =   8290.464
                     y   =   5050
                  }
                  Abs   =   [
                     "SetSoundParameter_1_1/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatabs"
               }
               OnEngineAcceleration_E28cVg8j   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   6550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAcceleration   =   [
                     "Schedule_E28cVg8j2/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineInertia_E28cVg8j1   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   6850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnInertia   =   [
                     "Schedule_E28cVg8j2/Start"
                  ]
                  __type   =   "BlueprintNodeOnEngineInertia"
               }
               Schedule_E28cVg8j2   =   {
                  viewData   =   {
                     x   =   6150
                     y   =   6700
                  }
                  OnPeriod   =   [
                     "PlaySound_E28cVg8j3/Play"
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
               PlaySound_E28cVg8j3   =   {
                  viewData   =   {
                     x   =   6450
                     y   =   6700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_vostok_tk53krot_brake_release"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnEngineShutdown_E28cVg8j4   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   6700
                  }
                  OnEngineShutdown   =   [
                     "Schedule_E28cVg8j2/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               OnGearUpdate_Ea2gw63E   =   {
                  viewData   =   {
                     x   =   5900
                     y   =   7400
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
                     "SetSoundParameter_Ea2gw63E1/SetParameter"
                  ]
                  GetLastGear   =   [
                     "SetSoundParameter_Ea2gw63E1/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               SetSoundParameter_Ea2gw63E1   =   {
                  viewData   =   {
                     x   =   6600
                     y   =   7400
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
               CloneSoundEmitter_Ea2gyE4U   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   6100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_3/emitterRef/cb",
                     "PlaySound_3_1/emitterRef/cb",
                     "PlaySound_Eb76Lx9S/emitterRef/cb",
                     "PlaySound_1/emitterRef/cb",
                     "PlaySound/emitterRef/cb",
                     "PlaySound_7/emitterRef/cb",
                     "SetSoundParameter_1_Eb76LSaQ4/emitterRef/cb",
                     "SetSoundParameter_1_1_Eb76LSaQ5/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_RootBone_6"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_Eb76Lx9S   =   {
                  viewData   =   {
                     x   =   4650
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
               GetTruckRpm_Eb76LSaQ   =   {
                  viewData   =   {
                     x   =   5850
                     y   =   5829
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  Get   =   [
                     "FloatSubtract_Eb76LSaQ7/aFloat/cb",
                     "FloatSwitch_Eb76LSaQ8/trueValue/cb"
                  ]
                  __type   =   "BlueprintNodeGetTruckRpm"
               }
               OnInit_Eb76LSaQ1   =   {
                  viewData   =   {
                     x   =   5850
                     y   =   5729
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "Schedule_Eb76LSaQ2/Start"
                  ]
                  __type   =   "BlueprintCommonLibraryOninit"
               }
               Schedule_Eb76LSaQ2   =   {
                  viewData   =   {
                     x   =   6047.742
                     y   =   5729
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_1_Eb76LSaQ4/SetParameter",
                     "SetSoundParameter_1_1_Eb76LSaQ5/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               TruckVelocity_Eb76LSaQ3   =   {
                  viewData   =   {
                     x   =   5850
                     y   =   6079
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetLinearVelocity   =   [
                     "SetSoundParameter_1_1_Eb76LSaQ5/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               SetSoundParameter_1_Eb76LSaQ4   =   {
                  viewData   =   {
                     x   =   7700
                     y   =   5729
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
               SetSoundParameter_1_1_Eb76LSaQ5   =   {
                  viewData   =   {
                     x   =   7700
                     y   =   5979
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
               FloatCommutator_Eb76LSaQ6   =   {
                  viewData   =   {
                     x   =   6300
                     y   =   5929
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
                     "FloatSubtract_Eb76LSaQ7/bFloat/cb"
                  ]
                  __type   =   "BlueprintNodeFloatCommutator"
               }
               FloatSubtract_Eb76LSaQ7   =   {
                  viewData   =   {
                     x   =   6500
                     y   =   5879
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  Float   =   [
                     "FloatCompare_Eb76LSaQ9/aFloat/cb",
                     "FloatSwitch_Eb76LSaQ8/falseValue/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatsubstract"
               }
               FloatSwitch_Eb76LSaQ8   =   {
                  viewData   =   {
                     x   =   6950
                     y   =   5829
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
                     "FloatSum_Eb76LSaQe/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeBoolToFloatCommutator"
               }
               FloatCompare_Eb76LSaQ9   =   {
                  viewData   =   {
                     x   =   6700
                     y   =   5929
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
                     "FloatSwitch_Eb76LSaQ8/condition/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatcompare"
               }
               SuspensionOscillations_Eb76LSaQa   =   {
                  viewData   =   {
                     x   =   5850
                     y   =   5929
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  zeroBorder   =   0.04
                  OnOscillationsStarted   =   [
                     "FloatCommutator_Eb76LSaQ6/PassFirstValue"
                  ]
                  OnOscillationsStopped   =   [
                     "FloatCommutator_Eb76LSaQ6/PassSecondValue"
                  ]
                  __type   =   "BlueprintNodeSuspensionOscillations"
               }
               GetTruckAngularVelocity_Eb76LSaQb   =   {
                  viewData   =   {
                     x   =   6950
                     y   =   5929
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetAngularVelocity   =   [
                     "FloatAbs_Eb76LSaQd/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeTruckAngularVelocity"
               }
               FloatMultiplication_Eb76LSaQc   =   {
                  viewData   =   {
                     x   =   7350
                     y   =   5929
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
                     "FloatSum_Eb76LSaQe/bFloat/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatmultiplication"
               }
               FloatAbs_Eb76LSaQd   =   {
                  viewData   =   {
                     x   =   7200
                     y   =   5929
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  aFloat   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetFloat   =   [
                     "FloatMultiplication_Eb76LSaQc/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeFloatAbs"
               }
               FloatSum_Eb76LSaQe   =   {
                  viewData   =   {
                     x   =   7550
                     y   =   5808
                  }
                  Float   =   [
                     "SetSoundParameter_1_Eb76LSaQ4/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatsum"
               }
            }
            groups   =   {
               "[SOUND] Tracks - Playback"   =   {
                  x   =   5800
                  y   =   4600
                  width   =   3050
                  height   =   800
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] brake release"   =   {
                  x   =   5800
                  y   =   6400
                  width   =   1600
                  height   =   600
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] gear update"   =   {
                  x   =   5800
                  y   =   7200
                  width   =   1600
                  height   =   800
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] rpm and speed_Eb76LSaQf"   =   {
                  x   =   5800
                  y   =   5550
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
                     "BoneArmRight_cdt",
                     "BoneArmLeft_cdt",
                     "BoneWheel_cdt"
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
               OnTPLAnimationBegin_E4jejV9M   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1400
                  }
                  OnAnimStart   =   [
                     "PlaySound_E4jejV9M2/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnBegin"
               }
               OnTPLAnimationEnd_E4jejV9M1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1600
                  }
                  OnAnimStop   =   [
                     "PlaySound_E4jejV9M3/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnEnd"
               }
               PlaySound_E4jejV9M2   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1400
                  }
                  OnSoundStart   =   [
                     "PlaySound_E8ma7Ncb/Play"
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
               PlaySound_E4jejV9M3   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1600
                  }
                  OnSoundStart   =   [
                     "PlaySound_E8ma7Ncb1/Play"
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
               IntCheck_E4jejV9M4   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   1800
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
                     "PlaySound_E4jejV9M6/Play"
                  ]
                  __type   =   "BlueprintLibraryCheckint"
               }
               OnHandbrakeStateChanged_E4jejV9M5   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1800
                  }
                  OnHandbrakeOn   =   [
                     "IntCheck_E4jejV9M4/Input"
                  ]
                  __type   =   "BlueprintNodeOnHandbrakeStateChanged"
               }
               PlaySound_E4jejV9M6   =   {
                  viewData   =   {
                     x   =   5785.13
                     y   =   1800
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
               GetTruckVelocity_E4jejV9M7   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1900
                  }
                  GetLinearVelocity   =   [
                     "IntCheck_E4jejV9M4/intToCheck/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               OnGearUpdate_Ec28dC4C   =   {
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
                     "PlaySound_Ec28dC4C1/Play"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               PlaySound_Ec28dC4C1   =   {
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
               CloneSoundEmitter_Ec28dC4C2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   2150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ec28dC4C1/emitterRef/cb",
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
               CloneSoundEmitter_E8ma7H7F   =   {
                  viewData   =   {
                     x   =   4300
                     y   =   1400
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E8ma7Ncb/emitterRef/cb",
                     "PlaySound_E8ma7Ncb1/emitterRef/cb"
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
               CloneSoundEmitter_E8ma7H7F1   =   {
                  viewData   =   {
                     x   =   4300
                     y   =   1600
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E4jejV9M2/emitterRef/cb",
                     "PlaySound_E4jejV9M3/emitterRef/cb"
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
               PlaySound_E8ma7Ncb   =   {
                  viewData   =   {
                     x   =   6150
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
               PlaySound_E8ma7Ncb1   =   {
                  viewData   =   {
                     x   =   6150
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
               GetInfoElementCockpitForSoundWithEvent_E4m9Ss66   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_E4m9Ss661/Play"
                  ]
                  nameBoneBro   =   "ctrl_steering_left"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_E4m9Ss661   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_vostok_atm53pioneer_cockpit_steering_arm_left"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_E4m9Ss662   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E4m9Ss661/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_steering_left"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               GetInfoElementCockpitForSoundWithEvent_E4m9Ss663   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_E4m9Ss664/Play"
                  ]
                  nameBoneBro   =   "ctrl_steering_right"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_E4m9Ss664   =   {
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
                        name   =   "vhc_vostok_atm53pioneer_cockpit_steering_arm_right"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_E4m9Ss665   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E4m9Ss664/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_steering_right"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_EbbkMy9R   =   {
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
               GetInfoElementCockpitForSoundWithEvent_EbbkMy9R1   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4100
                  }
                  OnStart   =   [
                     "PlaySound_EbbkMy9R/Play"
                  ]
                  nameBoneBro   =   "ctrl_gear_stick_low"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               CloneSoundEmitter_EbbkMy9R2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4250
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_EbbkMy9R/emitterRef/cb"
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
                  notCollideBodiesOnlyWithTerrain   =   True
                  exceptionalBodyNames   =   [
                     "BoneWheel_cdt",
                     "BoneArmRight_cdt",
                     "BoneArmLeft_cdt",
                     "BoneSlider_cdt",
                     "BoneSliderRotator_cdt",
                     "BoneRoot_cdt"
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
               OnTrenchDiggerDigTerrain   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   6950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1/Input"
                  ]
                  OnStop   =   [
                     "DeactivateForceFeedback/Input"
                  ]
                  __type   =   "BlueprintNodeOnTrenchDiggerTerrainChange"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   6950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "trench_digging"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  strengthRef   =   {
                     def   =   0.5
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintNodeActivateForcefeedbackIfTruckIsCurrent"
               }
               DeactivateForceFeedback   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   7100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "trench_digging"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeDeactivateForcefeedbackPreset"
               }
               OnTruckCollision_1_1   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   7250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  zeroBorderEnergy   =   0.001
                  timeInterval   =   10
                  withResources   =   True
                  withQuestObjects   =   True
                  withPhysPlants   =   True
                  withTerrainParticles   =   False
                  withTrucks   =   True
                  withTruckWheels   =   True
                  notCollideBodiesOnlyWithTerrain   =   False
                  exceptionalBodyNames   =   [
                     "BoneDumperFront_cdt",
                     "BoneDumper_cdt",
                     "BoneWireWiggle_cdt",
                     "BoneWireFeedPoint_cdt",
                     "BoneRoot_cdt"
                  ]
                  OnCollision   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_2/Input"
                  ]
                  GetEnergy   =   [
                     "FloatAbs_1_1/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeOnTruckCollision"
               }
               FloatAbs_1_1   =   {
                  viewData   =   {
                     x   =   4900
                     y   =   7350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  aFloat   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetFloat   =   [
                     "FloatDivision_1_1/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeFloatAbs"
               }
               FloatDivision_1_1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   7350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  bFloat   =   {
                     def   =   150000
                     __type   =   "FloatRefParam"
                  }
                  Float   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_2/strengthRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatdivision"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_2   =   {
                  viewData   =   {
                     x   =   5350
                     y   =   7250
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
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         SFX   =   {
            nodes   =   {
               OnEngineStarting   =   {
                  viewData   =   {
                     x   =   16950
                     y   =   6400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineStarting   =   [
                     "VFXRestart_1_1/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarting"
               }
               OnEngineStarted   =   {
                  viewData   =   {
                     x   =   16950
                     y   =   5400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineStarted   =   [
                     "VFXRestart_2/Input",
                     "VFXRestart_1/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown   =   {
                  viewData   =   {
                     x   =   16948
                     y   =   5484
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
                     x   =   16950
                     y   =   5900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAcceleration   =   [
                     "VFXRestart/Input",
                     "RetriggerableDelay_E9qb1Iea/Stop"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9oazA1f/Input",
                     "RetriggerableDelay_E9oaKCfs/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse   =   {
                  viewData   =   {
                     x   =   16950
                     y   =   6100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineReverse   =   [
                     "VFXRestart/Input",
                     "RetriggerableDelay_E9qb1Iea/Stop"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9oazA1f/Input",
                     "RetriggerableDelay_E9oaKCfs/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               VFXRestart_1_1   =   {
                  viewData   =   {
                     x   =   17500
                     y   =   6400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  actorRef   =   {
                     def   =   "<OWNER>"
                     __type   =   "ActorRefParam"
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_oil"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart   =   {
                  viewData   =   {
                     x   =   17500
                     y   =   5950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "RetriggerableDelay_E9oaKCfs/Restart"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_track_acceleration_old_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_2   =   {
                  viewData   =   {
                     x   =   17500
                     y   =   5400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "VFXRestart_E9oaA56a/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_track_exhaust_gas_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_1   =   {
                  viewData   =   {
                     x   =   17500
                     y   =   5500
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
               VFXStop   =   {
                  viewData   =   {
                     x   =   17500
                     y   =   5600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "VFXStop_E9oaAb50/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXStop_E9oazA1f   =   {
                  viewData   =   {
                     x   =   17500
                     y   =   6050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "DoOnce_E9oaLk1g3/Reset"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_track_acceleration_old_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_E9oaA56a   =   {
                  viewData   =   {
                     x   =   18050
                     y   =   5400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "Delay_E9oaKhdU1/Start"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_track_exhaust_neutral_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9oaAb50   =   {
                  viewData   =   {
                     x   =   18050
                     y   =   5600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_track_exhaust_neutral_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               GetTruckVelocity_E9oaKhdU   =   {
                  viewData   =   {
                     x   =   18345.5
                     y   =   5504.625
                  }
                  GetLinearVelocity   =   [
                     "FloatCompare_E9oaKhdU3/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               Delay_E9oaKhdU1   =   {
                  viewData   =   {
                     x   =   18550
                     y   =   5400
                  }
                  duration   =   {
                     def   =   3
                     __type   =   "FloatRefParam"
                  }
                  OnFinish   =   [
                     "If_E9oaKhdU2/Input"
                  ]
                  __type   =   "BlueprintTimeLibraryDelay"
               }
               If_E9oaKhdU2   =   {
                  viewData   =   {
                     x   =   18750
                     y   =   5400
                  }
                  OnTrue   =   [
                     "VFXRestart_E9oaKof5/Input"
                  ]
                  __type   =   "BlueprintNodeIf"
               }
               FloatCompare_E9oaKhdU3   =   {
                  viewData   =   {
                     x   =   18495.5
                     y   =   5504.625
                  }
                  Equal   =   [
                     "If_E9oaKhdU2/condition/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatcompare"
               }
               VFXRestart_E9oaKof5   =   {
                  viewData   =   {
                     x   =   19000
                     y   =   5400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_track_exhaust_gas_old_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               RetriggerableDelay_E9oaKCfs   =   {
                  viewData   =   {
                     x   =   18050
                     y   =   5950
                  }
                  duration   =   {
                     def   =   3
                     __type   =   "FloatRefParam"
                  }
                  OnFinish   =   [
                     "If_E9oaKCfs1/Input"
                  ]
                  __type   =   "BlueprintTimeLibraryRetriggerabledelay"
               }
               If_E9oaKCfs1   =   {
                  viewData   =   {
                     x   =   18350
                     y   =   5950
                  }
                  OnTrue   =   [
                     "VFXRestart_E9oaKX7s/Input"
                  ]
                  __type   =   "BlueprintNodeIf"
               }
               GetTruckVelocity_E9oaKCfs2   =   {
                  viewData   =   {
                     x   =   18050
                     y   =   6100
                  }
                  GetLinearVelocity   =   [
                     "FloatCompare_E9oaKCfs3/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               FloatCompare_E9oaKCfs3   =   {
                  viewData   =   {
                     x   =   18250
                     y   =   6100
                  }
                  bFloat   =   {
                     def   =   1.8
                     __type   =   "FloatRefParam"
                  }
                  BBigger   =   [
                     "If_E9oaKCfs1/condition/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatcompare"
               }
               VFXRestart_E9oaKX7s   =   {
                  viewData   =   {
                     x   =   18600
                     y   =   5950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_track_exhaust_gas_old_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               OnGearUpdate_E9oaLk1g   =   {
                  viewData   =   {
                     x   =   16950
                     y   =   6200
                  }
                  subscribeOnInitRef   =   {
                     def   =   True
                     __type   =   "BoolRefParam"
                  }
                  OnGearUpdated   =   [
                     "If_E9oaLk1g1/Input"
                  ]
                  GetLastGear   =   [
                     "IntCompare_E9oaLk1g2/aInteger/cb"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               If_E9oaLk1g1   =   {
                  viewData   =   {
                     x   =   17500
                     y   =   6200
                  }
                  OnTrue   =   [
                     "RetriggerableDelay_E9qb1Iea/Restart"
                  ]
                  __type   =   "BlueprintNodeIf"
               }
               IntCompare_E9oaLk1g2   =   {
                  viewData   =   {
                     x   =   17267.84
                     y   =   6325.684
                  }
                  bInteger   =   {
                     def   =   0
                     __type   =   "IntRefParam"
                  }
                  Equal   =   [
                     "If_E9oaLk1g1/condition/cb"
                  ]
                  __type   =   "BlueprintIntLibraryIntcompare"
               }
               DoOnce_E9oaLk1g3   =   {
                  viewData   =   {
                     x   =   17950
                     y   =   6200
                  }
                  OnExit   =   [
                     "VFXRestart_E9oaLC2y/Input"
                  ]
                  __type   =   "BlueprintLibraryDoonce"
               }
               VFXRestart_E9oaLC2y   =   {
                  viewData   =   {
                     x   =   18100
                     y   =   6200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   "part_track_exhaust_gas_old_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               RetriggerableDelay_E9qb1Iea   =   {
                  viewData   =   {
                     x   =   17700
                     y   =   6200
                  }
                  duration   =   {
                     def   =   5
                     __type   =   "FloatRefParam"
                  }
                  OnFinish   =   [
                     "DoOnce_E9oaLk1g3/Input"
                  ]
                  __type   =   "BlueprintTimeLibraryRetriggerabledelay"
               }
            }
            Body   =   {
               nodes   =   {
                  OnTruckCollision   =   {
                     zeroBorderEnergy   =   10
                     exceptionalBodyNames   =   [
                        "dumper_front",
                        "dumper_blade_left",
                        "dumper_blade_right",
                        "dumper_blade_center"
                     ]
                     __type   =   "BlueprintNodeOnTruckCollision"
                  }
               }
               __type   =   "BlueprintActiveByProjectCondition"
            }
            SFX   =   {
               nodes   =   {
                  OnEngineStarting   =   {
                     viewData   =   {
                        x   =   16950
                        y   =   5700
                        colors   =   [
                           "#00FFFFFF",
                           "#00FFFFFF"
                        ]
                     }
                     OnEngineStarting   =   [
                        "VFXRestart_1_1/Input",
                        "VFXRestart/Input",
                        "VFXRestart_1_3/Input"
                     ]
                     __type   =   "BlueprintNodeOnEngineStarting"
                  }
                  OnEngineStarted   =   {
                     viewData   =   {
                        x   =   16950
                        y   =   5400
                        colors   =   [
                           "#00FFFFFF",
                           "#00FFFFFF"
                        ]
                     }
                     OnEngineStarted   =   [
                        "VFXRestart_2/Input",
                        "VFXRestart_1/Input"
                     ]
                     __type   =   "BlueprintNodeOnEngineStarted"
                  }
                  OnEngineShutdown   =   {
                     viewData   =   {
                        x   =   16948
                        y   =   5484
                        colors   =   [
                           "#00FFFFFF",
                           "#00FFFFFF"
                        ]
                     }
                     OnEngineShutdown   =   [
                        "VFXStop_1/Input",
                        "VFXStop/Input"
                     ]
                     __type   =   "BlueprintNodeOnEngineShutdown"
                  }
                  OnEngineAcceleration   =   {
                     viewData   =   {
                        x   =   16950
                        y   =   5800
                        colors   =   [
                           "#00FFFFFF",
                           "#00FFFFFF"
                        ]
                     }
                     OnAcceleration   =   [
                        "VFXRestart/Input",
                        "VFXRestart_1_3/Input"
                     ]
                     __type   =   "BlueprintNodeOnEngineAcceleration"
                  }
                  OnEngineReverse   =   {
                     viewData   =   {
                        x   =   16950
                        y   =   5950
                        colors   =   [
                           "#00FFFFFF",
                           "#00FFFFFF"
                        ]
                     }
                     OnEngineReverse   =   [
                        "VFXRestart_1_3/Input",
                        "VFXRestart/Input"
                     ]
                     __type   =   "BlueprintNodeOnEngineReverse"
                  }
                  VFXRestart_1_1   =   {
                     viewData   =   {
                        x   =   17400
                        y   =   5750
                        colors   =   [
                           "#00FFFFFF",
                           "#00FFFFFF"
                        ]
                     }
                     vfxUidRef   =   {
                        def   =   "part_exhaust_steam"
                        __type   =   "SfxStringRefParam"
                     }
                     __type   =   "BlueprintNodeVfxRestart"
                  }
                  VFXRestart   =   {
                     viewData   =   {
                        x   =   17400
                        y   =   5900
                        colors   =   [
                           "#00FFFFFF",
                           "#00FFFFFF"
                        ]
                     }
                     vfxUidRef   =   {
                        def   =   "part_track_acceleration_01"
                        __type   =   "SfxStringRefParam"
                     }
                     __type   =   "BlueprintNodeVfxRestart"
                  }
                  VFXStop_1   =   {
                     viewData   =   {
                        x   =   17400
                        y   =   5600
                        colors   =   [
                           "#00FFFFFF",
                           "#00FFFFFF"
                        ]
                     }
                     vfxUidRef   =   {
                        def   =   "part_track_exhaust_02"
                        __type   =   "SfxStringRefParam"
                     }
                     __type   =   "BlueprintNodeVfxStop"
                  }
                  VFXRestart_2   =   {
                     viewData   =   {
                        x   =   17400
                        y   =   5500
                        colors   =   [
                           "#00FFFFFF",
                           "#00FFFFFF"
                        ]
                     }
                     vfxUidRef   =   {
                        def   =   "part_track_exhaust_02"
                        __type   =   "SfxStringRefParam"
                     }
                     __type   =   "BlueprintNodeVfxRestart"
                  }
                  VFXRestart_1_3   =   {
                     viewData   =   {
                        x   =   17400
                        y   =   6000
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
                  VFXRestart_1   =   {
                     viewData   =   {
                        x   =   17400
                        y   =   5250
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
                  VFXStop   =   {
                     viewData   =   {
                        x   =   17400
                        y   =   5350
                        colors   =   [
                           "#00FFFFFF",
                           "#00FFFFFF"
                        ]
                     }
                     vfxUidRef   =   {
                        def   =   "part_radiator_haze"
                        __type   =   "SfxStringRefParam"
                     }
                     __type   =   "BlueprintNodeVfxStop"
                  }
               }
               __type   =   "BlueprintActiveByProjectCondition"
            }
            Engine   =   {
               nodes   =   {
                  OnEngineStarting   =   {
                     viewData   =   {
                        x   =   3336.56
                        y   =   4729.146
                     }
                     OnEngineStarting   =   [
                        "If/Input",
                        "Pipe_1/Input"
                     ]
                     __type   =   "BlueprintNodeOnEngineStarting"
                  }
                  OnEngineStarted   =   {
                     viewData   =   {
                        x   =   3340.561
                        y   =   4812.29
                     }
                     OnEngineStarted   =   [  ]
                     __type   =   "BlueprintNodeOnEngineStarted"
                  }
                  OnEngineShutdown   =   {
                     viewData   =   {
                        x   =   3338.561
                        y   =   4896.29
                     }
                     OnEngineShutdown   =   [
                        "PlaySound_11/Play",
                        "Pipe/Input"
                     ]
                     __type   =   "BlueprintNodeOnEngineShutdown"
                  }
                  OnEngineAcceleration   =   {
                     viewData   =   {
                        x   =   3336.561
                        y   =   4980.29
                     }
                     OnAcceleration   =   [
                        "PlaySound/Play"
                     ]
                     __type   =   "BlueprintNodeOnEngineAcceleration"
                  }
                  OnEngineReverse   =   {
                     viewData   =   {
                        x   =   3340.561
                        y   =   5063.29
                     }
                     __type   =   "BlueprintNodeOnEngineReverse"
                  }
                  OnBrakePull   =   {
                     viewData   =   {
                        x   =   3342.561
                        y   =   5145.29
                     }
                     OnBrakePulled   =   [
                        "PlaySound_1_1/Play"
                     ]
                     __type   =   "BlueprintNodeOnBrakePull"
                  }
                  OnBrakeRelease   =   {
                     viewData   =   {
                        x   =   3336.561
                        y   =   5235.29
                     }
                     OnBrakeReleased   =   [
                        "PlaySound_1_2/Play"
                     ]
                     __type   =   "BlueprintNodeOnBrakeRelease"
                  }
                  OnHandbrakeStateChanged   =   {
                     viewData   =   {
                        x   =   3336.561
                        y   =   5334.29
                     }
                     OnHandbrakeOn   =   [
                        "PlaySound_1_3/Play",
                        "TriggerEvent_1/TriggerBlueprintEvent"
                     ]
                     OnHandbrakeOff   =   [
                        "PlaySound_1_4/Play",
                        "TriggerEvent/TriggerBlueprintEvent"
                     ]
                     __type   =   "BlueprintNodeOnHandbrakeStateChanged"
                  }
                  BlueprintNodeOnHornStateChanged   =   {
                     viewData   =   {
                        x   =   3337.569
                        y   =   5521.952
                     }
                     OnHornPressed   =   [
                        "PlaySound_1_5/Play"
                     ]
                  }
                  BlueprintNodeOnEngineInertia   =   {
                     viewData   =   {
                        x   =   3337.153
                        y   =   5198.735
                     }
                  }
                  FuelTank   =   {
                     viewData   =   {
                        x   =   3100
                        y   =   4250
                     }
                     GetCurrentVolume   =   [
                        "FloatCompare/aFloat/cb"
                     ]
                     __type   =   "BlueprintNodeFuelTank"
                  }
                  FloatCompare   =   {
                     viewData   =   {
                        x   =   3300
                        y   =   4250
                     }
                     Equal   =   [
                        "If/condition/cb"
                     ]
                     __type   =   "BlueprintMathLibraryFloatcompare"
                  }
                  SetSoundSwitch   =   {
                     viewData   =   {
                        x   =   3750
                        y   =   4400
                     }
                     OnExit   =   [
                        "PlaySound_12/Play",
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
                  SetSoundSwitch_1   =   {
                     viewData   =   {
                        x   =   3750
                        y   =   4250
                     }
                     OnExit   =   [
                        "PlaySound_10/Play"
                     ]
                     switchGroup   =   {
                        def   =   "fuel"
                        __type   =   "SoundSwitchGroupStringRefParam"
                     }
                     switchState   =   {
                        def   =   "no_fuel"
                        __type   =   "SoundSwitchStringRefParam"
                     }
                     __type   =   "BlueprintNodeSetSoundSwitch"
                  }
                  If   =   {
                     viewData   =   {
                        x   =   3550
                        y   =   4350
                     }
                     OnTrue   =   [
                        "SetSoundSwitch_1/SetSwitchState"
                     ]
                     OnFalse   =   [
                        "SetSoundSwitch/SetSwitchState"
                     ]
                     __type   =   "BlueprintNodeIf"
                  }
                  PlaySound_10   =   {
                     viewData   =   {
                        x   =   4100
                        y   =   4250
                     }
                     soundDesc   =   {
                        type   =   {
                           name   =   "vhc_batm_engine_start"
                           __type   =   "GameSound"
                        }
                        __type   =   "GameSoundDesc"
                     }
                     __type   =   "BlueprintNodePlaySoundOnEmitter"
                  }
                  PlaySound_11   =   {
                     viewData   =   {
                        x   =   4100
                        y   =   4450
                     }
                     OnSoundStart   =   [
                        "PlaySound_12/Stop"
                     ]
                     soundDesc   =   {
                        type   =   {
                           name   =   "vhc_batm_engine_stop"
                           __type   =   "GameSound"
                        }
                        __type   =   "GameSoundDesc"
                     }
                     __type   =   "BlueprintNodePlaySoundOnEmitter"
                  }
                  PlaySound_12   =   {
                     viewData   =   {
                        x   =   4700
                        y   =   4400
                     }
                     soundDesc   =   {
                        type   =   {
                           name   =   "vhc_batm_engine"
                           __type   =   "GameSound"
                        }
                        __type   =   "GameSoundDesc"
                     }
                     __type   =   "BlueprintNodePlaySoundOnEmitter"
                  }
                  PlaySound   =   {
                     viewData   =   {
                        x   =   4100
                        y   =   4600
                     }
                     soundDesc   =   {
                        type   =   {
                           name   =   "vhc_batm_acc"
                           __type   =   "GameSound"
                        }
                        __type   =   "GameSoundDesc"
                     }
                     __type   =   "BlueprintNodePlaySoundOnEmitter"
                  }
                  PlaySound_1_1   =   {
                     viewData   =   {
                        x   =   4100
                        y   =   4750
                     }
                     soundDesc   =   {
                        type   =   {
                           name   =   "vhc_batm_brake_pull"
                           __type   =   "GameSound"
                        }
                        __type   =   "GameSoundDesc"
                     }
                     __type   =   "BlueprintNodePlaySoundOnEmitter"
                  }
                  PlaySound_1_2   =   {
                     viewData   =   {
                        x   =   4100
                        y   =   4950
                     }
                     soundDesc   =   {
                        type   =   {
                           name   =   "vhc_batm_brake_release"
                           __type   =   "GameSound"
                        }
                        __type   =   "GameSoundDesc"
                     }
                     __type   =   "BlueprintNodePlaySoundOnEmitter"
                  }
                  PlaySound_1_3   =   {
                     viewData   =   {
                        x   =   4100
                        y   =   5150
                     }
                     soundDesc   =   {
                        type   =   {
                           name   =   "vhc_batm_handbrake_on"
                           __type   =   "GameSound"
                        }
                        __type   =   "GameSoundDesc"
                     }
                     __type   =   "BlueprintNodePlaySoundOnEmitter"
                  }
                  PlaySound_1_4   =   {
                     viewData   =   {
                        x   =   4100
                        y   =   5500
                     }
                     soundDesc   =   {
                        type   =   {
                           name   =   "vhc_batm_handbrake_off"
                           __type   =   "GameSound"
                        }
                        __type   =   "GameSoundDesc"
                     }
                     __type   =   "BlueprintNodePlaySoundOnEmitter"
                  }
                  PlaySound_1_5   =   {
                     viewData   =   {
                        x   =   4100
                        y   =   5700
                     }
                     soundDesc   =   {
                        type   =   {
                           name   =   "vhc_batm_honk"
                           __type   =   "GameSound"
                        }
                        __type   =   "GameSoundDesc"
                     }
                     __type   =   "BlueprintNodePlaySoundOnEmitter"
                  }
                  PlaySound_2_2   =   {
                     viewData   =   {
                        x   =   5940.464
                        y   =   3597.046
                     }
                     OnSoundStart   =   [
                        "Schedule_1/Start"
                     ]
                     OnSoundEnd   =   [
                        "Schedule_1/Stop"
                     ]
                     soundDesc   =   {
                        type   =   {
                           name   =   "vhc_batm_track_right"
                           __type   =   "GameSound"
                        }
                        __type   =   "GameSoundDesc"
                     }
                     __type   =   "BlueprintNodePlaySoundOnEmitter"
                  }
                  CloneSoundEmitter_2   =   {
                     viewData   =   {
                        x   =   5000
                        y   =   3850
                     }
                     GetSoundEmitter   =   [
                        "PlaySound_2_1_1/emitterRef/cb",
                        "SetSoundParameter_1_2_1/emitterRef/cb"
                     ]
                     positionRef   =   {
                        def   =   {
                           x   =   0
                           __type   =   "Vector3d"
                        }
                        __type   =   "Vector3dRefParam"
                     }
                     tracker   =   {
                        locator   =   "roller_left4"
                        owner   =   "<OWNER>"
                        __type   =   "Tracker"
                     }
                     __type   =   "BlueprintNodeCloneSoundEmitter"
                  }
                  PlaySound_2_1_1   =   {
                     viewData   =   {
                        x   =   5290.464
                        y   =   3597.046
                     }
                     OnSoundStart   =   [
                        "PlaySound_2_2/Play"
                     ]
                     OnSoundEnd   =   [
                        "PlaySound_2_2/Stop"
                     ]
                     soundDesc   =   {
                        type   =   {
                           name   =   "vhc_batm_track_left"
                           __type   =   "GameSound"
                        }
                        __type   =   "GameSoundDesc"
                     }
                     __type   =   "BlueprintNodePlaySoundOnEmitter"
                  }
                  CloneSoundEmitter_1_1   =   {
                     viewData   =   {
                        x   =   5540.464
                        y   =   3847.046
                     }
                     GetSoundEmitter   =   [
                        "PlaySound_2_2/emitterRef/cb",
                        "SetSoundParameter_1_1_1/emitterRef/cb"
                     ]
                     tracker   =   {
                        locator   =   "roller_right4"
                        owner   =   "<OWNER>"
                        __type   =   "Tracker"
                     }
                     __type   =   "BlueprintNodeCloneSoundEmitter"
                  }
                  HandleEvent   =   {
                     viewData   =   {
                        x   =   4839.063
                        y   =   3597.046
                     }
                     OnHandle   =   [
                        "PlaySound_2_1_1/Play"
                     ]
                     eventUidRefParam   =   {
                        def   =   "snd_track_on"
                        __type   =   "StringRefParam"
                     }
                     __type   =   "BlueprintNodeHandleEvent"
                  }
                  HandleEvent_1   =   {
                     viewData   =   {
                        x   =   4840.464
                        y   =   3697.046
                     }
                     OnHandle   =   [
                        "PlaySound_2_1_1/Stop"
                     ]
                     eventUidRefParam   =   {
                        def   =   "snd_track_off"
                        __type   =   "StringRefParam"
                     }
                     __type   =   "BlueprintNodeHandleEvent"
                  }
                  SetSoundParameter_1_1_1   =   {
                     viewData   =   {
                        x   =   7390.464
                        y   =   3597.046
                     }
                     nameRef   =   {
                        def   =   "rpm_r"
                        __type   =   "SoundParameterStringRefParam"
                     }
                     __type   =   "BlueprintNodeSetSoundEmitterParameter"
                  }
                  SetSoundParameter_1_2_1   =   {
                     viewData   =   {
                        x   =   6990.464
                        y   =   3597.046
                     }
                     OnExit   =   [
                        "SetSoundParameter_1_1_1/SetParameter"
                     ]
                     nameRef   =   {
                        def   =   "rpm_l"
                        __type   =   "SoundParameterStringRefParam"
                     }
                     __type   =   "BlueprintNodeSetSoundEmitterParameter"
                  }
                  Schedule_1   =   {
                     viewData   =   {
                        x   =   6640.317
                        y   =   3597.046
                     }
                     OnPeriod   =   [
                        "SetSoundParameter_1_2_1/SetParameter"
                     ]
                     period   =   {
                        def   =   0.1
                        __type   =   "FloatRefParam"
                     }
                     __type   =   "BlueprintTimeLibrarySchedule"
                  }
                  TriggerEvent   =   {
                     viewData   =   {
                        x   =   4100
                        y   =   5400
                     }
                     eventUid   =   {
                        def   =   "snd_track_on"
                        __type   =   "StringRefParam"
                     }
                     __type   =   "BlueprintNodeTriggerCustomEvent"
                  }
                  TriggerEvent_1   =   {
                     viewData   =   {
                        x   =   4100
                        y   =   5300
                     }
                     eventUid   =   {
                        def   =   "snd_track_off"
                        __type   =   "StringRefParam"
                     }
                     __type   =   "BlueprintNodeTriggerCustomEvent"
                  }
                  Schedule   =   {
                     viewData   =   {
                        x   =   3300
                        y   =   3900
                     }
                     OnPeriod   =   [
                        "SetSoundParameter_1/SetParameter"
                     ]
                     period   =   {
                        def   =   0.1
                        __type   =   "FloatRefParam"
                     }
                     __type   =   "BlueprintTimeLibrarySchedule"
                  }
                  OnInit   =   {
                     viewData   =   {
                        x   =   3100
                        y   =   3900
                     }
                     OnExit   =   [
                        "Schedule/Start"
                     ]
                     __type   =   "BlueprintCommonLibraryOninit"
                  }
                  SetSoundParameter_1   =   {
                     viewData   =   {
                        x   =   3750
                        y   =   3900
                     }
                     nameRef   =   {
                        def   =   "rpm"
                        __type   =   "SoundParameterStringRefParam"
                     }
                     __type   =   "BlueprintNodeSetSoundEmitterParameter"
                  }
                  TruckVelocity   =   {
                     viewData   =   {
                        x   =   3100
                        y   =   4000
                     }
                     GetLinearVelocity   =   [
                        "SwitchFloat/floatB/cb"
                     ]
                     __type   =   "BlueprintNodeTruckVelocity"
                  }
                  GetTruckInputPedals   =   {
                     viewData   =   {
                        x   =   3100
                        y   =   4100
                     }
                     GetInputPedals   =   [
                        "FloatCompare_1/aFloat/cb"
                     ]
                     __type   =   "BlueprintNodeTruckInputPedals"
                  }
                  FloatCompare_1   =   {
                     viewData   =   {
                        x   =   3300
                        y   =   4100
                     }
                     Equal   =   [
                        "SwitchFloat/condition/cb"
                     ]
                     __type   =   "BlueprintMathLibraryFloatcompare"
                  }
                  SwitchFloat   =   {
                     viewData   =   {
                        x   =   3550
                        y   =   4000
                     }
                     GetFloat   =   [
                        "SetSoundParameter_1/valueRef/cb"
                     ]
                     __type   =   "BlueprintNodeSwitchFloat"
                  }
                  Pipe   =   {
                     viewData   =   {
                        x   =   4700
                        y   =   5050
                     }
                     __type   =   "BlueprintLibraryPipe"
                  }
                  Pipe_1   =   {
                     viewData   =   {
                        x   =   4700
                        y   =   4750
                     }
                     __type   =   "BlueprintLibraryPipe"
                  }
                  GetTruckRpm   =   {
                     viewData   =   {
                        x   =   6250
                        y   =   5150
                     }
                     Get   =   [
                        "SetSoundParameter_1_1/valueRef/cb",
                        "OnscreenLog/message/cb"
                     ]
                     __type   =   "BlueprintNodeGetTruckRpm"
                  }
                  OnInit_1   =   {
                     viewData   =   {
                        x   =   6250
                        y   =   5050
                     }
                     OnExit   =   [
                        "Schedule_1_1/Start"
                     ]
                     __type   =   "BlueprintCommonLibraryOninit"
                  }
                  Schedule_1_1   =   {
                     viewData   =   {
                        x   =   6447.742
                        y   =   5050
                     }
                     OnPeriod   =   [
                        "SetSoundParameter_1_1/SetParameter",
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
                        x   =   6250
                        y   =   5250
                     }
                     GetLinearVelocity   =   [
                        "SetSoundParameter_1_1_1_1/valueRef/cb"
                     ]
                     __type   =   "BlueprintNodeTruckVelocity"
                  }
                  SetSoundParameter_1_1   =   {
                     viewData   =   {
                        x   =   6700
                        y   =   5050
                     }
                     OnExit   =   [
                        "OnscreenLog/Log"
                     ]
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
                        x   =   6700
                        y   =   5200
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
                  GetTruckTrackSlidingVelocity   =   {
                     viewData   =   {
                        x   =   6905.67
                        y   =   3906.096
                     }
                     GetSlidingVelocity   =   [
                        "SetSoundParameter_1_2_1/valueRef/cb"
                     ]
                     __type   =   "BlueprintNodeTruckTrackGetSlidingVelocity"
                  }
                  GetTruckTrackSlidingVelocity_1   =   {
                     viewData   =   {
                        x   =   7450
                        y   =   3900
                     }
                     side   =   {
                        def   =   "RIGHT"
                        __type   =   "TrackSideRefParam"
                     }
                     GetSlidingVelocity   =   [
                        "SetSoundParameter_1_1_1/valueRef/cb"
                     ]
                     __type   =   "BlueprintNodeTruckTrackGetSlidingVelocity"
                  }
                  SuspensionOscillations_1   =   {
                     viewData   =   {
                        x   =   6190
                        y   =   4613.969
                     }
                     zeroBorder   =   0.06
                     diffMultiplier   =   400
                     OnOscillationsStarted   =   [
                        "PlaySound_4_1/Play"
                     ]
                     __type   =   "BlueprintNodeSuspensionOscillations"
                  }
                  PlaySound_4_1   =   {
                     viewData   =   {
                        x   =   6640
                        y   =   4613.969
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
                  GetTruckFloodingProgress   =   {
                     viewData   =   {
                        x   =   3100
                        y   =   3650
                     }
                     OnWater   =   [
                        "StartShake_2/Input"
                     ]
                     Get   =   [
                        "FloatMultiplication/aFloat/cb"
                     ]
                     __type   =   "BlueprintNodeGetFloodingProgress"
                  }
                  StartShake_2   =   {
                     viewData   =   {
                        x   =   3450
                        y   =   3650
                     }
                     nameShake   =   {
                        def   =   "water_flooding"
                        __type   =   "StringRefParamShakeUid"
                     }
                     catalogShake   =   {
                        def   =   "auto"
                        __type   =   "StringRefParamShakeCatalog"
                     }
                     __type   =   "BlueprintNodeGameCameraShakeStart"
                  }
                  FloatMultiplication   =   {
                     viewData   =   {
                        x   =   3300
                        y   =   3800
                     }
                     bFloat   =   {
                        def   =   1
                        __type   =   "FloatRefParam"
                     }
                     Float   =   [
                        "StartShake_2/shakePowerRef/cb"
                     ]
                     __type   =   "BlueprintMathLibraryFloatmultiplication"
                  }
                  OnscreenLog   =   {
                     viewData   =   {
                        x   =   7256.163
                        y   =   5069.796
                     }
                     __type   =   "BlueprintNodeOnscreenLog"
                  }
                  OnGraderBladeRotationChanged   =   {
                     viewData   =   {
                        x   =   3350
                        y   =   6300
                     }
                     OnStartedManipulating   =   [
                        "PlaySound_1/Play"
                     ]
                     OnStoppedManipulating   =   [
                        "PlaySound_1_6/Play"
                     ]
                     __type   =   "BlueprintNodeOnGraderBladeRotationChanged"
                  }
                  OnChainConstraintStateChange   =   {
                     viewData   =   {
                        x   =   3350
                        y   =   5950
                     }
                     OnStart   =   [
                        "PlaySound_9/Play"
                     ]
                     OnStop   =   [
                        "PlaySound_9_1/Play"
                     ]
                     inputChainNameRef   =   {
                        def   =   "open"
                        __type   =   "StringRefParam"
                     }
                     __type   =   "BlueprintNodeOnChainConstraintStateChanged"
                  }
                  PlaySound_9   =   {
                     viewData   =   {
                        x   =   4100
                        y   =   5900
                     }
                     soundDesc   =   {
                        type   =   {
                           name   =   "vhc_batm_grader_move_start"
                           __type   =   "GameSound"
                        }
                        __type   =   "GameSoundDesc"
                     }
                     __type   =   "BlueprintNodePlaySoundOnEmitter"
                  }
                  PlaySound_9_1   =   {
                     viewData   =   {
                        x   =   4100
                        y   =   6100
                     }
                     soundDesc   =   {
                        type   =   {
                           name   =   "vhc_batm_grader_move_stop"
                           __type   =   "GameSound"
                        }
                        __type   =   "GameSoundDesc"
                     }
                     __type   =   "BlueprintNodePlaySoundOnEmitter"
                  }
                  OnChainConstraintStateChange_1   =   {
                     viewData   =   {
                        x   =   3350
                        y   =   6050
                     }
                     OnStart   =   [
                        "PlaySound_9/Play"
                     ]
                     OnStop   =   [
                        "PlaySound_9_1/Play"
                     ]
                     inputChainNameRef   =   {
                        def   =   "close"
                        __type   =   "StringRefParam"
                     }
                     __type   =   "BlueprintNodeOnChainConstraintStateChanged"
                  }
                  PlaySound_1   =   {
                     viewData   =   {
                        x   =   4100
                        y   =   6250
                     }
                     soundDesc   =   {
                        type   =   {
                           name   =   "vhc_batm_grader_blade_move_start"
                           __type   =   "GameSound"
                        }
                        __type   =   "GameSoundDesc"
                     }
                     __type   =   "BlueprintNodePlaySoundOnEmitter"
                  }
                  PlaySound_1_6   =   {
                     viewData   =   {
                        x   =   4100
                        y   =   6400
                     }
                     soundDesc   =   {
                        type   =   {
                           name   =   "vhc_batm_grader_blade_move_stop"
                           __type   =   "GameSound"
                        }
                        __type   =   "GameSoundDesc"
                     }
                     __type   =   "BlueprintNodePlaySoundOnEmitter"
                  }
                  StartShake   =   {
                     viewData   =   {
                        x   =   4800
                        y   =   4750
                     }
                     nameShake   =   {
                        def   =   "batm_engine_started"
                        __type   =   "StringRefParamShakeUid"
                     }
                     catalogShake   =   {
                        def   =   "auto"
                        __type   =   "StringRefParamShakeCatalog"
                     }
                     shakePowerRef   =   {
                        def   =   1
                        __type   =   "FloatRefParam"
                     }
                     __type   =   "BlueprintNodeGameCameraShakeStart"
                  }
                  StartShake_1   =   {
                     viewData   =   {
                        x   =   4800
                        y   =   5050
                     }
                     nameShake   =   {
                        def   =   "batm_engine_shutdown"
                        __type   =   "StringRefParamShakeUid"
                     }
                     catalogShake   =   {
                        def   =   "auto"
                        __type   =   "StringRefParamShakeCatalog"
                     }
                     shakePowerRef   =   {
                        def   =   1
                        __type   =   "FloatRefParam"
                     }
                     __type   =   "BlueprintNodeGameCameraShakeStart"
                  }
               }
               groups   =   {
                  "[SOUND] Tracks - Playback"   =   {
                     x   =   4750
                     y   =   3400
                     width   =   3021.24
                     height   =   690.1797
                     comment   =   ""
                     isCollapsed   =   False
                     __type   =   "NodeGroup"
                  }
                  "[SOUND] rpm and speed"   =   {
                     x   =   6200
                     y   =   4950
                     width   =   1200
                     height   =   429.6875
                     comment   =   ""
                     isCollapsed   =   False
                     __type   =   "NodeGroup"
                  }
                  "[SOUND] suspension"   =   {
                     x   =   6150
                     y   =   4500
                     width   =   1140
                     height   =   303.6163
                     comment   =   ""
                     isCollapsed   =   False
                     __type   =   "NodeGroup"
                  }
               }
               __type   =   "BlueprintActiveByProjectCondition"
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         AddonDig   =   {
            nodes   =   {
               OnTrenchDiggerRotation_Eb6gQh2Q8   =   {
                  viewData   =   {
                     x   =   10350
                     y   =   7550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_4_1_Eb6gQh2Q9/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_4_1_1_Eb6gQh2Qa/Play"
                  ]
                  __type   =   "BlueprintNodeOnTrenchDiggerRotation"
               }
               PlaySound_4_1_Eb6gQh2Q9   =   {
                  viewData   =   {
                     x   =   11150
                     y   =   7550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_vostok_tk53krot_mech_rotate_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_4_1_1_Eb6gQh2Qa   =   {
                  viewData   =   {
                     x   =   11150
                     y   =   7750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_vostok_tk53krot_mech_rotate_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnTrenchDiggerDigTerrain_Eb6gQh2Qb   =   {
                  viewData   =   {
                     x   =   10350
                     y   =   7950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_4_1_1_1_1_Eb6gQh2Qc/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_4_1_1_1_1_Eb6gQh2Qc/Stop",
                     "PlaySound_5_Eb6gQh2Qd/Play"
                  ]
                  __type   =   "BlueprintNodeOnTrenchDiggerTerrainChange"
               }
               PlaySound_4_1_1_1_1_Eb6gQh2Qc   =   {
                  viewData   =   {
                     x   =   11150
                     y   =   7950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_vostok_tk53krot_mech_dig_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_5_Eb6gQh2Qd   =   {
                  viewData   =   {
                     x   =   11150
                     y   =   8150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_vostok_tk53krot_mech_dig_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_2_Eb6gQh2Qe   =   {
                  viewData   =   {
                     x   =   10350
                     y   =   7750
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_4_1_Eb6gQh2Q9/emitterRef/cb",
                     "PlaySound_4_1_1_Eb6gQh2Qa/emitterRef/cb",
                     "PlaySound_4_1_1_1_1_Eb6gQh2Qc/emitterRef/cb",
                     "PlaySound_5_Eb6gQh2Qd/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneWheel_1"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_2_EbhbEJaV   =   {
                  viewData   =   {
                     x   =   10350
                     y   =   6050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_EbhbEJaV2/emitterRef/cb",
                     "PlaySound_4_1_EbhbEJaV4/emitterRef/cb",
                     "PlaySound_4_1_2_EbhbEJaV3/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_RootBone_13"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               BlueprintNodeOnTrenchDiggerStateChanged_EbhbEJaV1   =   {
                  viewData   =   {
                     x   =   10350
                     y   =   6350
                  }
                  OnTryReachSemiopenSateFromClosed   =   [
                     "PlaySound_EbhbEJaV2/Play"
                  ]
                  OnTryReachSemiopenSateFromOpened   =   [
                     "PlaySound_4_1_2_EbhbEJaV3/Play"
                  ]
                  OnClosed   =   [
                     "PlaySound_4_1_4_EbhbEJaV5/Play",
                     "PlaySound_EbhbEJaV2/Stop",
                     "PlaySound_4_1_2_EbhbEJaV3/Stop"
                  ]
                  OnFullyOpened   =   [
                     "PlaySound_4_1_EbhbEJaV4/Play",
                     "PlaySound_EbhbEJaV2/Stop"
                  ]
                  OnSemiopened   =   [
                     "PlaySound_4_1_EbhbEJaV4/Play",
                     "PlaySound_EbhbEJaV2/Stop"
                  ]
                  OnStartMovingFromClosed   =   [
                     "PlaySound_EbhbEJaV2/Play",
                     "PlaySound_4_1_2_EbhbEJaV3/Stop"
                  ]
                  OnStartMovingFromOpened   =   [
                     "PlaySound_EbhbEJaV2/Stop",
                     "PlaySound_4_1_2_EbhbEJaV3/Play"
                  ]
                  __type   =   "BlueprintNodeOnTrenchDiggerStateChanged"
               }
               PlaySound_EbhbEJaV2   =   {
                  viewData   =   {
                     x   =   11200
                     y   =   6450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_vostok_tk53krot_mech_open"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_4_1_2_EbhbEJaV3   =   {
                  viewData   =   {
                     x   =   11200
                     y   =   6050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_vostok_tk53krot_mech_close"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_4_1_EbhbEJaV4   =   {
                  viewData   =   {
                     x   =   11200
                     y   =   6650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_vostok_tk53krot_mech_open_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_4_1_4_EbhbEJaV5   =   {
                  viewData   =   {
                     x   =   11200
                     y   =   6250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_vostok_tk53krot_mech_close_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
            }
            groups   =   {
               "[SOUND] addon - rotate and dig"   =   {
                  x   =   10200
                  y   =   7200
                  width   =   1800
                  height   =   1400
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] addon - open and close"   =   {
                  x   =   10200
                  y   =   5800
                  width   =   1790
                  height   =   1197
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
               __type   =   "TagsSavablePropDesc"
            }
         },
         {
            desc   =   {
               __type   =   "RouteFollowingSavablePropDesc"
            }
         }
      ]
   }
   prop_replicated   =   {
      repEntityBrand   =   {
         type   =   {
            __type   =   "AutoVostokTk53krotCableLayerOldReplicated"
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
      maxFuelTankVolume   =   260
      startFuelTankVolume   =   260
      fuelConsumption   =   0
   }
   prop_truck_constraint_view   =   {
      constraintSequentialChains   =   {
         ChainWorkingPosition   =   {
            links   =   {
               ConstraintSequentialChainLink   =   {
                  constraints   =   [
                     {
                        constraintName   =   "Slider"
                        speed   =   0.8099999
                        maxPosition   =   0.929
                     },
                     {
                        constraintName   =   "Wheel"
                        angularSpeed   =   7.346286
                        maxAngle   =   7.583
                     }
                  ]
                  __type   =   "TruckConstraintSequentialChainLink"
               }
               ConstraintSequentialChainLink_1   =   {
                  constraints   =   [
                     {
                        constraintName   =   "Slider"
                        speed   =   0.8099999
                        minPosition   =   0.929
                        maxPosition   =   2.065
                     },
                     {
                        constraintName   =   "Wheel"
                        angularSpeed   =   -6.007658
                        minAngle   =   7.583
                     }
                  ]
                  __type   =   "TruckConstraintSequentialChainLink"
               }
               ConstraintSequentialChainLink_2   =   {
                  constraints   =   [
                     {
                        constraintName   =   "SliderRotator"
                        angularSpeed   =   55
                        maxAngle   =   72
                     },
                     {
                        constraintName   =   "Wheel"
                        angularSpeed   =   56.43306
                        maxAngle   =   73.876
                     },
                     {
                        constraintName   =   "ArmLeft"
                        angularSpeed   =   49.65278
                        maxAngle   =   65
                     },
                     {
                        constraintName   =   "ArmRight"
                        angularSpeed   =   49.65278
                        maxAngle   =   65
                     }
                  ]
                  __type   =   "TruckConstraintSequentialChainLink"
               }
               ConstraintSequentialChainLink_3   =   {
                  constraints   =   [
                     {
                        constraintName   =   "Slider"
                        speed   =   0.9
                        minPosition   =   2.064
                        maxPosition   =   2.982
                     },
                     {
                        constraintName   =   "Wheel"
                        angularSpeed   =   -9.668842
                        minAngle   =   73.876
                        maxAngle   =   65
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
   }
   sound_emitter   =   {
      enableOcclusion   =   False
      maxOcclusionDistance   =   0
      __onlyOn   =   "visual"
   }
   prop_truck_under_water_cheker   =   {
      rootOffsetPosition   =   {
         y   =   2.3
         z   =   2.3
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
      tag   =   "UID_MODULE_TRENCH_DIGGER_RUSTY"
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
         part_btm3_dig_gravel_small_01   =   {
         }
         part_btm3_dig_ground_01   =   {
         }
         part_btm3_dig_mud_grass_01   =   {
         }
         part_btm3_dig_mud_sand_01   =   {
         }
         part_btm3_dig_mud_wet_01   =   {
         }
         part_btm3_dig_sand_01   =   {
         }
         part_btm3_dig_water_01   =   {
         }
         part_track_acceleration_single_exh_up_01   =   {
         }
         part_exhaust_up_01   =   {
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
         part_track_acceleration_old_01   =   {
         }
         track_particles_oil_02   =   {
         }
         track_particles_mud_01_wet   =   {
            emitters2   =   {
               covering_med_car_mud   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_WET_ON   =   {
                  isVisible   =   True
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
               covering_med_car_mud_1   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               covering_med_car_mud_WET_ON   =   {
                  isVisible   =   True
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
         Spool   =   {
            childrenRotators   =   {
               WireRoller1   =   {
                  rotatorBone   =   "BoneWireRoller1"
                  velocityScalers   =   {
                     float   =   {
                        value   =   -12.786
                     }
                  }
                  axis   =   [
                     -1,
                     0,
                     0
                  ]
                  __type   =   "TruckRotatorNative"
               }
               WireRoller2   =   {
                  rotatorBone   =   "BoneWireRoller2"
                  velocityScalers   =   {
                     float   =   {
                        value   =   -12.786
                     }
                  }
                  axis   =   [
                     -1,
                     0,
                     0
                  ]
                  __type   =   "TruckRotatorNative"
               }
               WireRoller3   =   {
                  rotatorBone   =   "BoneWireRoller3"
                  velocityScalers   =   {
                     float   =   {
                        value   =   -12.786
                     }
                  }
                  axis   =   [
                     -1,
                     0,
                     0
                  ]
                  __type   =   "TruckRotatorNative"
               }
               WireRoller   =   {
                  rotatorBone   =   "BoneWireRoller"
                  velocityScalers   =   {
                     float   =   {
                        value   =   -7.07
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
            isPhysRotation   =   False
            rotatorBone   =   "BoneSpool_Rotator"
            velocityScalers   =   {
               BaseSpeed   =   {
                  value   =   20
               }
               TruckVelocity   =   {
                  value   =   0
               }
            }
            axis   =   [
               1,
               0,
               0
            ]
            __type   =   "TruckRotatorNative"
         }
         Digger   =   {
            childrenRotators   =   {
               Ejector_R   =   {
                  rotatorBone   =   "BoneEjectorRotator_R"
                  velocityScalers   =   {
                     float   =   {
                        value   =   10
                     }
                  }
                  axis   =   [
                     1,
                     0,
                     0
                  ]
                  __type   =   "TruckRotatorNative"
               }
               Ejector_L   =   {
                  rotatorBone   =   "BoneEjectorRotator_L"
                  velocityScalers   =   {
                     float   =   {
                        value   =   10
                     }
                  }
                  axis   =   [
                     -1,
                     0,
                     0
                  ]
                  __type   =   "TruckRotatorNative"
               }
               CardanRotator1   =   {
                  childrenRotators   =   {
                     TruckRotator   =   {
                        rotatorBone   =   "BoneCardanRotator2"
                        axis   =   [
                           1,
                           0,
                           0
                        ]
                        __type   =   "TruckRotatorNative"
                     }
                     TruckRotator_1   =   {
                        rotatorBone   =   "BoneCardanRotator3"
                        axis   =   [
                           1,
                           0,
                           0
                        ]
                        __type   =   "TruckRotatorNative"
                     }
                  }
                  rotatorBone   =   "BoneCardanRotator1"
                  velocityScalers   =   {
                     float   =   {
                        value   =   15
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
            isSmoothStart   =   True
            rotatorBone   =   "BoneDigger_Rotator"
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
               Base_Speed   =   {
                  value   =   50
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
      boneName   =   "BoneRoot_cdt"
      boneOffset   =   {
         x   =   0.78
         y   =   2
         z   =   1.04
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
         "BoneSliderRotator_cdt",
         "BoneSlider_cdt",
         "BoneWheel_cdt",
         "BoneArmRight_cdt",
         "BoneArmLeft_cdt",
         "BoneWireFeedPoint_cdt"
      ]
   }
   prop_truck_track   =   {
      tracks   =   [
         {
            section   =   {
               height   =   0.07
               tpl   =   "vostok_tk53krot_track"
               segmentLength   =   0.12
               segmentBones   =   [
                  "bone0",
                  "bone1"
               ]
               __type   =   "TruckTrackSection"
            }
            decalDescIndex   =   0
            wheelIds   =   [
               0,
               1,
               2,
               3,
               4,
               5,
               6
            ]
            fakeWheelIds   =   [
               14,
               15,
               16
            ]
         },
         {
            section   =   {
               height   =   0.07
               tpl   =   "vostok_tk53krot_track"
               segmentLength   =   0.12
               segmentBones   =   [
                  "bone0",
                  "bone1"
               ]
               __type   =   "TruckTrackSection"
            }
            decalDescIndex   =   0
            wheelIds   =   [
               7,
               8,
               9,
               10,
               11,
               12,
               13
            ]
            fakeWheelIds   =   [
               17,
               18,
               19
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
            bodyName   =   "BoneRoot_cdt"
            offsetInBodySpace   =   {
               x   =   1.539
               y   =   1.207
               z   =   -2.906
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneRoot_cdt"
            offsetInBodySpace   =   {
               x   =   1.539
               y   =   1.207
               z   =   3.265
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneRoot_cdt"
            offsetInBodySpace   =   {
               x   =   -1.539
               y   =   1.207
               z   =   -2.906
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneRoot_cdt"
            offsetInBodySpace   =   {
               x   =   -1.539
               y   =   1.207
               z   =   3.265
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneRoot_cdt"
            offsetInBodySpace   =   {
               x   =   -0.6
               y   =   0.5
               z   =   3.2
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneRoot_cdt"
            offsetInBodySpace   =   {
               x   =   0.6
               y   =   0.5
               z   =   -2.9
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneRoot_cdt"
            offsetInBodySpace   =   {
               x   =   -1.3
               y   =   1.3
               z   =   0.7
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneRoot_cdt"
            offsetInBodySpace   =   {
               x   =   1.3
               y   =   1.3
               z   =   0.7
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneRoot_cdt"
            offsetInBodySpace   =   {
               x   =   0.6
               y   =   0.5
               z   =   3.2
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneRoot_cdt"
            offsetInBodySpace   =   {
               x   =   -0.6
               y   =   0.5
               z   =   -2.9
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
            y   =   0.5
            z   =   1
            __type   =   "Vector3d"
         }
         attachmentBone   =   "_third_person_camera"
         minSpeedToFollow   =   2.4
         firstLaunchCameraAngles   =   {
            x   =   20
            __type   =   "Vector2d"
         }
         followChangeDirectionSpeedThreshold   =   2.4
         scrollPoints   =   {
            "0"   =   {
               distance   =   13
               followTerrainOffset   =   3.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "1"   =   {
               distance   =   15
               followTerrainOffset   =   4
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "2"   =   {
               distance   =   17
               followTerrainOffset   =   4.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "3"   =   {
               distance   =   19
               followTerrainOffset   =   5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "4"   =   {
               distance   =   21
               followTerrainOffset   =   5.5
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "5"   =   {
               distance   =   23
               followTerrainOffset   =   5.75
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
         elasticBoostX   =   1
         elasticBoostZ   =   1
         __type   =   "RbVehicleCameraParams"
      }
   }
   prop_truck_camera_cockpit_preset   =   {
      preset   =   {
         cameraMouseSensitivity   =   0.25
         eyeOffset   =   {
            x   =   0
            y   =   0
            __type   =   "Vector3d"
         }
         rotationLimitsX   =   {
            x   =   -25
            y   =   42
            __type   =   "Vector2dRnd"
         }
         rotationLimitsY   =   {
            x   =   -100
            y   =   170
            __type   =   "Vector2dRnd"
         }
         forwardAngleOffset   =   {
            y   =   -5
            __type   =   "Vector2d"
         }
         leftSideRearView   =   {
            isEnabled   =   True
            transitionStart   =   75
            transitionEnd   =   165
            baseRotation   =   {
               __type   =   "Vector2dRnd"
            }
            eyeOffset   =   {
               x   =   0.6
               y   =   -0.13
               z   =   0.05
               __type   =   "Vector3d"
            }
            rollAngle   =   -8
            rotationLimitsX   =   {
               x   =   -20
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
                  y   =   40
                  __type   =   "Vector2dRnd"
               }
               __type   =   "RbCockpitCameraFollowTurnParams"
            }
            rightTurnParams   =   {
               turnSpeedRange   =   {
                  y   =   40
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
               y   =   -0.2
               z   =   0.7
               __type   =   "Vector3d"
            }
            Vector3d   =   {
               x   =   0.3
               y   =   -0.2
               z   =   0.7
            }
            Vector3d_1   =   {
               x   =   -1.8
               y   =   -0.2
               z   =   -0.4
               __type   =   "Vector3d"
            }
            Vector3d_2   =   {
               x   =   0.3
               y   =   -0.2
               z   =   -0.4
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
               "BoneRoot_cdt",
               "BonePistonWheelBase_IK",
               "BonePistonWheel_IK"
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
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneWheel_cdt"
                  bodyIKName   =   "BonePistonWheel_IK"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneRoot_cdt",
               "BoneWheelCardanBase_IK",
               "BoneWheelCardan_IK"
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
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneWheel_cdt"
                  bodyIKName   =   "BoneWheelCardan_IK"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneRoot_cdt",
               "BoneDumperAxle",
               "BoneDumperPistonBase2",
               "BoneDumperPiston2"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
                  min   =   0
               },
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
                  min   =   0
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneDumperFront_cdt"
                  bodyIKName   =   "BoneDumperPiston2"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneRoot_cdt",
               "BoneDumperPistonBase1",
               "BoneDumperPiston1"
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
                  min   =   0
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneDumperAxle"
                  bodyIKName   =   "BoneDumperPiston1"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneRoot_cdt",
               "BoneDumperPistonBase",
               "BoneDumperPiston"
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
                  min   =   0
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneDumper_cdt"
                  bodyIKName   =   "BoneDumperPiston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneWheel_cdt",
               "BoneArmRightPistonBase",
               "BoneArmRightPiston"
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
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneArmRight_cdt"
                  bodyIKName   =   "BoneArmRightPiston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneWheel_cdt",
               "BoneArmLeftPistonBase",
               "BoneArmLeftPiston"
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
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneArmLeft_cdt"
                  bodyIKName   =   "BoneArmLeftPiston"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneRoot_cdt",
               "BoneRollerRight1_Hinge_IK",
               "BoneRollerRight1_Prismatic_IK"
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
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "roller_right1"
                  bodyIKName   =   "BoneRollerRight1_Prismatic_IK"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneRoot_cdt",
               "BoneRollerRight2_Hinge_IK",
               "BoneRollerRight2_Prismatic_IK"
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
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "roller_right2"
                  bodyIKName   =   "BoneRollerRight2_Prismatic_IK"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneRoot_cdt",
               "BoneRollerRight3_Hinge_IK",
               "BoneRollerRight3_Prismatic_IK"
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
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "roller_right3"
                  bodyIKName   =   "BoneRollerRight3_Prismatic_IK"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneRoot_cdt",
               "BoneRollerRight4_Hinge_IK",
               "BoneRollerRight4_Prismatic_IK"
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
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "roller_right4"
                  bodyIKName   =   "BoneRollerRight4_Prismatic_IK"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneRoot_cdt",
               "BoneRollerRight5_Hinge_IK",
               "BoneRollerRight5_Prismatic_IK"
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
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "roller_right5"
                  bodyIKName   =   "BoneRollerRight5_Prismatic_IK"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneRoot_cdt",
               "BoneRollerLeft1_Hinge_IK",
               "BoneRollerLeft1_Prismatic_IK"
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
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "roller_left1"
                  bodyIKName   =   "BoneRollerLeft1_Prismatic_IK"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneRoot_cdt",
               "BoneRollerLeft2_Hinge_IK",
               "BoneRollerLeft2_Prismatic_IK"
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
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "roller_left2"
                  bodyIKName   =   "BoneRollerLeft2_Prismatic_IK"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneRoot_cdt",
               "BoneRollerLeft3_Hinge_IK",
               "BoneRollerLeft3_Prismatic_IK"
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
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "roller_left3"
                  bodyIKName   =   "BoneRollerLeft3_Prismatic_IK"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneRoot_cdt",
               "BoneRollerLeft4_Hinge_IK",
               "BoneRollerLeft4_Prismatic_IK"
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
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "roller_left4"
                  bodyIKName   =   "BoneRollerLeft4_Prismatic_IK"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneRoot_cdt",
               "BoneRollerLeft5_Hinge_IK",
               "BoneRollerLeft5_Prismatic_IK"
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
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "roller_left5"
                  bodyIKName   =   "BoneRollerLeft5_Prismatic_IK"
               }
            ]
         }
      ]
   }
   vfx   =   {
      vfxSkeleton   =   {
         vfxBones   =   [
            {
               name   =   "Root_Bone_grass"
               bone   =   "cdt_RootBone_5"
               boneOffset   =   [
                  0,
                  0.8,
                  0.3
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.2,
                        0.7,
                        6.5
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
               name   =   "Bone_Arm_Right_grass"
               bone   =   "cdt_BoneArmRight_1"
               boneOffset   =   [
                  0,
                  0.1,
                  -0.3
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.6,
                        1.4,
                        2.5
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
               name   =   "Bone_Arm_Leftt_grass"
               bone   =   "cdt_BoneArmLeft_1"
               boneOffset   =   [
                  0,
                  -0.1,
                  -0.3
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.6,
                        1.4,
                        2.5
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
               name   =   "Right_box_fast_grass"
               bone   =   "root"
               boneOffset   =   [
                  -2.3,
                  0.3,
                  0
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
               name   =   "Left_box_fast_grass"
               bone   =   "root"
               boneOffset   =   [
                  2.3,
                  0.3,
                  0
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
               name   =   "Bone_Dumper_Front"
               bone   =   "cdt_BoneDumperFront_4"
               geom   =   {
                  sphere   =   {
                     radius   =   0.8
                  }
                  cylinder   =   {
                     radius   =   1.2
                  }
                  __type   =   "local__sphere"
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
               name   =   "Bone_Arm_Right_fast_grass"
               bone   =   "cdt_BoneArmRight_1"
               boneOffset   =   [
                  0,
                  0.1,
                  1.3
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.6,
                        1.4,
                        0.7
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
               name   =   "Bone_Arm_Leftt_fast_grass"
               bone   =   "cdt_BoneArmLeft_1"
               boneOffset   =   [
                  0,
                  -0.1,
                  1.3
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.6,
                        1.4,
                        0.7
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
               name   =   "arm_l_box"
               bone   =   "_arm_l_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.359,
                        1.087,
                        1.974
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "arm_r_box"
               bone   =   "_arm_r_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.359,
                        1.087,
                        1.974
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "arm_m_box"
               bone   =   "_arm_m_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.098,
                        1.066,
                        0.334
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "cabin_1_box"
               bone   =   "_cabin_1_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.389,
                        1.608,
                        0.915
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "cabin_2_box"
               bone   =   "_cabin_2_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.209,
                        0.771,
                        1.555
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "body_1_box"
               bone   =   "_body_1_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.978,
                        0.81,
                        6.222
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
               name   =   "body_2_box"
               bone   =   "_body_2_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        3.131,
                        0.244,
                        6.316
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
               name   =   "body_3_box"
               bone   =   "_body_3_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.333,
                        0.971,
                        1.105
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "body_4_box"
               bone   =   "_body_4_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.314,
                        0.528,
                        0.866
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "dumper_1_box"
               bone   =   "_dumper_1_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        3.872,
                        0.325,
                        3.036
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "dumper_2_box"
               bone   =   "_dumper_2_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.026,
                        0.463,
                        1.627
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "dumper_3_cylinder"
               bone   =   "_dumper_3_cylinder"
               geom   =   {
                  cylinder   =   {
                     height   =   1.62
                     radius   =   0.76
                  }
                  __type   =   "local__cylinder"
               }
               systems   =   18
               waterParams   =   {
                  needToSpawnParticles   =   True
               }
            },
            {
               name   =   "wheel_rotator_1_cylinder"
               bone   =   "_wheel_rotator_1_cylinder"
               boneRotation   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  cylinder   =   {
                     height   =   0.64
                     radius   =   1.5
                  }
                  __type   =   "local__cylinder"
               }
               systems   =   18
            },
            {
               name   =   "wheel_rotator_2_box"
               bone   =   "_wheel_rotator_2_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.444,
                        0.488,
                        1.904
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "wheel_rotator_3_box"
               bone   =   "_wheel_rotator_3_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.651,
                        1.389,
                        1.629
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "wheel_rotator_4_box"
               bone   =   "_wheel_rotator_4_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.651,
                        0.547,
                        1.783
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "mud_sfx_grass_left"
               isActiveByDefault   =   False
               bone   =   "cdt_BoneWheel_1"
               boneOffset   =   [
                  2.5,
                  -0.5,
                  0.5
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        2.5,
                        1.5,
                        0.5
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
               name   =   "mud_sfx_grass_right"
               isActiveByDefault   =   False
               bone   =   "cdt_BoneWheel_1"
               boneOffset   =   [
                  -2.5,
                  -0.5,
                  0.5
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        2.5,
                        1.5,
                        0.5
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
               name   =   "track_1_box"
               bone   =   "_body_1_box"
               boneOffset   =   [
                  -1.32,
                  -0.24,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.65,
                        0.81,
                        6.222
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   2
               waterParams   =   {
                  needToSpawnParticles   =   True
               }
            },
            {
               name   =   "track_2_box"
               bone   =   "_body_1_box"
               boneOffset   =   [
                  1.32,
                  -0.24,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.65,
                        0.81,
                        6.222
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   2
               waterParams   =   {
                  needToSpawnParticles   =   True
               }
            },
            {
               name   =   "wheel_rotator_1_blade"
               bone   =   "BoneDigger_Rotator"
               boneRotation   =   [
                  0,
                  10,
                  90
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.5,
                        0.7,
                        0.25
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   2
               waterParams   =   {
                  needToSpawnParticles   =   True
                  particlesSpawnFrequencyScale   =   20
                  addFoam   =   2
                  addMud   =   2
                  addHeight   =   0.3
                  additionForwardVelocity   =   1
                  velocityScale   =   2
               }
            },
            {
               name   =   "wheel_rotator_2_blade"
               bone   =   "BoneDigger_Rotator"
               boneRotation   =   [
                  0,
                  145,
                  90
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.5,
                        0.7,
                        0.25
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   2
               waterParams   =   {
                  needToSpawnParticles   =   True
                  particlesSpawnFrequencyScale   =   20
                  addFoam   =   2
                  addMud   =   2
                  addHeight   =   0.3
                  additionForwardVelocity   =   1
                  velocityScale   =   2
               }
            },
            {
               name   =   "wheel_rotator_3_blade"
               bone   =   "BoneDigger_Rotator"
               boneRotation   =   [
                  0,
                  55,
                  90
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.5,
                        0.7,
                        0.25
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   2
               waterParams   =   {
                  needToSpawnParticles   =   True
                  particlesSpawnFrequencyScale   =   20
                  addFoam   =   2
                  addMud   =   2
                  addHeight   =   0.3
                  additionForwardVelocity   =   1
                  velocityScale   =   2
               }
            },
            {
               name   =   "wheel_rotator_4_blade"
               bone   =   "BoneDigger_Rotator"
               boneRotation   =   [
                  0,
                  100,
                  90
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        3.5,
                        0.7,
                        0.25
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   2
               waterParams   =   {
                  needToSpawnParticles   =   True
                  particlesSpawnFrequencyScale   =   20
                  addFoam   =   2
                  addMud   =   2
                  addHeight   =   0.3
                  additionForwardVelocity   =   1
                  velocityScale   =   2
               }
            },
            {
               name   =   "shadow_root"
               bone   =   "root"
               boneOffset   =   [
                  0,
                  1.55,
                  1.76
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   1.4
                     radius   =   0.87
                     scaleX   =   1.36
                  }
                  capsule   =   {
                     height   =   0.8800003
                     radius   =   1.23
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_02"
               bone   =   "BoneSpool_Rotator"
               boneOffset   =   [
                  0,
                  0,
                  0
               ]
               boneRotation   =   [
                  0,
                  90,
                  0
               ]
               geom   =   {
                  capsule   =   {
                     height   =   0.04
                     radius   =   0.98
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "shadow_03"
               bone   =   "BoneDigger_Rotator"
               geom   =   {
                  capsule   =   {
                     height   =   0
                     radius   =   1.18
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "shadow_04"
               bone   =   "_wheel_rotator_3_box"
               boneOffset   =   [
                  0,
                  0,
                  0.82
               ]
               boneRotation   =   [
                  16.72,
                  0,
                  0
               ]
               geom   =   {
                  capsule   =   {
                     height   =   1.91
                     radius   =   0.7
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "shadow_root7"
               bone   =   "root"
               boneOffset   =   [
                  1.36,
                  0.54,
                  0.06
               ]
               boneRotation   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   4.23
                     radius   =   0.5
                     scaleX   =   0.56
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
               name   =   "shadow_root8"
               bone   =   "root"
               boneOffset   =   [
                  -1.36,
                  0.54,
                  0.06
               ]
               boneRotation   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   4.23
                     radius   =   0.5
                     scaleX   =   0.56
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
               name   =   "shadow_root9"
               bone   =   "root"
               boneOffset   =   [
                  0,
                  1.06,
                  -1.24
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   3.19
                     radius   =   0.34
                     scaleX   =   4.4
                  }
                  capsule   =   {
                     height   =   2.63
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
            fov   =   45
            centerLocatorName   =   "pip_camera_left"
            objName   =   "_hp_cab_interior_mirror_left"
            pipCameraMaterialName   =   "truck_mirror"
            __type   =   "MirrorParams"
         }
         mirror_right   =   {
            fov   =   40
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
      supportedBehivours   =   {
         MOVE_STUCK_CANCEL   =   {
            truckSettings   =   {
               maxSteerSpeed   =   1
               backSteerSpeed   =   1
               lwiPoiValue   =   7
               __type   =   "AiTruckSettings"
            }
            targetVelocity   =   4
            cinematicVelocity   =   60
            targetVelocityPedalControl   =   {
               spline   =   [
                  -3,
                  -1,
                  -52.50547,
                  -82.80575,
                  -2.977876,
                  0.0092308,
                  0,
                  0,
                  -0.3075221,
                  -0.1076923,
                  0.3075221,
                  0.1076923,
                  2,
                  1,
                  0,
                  1,
                  7.325406,
                  -0.6991956
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
                  0.0000005,
                  1,
                  151.7329,
                  0.7224445,
                  180,
                  0.001
               ]
               __type   =   "SplineCurve1d"
            }
            steerScale   =   1.5
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
               maxSteerSpeed   =   1
               backSteerSpeed   =   1
               lwiPoiValue   =   10
               __type   =   "AiTruckSettings"
            }
            targetVelocity   =   4
            cinematicVelocity   =   60
            targetVelocityPedalControl   =   {
               spline   =   [
                  -3,
                  -1,
                  -52.50547,
                  -82.80575,
                  -2.977876,
                  0.0092308,
                  0,
                  0,
                  -0.3075221,
                  -0.1076923,
                  0.3075221,
                  0.1076923,
                  2,
                  1,
                  0,
                  1,
                  7.325406,
                  -0.6991956
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
                  0.0000005,
                  1,
                  151.7329,
                  0.7224445,
                  180,
                  0.001
               ]
               __type   =   "SplineCurve1d"
            }
            steerScale   =   1.5
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
               maxSteerSpeed   =   1
               backSteerSpeed   =   1
               lwiPoiValue   =   10
               __type   =   "AiTruckSettings"
            }
            firstPointOffset   =   -10
            thresholdDistSquare   =   1
            cosThreshold   =   0.06
            pedal   =   1
            steerScale   =   1.5
            minSteer   =   0.65
            __type   =   "MoveToStartPointCaterpillarsRouteBehaviourDesc"
         }
         MOVE_FROM_GARAGE_ON_START   =   {
            truckSettings   =   {
               awd   =   False
               overrideSteerSpeed   =   False
               maxSteerSpeed   =   1
               backSteerSpeed   =   1
               lwiPoiValue   =   10
               __type   =   "AiTruckSettings"
            }
            nodePassSquaredDistance   =   36
            __type   =   "MoveFromGarageBehaviourDesc"
         }
         MOVE_TO_GARAGE_ON_FINISH   =   {
            truckSettings   =   {
               awd   =   False
               overrideSteerSpeed   =   False
               maxSteerSpeed   =   1
               backSteerSpeed   =   1
               lwiPoiValue   =   10
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
         "BoneRoot_cdt",
         "BoneDumperFront_cdt",
         "BoneWheel_cdt"
      ]
   }
   prop_truck_axles_controller   =   {
      independentAxles   =   [
         {
            frame   =   "roller_right1"
            singleWheelID   =   -1
         },
         {
            frame   =   "roller_right2"
            singleWheelID   =   -1
         },
         {
            frame   =   "roller_right3"
            singleWheelID   =   -1
         },
         {
            frame   =   "roller_right4"
            singleWheelID   =   -1
         },
         {
            frame   =   "roller_right5"
            singleWheelID   =   -1
         },
         {
            frame   =   "roller_left1"
            singleWheelID   =   -1
         },
         {
            frame   =   "roller_left2"
            singleWheelID   =   -1
         },
         {
            frame   =   "roller_left3"
            singleWheelID   =   -1
         },
         {
            frame   =   "roller_left4"
            singleWheelID   =   -1
         },
         {
            frame   =   "roller_left5"
            singleWheelID   =   -1
         }
      ]
   }
   prop_truck_view_trench_digger_controller   =   {
      trenchDigger   =   {
         wheelSize   =   {
            x   =   1.5
            y   =   6
            z   =   2
            __type   =   "Vector3d"
         }
         plowSize   =   {
            x   =   3
            y   =   6
            z   =   2
            __type   =   "Vector3d"
         }
         wheelPrimitiveRadius   =   1.5
         plowPrimitiveRadius   =   1.7
         wheelOffsetFromTerrain   =   0.75
         plowOffsetFromTerrain   =   1.3
         edgeMountRadius   =   0.5
         edgeMountOffset   =   1.2
         edgeMudChunkRadius   =   0.8
         edgeMudChunkHeightCoef   =   0.5
         edgeMudChunkSpawnProbability   =   0.3
         edgeMudChunkSpawnDeltaDistance   =   0.03
         edgeMudChunkOffset   =   {
            x   =   0.7
            y   =   1.1
            __type   =   "Vector2d"
         }
         __type   =   "TrenchDigger"
      }
      diggerRotatorName   =   "Digger"
      spoolRotatorName   =   "Spool"
      trenchDiggerSfxs   =   [
         {
            material   =   "mud"
            emitter   =   {
               particleName   =   "part_btm3_dig_mud_wet_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "sand"
            emitter   =   {
               particleName   =   "part_btm3_dig_sand_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "ground"
            emitter   =   {
               particleName   =   "part_btm3_dig_ground_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "grass"
            emitter   =   {
               particleName   =   "part_btm3_dig_mud_grass_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "mud_grass"
            emitter   =   {
               particleName   =   "part_btm3_dig_mud_grass_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "gravel_small"
            emitter   =   {
               particleName   =   "part_btm3_dig_gravel_small_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "mud_sand"
            emitter   =   {
               particleName   =   "part_btm3_dig_mud_sand_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "default"
            emitter   =   {
               particleName   =   "part_btm3_dig_ground_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "dirt"
            emitter   =   {
               particleName   =   "part_btm3_dig_ground_01"
               __type   =   "CustomSfxEmitter"
            }
         }
      ]
      wetTrenchDiggerSfxs   =   [
         {
            material   =   "gravel_small"
            emitter   =   {
               particleName   =   "part_btm3_dig_gravel_small_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "sand"
            emitter   =   {
               particleName   =   "part_btm3_dig_mud_sand_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "mud_grass"
            emitter   =   {
               particleName   =   "part_btm3_dig_mud_grass_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "mud"
            emitter   =   {
               particleName   =   "part_btm3_dig_mud_wet_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "grass"
            emitter   =   {
               particleName   =   "part_btm3_dig_mud_grass_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "ground"
            emitter   =   {
               particleName   =   "part_btm3_dig_ground_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "default"
            emitter   =   {
               particleName   =   "part_btm3_dig_ground_01"
               __type   =   "CustomSfxEmitter"
            }
         },
         {
            material   =   "dirt"
            emitter   =   {
               particleName   =   "part_btm3_dig_ground_01"
               __type   =   "CustomSfxEmitter"
            }
         }
      ]
      mudBentGrassVfxList   =   [
         "mud_sfx_grass_right",
         "mud_sfx_grass_left"
      ]
      wheelAttach   =   {
         locator   =   "root"
         owner   =   "<OWNER>"
         posOffset   =   {
            y   =   0.6
            z   =   -5.5
            __type   =   "Vector3d"
         }
         __type   =   "Tracker"
      }
      plowAttach   =   {
         locator   =   "root"
         owner   =   "<OWNER>"
         posOffset   =   {
            y   =   0.6
            z   =   -8.5
            __type   =   "Vector3d"
         }
         __type   =   "Tracker"
      }
      shovelBodySettings   =   [
         {
            bodyName   =   "BoneArmLeft_cdt"
            rotation   =   {
               x   =   0
               y   =   90
               z   =   0
               __type   =   "Vector3d"
            }
            shovelOffset   =   {
               x   =   -0.12
               y   =   -0.3
               z   =   -0.05
               __type   =   "Vector3d"
            }
            shovelSize   =   {
               x   =   2.4
               y   =   1.5
               z   =   0.7
               __type   =   "Vector3d"
            }
            dstrZoneOffset   =   -0.08
            dstrZoneWidth   =   0.2
            isFlattenAbility   =   True
         },
         {
            bodyName   =   "BoneArmRight_cdt"
            rotation   =   {
               x   =   180
               y   =   -90
               z   =   0
               __type   =   "Vector3d"
            }
            shovelOffset   =   {
               x   =   0.12
               y   =   -0.3
               z   =   -0.05
               __type   =   "Vector3d"
            }
            shovelSize   =   {
               x   =   2.4
               y   =   1.5
               z   =   0.7
               __type   =   "Vector3d"
            }
            dstrZoneOffset   =   -0.08
            dstrZoneWidth   =   0.2
            isFlattenAbility   =   True
         },
         {
            bodyName   =   "BoneWheel_cdt"
            rotation   =   {
               y   =   0
               __type   =   "Vector3d"
            }
            shovelOffset   =   {
               y   =   -0.4
               z   =   -1.7
               __type   =   "Vector3d"
            }
            shovelSize   =   {
               x   =   2.7
               y   =   2
               z   =   0.6
               __type   =   "Vector3d"
            }
            dstrZoneWidth   =   0.3
         }
      ]
      trenchDiggerVelocityThreshold   =   -1
      wireUncoilVelocityCoef   =   0.2
      wireGeomObject   =   "cable"
      wireFeedPoint   =   "WireFeedPoint"
      wheelGeomObject   =   "cdt_BoneWheel_1"
      wheelRbName   =   "BoneWheel_cdt"
      heightSpread   =   3
      shouldClampMaxVelocity   =   True
      semiopenStageIndex   =   2
      sfxBone   =   "_sfx_wheel"
      switchWhileActiveDisturbers   =   [
         "wheel_rotator_1_blade",
         "wheel_rotator_2_blade",
         "wheel_rotator_3_blade",
         "wheel_rotator_4_blade"
      ]
      waterSfxName   =   "part_btm3_dig_water_01"
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
            maxRotationAngle   =   75
            dashboardSubtype   =   "SPEED"
            scale   =   5
            __type   =   "DashboardElementCockpit"
         }
         "1"   =   {
            nameBone   =   "ctrl_dashboard_rpm"
            axis   =   "Y"
            maxRotationAngle   =   120
            dashboardSubtype   =   "RPM"
            damping   =   0.01
            increase   =   -35
            __type   =   "DashboardElementCockpit"
         }
         "2"   =   {
            nameBone   =   "ctrl_dashboard_fuel"
            axis   =   "Y"
            maxRotationAngle   =   180
            dashboardSubtype   =   "FUEL"
            damping   =   0.005
            __type   =   "DashboardElementCockpit"
         }
         "3"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_mainline"
            axis   =   "Y"
            maxRotationAngle   =   15
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.003
            __type   =   "DashboardElementCockpit"
         }
         "4"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_oil"
            axis   =   "Y"
            maxRotationAngle   =   80
            dashboardSubtype   =   "RPM"
            damping   =   0.005
            __type   =   "DashboardElementCockpit"
         }
         "5"   =   {
            nameBone   =   "ctrl_dashboard_engine_temp_1"
            axis   =   "Y"
            maxRotationAngle   =   20
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.002
            __type   =   "DashboardElementCockpit"
         }
         "6"   =   {
            nameBone   =   "ctrl_dashboard_engine_temp_2"
            axis   =   "Y"
            maxRotationAngle   =   55
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.002
            __type   =   "DashboardElementCockpit"
         }
         "7"   =   {
            nameBone   =   "ctrl_dashboard_engine_amperage"
            axis   =   "Y"
            maxRotationAngle   =   30
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "8"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure_2"
            axis   =   "Y"
            maxRotationAngle   =   25
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.003
            __type   =   "DashboardElementCockpit"
         }
         "9"   =   {
            nameBone   =   "ctrl_pedal_drive"
            axis   =   "Y"
            maxRotationAngle   =   30
            dashboardSubtype   =   "RPM"
            damping   =   0.1
            increase   =   -30
            __type   =   "DashboardElementCockpit"
         }
         "10"   =   {
            nameBone   =   "ctrl_steering_right"
            axis   =   "Y"
            maxRotationAngle   =   15
            steeringSubtype   =   "RL"
            nameBoneSecond   =   "ctrl_steering_left"
            rotationSpeed   =   45
            __type   =   "SteerigElementCockpit"
         }
         "11"   =   {
            nameBone   =   "ctrl_gear_stick_low"
            axis   =   "Y"
            maxRotationAngle   =   10
            speed   =   30
            switcherSubtype   =   "LOW_GEAR"
            __type   =   "SwitcherElementCockpit"
         }
         "12"   =   {
            nameBone   =   "ctrl_gear_stick"
            rotationSpeed   =   45
            states   =   {
               AUTO   =   {
                  primary   =   {
                     axis   =   "X"
                     angle   =   -10
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
      }
   }
   prop_truck_view_actions_mapper   =   {
      firstControlSectionUiName   =   "UID_HUD_FIRST_SECTION_TRENCH_DIGGER_CONTROL"
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
         uiActionDescription   =   "UID_HUD_TRENCH_DIGGER_ACTIVATE"
         isToggleable   =   True
         altUiActionDescription   =   "UID_HUD_TRENCH_DIGGER_DEACTIVATE"
         namedActionType   =   "TOGGLE_TRENCH_DIGGER"
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
      reverseAngleThreshold   =   0
      velocityScale   =   1.45
      stuckVelocityThreshold   =   2
      stuckScaleChange   =   0.5
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
            shakerBone   =   "BoneRoot_cdt"
            frequency   =   75
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
               -0.002222,
               0.630087,
               0.163992,
               1.205837,
               1,
               0
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
               0.00107,
               0.446611,
               0.114622,
               1.03857,
               1,
               0
            ]
            shakeOnStartTimeMs   =   0
            dampingStep   =   15
            frequencyMultiplier   =   [
               0.001051,
               0.393002,
               0.186087,
               0.993627,
               0.997887,
               0.010996
            ]
         }
         EngineShutdown   =   {
            shakerBone   =   "BoneRoot_cdt"
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
               0.150328,
               0.357372,
               0.362746,
               0.018208,
               0.99741,
               0.964298
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
   prop_truck_mirror   =   {
      mirrors   =   [
         {
            name   =   "mirror_left_case"
            angleRotateX   =   5
            angleRotateY   =   3.5
         },
         {
            name   =   "mirror_right_case"
            angleRotateX   =   2
            angleRotateY   =   -9
         }
      ]
   }
}
__type   =   "truck_view"
