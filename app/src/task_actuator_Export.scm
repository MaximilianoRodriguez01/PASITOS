{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "78749915-0da0-40a2-862f-9e8d94c7c68e",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "task_actuator Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    // eventos actuador\n    in event EV_LED_01_DECREASE_TIME\n    \n    in event EV_LED_01_TURN_ON\n    in event EV_LED_01_TURN_OFF\n    \n    in event EV_LED_01_BLINKING_ON\n    in event EV_LED_01_BLINKING_OFF\n    \n    in event EV_LED_01_PULSE_ON\n    in event EV_LED_01_PULSE_OFF\n    \n    in event EV_LED_01_PULSE_DCYCLE_ON\n    in event EV_LED_01_PULSE_DCYCLE_OFF\n    \n    in event EV_LED_01_TWO_PULSES_ON\n    in event EV_LED_01_TWO_PULSES_OFF\n    in event\n        EV_BUZZER_ON\n    in event\n        EV_BUZZER_OFF \n    \ninternal:\n    var timer:integer\n    var led:integer\n    const MAX_PERIOD_BLINKING:integer = 3\n \n    "
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": 4656,
          "y": 388
        },
        "size": {
          "height": 1004,
          "width": 1214
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 605,
        "id": "558b21bf-0918-425d-8fb6-cb647a5ca6de",
        "embeds": [
          "ecf1716c-ebdd-47cc-be74-cc90c66dd2c9",
          "64c2c5e1-028d-4dfc-824e-5bafb7a28662",
          "f39abd67-f77e-4950-ace0-a85af0d24ae4",
          "47ed7644-9226-41a0-bcd4-bb6bb7a69340",
          "1b943741-ec43-4edd-93bb-4eb047c0b630",
          "51fa4f2f-1e1f-49e5-8e73-183d7c7ee405",
          "80b398f2-476c-4efe-9682-a0e71c3f93e1",
          "96cb4ef1-db8b-4999-89fa-8a2b03787f67",
          "fe70320b-33d4-499c-ace7-7d630c4fbf26",
          "2571f46f-dacd-4a2a-a5f7-baedaec8203c"
        ],
        "attrs": {
          "priority": {
            "text": 1
          },
          "name": {
            "text": "ACTUATOR"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 5015,
          "y": 796.296875
        },
        "size": {
          "height": 60,
          "width": 93.625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "558b21bf-0918-425d-8fb6-cb647a5ca6de",
        "z": 606,
        "id": "51fa4f2f-1e1f-49e5-8e73-183d7c7ee405",
        "attrs": {
          "name": {
            "text": "ST_LED_01_OFF",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 4876,
          "y": 818.796875
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "parent": "558b21bf-0918-425d-8fb6-cb647a5ca6de",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 607,
        "id": "80b398f2-476c-4efe-9682-a0e71c3f93e1",
        "embeds": [
          "22e8136e-6f69-49d1-8c6f-89d2e12f8959"
        ],
        "attrs": {
          "name": {
            "fill": "#CFD8DC"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 5068,
          "y": 459.796875
        },
        "size": {
          "height": 82,
          "width": 151.2265625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "558b21bf-0918-425d-8fb6-cb647a5ca6de",
        "z": 608,
        "id": "96cb4ef1-db8b-4999-89fa-8a2b03787f67",
        "embeds": [
          "efced14b-f461-4aa5-91ad-fe2ba5785760"
        ],
        "attrs": {
          "name": {
            "text": "ST_LED_01_ON",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 5127,
          "y": 1186.796875
        },
        "size": {
          "height": 76.796875,
          "width": 151.234375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "558b21bf-0918-425d-8fb6-cb647a5ca6de",
        "z": 609,
        "id": "fe70320b-33d4-499c-ace7-7d630c4fbf26",
        "embeds": [
          "17e1445e-da08-49f8-82a9-69397d6f3846",
          "513ba3ca-a9ef-47ed-9f10-30dd0816aa18",
          "123a9fcb-3679-45cf-802c-372623065906"
        ],
        "attrs": {
          "name": {
            "text": "ST_LED_01_BLINKING_ON",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 4876,
          "y": 833.796875
        },
        "parent": "80b398f2-476c-4efe-9682-a0e71c3f93e1",
        "z": 616,
        "id": "22e8136e-6f69-49d1-8c6f-89d2e12f8959",
        "attrs": {
          "label": {
            "fill": "#C5C8C6",
            "refX": "50%",
            "refY": "50%",
            "textVerticalAnchor": "middle",
            "textAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "fe70320b-33d4-499c-ace7-7d630c4fbf26"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 7,
              "dy": 47.5
            },
            "name": "topLeft"
          },
          "id": "51fa4f2f-1e1f-49e5-8e73-183d7c7ee405",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_LED_01_BLINKING_OFF / timer = 0; led = 0"
              }
            },
            "position": {
              "distance": 0.5341876217936086,
              "offset": -171,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "parent": "558b21bf-0918-425d-8fb6-cb647a5ca6de",
        "z": 617,
        "id": "64c2c5e1-028d-4dfc-824e-5bafb7a28662",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "80b398f2-476c-4efe-9682-a0e71c3f93e1"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 6.0109405517578125,
              "dy": 30
            },
            "name": "topLeft"
          },
          "id": "51fa4f2f-1e1f-49e5-8e73-183d7c7ee405",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "parent": "558b21bf-0918-425d-8fb6-cb647a5ca6de",
        "vertices": [],
        "z": 617,
        "id": "1b943741-ec43-4edd-93bb-4eb047c0b630",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "96cb4ef1-db8b-4999-89fa-8a2b03787f67"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 23,
              "dy": 1
            },
            "name": "topLeft"
          },
          "id": "51fa4f2f-1e1f-49e5-8e73-183d7c7ee405",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_LED_01_TURN_OFF / led = 0"
              }
            },
            "position": {
              "distance": 0.4537044248168314,
              "offset": -122,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "parent": "558b21bf-0918-425d-8fb6-cb647a5ca6de",
        "vertices": [
          {
            "x": 5196,
            "y": 669.296875
          }
        ],
        "z": 617,
        "id": "47ed7644-9226-41a0-bcd4-bb6bb7a69340",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "51fa4f2f-1e1f-49e5-8e73-183d7c7ee405"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 28,
              "dy": 30.978729248046875
            },
            "name": "topLeft"
          },
          "id": "fe70320b-33d4-499c-ace7-7d630c4fbf26",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_LED_01_BLINKING_ON / timer = MAX_PERIOD_BLINKING; led = 1"
              }
            },
            "position": {
              "distance": 0.3418786074810159,
              "offset": -239.09814453125,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "parent": "558b21bf-0918-425d-8fb6-cb647a5ca6de",
        "z": 617,
        "id": "ecf1716c-ebdd-47cc-be74-cc90c66dd2c9",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "51fa4f2f-1e1f-49e5-8e73-183d7c7ee405"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 61,
              "dy": 62
            },
            "name": "topLeft"
          },
          "id": "96cb4ef1-db8b-4999-89fa-8a2b03787f67",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_LED_01_TURN_ON / led = 1"
              }
            },
            "position": {
              "distance": 0.5191535319772492,
              "offset": -113,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "parent": "558b21bf-0918-425d-8fb6-cb647a5ca6de",
        "vertices": [
          {
            "x": 5032,
            "y": 664.296875
          }
        ],
        "z": 617,
        "id": "f39abd67-f77e-4950-ace0-a85af0d24ae4",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "96cb4ef1-db8b-4999-89fa-8a2b03787f67"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 76.01092529296875,
              "dy": 45
            },
            "name": "topLeft"
          },
          "id": "96cb4ef1-db8b-4999-89fa-8a2b03787f67",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_LED_01_TURN_ON"
              }
            },
            "position": {
              "distance": 0.7098555227707629,
              "offset": -67.10374757978396,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "parent": "96cb4ef1-db8b-4999-89fa-8a2b03787f67",
        "vertices": [
          {
            "x": 5109,
            "y": 408.796875
          }
        ],
        "z": 617,
        "id": "efced14b-f461-4aa5-91ad-fe2ba5785760",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "fe70320b-33d4-499c-ace7-7d630c4fbf26"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 16,
              "dy": 40
            },
            "name": "topLeft"
          },
          "id": "fe70320b-33d4-499c-ace7-7d630c4fbf26",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_LED_01_DECREASE_TIME [timer > 0] / timer--"
              }
            },
            "position": {
              "distance": 0.5119807723411055,
              "offset": 170.73681640625,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "parent": "fe70320b-33d4-499c-ace7-7d630c4fbf26",
        "vertices": [
          {
            "x": 5350,
            "y": 1253.796875
          }
        ],
        "z": 618,
        "id": "17e1445e-da08-49f8-82a9-69397d6f3846",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "fe70320b-33d4-499c-ace7-7d630c4fbf26"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 107,
              "dy": 32
            },
            "name": "topLeft"
          },
          "id": "fe70320b-33d4-499c-ace7-7d630c4fbf26",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_LED_01_DECREASE_TIME [timer <= 0 && led == 0] / timer = MAX_PERIOD_BLINKING; led = 1"
              }
            },
            "position": {
              "distance": 0.6528818692168614,
              "offset": -296.7535021811511,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "4"
              }
            }
          }
        ],
        "parent": "fe70320b-33d4-499c-ace7-7d630c4fbf26",
        "vertices": [
          {
            "x": 5191,
            "y": 1117.796875
          }
        ],
        "z": 619,
        "id": "513ba3ca-a9ef-47ed-9f10-30dd0816aa18",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "fe70320b-33d4-499c-ace7-7d630c4fbf26"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 59,
              "dy": 75
            },
            "name": "topLeft"
          },
          "id": "fe70320b-33d4-499c-ace7-7d630c4fbf26",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_LED_01_DECREASE_TIME [(timer <= 0) && (led == 1)] / timer = MAX_PERIOD_BLINKING; led=0 "
              }
            },
            "position": {
              "distance": 0.606296534797006,
              "offset": 86.77800348737027,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          }
        ],
        "parent": "fe70320b-33d4-499c-ace7-7d630c4fbf26",
        "vertices": [
          {
            "x": 5160,
            "y": 1307.796875
          },
          {
            "x": 5184,
            "y": 1307.796875
          }
        ],
        "z": 620,
        "id": "123a9fcb-3679-45cf-802c-372623065906",
        "attrs": {}
      },
      {
        "type": "Note",
        "position": {
          "x": 4714,
          "y": 399.796875
        },
        "size": {
          "width": 177.1665496826172,
          "height": 60
        },
        "angle": 0,
        "linkable": false,
        "id": "2571f46f-dacd-4a2a-a5f7-baedaec8203c",
        "z": 643,
        "parent": "558b21bf-0918-425d-8fb6-cb647a5ca6de",
        "attrs": {
          "label": {
            "text": "PRENDIDO DE LEDS/BUZZER\nY PARPADEO"
          }
        }
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "TaskActuator",
          "statemachinePrefix": "taskActuator",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": "",
          "exitState": "",
          "generic": ""
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}