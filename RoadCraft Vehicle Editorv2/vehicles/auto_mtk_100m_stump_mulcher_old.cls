properties   =   {
   geom   =   {
      nameTpl   =   "stump_grinder"
   }
   prop_truck_view_controller   =   {
      engineFiringDelay   =   1000
   }
   prop_truck_view   =   {
      truckName   =   "mtk_100m_stump_mulcher_old"
      truckType   =   "tracked_light"
      truckVisibilityInFogOfWar   =   60
   }
   prop_truck_rb   =   {
      suspensionSet   =   {
         front   =   {
            max   =   0
            strength   =   0.9
            damping   =   0.85
         }
         rearDiffers   =   True
         rear   =   {
            min   =   -0.05
            max   =   0.05
            strength   =   0.01
            damping   =   0.55
         }
      }
      engine   =   {
         params   =   {
            torque   =   100000
            brakesDelay   =   0.5
            maxDeltaAngVel   =   0.002
            responsiveness   =   0.7
            __type   =   "TruckEngineParams"
         }
         __type   =   "TruckEngine"
      }
      gearbox   =   {
         params   =   {
            gears   =   [
               {
                  sslModule   =   "physics.truck.truck_components"
                  angularVelocity   =   0.045
                  gearRatio   =   4.2
                  targetSpeedRangeKmh   =   {
                     y   =   4
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   0.65
                  gearRatio   =   3.7
                  targetSpeedRangeKmh   =   {
                     x   =   4
                     y   =   10
                     __type   =   "Vector2dRnd"
                  }
               },
               {
                  angularVelocity   =   0.9
                  gearRatio   =   3.3
                  targetSpeedRangeKmh   =   {
                     x   =   10
                     y   =   20
                     __type   =   "Vector2dRnd"
                  }
               }
            ]
            reverseGear   =   {
               angularVelocity   =   0.25
               __type   =   "TruckSingleGearParams"
            }
            highGear   =   {
               angularVelocity   =   2
               gearRatio   =   4.2
               __type   =   "TruckSingleGearParams"
            }
            lowRangeGear   =   {
               angularVelocity   =   0.05
               gearRatio   =   4.2
               __type   =   "TruckSingleGearParams"
            }
            isLowRangeModeReverseEnabled   =   True
            isLowRangeModeClutchingEnabled   =   False
            defaultGearSwitchDelay   =   0.25
            upperGearSwitchDelayBase   =   0.35
            upperGearSwitchDelayGearNumMultiplier   =   0.4
            downGearSwitchDelay   =   0.2
            neutralGearSwitchingDelay   =   0
            __type   =   "TruckGearboxParams"
         }
         __type   =   "TruckGearbox"
      }
      isBackSteerIgnored   =   True
      maxSteerSpeed   =   0.1
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
            0.9,
            0.5,
            0.65,
            1,
            0.65
         ]
         __type   =   "SplineCurve1d"
      }
      wheelSlotWithDescs   =   [
         {
            geomName   =   "wheel_rear_left"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "EditableWheel_rearSound"
         },
         {
            geomName   =   "wheel_front_left"
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "EditableWheel_front"
         },
         {
            geomName   =   "wheel_rear_right"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "EditableWheel_rearSound"
         },
         {
            geomName   =   "wheel_front_right"
            isRightSided   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "EditableWheel_front"
         },
         {
            geomName   =   "fake_middle_left_1"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_middle_left_2"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_middle_left_3"
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_middle_right_1"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_middle_right_2"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "FakeWheel"
         },
         {
            geomName   =   "fake_middle_right_3"
            isRightSided   =   True
            isRear   =   True
            torqueType   =   "defaults"
            isConnectedToHandbrake   =   True
            editableWheel   =   "FakeWheel"
         }
      ]
      wheelsWithTrail   =   {
         wheel_rear_left   =   {
            isRear   =   True
            __type   =   "WheelTrailDesc"
         }
         wheel_rear_right   =   {
            isRear   =   True
            __type   =   "WheelTrailDesc"
         }
         wheel_front_right   =   {
            __type   =   "WheelTrailDesc"
         }
         wheel_front_left   =   {
            __type   =   "WheelTrailDesc"
         }
      }
      wheelPool   =   {
         EditableWheel_front   =   {
            __value   =   "auto_wheel_mtk_100m_stump_mulcher_old_editablewheel_front"
         }
         EditableWheel_middle_visual   =   {
            __value   =   "auto_wheel_mtk_100m_stump_mulcher_old_editablewheel_middle_visual"
         }
         EditableWheel_rear   =   {
            __value   =   "auto_wheel_mtk_100m_stump_mulcher_old_editablewheel_rear"
         }
         FakeWheel   =   {
            __value   =   "auto_wheel_mtk_100m_stump_mulcher_old_fakewheel"
         }
         EditableWheel_top_visual   =   {
            __value   =   "auto_wheel_mtk_100m_stump_mulcher_old_editablewheel_top_visual"
         }
         EditableWheel_rearSound   =   {
            __value   =   "auto_wheel_mtk_100m_stump_mulcher_old_editablewheel_rearsound"
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
                     "PlaySound_1_1/Play"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown   =   {
                  viewData   =   {
                     x   =   3338.561
                     y   =   5000
                  }
                  OnEngineShutdown   =   [
                     "PlaySound_5/Play"
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
                     "TriggerEvent/TriggerBlueprintEvent",
                     "PlaySound_1_2/Play"
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
               PlaySound   =   {
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
                        name   =   "vhc_mtk_100m_acc"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_7   =   {
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
                        name   =   "vhc_mtk_100m_engine_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               SetSoundSwitch   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   4700
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
               PlaySound_5   =   {
                  viewData   =   {
                     x   =   3950
                     y   =   5000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_1_1/Stop",
                     "PlaySound_7/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mtk_100m_engine_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1_1   =   {
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
                        name   =   "vhc_mtk_100m_engine"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1   =   {
                  viewData   =   {
                     x   =   3950
                     y   =   5700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mtk_100m_handbrake_on"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_1_2   =   {
                  viewData   =   {
                     x   =   3950
                     y   =   6100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mtk_100m_handbrake_off"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_4   =   {
                  viewData   =   {
                     x   =   6550.147
                     y   =   4250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "Schedule_1/Start"
                  ]
                  OnSoundEnd   =   [
                     "Schedule_1/Stop"
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
                     x   =   5550
                     y   =   4500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_1_3/emitterRef/cb",
                     "SetSoundParameter_1_2_1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "wheel_middle_left_4"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        x   =   -3
                        __type   =   "Vector3d"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_2_1_3   =   {
                  viewData   =   {
                     x   =   5900.147
                     y   =   4250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_2_4/Play"
                  ]
                  OnSoundEnd   =   [
                     "PlaySound_2_4/Stop"
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
                     x   =   6400
                     y   =   4497.046
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_2_4/emitterRef/cb",
                     "SetSoundParameter_1_1_1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "wheel_middle_right_4"
                     owner   =   "<OWNER>"
                     posOffset   =   {
                        x   =   3
                        __type   =   "Vector3d"
                     }
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               HandleEvent   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   4250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnHandle   =   [
                     "PlaySound_2_1_3/Play"
                  ]
                  eventUidRefParam   =   {
                     def   =   "snd_track_on"
                     __type   =   "StringRefParam"
                  }
                  __type   =   "BlueprintNodeHandleEvent"
               }
               HandleEvent_1   =   {
                  viewData   =   {
                     x   =   5500
                     y   =   4350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnHandle   =   [
                     "PlaySound_2_1_3/Stop"
                  ]
                  eventUidRefParam   =   {
                     def   =   "snd_track_off"
                     __type   =   "StringRefParam"
                  }
                  __type   =   "BlueprintNodeHandleEvent"
               }
               SetSoundParameter_1_1_1   =   {
                  viewData   =   {
                     x   =   8100
                     y   =   4250
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
                     x   =   7650
                     y   =   4250
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
                     x   =   7600
                     y   =   4550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetAngularSpeed   =   [
                     "FloatAbs_E28mda6R/value/cb"
                  ]
                  __type   =   "BlueprintNodeWheelRightGetAngularSpeed"
               }
               GetLeftWheelAngularSpeed_1   =   {
                  viewData   =   {
                     x   =   7150
                     y   =   4550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetAngularSpeed   =   [
                     "FloatAbs_E28mcW7E/value/cb"
                  ]
                  __type   =   "BlueprintNodeWheelLeftGetAngularSpeed"
               }
               Schedule_1   =   {
                  viewData   =   {
                     x   =   7250
                     y   =   4250
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
               TriggerEvent_1   =   {
                  viewData   =   {
                     x   =   3950
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
               Schedule   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   4200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_1/SetParameter",
                     "SetSoundParameter_1_1_1_E9q7Kxay/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               OnInit   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   4200
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "Schedule/Start"
                  ]
                  __type   =   "BlueprintCommonLibraryOninit"
               }
               SetSoundParameter_1   =   {
                  viewData   =   {
                     x   =   4250
                     y   =   4350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "rpm"
                     __type   =   "SoundParameterStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundEmitterParameter"
               }
               TruckVelocity   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   4400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetLinearVelocity   =   [
                     "SwitchFloat/floatB/cb",
                     "SetSoundParameter_1_1_1_E9q7Kxay/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               GetTruckInputPedals   =   {
                  viewData   =   {
                     x   =   3350
                     y   =   4500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetInputPedals   =   [
                     "FloatCompare_1/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeTruckInputPedals"
               }
               FloatCompare_1   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   4500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  Equal   =   [
                     "SwitchFloat/condition/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatcompare"
               }
               SwitchFloat   =   {
                  viewData   =   {
                     x   =   3950
                     y   =   4400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  floatA   =   {
                     __type   =   "FloatRefParam"
                  }
                  floatB   =   {
                     __type   =   "FloatRefParam"
                  }
                  condition   =   {
                     __type   =   "BoolRefParam"
                  }
                  GetFloat   =   [
                     "SetSoundParameter_1/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeSwitchFloat"
               }
               FloatAbs_E28mcW7E   =   {
                  viewData   =   {
                     x   =   7500
                     y   =   4450
                  }
                  Abs   =   [
                     "SetSoundParameter_1_2_1/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatabs"
               }
               FloatAbs_E28mda6R   =   {
                  viewData   =   {
                     x   =   7950
                     y   =   4450
                  }
                  Abs   =   [
                     "SetSoundParameter_1_1_1/valueRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatabs"
               }
               OnGearUpdate_E9q6Sqbv   =   {
                  viewData   =   {
                     x   =   5450
                     y   =   5000
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
                     "SetSoundParameter_1_2_E9q6Sqbv1/SetParameter"
                  ]
                  GetLastGear   =   [
                     "SetSoundParameter_1_2_E9q6Sqbv1/valueRef/cb"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               SetSoundParameter_1_2_E9q6Sqbv1   =   {
                  viewData   =   {
                     x   =   6400
                     y   =   5300
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
               SetSoundParameter_1_1_1_E9q7Kxay   =   {
                  viewData   =   {
                     x   =   4250
                     y   =   4150
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
            }
            groups   =   {
               "[SOUND] Tracks - Playback"   =   {
                  x   =   5400
                  y   =   4050
                  width   =   3100
                  height   =   699.375
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
               "[SOUND] gear update"   =   {
                  x   =   5400
                  y   =   4850
                  width   =   3099
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
                  zeroBorderEnergy   =   22000
                  exceptionalBodyNames   =   [
                     "BoneGrinder_cdt"
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
                     def   =   2.28
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
               OnTPLAnimationBegin_E4jdFw9U   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1650
                  }
                  OnAnimStart   =   [
                     "PlaySound_E4jdFw9U2/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnBegin"
               }
               OnTPLAnimationEnd_E4jdFw9U1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1850
                  }
                  OnAnimStop   =   [
                     "PlaySound_E4jdFw9U3/Play"
                  ]
                  __type   =   "BlueprintNodeTplAnimOnEnd"
               }
               PlaySound_E4jdFw9U2   =   {
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
               PlaySound_E4jdFw9U3   =   {
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
               IntCheck_E4jdFw9U4   =   {
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
                     "PlaySound_E4jdFw9U6/Play"
                  ]
                  __type   =   "BlueprintLibraryCheckint"
               }
               OnHandbrakeStateChanged_E4jdFw9U5   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1400
                  }
                  OnHandbrakeOn   =   [
                     "IntCheck_E4jdFw9U4/Input"
                  ]
                  __type   =   "BlueprintNodeOnHandbrakeStateChanged"
               }
               PlaySound_E4jdFw9U6   =   {
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
               GetTruckVelocity_E4jdFw9U7   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   1500
                  }
                  GetLinearVelocity   =   [
                     "IntCheck_E4jdFw9U4/intToCheck/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               OnGearUpdate_Ec474m8Z   =   {
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
                     "PlaySound_3_1_Ec474m8Z2/Play"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               PlaySound_3_1_Ec474m8Z2   =   {
                  viewData   =   {
                     x   =   5700
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
               CloneSoundEmitter_Ec474m8Z3   =   {
                  viewData   =   {
                     x   =   4400
                     y   =   2100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_3_1_Ec474m8Z2/emitterRef/cb",
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
               CloneSoundEmitter_EafbvU0U   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   1650
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E4jdFw9U3/emitterRef/cb",
                     "PlaySound_E4jdFw9U2/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "BoneAnim_Wiper"
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
               GetInfoElementCockpitForSoundWithEvent_E9q8B88s3   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_E9q8B88s4/Play"
                  ]
                  nameBoneBro   =   "ctrl_transfer_case"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_E9q8B88s4   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3950
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
               CloneSoundEmitter_E9q8B88s5   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E9q8B88s4/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_transfer_case"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               GetInfoElementCockpitForSoundWithEvent_Ec2dyr4G   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ec2dyr4G1/Play"
                  ]
                  nameBoneBro   =   "ctrl_lever_drive"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_Ec2dyr4G1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   4250
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
               CloneSoundEmitter_Ec2dyr4G2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ec2dyr4G1/emitterRef/cb"
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
               GetInfoElementCockpitForSoundWithEvent_Ec2dz40y   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ec2dz40y1/Play"
                  ]
                  nameBoneBro   =   "ctrl_lever_mulcher"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_Ec2dz40y1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   4550
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
               CloneSoundEmitter_Ec2dz40y2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ec2dz40y1/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_lever_mulcher"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               GetInfoElementCockpitForSoundWithEvent_Ec2dzL8q   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ec2dzL8q1/Play"
                  ]
                  nameBoneBro   =   "ctrl_gear_stick_low"
                  __type   =   "BlueprintNodeGetInfoElementCockpitWithEvent"
               }
               PlaySound_Ec2dzL8q1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   4850
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
               CloneSoundEmitter_Ec2dzL8q2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ec2dzL8q1/emitterRef/cb"
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
               PlaySound_Ec2eey7k1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "Schedule_Ec2eey7k3/Start"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mtk_md76_cockpit_steering_arm_right_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               GetInfoElementCockpitForSoundWithSchedule_Ec2eey7k2   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3500
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "PlaySound_Ec2eey7k1/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_Ec2efu0P/Play"
                  ]
                  nameBoneBro   =   "ctrl_lever_steering"
                  isWheel   =   True
                  GetCurrentSteerSpeed   =   [
                     "SetSoundParameter_Ec2eey7k4/valueRef/cb"
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
               Schedule_Ec2eey7k3   =   {
                  viewData   =   {
                     x   =   5700
                     y   =   3600
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnPeriod   =   [
                     "SetSoundParameter_Ec2eey7k4/SetParameter"
                  ]
                  period   =   {
                     def   =   0.1
                     __type   =   "FloatRefParam"
                  }
                  __type   =   "BlueprintTimeLibrarySchedule"
               }
               SetSoundParameter_Ec2eey7k4   =   {
                  viewData   =   {
                     x   =   6000
                     y   =   3600
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
               CloneSoundEmitter_Ec2eey7k5   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   3700
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_Ec2eey7k1/emitterRef/cb",
                     "SetSoundParameter_Ec2eey7k4/emitterRef/cb",
                     "PlaySound_Ec2efu0P/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "ctrl_lever_steering"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               PlaySound_Ec2efu0P   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   3700
                  }
                  OnSoundStart   =   [
                     "Schedule_Ec2eey7k3/Stop"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_mtk_md76_cockpit_steering_arm_right_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
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
                  exceptionalBodyNames   =   [
                     "BoneGrinder_cdt"
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
               OnMulcherGrindTouchingStump   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   7250
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
                  __type   =   "BlueprintNodeOnMulcherGrindTouchingStump"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   7250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "mulcher_grind"
                     __type   =   "StringRefParamForcefeedbackUid"
                  }
                  catalogRef   =   {
                     def   =   "auto"
                     __type   =   "StringRefParamForcefeedbackCatalog"
                  }
                  __type   =   "BlueprintNodeActivateForcefeedbackIfTruckIsCurrent"
               }
               DeactivateForceFeedback   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   7400
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  nameRef   =   {
                     def   =   "mulcher_grind"
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
                     y   =   7000
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  zeroBorderEnergy   =   0.001
                  timeInterval   =   10
                  withPhysPlants   =   False
                  withTerrainParticles   =   False
                  exceptionalBodyNames   =   [
                     "BoneFrame_cdt",
                     "Track_right_rear_cdt",
                     "Track_left_rear_cdt",
                     "BoneDozer_cdt"
                  ]
                  OnCollision   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1/Input"
                  ]
                  GetEnergy   =   [
                     "FloatAbs_1_1/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeOnTruckCollision"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1   =   {
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
               FloatAbs_1_1   =   {
                  viewData   =   {
                     x   =   4900
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
                     "FloatDivision_1_1/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeFloatAbs"
               }
               FloatDivision_1_1   =   {
                  viewData   =   {
                     x   =   5050
                     y   =   7100
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  bFloat   =   {
                     def   =   120000
                     __type   =   "FloatRefParam"
                  }
                  Float   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1/strengthRef/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatdivision"
               }
               OnTruckWarningMessage   =   {
                  viewData   =   {
                     x   =   4550
                     y   =   7550
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnWarning   =   [
                     "ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1_1/Input"
                  ]
                  __type   =   "BlueprintNodeTruckWarning"
               }
               ActivateForceFeedbackIfTruckIsCurrent_1_2_1_1_1   =   {
                  viewData   =   {
                     x   =   5000
                     y   =   7550
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
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         GrinderShaftRoator   =   {
            nodes   =   {
               OnMulcherGrindRotation   =   {
                  viewData   =   {
                     x   =   2158
                     y   =   4757.8
                  }
                  maxSpeed   =   0.5
                  OnStart   =   [
                     "BoolSwitch/SetTrue"
                  ]
                  OnStop   =   [
                     "BoolSwitch/SetFalse"
                  ]
                  __type   =   "BlueprintNodeOnMulcherGrindRotation"
               }
               Vector3dCreate   =   {
                  viewData   =   {
                     x   =   3408
                     y   =   4907.8
                  }
                  Vector3d   =   [
                     "RotateObjectPrecise/angleVector/cb"
                  ]
                  __type   =   "BlueprintNodeVector3dCreate"
               }
               OnTick   =   {
                  viewData   =   {
                     x   =   2908
                     y   =   4757.8
                  }
                  OnTick   =   [
                     "RotateObjectPrecise/Input"
                  ]
                  ElapsedTime   =   [
                     "FloatMultiplication/aFloat/cb",
                     "FloatMultiplication_1/aFloat/cb"
                  ]
                  __type   =   "BlueprintLibraryOntick"
               }
               FloatMultiplication   =   {
                  viewData   =   {
                     x   =   3208
                     y   =   4907.8
                  }
                  Float   =   [
                     "Vector3dCreate/z/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatmultiplication"
               }
               BoolSwitch   =   {
                  viewData   =   {
                     x   =   2658
                     y   =   4757.8
                  }
                  GetValue   =   [
                     "OnTick/isActive/cb"
                  ]
                  __type   =   "BlueprintNodeBoolSwitch"
               }
               RotateObjectPrecise   =   {
                  viewData   =   {
                     x   =   3708
                     y   =   4757.8
                  }
                  OnExit   =   [
                     "RotateObjectPrecise_1/Input"
                  ]
                  objNameLink   =   {
                     def   =   "geo_Rot_Shaft_b"
                     __type   =   "GeomStringRefParam"
                  }
                  isLocalTransform   =   {
                     def   =   True
                     __type   =   "BoolRefParam"
                  }
                  angleVector   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  isWorldMultiplication   =   {
                     __type   =   "BoolRefParam"
                  }
                  __type   =   "BlueprintGeomLibraryRotateobjectprecise"
               }
               RotateObjectPrecise_1   =   {
                  viewData   =   {
                     x   =   4058
                     y   =   4757.8
                  }
                  objNameLink   =   {
                     def   =   "geo_Rot_Shaft_a"
                     __type   =   "GeomStringRefParam"
                  }
                  isLocalTransform   =   {
                     def   =   True
                     __type   =   "BoolRefParam"
                  }
                  angleVector   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  isWorldMultiplication   =   {
                     __type   =   "BoolRefParam"
                  }
                  __type   =   "BlueprintGeomLibraryRotateobjectprecise"
               }
               Vector3dCreate_1   =   {
                  viewData   =   {
                     x   =   3858
                     y   =   4957.8
                  }
                  Vector3d   =   [
                     "RotateObjectPrecise_1/angleVector/cb"
                  ]
                  __type   =   "BlueprintNodeVector3dCreate"
               }
               FloatMultiplication_1   =   {
                  viewData   =   {
                     x   =   3658
                     y   =   4957.8
                  }
                  Float   =   [
                     "Vector3dCreate_1/x/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatmultiplication"
               }
               FloatPipe   =   {
                  viewData   =   {
                     x   =   2958
                     y   =   5007.8
                  }
                  value   =   {
                     def   =   300
                     __type   =   "FloatRefParam"
                  }
                  Get   =   [
                     "FloatMultiplication/bFloat/cb",
                     "FloatMultiplication_1/bFloat/cb"
                  ]
                  __type   =   "BlueprintLibraryFloat"
               }
            }
            groups   =   {
               "Grinder Shaft Rotation"   =   {
                  x   =   2118
                  y   =   4550
                  width   =   2268.118
                  height   =   564
                  comment   =   ""
                  isCollapsed   =   False
                  __type   =   "NodeGroup"
               }
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         SFX   =   {
            nodes   =   {
               OnEngineStarted   =   {
                  viewData   =   {
                     x   =   2400
                     y   =   4300
                  }
                  OnEngineStarted   =   [
                     "VFXRestart_1_1/Input",
                     "VFXRestart_2/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineStarted"
               }
               OnEngineShutdown   =   {
                  viewData   =   {
                     x   =   2400
                     y   =   4500
                  }
                  OnEngineShutdown   =   [
                     "VFXStop/Input"
                  ]
                  __type   =   "BlueprintNodeOnEngineShutdown"
               }
               OnEngineAcceleration   =   {
                  viewData   =   {
                     x   =   2400
                     y   =   4850
                  }
                  OnAcceleration   =   [
                     "VFXRestart/Input",
                     "RetriggerableDelay_E9qbMd40/Stop"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9oiUO4t/Input",
                     "RetriggerableDelay_E9oiXQ32/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineAcceleration"
               }
               OnEngineReverse   =   {
                  viewData   =   {
                     x   =   2400
                     y   =   5050
                  }
                  OnEngineReverse   =   [
                     "VFXRestart/Input",
                     "RetriggerableDelay_E9qbMd40/Stop"
                  ]
                  OnReleased   =   [
                     "VFXStop_E9oiUO4t/Input",
                     "RetriggerableDelay_E9oiXQ32/Stop"
                  ]
                  __type   =   "BlueprintNodeOnEngineReverse"
               }
               VFXRestart   =   {
                  viewData   =   {
                     x   =   2895.75
                     y   =   4885.208
                  }
                  OnExit   =   [
                     "RetriggerableDelay_E9oiXQ32/Restart"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_old"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_1_1   =   {
                  viewData   =   {
                     x   =   2900
                     y   =   4450
                  }
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop   =   {
                  viewData   =   {
                     x   =   2900
                     y   =   4550
                  }
                  OnExit   =   [
                     "VFXStop_E9oiVubz/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_radiator_haze"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_2   =   {
                  viewData   =   {
                     x   =   2900
                     y   =   4300
                  }
                  OnExit   =   [
                     "VFXRestart_E9oiVjbO/Input"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_gas_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9oiUO4t   =   {
                  viewData   =   {
                     x   =   2900
                     y   =   5000
                  }
                  OnExit   =   [
                     "DoOnce_E9oj0U733/Reset"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_old"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               VFXRestart_E9oiVjbO   =   {
                  viewData   =   {
                     x   =   3400
                     y   =   4300
                  }
                  OnExit   =   [
                     "Delay_E9oiXwbX1/Start"
                  ]
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_neutral_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E9oiVubz   =   {
                  viewData   =   {
                     x   =   3400
                     y   =   4550
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_neutral_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               GetTruckVelocity_E9oiXwbX   =   {
                  viewData   =   {
                     x   =   3740.68
                     y   =   4396.865
                  }
                  GetLinearVelocity   =   [
                     "FloatCompare_E9oiXwbX3/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               Delay_E9oiXwbX1   =   {
                  viewData   =   {
                     x   =   3950
                     y   =   4300
                  }
                  duration   =   {
                     def   =   3
                     __type   =   "FloatRefParam"
                  }
                  OnFinish   =   [
                     "If_E9oiXwbX2/Input"
                  ]
                  __type   =   "BlueprintTimeLibraryDelay"
               }
               If_E9oiXwbX2   =   {
                  viewData   =   {
                     x   =   4150
                     y   =   4300
                  }
                  OnTrue   =   [
                     "VFXRestart_E9oj1f9R/Input"
                  ]
                  __type   =   "BlueprintNodeIf"
               }
               FloatCompare_E9oiXwbX3   =   {
                  viewData   =   {
                     x   =   3890.68
                     y   =   4396.865
                  }
                  Equal   =   [
                     "If_E9oiXwbX2/condition/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatcompare"
               }
               RetriggerableDelay_E9oiXQ32   =   {
                  viewData   =   {
                     x   =   3450
                     y   =   4900
                  }
                  duration   =   {
                     def   =   3
                     __type   =   "FloatRefParam"
                  }
                  OnFinish   =   [
                     "If_E9oiXQ321/Input"
                  ]
                  __type   =   "BlueprintTimeLibraryRetriggerabledelay"
               }
               If_E9oiXQ321   =   {
                  viewData   =   {
                     x   =   3750
                     y   =   4900
                  }
                  OnTrue   =   [
                     "VFXRestart_E9oj1qen/Input"
                  ]
                  __type   =   "BlueprintNodeIf"
               }
               GetTruckVelocity_E9oiXQ322   =   {
                  viewData   =   {
                     x   =   3450
                     y   =   5050
                  }
                  GetLinearVelocity   =   [
                     "FloatCompare_E9oiXQ323/aFloat/cb"
                  ]
                  __type   =   "BlueprintNodeTruckVelocity"
               }
               FloatCompare_E9oiXQ323   =   {
                  viewData   =   {
                     x   =   3650
                     y   =   5050
                  }
                  bFloat   =   {
                     def   =   1.8
                     __type   =   "FloatRefParam"
                  }
                  BBigger   =   [
                     "If_E9oiXQ321/condition/cb"
                  ]
                  __type   =   "BlueprintMathLibraryFloatcompare"
               }
               OnGearUpdate_E9oj0U73   =   {
                  viewData   =   {
                     x   =   2400
                     y   =   5200
                  }
                  subscribeOnInitRef   =   {
                     def   =   True
                     __type   =   "BoolRefParam"
                  }
                  OnGearUpdated   =   [
                     "If_E9oj0U731/Input"
                  ]
                  GetLastGear   =   [
                     "IntCompare_E9oj0U732/aInteger/cb"
                  ]
                  __type   =   "BlueprintNodeOnGearUpdate"
               }
               If_E9oj0U731   =   {
                  viewData   =   {
                     x   =   2950
                     y   =   5200
                  }
                  OnTrue   =   [
                     "RetriggerableDelay_E9qbMd40/Restart"
                  ]
                  __type   =   "BlueprintNodeIf"
               }
               IntCompare_E9oj0U732   =   {
                  viewData   =   {
                     x   =   2717.84
                     y   =   5325.684
                  }
                  bInteger   =   {
                     def   =   0
                     __type   =   "IntRefParam"
                  }
                  Equal   =   [
                     "If_E9oj0U731/condition/cb"
                  ]
                  __type   =   "BlueprintIntLibraryIntcompare"
               }
               DoOnce_E9oj0U733   =   {
                  viewData   =   {
                     x   =   3400
                     y   =   5200
                  }
                  OnExit   =   [
                     "VFXRestart_E9oj1z9V/Input"
                  ]
                  __type   =   "BlueprintLibraryDoonce"
               }
               VFXRestart_E9oj1f9R   =   {
                  viewData   =   {
                     x   =   4350
                     y   =   4300
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_gas_old_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_E9oj1qen   =   {
                  viewData   =   {
                     x   =   3988.552
                     y   =   4900
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_gas_old_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXRestart_E9oj1z9V   =   {
                  viewData   =   {
                     x   =   3550
                     y   =   5200
                  }
                  vfxUidRef   =   {
                     def   =   "part_exhaust_up_gas_old_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               RetriggerableDelay_E9qbMd40   =   {
                  viewData   =   {
                     x   =   3150
                     y   =   5200
                  }
                  duration   =   {
                     def   =   5
                     __type   =   "FloatRefParam"
                  }
                  OnFinish   =   [
                     "DoOnce_E9oj0U733/Input"
                  ]
                  __type   =   "BlueprintTimeLibraryRetriggerabledelay"
               }
            }
            __type   =   "BlueprintActiveByProjectCondition"
         }
         Addon   =   {
            nodes   =   {
               OnMulcherGrindTouchingStump_E32coJ2r   =   {
                  viewData   =   {
                     x   =   8300
                     y   =   6150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnStart   =   [
                     "Delay_E32coJ2r9/Stop",
                     "DoOnce_E32coJ2r8/Input"
                  ]
                  OnStop   =   [
                     "Delay_E32coJ2r9/Start"
                  ]
                  __type   =   "BlueprintNodeOnMulcherGrindTouchingStump"
               }
               OnPowerConstraintStateChange_E32coJ2r1   =   {
                  viewData   =   {
                     x   =   8300
                     y   =   4650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  actorRef   =   {
                     __type   =   "ActorRefParam"
                  }
                  OnStart   =   [
                     "PlaySound_E32coJ2r3/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_2_E32coJ2r4/Play",
                     "PlaySound_E32coJ2r7/Play",
                     "PlaySound_E5dbM6cO/Play"
                  ]
                  inputNameRef   =   {
                     def   =   "frame_control"
                     __type   =   "StringRefParam"
                  }
                  inputStateNameRef   =   {
                     def   =   "enabled"
                     __type   =   "StringRefParam"
                  }
                  __type   =   "BlueprintNodeOnPowerConstraintStateChange"
               }
               OnPowerConstraintStateChange_E32coJ2r2   =   {
                  viewData   =   {
                     x   =   8300
                     y   =   5450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  actorRef   =   {
                     __type   =   "ActorRefParam"
                  }
                  OnStart   =   [
                     "PlaySound_2_E32coJ2r5/Play",
                     "PlaySound_E32coJ2ra/Stop"
                  ]
                  OnStop   =   [
                     "PlaySound_2_1_E32coJ2r6/Play",
                     "PlaySound_3_E32coJ2rb/Play"
                  ]
                  inputNameRef   =   {
                     def   =   "frame_control"
                     __type   =   "StringRefParam"
                  }
                  inputStateNameRef   =   {
                     def   =   "idle"
                     __type   =   "StringRefParam"
                  }
                  __type   =   "BlueprintNodeOnPowerConstraintStateChange"
               }
               PlaySound_E32coJ2r3   =   {
                  viewData   =   {
                     x   =   9300
                     y   =   4650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grinder_move_down_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_E32coJ2r4   =   {
                  viewData   =   {
                     x   =   9300
                     y   =   4850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grinder_move_down_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_E32coJ2r5   =   {
                  viewData   =   {
                     x   =   9300
                     y   =   5450
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grinder_move_up_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_2_1_E32coJ2r6   =   {
                  viewData   =   {
                     x   =   9300
                     y   =   5650
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grinder_move_up_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_E32coJ2r7   =   {
                  viewData   =   {
                     x   =   9300
                     y   =   5050
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grinder_rotate_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               DoOnce_E32coJ2r8   =   {
                  viewData   =   {
                     x   =   8850
                     y   =   6150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnExit   =   [
                     "PlaySound_E32coJ2ra/Play",
                     "VFXRestart_E439zr6m/Input"
                  ]
                  __type   =   "BlueprintLibraryDoonce"
               }
               Delay_E32coJ2r9   =   {
                  viewData   =   {
                     x   =   8650
                     y   =   6300
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  duration   =   {
                     def   =   0.15
                     __type   =   "FloatRefParam"
                  }
                  OnFinish   =   [
                     "DoOnce_E32coJ2r8/Reset",
                     "PlaySound_4_E32coJ2rc/Play",
                     "VFXStop_E439zr6m1/Input"
                  ]
                  __type   =   "BlueprintTimeLibraryDelay"
               }
               PlaySound_E32coJ2ra   =   {
                  viewData   =   {
                     x   =   9300
                     y   =   6150
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grinder_touching_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_3_E32coJ2rb   =   {
                  viewData   =   {
                     x   =   9300
                     y   =   5850
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grinder_rotate_stop"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               PlaySound_4_E32coJ2rc   =   {
                  viewData   =   {
                     x   =   9300
                     y   =   6350
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  OnSoundStart   =   [
                     "PlaySound_F3jdB5bC/Play"
                  ]
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grinder_touching_stop"
                        maxCountSameLoopSounds   =   2
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               CloneSoundEmitter_E32coJ2rd   =   {
                  viewData   =   {
                     x   =   8300
                     y   =   5150
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E32coJ2r3/emitterRef/cb",
                     "PlaySound_2_E32coJ2r4/emitterRef/cb",
                     "PlaySound_2_E32coJ2r5/emitterRef/cb",
                     "PlaySound_2_1_E32coJ2r6/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneDozer_9"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               CloneSoundEmitter_E32coJ2re   =   {
                  viewData   =   {
                     x   =   8300
                     y   =   5850
                  }
                  GetSoundEmitter   =   [
                     "PlaySound_E32coJ2r7/emitterRef/cb",
                     "PlaySound_3_E32coJ2rb/emitterRef/cb",
                     "PlaySound_E32coJ2ra/emitterRef/cb",
                     "PlaySound_4_E32coJ2rc/emitterRef/cb",
                     "PlaySound_E5dbM6cO/emitterRef/cb",
                     "PlaySound_E9qfOo9I3/emitterRef/cb",
                     "SetSoundSwitch_E9qfOo9I2/emitterRef/cb",
                     "PlaySound_F3jdB5bC/emitterRef/cb"
                  ]
                  positionRef   =   {
                     def   =   {
                        __type   =   "Vector3d"
                     }
                     __type   =   "Vector3dRefParam"
                  }
                  tracker   =   {
                     locator   =   "cdt_BoneFrame_2"
                     owner   =   "<OWNER>"
                     __type   =   "Tracker"
                  }
                  __type   =   "BlueprintNodeCloneSoundEmitter"
               }
               VFXRestart_E439zr6m   =   {
                  viewData   =   {
                     x   =   9300
                     y   =   6050
                  }
                  vfxUidRef   =   {
                     def   =   "part_stump_destruction_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxRestart"
               }
               VFXStop_E439zr6m1   =   {
                  viewData   =   {
                     x   =   9300
                     y   =   6600
                  }
                  vfxUidRef   =   {
                     def   =   "part_stump_destruction_01"
                     __type   =   "SfxStringRefParam"
                  }
                  __type   =   "BlueprintNodeVfxStop"
               }
               PlaySound_E5dbM6cO   =   {
                  viewData   =   {
                     x   =   9300
                     y   =   5250
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "addon_grinder_rotate_loop_start"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnMulcherParticlesEmitted_E9qfOo9I   =   {
                  viewData   =   {
                     x   =   8300
                     y   =   6800
                  }
                  subscribeOnInitRef   =   {
                     def   =   True
                     __type   =   "BoolRefParam"
                  }
                  OnStart   =   [
                     "SetSoundSwitch_E9qfOo9I2/SetSwitchState",
                     "PlaySound_E9qfOo9I3/Play"
                  ]
                  OnStop   =   [
                     "PlaySound_E9qfOo9I3/Stop"
                  ]
                  OnMaterialChange   =   [
                     "SetSoundSwitch_E9qfOo9I2/SetSwitchState"
                  ]
                  GetParticlesMaterialString   =   [
                     "SetSoundSwitch_E9qfOo9I2/switchState/cb"
                  ]
                  __type   =   "BlueprintNodeMulcherOnParticlesEmit"
               }
               SetSoundSwitch_E9qfOo9I2   =   {
                  viewData   =   {
                     x   =   9300
                     y   =   6950
                     colors   =   [
                        "#00FFFFFF",
                        "#00FFFFFF"
                     ]
                  }
                  switchGroup   =   {
                     def   =   "switch_vhc_wheel_material"
                     __type   =   "SoundSwitchGroupStringRefParam"
                  }
                  __type   =   "BlueprintNodeSetSoundSwitch"
               }
               PlaySound_E9qfOo9I3   =   {
                  viewData   =   {
                     x   =   9300
                     y   =   6750
                  }
                  soundDesc   =   {
                     type   =   {
                        name   =   "vhc_body_wheel_sfx_mulcher"
                        __type   =   "GameSound"
                     }
                     __type   =   "GameSoundDesc"
                  }
                  __type   =   "BlueprintNodePlaySoundOnEmitter"
               }
               OnMulcherStateChanged_F1gcMhdG   =   {
                  viewData   =   {
                     x   =   8300
                     y   =   6600
                  }
                  OnDisabled   =   [
                     "VFXStop_E439zr6m1/Input"
                  ]
                  __type   =   "BlueprintNodeOnMulcherStateChanged"
               }
               PlaySound_F3jdB5bC   =   {
                  viewData   =   {
                     x   =   10000
                     y   =   6350
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
            }
            groups   =   {
               "[SOUND] addon - mech and tourching"   =   {
                  x   =   8200
                  y   =   4400
                  width   =   2537.77
                  height   =   2800
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
               __type   =   "TruckStumpGrinderSavablePropDesc"
            }
         }
      ]
   }
   prop_replicated   =   {
      repEntityBrand   =   {
         type   =   {
            __type   =   "AutoMtk100mStumpMulcherOldReplicated"
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
      maxFuelTankVolume   =   235
      startFuelTankVolume   =   235
      fuelConsumption   =   0.13
      reverseFuelConsumptionCoeff   =   1.2
      lowRangeFuelConsumptionCoeff   =   1.3
   }
   prop_truck_constraint_view   =   {
      powerConstraints   =   [
         {
            constraintName   =   "frame_control"
            states   =   {
               idle   =   {
                  isAngular   =   True
                  angleErrorDegree   =   0.1
                  angularSpeed   =   10
                  __type   =   "TruckPowerConstraintState"
               }
               enabled   =   {
                  isAngular   =   True
                  angleErrorDegree   =   0.1
                  targetAngle   =   20
                  angularSpeed   =   10
                  __type   =   "TruckPowerConstraintState"
               }
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
         x   =   0.3
         y   =   1.05
         z   =   0.5
         __type   =   "Vector3d"
      }
      chekerAttachBody   =   "BoneDozer_cdt"
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
                  z   =   0.5
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
      tag   =   "UID_MODULE_MULCHER_RUSTY"
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
         part_stump_destruction_asphalt_01   =   {
         }
         part_stump_destruction_01   =   {
         }
         part_stump_destruction_grass_01   =   {
         }
         part_stump_destruction_gravel_01   =   {
         }
         part_stump_destruction_gravel_wet_01   =   {
         }
         part_stump_destruction_ground_01   =   {
         }
         part_stump_destruction_ground_wet_01   =   {
         }
         part_stump_destruction_mud_01   =   {
         }
         part_stump_destruction_mud_wet_01   =   {
         }
         part_stump_destruction_sand_01   =   {
         }
         part_stump_destruction_sand_wet_01   =   {
         }
         part_stump_destruction_water_01   =   {
         }
         part_track_acceleration_single_exh_up_01   =   {
         }
         part_exhaust_up_01   =   {
         }
         wheel_particles_water_sm_01   =   {
            emitters2   =   {
               water_diterber   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         track_particles_wet_mud_down_01   =   {
         }
         track_particles_wet_dirt_02   =   {
         }
         part_stump_destruction_oil_01   =   {
         }
         part_stump_destruction_dirt_01   =   {
         }
         part_stump_destruction_dirt_wet_01   =   {
         }
         part_stump_destruction_grass_wet_01   =   {
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
            emitters2   =   {
               Smoke_Flow_2   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_8   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               EmitNormal_02   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
               EmitNormal_01   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         part_exhaust_up_neutral_01   =   {
         }
         part_exhaust_up_old   =   {
            emitters2   =   {
               Smoke_Flow_8   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_9   =   {
                  isVisible   =   False
                  __type   =   "CPU_EMITTER"
               }
               Smoke_Flow_3   =   {
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
               PA_Normal_03_1   =   {
                  isVisible   =   True
                  __type   =   "CPU_EMITTER"
               }
            }
         }
         part_track_exhaust_neutral_tuz_01   =   {
         }
         part_track_exhaust_gas_tuz_01   =   {
         }
         part_track_exhaust_gas_old_tuz_01   =   {
         }
         part_track_acceleration_tuz_01   =   {
         }
         part_track_acceleration_old_tuz_01   =   {
         }
         wheel_particles_oil_02   =   {
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
         Mulcher   =   {
            isPhysRotation   =   True
            isStartedOnInit   =   False
            rotatorUid   =   "BoneGrinder_cdt"
            collisionLayer   =   "stump_grinder"
            velocityScalers   =   {
               Base_Speed   =   {
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
      boneOffset   =   {
         z   =   -0.08
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
         "BoneFrame_cdt",
         "BoneGrinder_cdt"
      ]
   }
   prop_truck_track   =   {
      tracks   =   [
         {
            section   =   {
               height   =   0.175
               tpl   =   "stump_grinder_track"
               segmentLength   =   0.18
               segmentBones   =   [
                  "bone0",
                  "bone1",
                  "bone2"
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
                  geomName   =   "wheel_top_left_1"
                  editableWheel   =   "EditableWheel_top_visual"
               },
               {
                  geomName   =   "wheel_top_left_2"
                  editableWheel   =   "EditableWheel_top_visual"
               },
               {
                  geomName   =   "wheel_middle_left_1"
                  editableWheel   =   "EditableWheel_middle_visual"
               },
               {
                  geomName   =   "wheel_middle_left_2"
                  editableWheel   =   "EditableWheel_middle_visual"
               },
               {
                  geomName   =   "wheel_middle_left_3"
                  editableWheel   =   "EditableWheel_middle_visual"
               },
               {
                  geomName   =   "wheel_middle_left_4"
                  editableWheel   =   "EditableWheel_middle_visual"
               },
               {
                  geomName   =   "wheel_middle_left_5"
                  editableWheel   =   "EditableWheel_middle_visual"
               }
            ]
            fakeWheelIds   =   [
               4,
               5,
               6
            ]
         },
         {
            section   =   {
               height   =   0.175
               tpl   =   "stump_grinder_track"
               segmentLength   =   0.18
               segmentBones   =   [
                  "bone0",
                  "bone1",
                  "bone2"
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
                  geomName   =   "wheel_top_right_1"
                  isRightSided   =   True
                  editableWheel   =   "EditableWheel_top_visual"
               },
               {
                  geomName   =   "wheel_top_right_2"
                  isRightSided   =   True
                  editableWheel   =   "EditableWheel_top_visual"
               },
               {
                  geomName   =   "wheel_middle_right_1"
                  isRightSided   =   True
                  editableWheel   =   "EditableWheel_middle_visual"
               },
               {
                  geomName   =   "wheel_middle_right_2"
                  isRightSided   =   True
                  editableWheel   =   "EditableWheel_middle_visual"
               },
               {
                  geomName   =   "wheel_middle_right_3"
                  isRightSided   =   True
                  editableWheel   =   "EditableWheel_middle_visual"
               },
               {
                  geomName   =   "wheel_middle_right_4"
                  isRightSided   =   True
                  editableWheel   =   "EditableWheel_middle_visual"
               },
               {
                  geomName   =   "wheel_middle_right_5"
                  isRightSided   =   True
                  editableWheel   =   "EditableWheel_middle_visual"
               }
            ]
            fakeWheelIds   =   [
               7,
               8,
               9
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
               x   =   0.653
               y   =   0.723
               z   =   2.017
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneDozer_cdt"
            offsetInBodySpace   =   {
               x   =   -0.653
               y   =   0.723
               z   =   2.017
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneDozer_cdt"
            offsetInBodySpace   =   {
               x   =   1.041
               y   =   0.93
               z   =   -0.605
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneDozer_cdt"
            offsetInBodySpace   =   {
               x   =   -1.041
               y   =   0.93
               z   =   -0.605
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneDozer_cdt"
            offsetInBodySpace   =   {
               y   =   -0.667
               z   =   -2.632
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneDozer_cdt"
            offsetInBodySpace   =   {
               x   =   0.58
               y   =   -0.454
               z   =   1.947
               __type   =   "Vector3d"
            }
         },
         {
            bodyName   =   "BoneDozer_cdt"
            offsetInBodySpace   =   {
               x   =   -0.58
               y   =   -0.454
               z   =   1.947
               __type   =   "Vector3d"
            }
         }
      ]
      rotationFactor   =   1.5
      amountOfWinchPoints   =   4
   }
   prop_constraint_solving_method_changer   =   {
      constraintNames   =   [
         "_TrackRight",
         "_TrackLeft"
      ]
   }
   prop_truck_default_camera_equipment_state   =   {
   }
   prop_truck_camera_preset   =   {
      preset   =   {
         cameraFocusPointOffset   =   {
            y   =   0.25
            z   =   0.5
            __type   =   "Vector3d"
         }
         attachmentBone   =   "_third_person_camera"
         minSpeedToFollow   =   2.5
         firstLaunchCameraAngles   =   {
            x   =   20
            __type   =   "Vector2d"
         }
         followChangeDirectionSpeedThreshold   =   2.5
         scrollPoints   =   {
            "0"   =   {
               distance   =   10
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "1"   =   {
               distance   =   12
               followTerrainOffset   =   2.7
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "2"   =   {
               distance   =   14
               followTerrainOffset   =   3.2
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "3"   =   {
               distance   =   16
               followTerrainOffset   =   3.7
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "4"   =   {
               distance   =   18
               followTerrainOffset   =   4.2
               __type   =   "RbVehicleCameraScrollPoint"
            }
            "5"   =   {
               distance   =   20
               followTerrainOffset   =   4.5
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
         __type   =   "RbVehicleCameraParams"
      }
   }
   prop_truck_camera_cockpit_preset   =   {
      preset   =   {
         cameraMouseSensitivity   =   0.25
         rotationLimitsX   =   {
            x   =   -35
            y   =   53
            __type   =   "Vector2dRnd"
         }
         rotationLimitsY   =   {
            x   =   -170
            y   =   170
            __type   =   "Vector2dRnd"
         }
         forwardAngleOffset   =   {
            x   =   2
            __type   =   "Vector2d"
         }
         leftSideRearView   =   {
            isEnabled   =   True
            transitionStart   =   100
            transitionEnd   =   170
            baseRotation   =   {
               __type   =   "Vector2dRnd"
            }
            eyeOffset   =   {
               x   =   0.1
               z   =   -0.1
               __type   =   "Vector3d"
            }
            rollAngle   =   -2
            rotationLimitsX   =   {
               x   =   -35
               y   =   20
               __type   =   "Vector2dRnd"
            }
            __type   =   "RbCockpitCameraRearViewParams"
         }
         rightSideRearView   =   {
            isEnabled   =   True
            transitionStart   =   100
            transitionEnd   =   170
            baseRotation   =   {
               __type   =   "Vector2dRnd"
            }
            eyeOffset   =   {
               x   =   -0.1
               z   =   -0.1
               __type   =   "Vector3d"
            }
            rollAngle   =   2
            rotationLimitsX   =   {
               x   =   -35
               y   =   20
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
               x   =   -0.7
               y   =   -0.6
               z   =   0.8
               __type   =   "Vector3d"
            }
            Vector3d   =   {
               x   =   0.7
               y   =   -0.6
               z   =   0.8
            }
            Vector3d_1   =   {
               x   =   -0.7
               y   =   -0.3
               z   =   -0.5
               __type   =   "Vector3d"
            }
            Vector3d_2   =   {
               x   =   0.7
               y   =   -0.3
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
               "BoneDozer_cdt",
               "BoneIK_Piston_a",
               "BoneIK_Piston_b"
            ]
            ikConstraints   =   [
               {
                  vAxis   =   [
                     0,
                     0,
                     1
                  ]
                  min   =   -180
                  max   =   180
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
                  bodyPhysName   =   "BoneFrame_cdt"
                  bodyIKName   =   "BoneIK_Piston_b"
               }
            ]
         },
         {
            ikChainBodies   =   [
               "BoneDozer_cdt",
               "BoneIK_Shaft_a",
               "BoneIK_Shaft_b"
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
                  bodyPhysName   =   "BoneFrame_cdt"
                  bodyIKName   =   "BoneIK_Shaft_b"
               }
            ]
         }
      ]
   }
   vfx   =   {
      vfxSkeleton   =   {
         vfxBones   =   [
            {
               name   =   "body_1_box"
               bone   =   "_body_1_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.355,
                        1.424,
                        4.187
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
               waterParams   =   {
                  falloff   =   0.1
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
               name   =   "body_2_box"
               bone   =   "_body_2_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.829,
                        1.833,
                        1.243
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "body_3_box"
               bone   =   "_body_3_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.187,
                        0.562,
                        2.977
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
               name   =   "frame_1_box"
               bone   =   "_frame_1_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.844,
                        0.371,
                        1.059
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
               name   =   "frame_1_cylinder"
               bone   =   "_frame_1_cylinder"
               geom   =   {
                  cylinder   =   {
                     height   =   0.9
                     radius   =   0.9
                  }
                  box   =   {
                     size   =   [
                        0,
                        0,
                        0
                     ]
                  }
                  __type   =   "local__cylinder"
               }
               systems   =   26
               waterParams   =   {
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
               name   =   "track_l_box"
               bone   =   "_track_l_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.541,
                        1.15,
                        3.594
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
               waterParams   =   {
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
               name   =   "track_r_box"
               bone   =   "_track_r_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.541,
                        1.15,
                        3.594
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   26
               waterParams   =   {
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
               name   =   "frame_2_box"
               bone   =   "_frame_2_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.915,
                        0.211,
                        0.885
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "frame_3_box"
               bone   =   "_frame_3_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        1.923,
                        0.825,
                        0.303
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
                        1.095,
                        0.2,
                        0.87
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "body_5_l_box"
               bone   =   "_body_5_l_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.573,
                        0.306,
                        1.829
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
            },
            {
               name   =   "body_5_r_box"
               bone   =   "_body_5_r_box"
               geom   =   {
                  box   =   {
                     size   =   [
                        0.573,
                        0.306,
                        1.829
                     ]
                  }
                  __type   =   "local__box"
               }
               systems   =   18
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
               name   =   "shadow_01"
               bone   =   "BoneDozer_cdt"
               boneOffset   =   [
                  0,
                  0.72,
                  -1.12
               ]
               boneRotation   =   [
                  90,
                  90,
                  0
               ]
               geom   =   {
                  capsule   =   {
                     height   =   1
                     radius   =   0.92
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "shadow_02"
               bone   =   "BoneDozer_cdt"
               boneOffset   =   [
                  0,
                  0.25,
                  0
               ]
               geom   =   {
                  capsule   =   {
                     height   =   2.87
                     radius   =   0.78
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "shadow_03"
               bone   =   "BoneGrinder_cdt"
               geom   =   {
                  capsule   =   {
                     height   =   0
                     radius   =   0.78
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "shadow_04"
               bone   =   "BoneDozer_cdt"
               boneOffset   =   [
                  0,
                  -0.33,
                  -0.19
               ]
               geom   =   {
                  capsule   =   {
                     height   =   2.31
                     radius   =   0.65
                  }
                  __type   =   "local__capsule"
               }
               systems   =   1
            },
            {
               name   =   "shadow_05"
               bone   =   "root"
               boneOffset   =   [
                  0.8799999,
                  0.58,
                  -0.5
               ]
               boneRotation   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   2.54
                     radius   =   0.63
                     scaleX   =   0.62
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
               bone   =   "root"
               boneOffset   =   [
                  -0.88,
                  0.58,
                  -0.5
               ]
               boneRotation   =   [
                  0,
                  0,
                  0
               ]
               geom   =   {
                  capsuleScaled   =   {
                     height   =   2.54
                     radius   =   0.63
                     scaleX   =   0.62
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
         MOVE_STUCK_CANCEL   =   {
            truckSettings   =   {
               maxSteerSpeed   =   0.1
               backSteerSpeed   =   1
               lwiPoiValue   =   7
               __type   =   "AiTruckSettings"
            }
            targetVelocity   =   3
            cinematicVelocity   =   1.8
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
            steerScale   =   2
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
               maxSteerSpeed   =   0.1
               backSteerSpeed   =   1
               lwiPoiValue   =   5
               __type   =   "AiTruckSettings"
            }
            targetVelocity   =   3
            cinematicVelocity   =   1.8
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
            steerScale   =   2
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
               maxSteerSpeed   =   0.1
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
               maxSteerSpeed   =   0.1
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
               maxSteerSpeed   =   0.1
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
         "BoneDozer_cdt",
         "BoneFrame_cdt",
         "BoneGrinder_cdt"
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
            x   =   -0.54
            y   =   -0.454
            z   =   1.924
         },
         {
            x   =   0.54
            y   =   -0.454
            z   =   1.924
         },
         {
            x   =   0.329
            y   =   -0.677
            z   =   -2.029
         },
         {
            x   =   -0.326
            y   =   -0.677
            z   =   -2.029
         }
      ]
   }
   prop_truck_view_stump_grinder_controller   =   {
      rotatorUid   =   "BoneGrinder_cdt"
      damage   =   2
      tickTime   =   150
      accelerationOverTime   =   {
         spline   =   [
            0,
            0,
            1.379835,
            1.846154,
            3,
            10
         ]
         __type   =   "SplineLinear1d"
      }
      decelerationOverTime   =   {
         spline   =   [
            0,
            1,
            2.222888,
            0.770414,
            3,
            0
         ]
         __type   =   "SplineLinear1d"
      }
      warningDuration   =   1000
   }
   prop_truck_customization   =   {
   }
   prop_customization_graffiti   =   {
   }
   prop_cockpit_dashboard   =   {
      elements   =   {
         "0"   =   {
            nameBone   =   "ctrl_dashboard_fuel"
            axis   =   "Y"
            maxRotationAngle   =   100
            dashboardSubtype   =   "FUEL"
            __type   =   "DashboardElementCockpit"
         }
         "1"   =   {
            nameBone   =   "ctrl_dashboard_oil"
            axis   =   "Y"
            maxRotationAngle   =   110
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "2"   =   {
            nameBone   =   "ctrl_dashboard_temp"
            axis   =   "Y"
            maxRotationAngle   =   42
            dashboardSubtype   =   "ENGINE_ENABLED"
            __type   =   "DashboardElementCockpit"
         }
         "3"   =   {
            nameBone   =   "ctrl_dashboard_starter"
            axis   =   "Y"
            maxRotationAngle   =   45
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.1
            __type   =   "DashboardElementCockpit"
         }
         "4"   =   {
            nameBone   =   "ctrl_lever_drive"
            axis   =   "Y"
            maxRotationAngle   =   20
            dashboardSubtype   =   "ENGINE_ENABLED"
            damping   =   0.1
            increase   =   -20
            __type   =   "DashboardElementCockpit"
         }
         "5"   =   {
            nameBone   =   "ctrl_lever_steering"
            axis   =   "Y"
            minRotationAngle   =   -20
            maxRotationAngle   =   20
            steeringSubtype   =   "WHEEL"
            rotationSpeed   =   30
            isOnlyInputOrientation   =   True
            __type   =   "SteerigElementCockpit"
         }
         "6"   =   {
            nameBone   =   "ctrl_lever_mulcher"
            axis   =   "Y"
            maxRotationAngle   =   15
            speed   =   15
            switcherWorkType   =   "BUTTON_FIXED"
            namedActionType   =   "TOGGLE_STUMP_GRINDER"
            __type   =   "SwitcherNamedActionElementCockpit"
         }
         "7"   =   {
            nameBone   =   "ctrl_gear_stick_low"
            axis   =   "Y"
            maxRotationAngle   =   30
            speed   =   90
            switcherSubtype   =   "LOW_GEAR"
            __type   =   "SwitcherElementCockpit"
         }
         "8"   =   {
            nameBone   =   "ctrl_gear_stick"
            rotationSpeed   =   25
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
                     angle   =   15
                     __type   =   "InfoGearState"
                  }
                  __type   =   "GearStateItem"
               }
            }
            __type   =   "GearStickElementCockpit"
         }
         "9"   =   {
            nameBone   =   "ctrl_transfer_case"
            rotationSpeed   =   15
            states   =   {
               AUTO   =   {
                  primary   =   {
                     axis   =   "Z"
                     angle   =   5
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
      firstControlSectionUiName   =   "UID_HUD_FIRST_SECTION_MULCHER_CONTROL"
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
         uiActionDescription   =   "UID_HUD_STUMP_GRINDER_ACTIVATE"
         isToggleable   =   True
         altUiActionDescription   =   "UID_HUD_STUMP_GRINDER_DEACTIVATE"
         namedActionType   =   "TOGGLE_STUMP_GRINDER"
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
      steeringThreshold   =   7
      reverseAngleThreshold   =   0
      velocityScale   =   1.3
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
         particleName   =   "wheel_particles_water_sm_01"
         __type   =   "CustomSfxEmitter"
      }
      waterSfxTrack   =   {
         particleName   =   "track_particles_water_02"
         __type   =   "CustomSfxEmitter"
      }
      oilSfxWheels   =   {
         particleName   =   "wheel_particles_oil_02"
         __type   =   "CustomSfxEmitter"
      }
      oilSfxTrack   =   {
         particleName   =   "track_particles_oil_02"
         __type   =   "CustomSfxEmitter"
      }
      waterWheelSettings   =   {
         particleTenacity   =   10
         baseDepth   =   0.1
         spreadAngleProb   =   0.4
         maxParticleVelocity   =   2.5
         __type   =   "WheelParticleMaterialSettings"
      }
      waterTrackSettings   =   {
         timeToFullChange   =   1
         spreadAngle   =   45
         maxParticleVelocity   =   6.5
         __type   =   "TrackParticleMaterialSettings"
      }
      physBodyWheelName   =   "BoneGrinder_cdt"
      physBodyWheelRadius   =   0.9
      physBodyWheelWidth   =   0.4
      physBodyWheelHasWing   =   True
      physBodyWheelStartWingAngle   =   70
      physBodyWheelEndWingAngle   =   200
      wetnessThreshold   =   0.8
      wheelDrySfxs   =   [
         {
            material   =   "asphalt"
            emitter   =   {
               particleName   =   "part_stump_destruction_asphalt_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               baseDepth   =   0.1
               maxParticleVelocity   =   2.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "sand_dry"
            emitter   =   {
               particleName   =   "part_stump_destruction_sand_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "mud_sand"
            emitter   =   {
               particleName   =   "part_stump_destruction_sand_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "stone"
            emitter   =   {
               particleName   =   "part_stump_destruction_gravel_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "gravel_small"
            emitter   =   {
               particleName   =   "part_stump_destruction_gravel_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "brick"
            emitter   =   {
               particleName   =   "part_stump_destruction_gravel_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "garbage"
            emitter   =   {
               particleName   =   "part_stump_destruction_gravel_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "ground"
            emitter   =   {
               particleName   =   "part_stump_destruction_ground_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "dirt"
            emitter   =   {
               particleName   =   "part_stump_destruction_dirt_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "mud"
            emitter   =   {
               particleName   =   "part_stump_destruction_mud_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "grass"
            emitter   =   {
               particleName   =   "part_stump_destruction_grass_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "mud_grass"
            emitter   =   {
               particleName   =   "part_stump_destruction_grass_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "water_puddle"
            emitter   =   {
               particleName   =   "part_stump_destruction_water_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "oil"
            emitter   =   {
               particleName   =   "part_stump_destruction_oil_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "sand"
            emitter   =   {
               particleName   =   "part_stump_destruction_sand_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         }
      ]
      wheelWetSfxs   =   [
         {
            material   =   "asphalt"
            emitter   =   {
               particleName   =   "part_stump_destruction_asphalt_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "sand"
            emitter   =   {
               particleName   =   "part_stump_destruction_sand_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "mud_sand"
            emitter   =   {
               particleName   =   "part_stump_destruction_sand_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "gravel_small"
            emitter   =   {
               particleName   =   "part_stump_destruction_gravel_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "stone"
            emitter   =   {
               particleName   =   "part_stump_destruction_gravel_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "ground"
            emitter   =   {
               particleName   =   "part_stump_destruction_ground_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "dirt"
            emitter   =   {
               particleName   =   "part_stump_destruction_dirt_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "mud"
            emitter   =   {
               particleName   =   "part_stump_destruction_mud_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "grass"
            emitter   =   {
               particleName   =   "part_stump_destruction_grass_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "mud_grass"
            emitter   =   {
               particleName   =   "part_stump_destruction_grass_wet_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "water_puddle"
            emitter   =   {
               particleName   =   "part_stump_destruction_water_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         },
         {
            material   =   "oil"
            emitter   =   {
               particleName   =   "part_stump_destruction_oil_01"
               __type   =   "CustomSfxEmitter"
            }
            materialSettings   =   {
               particleTenacity   =   15
               baseDepth   =   0.1
               maxParticleVelocity   =   4.5
               spreadAngle   =   25
               __type   =   "WheelParticleMaterialSettings"
            }
         }
      ]
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
               "reverse_lights"
            ]
            __type   =   "ReverseHeadlights"
         }
         "2"   =   {
            defaultName   =   "default"
            lightName   =   "lights_emissive"
            geomNames   =   [
               "_hp_cab_gauges"
            ]
            __type   =   "CockpitLights"
         }
      }
   }
}
__type   =   "truck_view"
