properties   =   {
   geom   =   {
      nameTpl   =   "epec_tc305_crane"
   }
   prop_truck_view_controller   =   {
      engineFiringDelay   =   1000
   }
   prop_truck_view   =   {
      truckName   =   "epec_tc305_heavy_crane_new"
      truckType   =   "tracked_heavy"
      truckVisibilityInFogOfWar   =   100
   }
   prop_truck_rb   =   {
      suspensionSet   =   {
         front   =   {
            max   =   0
            strength   =   1
            damping   =   0.85
         }
         rearDiffers   =   True
         rear   =   {
            max   =   0.4
            strength   =   0.001
            damping   =   0.3
         }
      }
      engine   =   {
         params   =   {
            torque   =   600000
            brakesDelay   =   0.5
            maxDeltaAngVel   =   0.001
            responsiveness   =   0.4
            jerkingScale   =   2
            jerkingPeriod   =   0.1
            rpmDropTime   =   3
            __type   =   "TruckEngineParams"
         }
         __type   =   "TruckEngine"
      }
      gearbox   =   {
         params   =   {
            gears   =   [
               {
                  sslModule   =   "physics.truck.truck_components"
                  angularVelocity   =   1
                  gearRatio   =   5
                  targetSpeedRangeKmh   =   {
                     x   =   0
                     y   =   5
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   2
                  gearRatio   =   4
                  targetSpeedRangeKmh   =   {
                     x   =   5
                     y   =   14
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   4
                  gearRatio   =   3.5
                  targetSpeedRangeKmh   =   {
                     x   =   14
                     y   =   20
                     __type   =   "Vector2dRnd"
                  }
               }
            ]
            reverseGear   =   {
               angularVelocity   =   0.75
               gearRatio   =   4.2
               __type   =   "TruckSingleGearParams"
            }
            highGear   =   {
               angularVelocity   =   3
               __type   =   "TruckSingleGearParams"
            }
            lowRangeGear   =   {
               angularVelocity   =   0.2
               gearRatio   =   4.4
               __type   =   "TruckSingleGearParams"
            }
            isLowRangeModeReverseEnabled   =   True
            isLowRangeModeClutchingEnabled   =   False
            clutchSwitchTime   =   0
            defaultGearSwitchDelay   =   0.12
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
      pedalsResponsiveness   =   0.9
      isNeutralGearWheelResistanceEnabled   =   False
      isReverseWheelResistanceEnabled   =   True
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
      projectCallbacks   =   {
         __type   =   "TruckRoadbuilderCallbacks"
      }
      slopeAngleFrictionMult   =   {
         spline   =   [
            0,
            1,
            20,
            1,
            35,
            0.9,
            55,
            0.35
         ]
         __type   =   "SplineCurve1d"
      }
      wheelsSubstanceResistanceMult   =   {
         spline   =   [
            0,
            0.88,
            0.5,
            0.2,
            1,
            0.15
         ]
         __type   =   "SplineCurve1d"
      }
      wheelSlotWithDescs   =   [
         {
            geomName   =   "roller_left0"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.35
            editableWheel   =   "FrontWheelSound"
         },
         {
            geomName   =   "roller_left12"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.35
            editableWheel   =   "RearWheel"
         },
         {
            geomName   =   "roller_right0"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.35
            editableWheel   =   "FrontWheelSound"
         },
         {
            geomName   =   "roller_right12"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.35
            editableWheel   =   "RearWheel"
         },
         {
            geomName   =   "fake_roller_left0"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.35
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_roller_left1"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.35
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_roller_left2"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.35
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_roller_left3"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.35
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_roller_left4"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.35
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_roller_right0"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.35
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_roller_right1"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.35
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_roller_right2"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.35
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_roller_right3"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.35
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_roller_right4"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            handbrakeStrength   =   0.35
            editableWheel   =   "FakeWheel"
         }
      ]
      wheelsWithTrail   =   {
         roller_left0   =   {
            __type   =   "WheelTrailDesc"
         }
         roller_right0   =   {
            __type   =   "WheelTrailDesc"
         }
         roller_left12   =   {
            isRear   =   True
            __type   =   "WheelTrailDesc"
         }
         roller_right12   =   {
            isRear   =   True
            __type   =   "WheelTrailDesc"
         }
      }
      wheelPool   =   {
         FrontWheel   =   {
            __value   =   "auto_wheel_epec_tc305_heavy_crane_new_frontwheel"
         }
         MiddleWheel   =   {
            __value   =   "auto_wheel_epec_tc305_heavy_crane_new_middlewheel"
         }
         FakeWheel   =   {
            __value   =   "auto_wheel_epec_tc305_heavy_crane_new_fakewheel"
         }
         RearWheel   =   {
            __value   =   "auto_wheel_epec_tc305_heavy_crane_new_rearwheel"
         }
         TopWheel   =   {
            __value   =   "auto_wheel_epec_tc305_heavy_crane_new_topwheel"
         }
         FrontWheelSound   =   {
            __value   =   "auto_wheel_epec_tc305_heavy_crane_new_frontwheelsound"
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
                     "TruckShaker_E1mcda78/Play",
                     "TruckShaker_E1mcda781/Stop",
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
                     "PlaySound/Play",
                     "TruckShaker_E1mcda781/Play",
                     "TruckShaker_E1mcda78/Stop"
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
                     x   =   3950
                     y   =   4600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_epec_tc305_engine_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               SetSoundSwitch   =   {
                  viewData   =   {
                     x   =   3600
                     y   =   4600
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
                     x   =   3950
                     y   =   5000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1/Stop",
                     "PlaySound_Eafcmn6F/Stop",
                     "PlaySound_7/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_epec_tc305_engine_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1   =   {
                  viewData   =   {
                     x   =   3950
                     y   =   4800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_Eafcmn6F/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_epec_tc305_engine"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3   =   {
                  viewData   =   {
                     x   =   3950
                     y   =   5650
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
               PlaySound_3_1   =   {
                  viewData   =   {
                     x   =   3950
                     y   =   6050
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
               PlaySound_2_2   =   {
                  viewData   =   {
                     x   =   6900
                     y   =   4600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "Schedule_1_1/Start"
                  ]
                  OnSoundEnd   =   [
                     "Schedule_1_1/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_track_excavator_right"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_1_1   =   {
                  viewData   =   {
                     x   =   6200
                     y   =   4600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_2_2/Play"
                  ]
                  OnSoundEnd   =   [
                     "PlaySound_2_2/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_track_excavator_left"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               HandleEvent   =   {
                  viewData   =   {
                     x   =   5800
                     y   =   4600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
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
                     x   =   5800
                     y   =   4700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
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
                     x   =   8450
                     y   =   4600
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
               SetSoundParameter_1_2_1   =   {
                  viewData   =   {
                     x   =   7950
                     y   =   4600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
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
               GetRightWheelAngularSpeed_1   =   {
                  viewData   =   {
                     x   =   7900
                     y   =   4900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetAngularSpeed   =   [
                     "FloatAbs_E2pf6S9W/value/cb"
                  ]
                  __type   =   "BlueprintNodeWheelRightGetAngularSpeed"
               }
               GetLeftWheelAngularSpeed_1   =   {
                  viewData   =   {
                     x   =   7400
                     y   =   4900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetAngularSpeed   =   [
                     "FloatAbs_E2pf6Hf5/value/cb"
                  ]
                  __type   =   "BlueprintNodeWheelLeftGetAngularSpeed"
               }
               Schedule_1_1   =   {
                  viewData   =   {
                     x   =   7600
                     y   =   4600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
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
                     x   =   3950
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
                     x   =   3950
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
               GetTruckRpm   =   {
                  viewData   =   {
                     x   =   5800
                     y   =   5500
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
               OnInit_1   =   {
                  viewData   =   {
                     x   =   5800
                     y   =   5400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "Schedule_1_1_1/Start"
                  ]
                  __type   =   "BlueprintCommonLibraryOninit"
               }
               Schedule_1_1_1   =   {
                  viewData   =   {
                     x   =   5997.744
                     y   =   5400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
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
                     x   =   5800
                     y   =   5600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetLinearVelocity   =   [
                     "SetSoundParameter_1_1_1_1/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               SetSoundParameter_1_1   =   {
                  viewData   =   {
                     x   =   6400
                     y   =   5400
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
                     x   =   6400
                     y   =   5550
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
               CloneSoundEmitter_E1faJm1k   =   {
                  viewData   =   {
                     x   =   5950
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_1_1/emitterRef/cb",
                     "SetSoundParameter_1_2_1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "roller_left6"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        x   =   1
                        __type   =   "Vector3d"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_E1faJCcj   =   {
                  viewData   =   {
                     x   =   6700
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_2/emitterRef/cb",
                     "SetSoundParameter_1_1_1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "roller_right6"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        x   =   -1
                        __type   =   "Vector3d"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               TruckShaker_E1mcda78   =   {
                  viewData   =   {
                     x   =   3600
                     y   =   4900
                  }
                  duration   =   4
                  shakerName   =   "EngineStart"
                  __type   =   "BlueprintNodeTruckShaker"
               }
               TruckShaker_E1mcda781   =   {
                  viewData   =   {
                     x   =   3600
                     y   =   5050
                  }
                  duration   =   3
                  shakerName   =   "EngineShutdown"
                  maxRPM   =   True
                  __type   =   "BlueprintNodeTruckShaker"
               }
               FloatAbs_E2pf6Hf5   =   {
                  viewData   =   {
                     x   =   7750
                     y   =   4800
                  }
                  Abs   =   [
                     "SetSoundParameter_1_2_1/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatabs"
               }
               FloatAbs_E2pf6S9W   =   {
                  viewData   =   {
                     x   =   8200
                     y   =   4800
                  }
                  Abs   =   [
                     "SetSoundParameter_1_1_1/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatabs"
               }
               PlaySound_Eafcmn6F   =   {
                  viewData   =   {
                     x   =   4700
                     y   =   4800
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
               OnGearUpdate_F397Dv9W   =   {
                  viewData   =   {
                     x   =   5800
                     y   =   6200
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
                     "SetSoundParameter_1_F397Dv9W1/SetParameter"
                  ]
                  GetLastGear   =   [
                     "SetSoundParameter_1_F397Dv9W1/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               SetSoundParameter_1_F397Dv9W1   =   {
                  viewData   =   {
                     x   =   6600
                     y   =   6400
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
               OnEngineRunningOnInit_F72c20bt   =   {
                  viewData   =   {
                     x   =   3100
                     y   =   5000
                  }
                  OnEngineRunning   =   [
                     "TruckShaker_E1mcda78/Stop",
                     "TruckShaker_E1mcda781/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineRunningOnInit"
               }
               CloneSoundEmitter_Ea7jP44g   =   {
                  viewData   =   {
                     x   =   4700
                     y   =   5300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_7/emitterRef/cb",
                     "PlaySound/emitterRef/cb",
                     "PlaySound_1/emitterRef/cb",
                     "SetSoundParameter_1_1/emitterRef/cb",
                     "SetSoundParameter_1_1_1_1/emitterRef/cb",
                     "SetSoundParameter_1_F397Dv9W1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneCabin_11"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  trackerLocalRotation   =   {
                     x   =   -180
                     __type   =   "Vector3d"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_Ea7jPH2I   =   {
                  viewData   =   {
                     x   =   4200
                     y   =   5850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_3/emitterRef/cb",
                     "PlaySound_3_1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneCabin_6"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
            }
            groups   =   {
               "[SOUND] Tracks - Playback"   =   {
                  x   =   5700
                  y   =   4400
                  width   =   3300
                  height   =   690
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] rpm and speed"   =   {
                  x   =   5700
                  y   =   5200
                  width   =   1300
                  height   =   640
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] gear update"   =   {
                  x   =   5700
                  y   =   5950
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
                  zeroBorderEnergy   =   10000
                  timeInterval   =   250
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
                     x   =   0
                     y   =   -75
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  bFloat   =   {
                     def   =   5
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
               OnTPLAnimationBegin_E8ee7E6N   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1650
                  }
                  OnAnimStart   =   [
                     "PlaySound_E8ee7E6N2/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnBegin"
               }
               OnTPLAnimationEnd_E8ee7E6N1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1850
                  }
                  OnAnimStop   =   [
                     "PlaySound_E8ee7E6N3/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnEnd"
               }
               PlaySound_E8ee7E6N2   =   {
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
               PlaySound_E8ee7E6N3   =   {
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
               CloneSoundEmitter_Eau8QSd6   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   1650
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E8ee7E6N2/emitterRef/cb",
                     "PlaySound_E8ee7E6N3/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneWiper_2"
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
               GetInfoElementCockpitForSoundWithEvent_Ea7kgvdC3   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3800
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ea7kgvdC4/Play"
                  ]
                  nameBoneBro   =   "ctrl_gear_stick_low"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_Ea7kgvdC4   =   {
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
                        name   =   "vhc_body_cockpit_switch"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_Ea7kgvdC5   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea7kgvdC4/emitterRef/cb"
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
               GetInfoElementCockpitForSoundWithEvent_Ea7kEm9j   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ea7kEm9j1/Play"
                  ]
                  nameBoneBro   =   "ctrl_lever_drive"
                  isWheel   =   True
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_Ea7kEm9j1   =   {
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
                        name   =   "vhc_body_cockpit_joystick"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_Ea7kEm9j2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ea7kEm9j1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_lever_drive"
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
               OnCraneWinchChanged   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   7100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAttached   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1_1_2/Input"
                  ]
                  OnDetached   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1_1_2/Input"
                  ]
                  OnLengthUpdated   =   [
                     "CraneValueMovement_3/Input"
                  ]
                  GetLength   =   [
                     "CraneValueMovement_3/newValueRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnCraneWinchChanged"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1_1_2   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   7100
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
               CraneValueMovement_3   =   {
                  viewData   =   {
                     x   =   4522.341
                     y   =   7323.857
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
                     x   =   5007.542
                     y   =   7323.447
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
                     x   =   5022.341
                     y   =   7473.857
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
         SFX   =   {
            nodes   =   {
               OnEngineStarting   =   {
                  viewData   =   {
                     x   =   3200
                     y   =   5900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineStarting   =   [
                     "VFXRestart_E9p9uI1c/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarting"
               }
               OnEngineStarted   =   {
                  viewData   =   {
                     x   =   3200
                     y   =   4950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineStarted   =   [
                     "VFXRestart_1/Input",
                     "VFXRestart_2/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown   =   {
                  viewData   =   {
                     x   =   3198
                     y   =   5100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineShutdown   =   [
                     "VFXStop_1/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               OnEngineAcceleration   =   {
                  viewData   =   {
                     x   =   3200
                     y   =   5450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAcceleration   =   [
                     "VFXRestart/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9p9vg1j/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse   =   {
                  viewData   =   {
                     x   =   3200
                     y   =   5650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnEngineReverse   =   [
                     "VFXRestart/Input"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9p9vg1j/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               VFXRestart   =   {
                  viewData   =   {
                     x   =   3600
                     y   =   5500
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
               VFXRestart_1   =   {
                  viewData   =   {
                     x   =   3600
                     y   =   4950
                  }
                  OnExit   =   [
                     "VFXRestart_E9p9wb4H/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_exhaust_faint_smoke_up_gas_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_2   =   {
                  viewData   =   {
                     x   =   3600
                     y   =   5050
                  }
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze_xxxl"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_1   =   {
                  viewData   =   {
                     x   =   3600
                     y   =   5150
                  }
                  OnExit   =   [
                     "VFXStop_E9p9wi9Y/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze_xxxl"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_E9p9uI1c   =   {
                  viewData   =   {
                     x   =   3600
                     y   =   5900
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  vfxUidRef   =   {
                     def   =   ""
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9p9vg1j   =   {
                  viewData   =   {
                     x   =   3600
                     y   =   5600
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_faint_smoke_up_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_E9p9wb4H   =   {
                  viewData   =   {
                     x   =   4150
                     y   =   4950
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_neutral_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9p9wi9Y   =   {
                  viewData   =   {
                     x   =   4150
                     y   =   5150
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
               OnCraneWinchChanged_E1fbem2x   =   {
                  viewData   =   {
                     x   =   7300
                     y   =   6450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnAttached   =   [
                     "PlaySound_2_1_1_E1fbem2x1/Play"
                  ]
                  OnDetached   =   [
                     "PlaySound_2_1_1_E1fbem2x2/Play"
                  ]
                  OnLengthUpdated   =   [
                     "CraneValueMovement_E1fbem2x3/Input"
                  ]
                  OnRotateUpdated   =   [
                     "CraneValueMovement_E1fbem2x4/Input"
                  ]
                  GetLength   =   [
                     "CraneValueMovement_E1fbem2x3/newValueRef/cb"
                  ]
                  GetRotate   =   [
                     "CraneValueMovement_E1fbem2x4/newValueRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnCraneWinchChanged"
               }
               PlaySound_2_1_1_E1fbem2x1   =   {
                  viewData   =   {
                     x   =   8700
                     y   =   6150
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
               PlaySound_2_1_1_E1fbem2x2   =   {
                  viewData   =   {
                     x   =   8700
                     y   =   6300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_2_1_1_1_E1fbem2x5/Stop",
                     "PlaySound_2_1_1_1_E1fbem2x7/Stop"
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
               CraneValueMovement_E1fbem2x3   =   {
                  viewData   =   {
                     x   =   8100
                     y   =   6600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStartMoving   =   [
                     "PlaySound_2_1_1_1_E1fbem2x5/Play"
                  ]
                  OnStopMoving   =   [
                     "PlaySound_2_1_1_2_E1fbem2x6/Play",
                     "PlaySound_2_1_1_1_E1fbem2x5/Stop"
                  ]
                  newValueRef   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetStatus   =   [
                     "SetSoundParameter_3_E1fbem2x9/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeCraneValueMovement"
               }
               CraneValueMovement_E1fbem2x4   =   {
                  viewData   =   {
                     x   =   8100
                     y   =   7000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStartMoving   =   [
                     "PlaySound_2_1_1_1_E1fbem2x7/Play"
                  ]
                  OnStopMoving   =   [
                     "PlaySound_2_1_1_2_E1fbem2x8/Play",
                     "PlaySound_2_1_1_1_E1fbem2x7/Stop"
                  ]
                  newValueRef   =   {
                     __type   =   "FloatRefParam"
                  }
                  GetStatus   =   [
                     "SetSoundParameter_3_E1fbem2xa/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeCraneValueMovement"
               }
               PlaySound_2_1_1_1_E1fbem2x5   =   {
                  viewData   =   {
                     x   =   8700
                     y   =   6500
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
               PlaySound_2_1_1_2_E1fbem2x6   =   {
                  viewData   =   {
                     x   =   8700
                     y   =   6650
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
               PlaySound_2_1_1_1_E1fbem2x7   =   {
                  viewData   =   {
                     x   =   8700
                     y   =   7000
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
               PlaySound_2_1_1_2_E1fbem2x8   =   {
                  viewData   =   {
                     x   =   8700
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
               SetSoundParameter_3_E1fbem2x9   =   {
                  viewData   =   {
                     x   =   8600
                     y   =   6850
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
               SetSoundParameter_3_E1fbem2xa   =   {
                  viewData   =   {
                     x   =   8600
                     y   =   7300
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
               CraneAxisControlSoundNode_E1fbem2xb   =   {
                  viewData   =   {
                     x   =   8100
                     y   =   7250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  logic   =   {
                     nodes   =   {
                        Pipe_1   =   {
                           Output   =   [
                              "../../../SetSoundParameter_3_E1fbem2x9/SetParameter",
                              "../../../SetSoundParameter_3_E1fbem2xa/SetParameter"
                           ]
                           __type   =   "BlueprintLibraryPipe"
                        }
                     }
                     __type   =   "BluePrintFunction"
                  }
                  __type   =   "BlueprintFunctionCraneAxisControlSoundNode"
               }
               GetSoundDesc_E1fbem2xc   =   {
                  viewData   =   {
                     x   =   7300
                     y   =   7300
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
                     "CraneAxisControlSoundNode_E1fbem2xb/logic/nodes/PlaySound_10_3/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_E1fbem2xd   =   {
                  viewData   =   {
                     x   =   7300
                     y   =   7350
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
                     "CraneAxisControlSoundNode_E1fbem2xb/logic/nodes/PlaySound_10_1_2/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_E1fbem2xe   =   {
                  viewData   =   {
                     x   =   7300
                     y   =   7600
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
                     "CraneAxisControlSoundNode_E1fbem2xb/logic/nodes/PlaySound_10_2_1_1/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_E1fbem2xf   =   {
                  viewData   =   {
                     x   =   7300
                     y   =   7650
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
                     "CraneAxisControlSoundNode_E1fbem2xb/logic/nodes/PlaySound_10_1_1_1_1/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_E1fbem2xg   =   {
                  viewData   =   {
                     x   =   7300
                     y   =   7700
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
                     "CraneAxisControlSoundNode_E1fbem2xb/logic/nodes/PlaySound_10_2_2/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               GetSoundDesc_1_E1fbem2xh   =   {
                  viewData   =   {
                     x   =   7300
                     y   =   7750
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
                     "CraneAxisControlSoundNode_E1fbem2xb/logic/nodes/PlaySound_10_1_1_2/soundDescRef/cb"
                  ]
                  __type   =   "BlueprintNodeGetSoundDesc"
               }
               OnCraneArrowChanged_1_E1fbem2xi   =   {
                  viewData   =   {
                     x   =   7300
                     y   =   7150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnUpdated   =   [
                     "CraneAxisControlSoundNode_E1fbem2xb/logic/nodes/Pipe/Input"
                  ]
                  GetX   =   [
                     "CraneAxisControlSoundNode_E1fbem2xb/logic/nodes/CraneValueMovement_3_1/newValueRef/cb"
                  ]
                  GetY   =   [
                     "CraneAxisControlSoundNode_E1fbem2xb/logic/nodes/CraneValueMovement_1_1_1/newValueRef/cb"
                  ]
                  GetZ   =   [
                     "CraneAxisControlSoundNode_E1fbem2xb/logic/nodes/CraneValueMovement_2_1_1/newValueRef/cb"
                  ]
                  rootBodyName   =   "BoneCabin_cdt"
                  hookBodyName   =   "BoneCraneSeg2_cdt"
                  hookPosThreshold   =   0.003
                  xConstraintName   =   "cabin"
                  xThreshold   =   0.001
                  __type   =   "BlueprintNodeOnCraneArrowPositionChanged"
               }
               CloneSoundEmitter_E1hkaH6W   =   {
                  viewData   =   {
                     x   =   7300
                     y   =   6800
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_1_1_E1fbem2x1/emitterRef/cb",
                     "PlaySound_2_1_1_E1fbem2x2/emitterRef/cb",
                     "PlaySound_2_1_1_1_E1fbem2x5/emitterRef/cb",
                     "PlaySound_2_1_1_2_E1fbem2x6/emitterRef/cb",
                     "SetSoundParameter_3_E1fbem2x9/emitterRef/cb",
                     "PlaySound_2_1_1_1_E1fbem2x7/emitterRef/cb",
                     "PlaySound_2_1_1_2_E1fbem2x8/emitterRef/cb",
                     "SetSoundParameter_3_E1fbem2xa/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneCraneSeg2_2"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               OnTruckModuleReset_E1oaoSfL   =   {
                  viewData   =   {
                     x   =   7300
                     y   =   8100
                  }
                  OnReseted   =   [
                     "PlaySound_E1oaoSfL1/Play"
                  ]
                  __type   =   "BlueprintNodeOnTruckModuleReset"
               }
               PlaySound_E1oaoSfL1   =   {
                  viewData   =   {
                     x   =   8100
                     y   =   8050
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
               CloneSoundEmitter_E22iDN2M   =   {
                  viewData   =   {
                     x   =   7300
                     y   =   7450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "CraneAxisControlSoundNode_E1fbem2xb/logic/nodes/PlaySound_10_3/emitterRef/cb",
                     "CraneAxisControlSoundNode_E1fbem2xb/logic/nodes/PlaySound_10_1_2/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneChassis_4"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_E22iFKg7   =   {
                  viewData   =   {
                     x   =   7300
                     y   =   7850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "CraneAxisControlSoundNode_E1fbem2xb/logic/nodes/PlaySound_10_2_1_1/emitterRef/cb",
                     "CraneAxisControlSoundNode_E1fbem2xb/logic/nodes/PlaySound_10_1_1_1_1/emitterRef/cb",
                     "CraneAxisControlSoundNode_E1fbem2xb/logic/nodes/PlaySound_10_2_2/emitterRef/cb",
                     "CraneAxisControlSoundNode_E1fbem2xb/logic/nodes/PlaySound_10_1_1_2/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneCabin_11"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        z   =   0
                        __type   =   "null"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
            }
            groups   =   {
               "[SOUND] addon - crane & winch"   =   {
                  x   =   7100
                  y   =   5987.5
                  width   =   2350
                  height   =   2312.5
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
         }
      ]
   }
   prop_replicated   =   {
      repEntityBrand   =   {
         type   =   {
            __type   =   "AutoEpecTc305HeavyCraneNewReplicated"
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
      maxFuelTankVolume   =   360
      startFuelTankVolume   =   360
      fuelConsumption   =   0.2
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
      fadeOutTime   =   0.5
      enableOcclusion   =   False
      maxOcclusionDistance   =   0
      __onlyOn   =   "visual"
   }
   prop_truck_under_water_cheker   =   {
      rootOffsetPosition   =   {
         x   =   0.5
         y   =   1.2
         z   =   -2
         __type   =   "Vector3d"
      }
      chekerAttachBody   =   "BoneCabin_cdt"
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
                  z   =   0.7
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
      tag   =   "UID_MODULE_TRACKED_HEAVY_CRANE"
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
         part_radiator_haze_xxxl   =   {
         }
         part_track_acceleration_single_exh_01   =   {
         }
         part_exhaust_horizontal_01   =   {
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
      boneName   =   "BoneCabin_cdt"
      boneOffset   =   {
         x   =   0.84
         y   =   0.8
         z   =   1.17
         __type   =   "Vector3d"
      }
   }
   prop_pre_soft_keyframe_updater   =   {
      syncBodyNames   =   [
         "BoneCabin_cdt",
         "BoneCraneSeg1_cdt",
         "BoneCraneSeg2_cdt"
      ]
   }
   prop_truck_track   =   {
      tracks   =   [
         {
            trackTensionDefault   =   0.045
            trackTensionDrive   =   0.12
            section   =   {
               height   =   0.2
               tpl   =   "epec_tc305_track"
               segmentLength   =   0.238
               segmentBones   =   [
                  "bone0",
                  "bone1",
                  "bone2",
                  "bone3"
               ]
               __type   =   "TruckTrackSection"
            }
            decalDescIndex   =   0
            wheelIds   =   [
               0,
               1
            ]
            visualWheelSlots   =   [
               {
                  geomName   =   "roller_left1"
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_left2"
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_left3"
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_left4"
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_left5"
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_left6"
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_left7"
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_left8"
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_left9"
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_left10"
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_left11"
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_left13"
                  editableWheel   =   "TopWheel"
               },
               {
                  geomName   =   "roller_left14"
                  editableWheel   =   "TopWheel"
               }
            ]
            fakeWheelIds   =   [
               4,
               5,
               6,
               7,
               8
            ]
         },
         {
            trackTensionDefault   =   0.045
            trackTensionDrive   =   0.12
            section   =   {
               height   =   0.2
               tpl   =   "epec_tc305_track"
               segmentLength   =   0.238
               segmentBones   =   [
                  "bone0",
                  "bone1",
                  "bone2",
                  "bone3"
               ]
               __type   =   "TruckTrackSection"
            }
            decalDescIndex   =   0
            wheelIds   =   [
               2,
               3
            ]
            visualWheelSlots   =   [
               {
                  geomName   =   "roller_right1"
                  isRightSided   =   True
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_right2"
                  isRightSided   =   True
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_right3"
                  isRightSided   =   True
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_right4"
                  isRightSided   =   True
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_right5"
                  isRightSided   =   True
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_right6"
                  isRightSided   =   True
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_right7"
                  isRightSided   =   True
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_right8"
                  isRightSided   =   True
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_right9"
                  isRightSided   =   True
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_right10"
                  isRightSided   =   True
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_right11"
                  isRightSided   =   True
                  editableWheel   =   "MiddleWheel"
               },
               {
                  geomName   =   "roller_right13"
                  isRightSided   =   True
                  editableWheel   =   "TopWheel"
               },
               {
                  geomName   =   "roller_right14"
                  isRightSided   =   True
                  editableWheel   =   "TopWheel"
               }
            ]
            fakeWheelIds   =   [
               9,
               10,
               11,
               12,
               13
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
            bodyName   =   "BoneCabin_cdt"
            offsetInBodySpace   =   {
               x   =   0.884
               y   =   1.472
               z   =   -3.624
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneCabin_cdt"
            offsetInBodySpace   =   {
               x   =   -0.884
               y   =   1.472
               z   =   -3.624
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneCabin_cdt"
            offsetInBodySpace   =   {
               x   =   -1.042
               y   =   1.472
               z   =   -1.023
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneCabin_cdt"
            offsetInBodySpace   =   {
               x   =   1.073
               y   =   1.472
               z   =   -0.463
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneCabin_cdt"
            offsetInBodySpace   =   {
               x   =   1.259
               y   =   0.435
               z   =   2.239
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneCabin_cdt"
            offsetInBodySpace   =   {
               x   =   0.408
               y   =   0.435
               z   =   2.239
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneChassis_cdt"
            offsetInBodySpace   =   {
               x   =   -0.728
               y   =   0.359
               z   =   1.496
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneChassis_cdt"
            offsetInBodySpace   =   {
               x   =   0.123
               y   =   0.333
               z   =   -1.225
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
            y   =   0.25
            z   =   0.7
            __type   =   "Vector3d"
         }
         attachmentBone   =   "_third_person_camera"
         minSpeedToFollow   =   2
         firstLaunchCameraAngles   =   {
            x   =   20
            __type   =   "Vector2d"
         }
         followChangeDirectionSpeedThreshold   =   2
         scrollPoints   =   {
            "0"   =   {
               distance   =   12
               followTerrainOffset   =   2.8
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "1"   =   {
               distance   =   14
               followTerrainOffset   =   3.3
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "2"   =   {
               distance   =   16
               followTerrainOffset   =   3.8
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "3"   =   {
               distance   =   18
               followTerrainOffset   =   4.3
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "4"   =   {
               distance   =   20
               followTerrainOffset   =   4.8
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "5"   =   {
               distance   =   22
               followTerrainOffset   =   5
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
                  y   =   230
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
                  y   =   250
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
                  y   =   270
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
                  y   =   290
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
                  y   =   310
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
                  y   =   330
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
                  y   =   150
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
                  y   =   130
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
                  y   =   110
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
                  y   =   90
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
                  y   =   70
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
                  y   =   50
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
                  y   =   30
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
                  y   =   2.5
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
                  y   =   3.5
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
                  y   =   4.5
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
         rotationLimitsX   =   {
            x   =   -35
            y   =   40
            __type   =   "Vector2dRnd"
         }
         rotationLimitsY   =   {
            x   =   -120
            y   =   170
            __type   =   "Vector2dRnd"
         }
         forwardAngleOffset   =   {
            x   =   7
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
               x   =   0.58
               z   =   0.45
               __type   =   "Vector3d"
            }
            rollAngle   =   -10
            rotationLimitsX   =   {
               x   =   -35
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
                  y   =   25
                  __type   =   "Vector2dRnd"
               }
               __type   =   "RbCockpitCameraFollowTurnParams"
            }
            rightTurnParams   =   {
               turnSpeedRange   =   {
                  x   =   5
                  y   =   25
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
               y   =   -0.5
               z   =   -0.5
               __type   =   "Vector3d"
            }
            Vector3d_2   =   {
               x   =   0.4
               y   =   -0.5
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
               "BoneCabin_cdt",
               "BoneSeg1_IK1_a",
               "BoneSeg1_IK1_b"
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
                  min   =   -3
                  max   =   3
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneCraneSeg1_cdt"
                  bodyIKName   =   "BoneSeg1_IK1_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneCabin_cdt",
               "BoneWire1_IK_a",
               "BoneWire1_IK_b"
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
                  min   =   0
                  max   =   10
               }
            ]
            effectors   =   [
               {
                  bodyPhysName   =   "BoneCraneSeg2_cdt"
                  bodyIKName   =   "BoneWire1_IK_b"
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
                        0.9,
                        1.074,
                        5.748
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
               name   =   "BoxCapsule1"
               bone   =   "_BoxCapsule1"
               geom   =   {
                  box   =   {
                     size   =   [
                        2.376,
                        1.378,
                        4.378
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
               waterParams   =   {
                  influence   =   1
                  needToSpawnParticles   =   True
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
               boneOffset   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.965,
                        1.891,
                        1.719
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
            },
            {
               name   =   "BoxCapsule3"
               isActiveByDefault   =   False
               bone   =   "_BoxCapsule3"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.59,
                        0.607,
                        0.661
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
            },
            {
               name   =   "BoxCapsule4"
               isActiveByDefault   =   False
               bone   =   "_BoxCapsule4"
               boneOffset   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.717,
                        0.042,
                        3.018
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
            },
            {
               name   =   "BoxCapsule5"
               isActiveByDefault   =   False
               bone   =   "_BoxCapsule5"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.719,
                        0.045,
                        1.553
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
            },
            {
               name   =   "BoxCapsule6"
               isActiveByDefault   =   False
               bone   =   "_BoxCapsule6"
               boneOffset   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.679,
                        0.042,
                        2.125
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
            },
            {
               name   =   "BoxCapsule7"
               isActiveByDefault   =   False
               bone   =   "_BoxCapsule7"
               boneOffset   =   [
                  0,
                  0,
                  0
               ]
               boneRotation   =   [
                  90,
                  0,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.593,
                        8.235,
                        0.689
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
            },
            {
               name   =   "BoxCapsule8"
               isActiveByDefault   =   False
               bone   =   "_BoxCapsule8"
               boneOffset   =   [
                  0,
                  0.01,
                  -1.07
               ]
               boneRotation   =   [
                  90,
                  0,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.432,
                        8.926999,
                        0.465
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
            },
            {
               name   =   "BoxCapsule9"
               bone   =   "_BoxCapsule9"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.252,
                        1.286,
                        0.644
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
               name   =   "BoxCapsule10"
               bone   =   "_BoxCapsule9"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.9,
                        1.074,
                        5.748
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
               name   =   "BoxCapsule12"
               bone   =   "_BoxCapsule"
               boneOffset   =   [
                  1.26,
                  0.24,
                  0
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        1.7,
                        0.66,
                        3.38
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
               waterParams   =   {
                  influence   =   0
                  needToSpawnParticles   =   True
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
               name   =   "BoxCapsule13"
               isActiveByDefault   =   False
               bone   =   "BoneCraneSeg2_cdt"
               boneOffset   =   [
                  -0.56,
                  0,
                  -0.12
               ]
               boneRotation   =   [
                  0,
                  0,
                  90
               ]
               geom   =   {
                  box   =   {
                     size   =   [
                        0.432,
                        2.006999,
                        0.465
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
            },
            {
               name   =   "left_box_fast_grass"
               bone   =   "root"
               boneOffset   =   [
                  2.36,
                  0.6,
                  -0.74
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
                  -2.36,
                  0.6,
                  -0.74
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
               name   =   "shadow_root"
               bone   =   "_BoxCapsule2"
               boneOffset   =   [
                  0,
                  0,
                  0
               ]
               boneRotation   =   [
                  90,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   0.22
                     radius   =   0.9
                     scaleX   =   0.54
                  }
                  capsule   =   {
                     height   =   4.7
                     radius   =   0.44
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_root3"
               bone   =   "BoneCabin_cdt"
               boneOffset   =   [
                  -0.52,
                  0.79,
                  -2.33
               ]
               geom   =   {
                  capsule   =   {
                     height   =   1.57
                     radius   =   0.69
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "shadow_root4"
               bone   =   "BoneCabin_cdt"
               boneOffset   =   [
                  -0.56,
                  0.36,
                  -0.38
               ]
               geom   =   {
                  capsule   =   {
                     height   =   0.85
                     radius   =   0.53
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "shadow_root6"
               bone   =   "root"
               boneOffset   =   [
                  0,
                  0.68,
                  -1.62
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   2.29
                     radius   =   0.36
                     scaleX   =   3.2
                  }
                  capsule   =   {
                     height   =   2.29
                     radius   =   0.41
                  }
                  __type   =   "local__capsuleScaled"
               }
               systems   =   1
            },
            {
               name   =   "shadow_root7"
               bone   =   "root"
               boneOffset   =   [
                  1.36,
                  0.42,
                  -1.55
               ]
               boneRotation   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   4.69
                     radius   =   0.62
                     scaleX   =   0.68
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
                  0.42,
                  -1.55
               ]
               boneRotation   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   4.69
                     radius   =   0.62
                     scaleX   =   0.68
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
            fov   =   51
            centerLocatorName   =   "pip_camera_left"
            objName   =   "_hp_cab_interior_mirror_left"
            pipCameraMaterialName   =   "truck_mirror"
            __type   =   "MirrorParams"
         }
         mirror_right   =   {
            fov   =   51
            centerLocatorName   =   "pip_camera_right"
            objName   =   "_hp_cab_interior_mirror_right"
            pipCameraMaterialName   =   "truck_mirror"
            __type   =   "MirrorParams"
         }
      }
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
         "BoneChassis_cdt",
         "BoneCabin_cdt",
         "BoneCraneSeg1_cdt",
         "BoneCraneSeg2_cdt"
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
         bodyName   =   "BoneCraneSeg2_cdt"
         offsetInBodySpace   =   {
            x   =   0.211
            y   =   0
            z   =   -0.762
            __type   =   "Vector3d"
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
      movementLerpCoef   =   4
   }
   prop_ik   =   {
      movementspeedXZ   =   2
      movementspeedY   =   1.3
      bodyNames   =   [
         "BoneChassis_cdt",
         "BoneCabin_cdt",
         "BoneCraneSeg1_cdt",
         "BoneCraneSeg2_cdt"
      ]
      rootBodyLocalOffset   =   {
         y   =   0
         z   =   0
         __type   =   "Vector3d"
      }
      constraintInertiaStabilizationAmount   =   0
      ikSystem   =   {
         maxHingeConstraintVelocityInDegPerSecond   =   50
         __type   =   "PhysIkSystem"
      }
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
            x   =   -0.731
            y   =   0.434
            z   =   1.509
         },
         {
            x   =   0.731
            y   =   0.434
            z   =   1.509
         },
         {
            x   =   0.73
            y   =   0.435
            z   =   -1.262
         },
         {
            x   =   -0.73
            y   =   0.435
            z   =   -1.262
         }
      ]
   }
   prop_rigid_body_scanner   =   {
      shapes   =   [
         {
            offset   =   [
               0,
               1.5,
               -0.6
            ]
            size   =   [
               3.5,
               2,
               6
            ]
         },
         {
            offset   =   [
               0,
               1.9,
               4.15
            ]
            size   =   [
               0.6,
               1,
               5
            ]
         }
      ]
      locator   =   "BoneChassis_cdt"
      collisionGroups   =   [
         "truck"
      ]
   }
   prop_truck_reset_module_controller   =   {
      moduleRootBody   =   "BoneCabin_cdt"
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
            nameBone   =   "ctrl_dashboard_fuel"
            axis   =   "Y"
            maxRotationAngle   =   80
            dashboardSubtype   =   "FUEL"
            damping   =   0.005
            __type   =   "DashboardElementCockpit"
         }
         "1"   =   {
            nameBone   =   "ctrl_dashboard_engine_pressure"
            axis   =   "Y"
            maxRotationAngle   =   120
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.005
            __type   =   "DashboardElementCockpit"
         }
         "2"   =   {
            nameBone   =   "ctrl_dashboard_engine_temp_coolant"
            axis   =   "Y"
            maxRotationAngle   =   220
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.004
            __type   =   "DashboardElementCockpit"
         }
         "3"   =   {
            nameBone   =   "ctrl_dashboard_engine_voltage"
            axis   =   "Y"
            maxRotationAngle   =   190
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.02
            __type   =   "DashboardElementCockpit"
         }
         "4"   =   {
            nameBone   =   "ctrl_lever_steering"
            axis   =   "Y"
            minRotationAngle   =   -20
            maxRotationAngle   =   20
            steeringSubtype   =   "WHEEL"
            rotationSpeed   =   60
            isOnlyInputOrientation   =   True
            __type   =   "SteerigElementCockpit"
         }
         "5"   =   {
            nameBone   =   "ctrl_gear_stick_low"
            axis   =   "Y"
            maxRotationAngle   =   75
            speed   =   250
            switcherSubtype   =   "LOW_GEAR"
            __type   =   "SwitcherElementCockpit"
         }
         "6"   =   {
            nameBone   =   "ctrl_lever_drive"
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
               strengthFactor   =   2
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
               strengthFactor   =   2
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
            altUiActionDescription   =   "UID_HUD_CARGO_CONSTRAINT_DETACH"
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
            altUiActionDescription   =   "UID_HUD_CARGO_CONSTRAINT_DETACH"
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
               distance   =   12
               followTerrainOffset   =   2.8
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "1"   =   {
               distance   =   14
               followTerrainOffset   =   3.3
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "2"   =   {
               distance   =   16
               followTerrainOffset   =   3.8
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "3"   =   {
               distance   =   18
               followTerrainOffset   =   4.3
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "4"   =   {
               distance   =   20
               followTerrainOffset   =   4.8
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "5"   =   {
               distance   =   22
               followTerrainOffset   =   5
               __type   =   "RbVehicleCameraScrollPoint"
            }
         }
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
      reverseAngleThreshold   =   0
      velocityScale   =   3.5
      stuckVelocityThreshold   =   2
      stuckScaleChange   =   0.5
      velocityPedalControl   =   {
         spline   =   [
            -5,
            -0.999776,
            -9.98315,
            -1.008146,
            -2,
            -0.991404,
            0,
            0,
            0,
            0,
            0,
            0,
            5,
            1,
            2.86259,
            -0.178018,
            10.99298,
            4.129316
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
            shakerBone   =   "BoneChassis_cdt"
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
               0.5,
               1,
               1,
               0.018208
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
   prop_malfunction   =   {
   }
   prop_vehicle_lights_material   =   {
      lights   =   {
         "0"   =   {
            geomNames   =   [
               "reflector_lights"
            ]
            __type   =   "Headlights"
         }
         "1"   =   {
            lightName   =   "lights_emissive"
            geomNames   =   [
               "marker_lights"
            ]
            __type   =   "Headlights"
         }
         "2"   =   {
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
   prop_truck_mirror   =   {
      mirrors   =   [
         {
            name   =   "mirror_case_left"
            angleRotateX   =   -0.3
            angleRotateY   =   -2
            angleRotateZ   =   -0.3
         },
         {
            name   =   "mirror_case_right"
            angleRotateX   =   6
            angleRotateY   =   2.5
            angleRotateZ   =   -4.5
         }
      ]
   }
}
__type   =   "truck_view"
